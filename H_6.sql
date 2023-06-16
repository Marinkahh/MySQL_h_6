use homework6;
DELIMITER $$
CREATE PROCEDURE converttime(in sec int)
BEGIN
	SELECT sec_to_time() dt from dual;
		
	 
END$$
DELIMITER ;
call converttime(123456);

DELIMITER $$
CREATE PROCEDURE numbers()
BEGIN
    DECLARE n INT default 0;
    DROP TABLE IF EXISTS nums;
    CREATE TABLE nums (n INT);

    WHILE n < 10 DO
    SET n = n + 2;
    INSERT INTO nums VALUES(n);
    END WHILE;

SELECT * FROM nums;
END $$
DELIMITER ;

CALL numbers();
