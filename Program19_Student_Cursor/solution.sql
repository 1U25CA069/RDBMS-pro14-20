DELIMITER//
CREATE PROCEDURE Displaystudents()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE sid INT;
    DECLARE Sname VAECHAR(100);
    DECLARE did INT;
DECLARE Stiudent_cursor cursor FOR
	SELECT studentID,studentname,departmentID
    FROM student;
DECLARE CONINUE HANDLER FOR NOT FOUND SET
done=1;
    OPEN student_cursor:
    read_loop=loop
        FETCH student_cursor INTO sid,smname,did;
	IF done=1 THEN
		LEAVE road_loop;
	END IF;
    SELECT sid AS studentID,
         sname AS studentname,
         did AS departmentID;
	END loop;
         CLOSE student_cursor;
END//
DELIMITER:
CALL displaystudents();
