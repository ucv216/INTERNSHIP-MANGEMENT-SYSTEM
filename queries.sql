
-- 1. Selected Students with Company
SELECT s.Name, c.Name AS Company, i.Role
FROM Student s
JOIN Application a ON s.StudentID = a.StudentID
JOIN Internship i ON a.InternshipID = i.InternshipID
JOIN Company c ON i.CompanyID = c.CompanyID
WHERE a.Status = 'Selected';

-- 2. Pending Applications
SELECT *
FROM Application
WHERE Status = 'Pending';

-- 3. Students with CGPA > 8
SELECT Name, CGPA
FROM Student
WHERE CGPA > 8;

-- 4. Top Paying Internships
SELECT Role, Stipend
FROM Internship
ORDER BY Stipend DESC
LIMIT 5;

-- 5. Count of Applications per Company
SELECT c.Name, COUNT(a.AppID) AS TotalApplications
FROM Company c
JOIN Internship i ON c.CompanyID = i.CompanyID
JOIN Application a ON i.InternshipID = a.InternshipID
GROUP BY c.Name;

-- 6. Number of Students per Department
SELECT d.DeptName, COUNT(s.StudentID) AS TotalStudents
FROM Department d
LEFT JOIN Student s ON d.DeptID = s.DeptID
GROUP BY d.DeptName;

-- 7. Students with Completed Internships
SELECT s.Name, ir.Status
FROM Student s
JOIN InternshipRecord ir ON s.StudentID = ir.StudentID
WHERE ir.Status = 'Completed';

-- 8. Average CGPA per Department
SELECT d.DeptName, AVG(s.CGPA) AS AvgCGPA
FROM Department d
JOIN Student s ON d.DeptID = s.DeptID
GROUP BY d.DeptName;

-- 9. Companies Offering More Than 1 Internship
SELECT c.Name, COUNT(i.InternshipID) AS TotalInternships
FROM Company c
JOIN Internship i ON c.CompanyID = i.CompanyID
GROUP BY c.Name
HAVING COUNT(i.InternshipID) > 1;

-- 10. Students Who Applied But Not Selected
SELECT s.Name, a.Status
FROM Student s
JOIN Application a ON s.StudentID = a.StudentID
WHERE a.Status != 'Selected';

-- 11. Internship with Highest Stipend
SELECT *
FROM Internship
WHERE Stipend = (SELECT MAX(Stipend) FROM Internship);

-- 12. Average Feedback Rating
SELECT AVG(Rating) AS AverageRating
FROM Feedback;