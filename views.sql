-- =========================================
-- 1. VIEW: Selected Students with Company
-- =========================================
CREATE VIEW SelectedStudents AS
SELECT s.Name AS Student, c.Name AS Company, i.Role
FROM Student s
JOIN Application a ON s.StudentID = a.StudentID
JOIN Internship i ON a.InternshipID = i.InternshipID
JOIN Company c ON i.CompanyID = c.CompanyID
WHERE a.Status = 'Selected';


-- =========================================
-- 2. VIEW: All Applications with Details
-- =========================================
CREATE VIEW ApplicationDetails AS
SELECT s.Name AS Student, c.Name AS Company, i.Role, a.Status
FROM Application a
JOIN Student s ON a.StudentID = s.StudentID
JOIN Internship i ON a.InternshipID = i.InternshipID
JOIN Company c ON i.CompanyID = c.CompanyID;


-- =========================================
-- 3. VIEW: Internship Summary
-- =========================================
CREATE VIEW InternshipSummary AS
SELECT c.Name AS Company, COUNT(i.InternshipID) AS TotalInternships
FROM Company c
LEFT JOIN Internship i ON c.CompanyID = i.CompanyID
GROUP BY c.Name;


-- =========================================
-- 4. VIEW: Student Performance
-- =========================================
CREATE VIEW StudentPerformance AS
SELECT s.Name, ir.Status, f.Rating
FROM Student s
JOIN InternshipRecord ir ON s.StudentID = ir.StudentID
LEFT JOIN Feedback f ON ir.RecordID = f.RecordID;


-- =========================================
-- 5. VIEW: High CGPA Students
-- =========================================
CREATE VIEW HighCGPAStudents AS
SELECT Name, CGPA
FROM Student
WHERE CGPA > 8;


-- =========================================
-- 6. VIEW: Ongoing Internships
-- =========================================
CREATE VIEW OngoingInternships AS
SELECT s.Name AS Student, ir.Status
FROM Student s
JOIN InternshipRecord ir ON s.StudentID = ir.StudentID
WHERE ir.Status = 'Ongoing';