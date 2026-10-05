use collegeDBbca;
DELIMITER//
CREATE PROCEDURE Insertstudent(
     IN p_studentID INT, 
     IN p_studentname VARCHAR(100),
     IN p_departmentID INT
)
BEGIN
     INSERT INTO student
     (studentID,studentname,departmentID)
     VALUES
     (p_studentID,p_studentname,p_departmentID);
END//
DELIMITER;
CALL Insertstudent(101,'arun',10);
