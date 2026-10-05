CREATE TABLE Employee_log(
     message VARCHAR(255)
     createdAT TIMESTAMP DEFAULT
CURRENT_TIMESTAMP
);
then create the trigger:

DELIMITER//
CREATE TRIGGER Afteremployeeinsert
AFTER INSERT ON employee
FOREACH ROW
BEGIN
    INSERT INTO Employee_log(message)
    VALUES(
         CONCAT('new employee inserted:',
NEW.Employeename)
):
END//
DELIMITER;
