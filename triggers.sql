DELIMITER //

-- 1. CHECK CGPA BEFORE APPLYING

CREATE TRIGGER check_cgpa
BEFORE INSERT ON Application
FOR EACH ROW
BEGIN
    IF (SELECT CGPA FROM Student WHERE StudentID = NEW.StudentID) < 6 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'CGPA too low to apply';
    END IF;
END //

-- 2. AUTO UPDATE STATUS AFTER SELECTION
CREATE TRIGGER after_selection
AFTER UPDATE ON Application
FOR EACH ROW
BEGIN
    IF NEW.Status = 'Selected' THEN
        INSERT INTO InternshipRecord(StudentID, MentorID, Duration, Status)
        VALUES (NEW.StudentID, 1, 6, 'Ongoing');
    END IF;
END //

=
-- 3. PREVENT DUPLICATE APPLICATION

CREATE TRIGGER prevent_duplicate_application
BEFORE INSERT ON Application
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1 FROM Application
        WHERE StudentID = NEW.StudentID 
        AND InternshipID = NEW.InternshipID
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Already applied for this internship';
    END IF;
END //


-- 4. AUTO SET DEFAULT STATUS

CREATE TRIGGER default_status
BEFORE INSERT ON Application
FOR EACH ROW
BEGIN
    IF NEW.Status IS NULL OR NEW.Status = '' THEN
        SET NEW.Status = 'Pending';
    END IF;
END //
-- 5. VALIDATE FEEDBACK RATING


CREATE TRIGGER check_rating
BEFORE INSERT ON Feedback
FOR EACH ROW
BEGIN
    IF NEW.Rating < 1 OR NEW.Rating > 5 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Rating must be between 1 and 5';
    END IF;
END //

DELIMITER ;