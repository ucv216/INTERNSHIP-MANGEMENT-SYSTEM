-- =========================================
-- INDEXES FOR PERFORMANCE OPTIMIZATION
-- =========================================

-- 1. Index on Student Department (for filtering students)
CREATE INDEX idx_student_dept 
ON Student(DeptID);

-- 2. Index on Student CGPA (for high CGPA queries)
CREATE INDEX idx_student_cgpa 
ON Student(CGPA);

-- 3. Index on Application Status (for pending/selected queries)
CREATE INDEX idx_application_status 
ON Application(Status);

-- 4. Index on Application StudentID (for joins)
CREATE INDEX idx_application_student 
ON Application(StudentID);

-- 5. Index on Internship CompanyID (for company queries)
CREATE INDEX idx_internship_company 
ON Internship(CompanyID);

-- 6. Index on Internship Stipend (for sorting highest stipend)
CREATE INDEX idx_internship_stipend 
ON Internship(Stipend);

-- 7. Index on InternshipRecord StudentID (for joins)
CREATE INDEX idx_record_student 
ON InternshipRecord(StudentID);

-- 8. Index on Feedback Rating (for analytics)
CREATE INDEX idx_feedback_rating 
ON Feedback(Rating);

-- 9. Composite Index (important 🔥)
-- Speeds up queries filtering by student + internship
CREATE INDEX idx_application_student_internship 
ON Application(StudentID, InternshipID);