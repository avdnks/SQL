CREATE DATABASE homework_4;
USE homework_4;

CREATE TABLE AUTO 
(	
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    REGNUM INT, 
	MARK VARCHAR(50),
	COLOR VARCHAR(50),  
	RELEASEDT DATE, 
	PHONENUM VARCHAR(50)
);

INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM)
VALUES (111114,'LADA', 'КРАСНЫЙ', '2008-01-01', '9152222221'),
		(111115,'VOLVO', 'КРАСНЫЙ', '2013-01-01', '9173333334'),
        (111116,'BMW', 'СИНИЙ', '2015-01-01', '9173333334'),
		(111121,'AUDI', 'СИНИЙ', '2009-01-01', '9173333332'),
		(111122,'AUDI', 'СИНИЙ', '2011-01-01', '9213333336'),
		(111113,'BMW', 'ЗЕЛЕНЫЙ', '2007-01-01', '9214444444'),
		(111126,'LADA', 'ЗЕЛЕНЫЙ', '2005-01-01', null),
		(111117,'BMW', 'СИНИЙ', '2005-01-01', null),
		(111119,'LADA', 'СИНИЙ', '2017-01-01', '9213333331');

-- 1. Вывести на экран сколько машин каждого цвета для машин марок BMW и LADA        
SELECT 
	COLOR, 
    COUNT(REGNUM)
FROM AUTO
WHERE MARK IN ("BMW", "LADA")
GROUP BY COLOR;

-- 2. Вывести на экран марку авто и количество AUTO не этой марки
SELECT a1.MARK, count(a2.REGNUM)
FROM (
	SELECT DISTINCT MARK 
    FROM auto
    ) a1
LEFT JOIN auto a2
ON a1.MARK <> a2.MARK
GROUP BY a1.MARK;

-- 3. Напишите запрос, который вернет строки из таблицы test_a, id которых нет в таблице test_b, НЕ используя ключевого слова NOT.
create table test_a (
	id INT, 
    data varchar(20)
);

create table test_b (
	id INT
);

insert into test_a(id, data) 
values
(10, 'A'),
(20, 'A'),
(30, 'F'),
(40, 'D'),
(50, 'C');
insert into test_b(id) 
values
(10),
(30),
(50);

-- Напишите запрос, который вернет строки из таблицы test_a, id которых нет в таблице test_b, НЕ используя ключевого слова NOT.
SELECT *
FROM test_a a LEFT JOIN test_b b ON b.id = a.id
WHERE b.id IS NULL;






