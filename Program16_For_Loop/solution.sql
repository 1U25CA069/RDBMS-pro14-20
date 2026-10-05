use collegeDBbca;
DELIMITER//
CREATE PROCEDUER Displaynumbers()
BEGIN
     DECLARE i INT DEFAULT 1;
     WHILE i<=10 DO
         SELECT i AS number;
         SET i=i+1;
	END WHILE;
END //
DELIMITER;
CALL Displaynumbers();
