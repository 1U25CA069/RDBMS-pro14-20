use collegeDBbca;
DELIMETER//
CREATE PROCEDURE checkresult(IN marks INT)
BEGIN
    IF marks>=40 THEN
        SELECT 'pass' AS result;
	else
		SELECT 'fail' AS result;
        END IF;
END //
DELIMETER;
CALL checkresult(65)ss
