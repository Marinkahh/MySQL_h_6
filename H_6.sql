use homework6;

-- 1. Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов. 
-- Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '

DELIMITER $$
CREATE PROCEDURE converttime(in sec int)
BEGIN
	SELECT sec_to_time() dt from dual;
		
	 
END$$
DELIMITER ;
call converttime(123456);

-- 2. Выведите только четные числа от 1 до 10. Пример: 2,4,6,8,10 

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
