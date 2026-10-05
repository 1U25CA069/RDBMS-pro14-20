use collegeDBbca;
DELIMITER//
CREATE FUNCTION countstudent(p_departmentID int)
     RETURNS INT
     DETERMINSTIC
BEGIN
     DECLARE student_count INT;
     SELECT COUNT(*)
     INTO student_count
     FROM student
     WHERE departmentID = p departmentID;
     RETURN student_count;
END//
DELIMITER;
SELECT countstudent(10)AS totalstudents;
