DELIMITER //

-- 1. APPLY FOR INTERNSHIP

CREATE PROCEDURE ApplyInternship(
    IN sid INT,
    IN iid INT
)
BEGIN
    INSERT INTO Application(StudentID, InternshipID, Status)
    VALUES (sid, iid, 'Pending');
END //


-- 2. GET SELECTED STUDENTS

CREATE PROCEDURE GetSelectedStudents()
BEGIN
    SELECT s.Name, c.Name AS Company, i.Role
    FROM Student s
    JOIN Application a ON s.StudentID = a.StudentID
    JOIN Internship i ON a.InternshipID = i.InternshipID
    JOIN Company c ON i.CompanyID = c.CompanyID
    WHERE a.Status = 'Selected';
END //

-- 3. GET TOP PAYING INTERNSHIPS

CREATE PROCEDURE TopInternships()
BEGIN
    SELECT Role, Stipend
    FROM Internship
    ORDER BY Stipend DESC
    LIMIT 5;
END //

-- 4. COUNT APPLICATIONS PER COMPANY
CREATE PROCEDURE ApplicationsPerCompany()
BEGIN
    SELECT c.Name, COUNT(a.AppID) AS TotalApplications
    FROM Company c
    JOIN Internship i ON c.CompanyID = i.CompanyID
    JOIN Application a ON i.InternshipID = a.InternshipID
    GROUP BY c.Name;
END //

-- 5. GET STUDENTS ABOVE CGPA

CREATE PROCEDURE StudentsAboveCGPA(
    IN minCGPA DECIMAL(3,2)
)
BEGIN
    SELECT Name, CGPA
    FROM Student
    WHERE CGPA >= minCGPA;
END //

-- 6. GET INTERNSHIP DETAILS BY COMPANY

CREATE PROCEDURE InternshipsByCompany(
    IN compID INT
)
BEGIN
    SELECT Role, Stipend
    FROM Internship
    WHERE CompanyID = compID;
END //

-- 7. AVERAGE FEEDBACK RATING

CREATE PROCEDURE AvgFeedback()
BEGIN
    SELECT AVG(Rating) AS AverageRating
    FROM Feedback;
END //

DELIMITER ;