CREATE DATABASE homework_6;
USE homework_6;

-- Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов. Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '
DELIMITER $$
CREATE FUNCTION secs_to_days(secs_in INT)
RETURNS VARCHAR(40)
DETERMINISTIC
BEGIN
	DECLARE days INT;
	DECLARE hours INT;
	DECLARE minutes INT;
	DECLARE secs INT;
    
    SET days = FLOOR(secs_in / (24 * 3600));
	SET hours = FLOOR(secs_in % (24 * 3600) / 3600);
	SET minutes = FLOOR(secs_in % 3600 / 60);
	SET secs = secs_in - days * (24 * 3600) - hours * 3600 - minutes * 60;
    
    RETURN CONCAT_WS(" ", days, "days", hours, "hours", minutes, "minutes", secs, "seconds");
END $$
DELIMITER ;

-- Выведите только четные числа от 1 до 10. Пример: 2,4,6,8,10 
SELECT num
FROM numbers
WHERE num % 2 = 0 AND num<10;


