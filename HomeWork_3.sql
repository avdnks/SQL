CREATE DATABASE homework_3;
USE homework_3;

CREATE TABLE Orders 
  (
  id int PRIMARY KEY AUTO_INCREMENT,
  amt DECIMAL NOT NULL,
  odate date NOT NULL,
  cnum INT NOT NULL,
  snum INT NOT NULL,
  customers varchar (30) NOT NULL,
  city varchar (40),
  rating INT
);

SELECT SUM(amt) as sumSales
FROM Orders
WHERE odate = '2016-01-01';

SELECT COUNT(DISTINCT city) as nnull
FROM Orders;

SELECT MIN(amt) FROM Orders
GROUP BY customers;

SELECT customers FROM Orders
WHERE customers LIKE 'Г%';

SELECT MAX(rating) FROM Orders
GROUP BY city;

CREATE TABLE workers 
(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
surname VARCHAR(50) NOT NULL,
specialty VARCHAR(50) NOT NULL,
seniority INT NOT NULL,
salary INT NOT NULL,
age INT NOT NULL
);

INSERT INTO workers (name, surname, specialty, seniority, salary, age)
VALUES
('Вася',	'Васькин',	'Начальник',	40,	100000,	60),
('Петя',	'Петькин',	'Начальник',	8,	70000,	30),
('Катя',	'Катькина',	'Инженер',	2,	70000,	25),
('Саша',	'Сашкин',	'Инженер',	12,	50000,	35),
('Иван',	'Иванов',	'Рабочий',	40,	30000,	59),
('Юра',	'Юркин',	'Рабочий',	5,	15000,	25),
('Максим',	'Воронин',	'Рабочий',	2,	11000,	22);

SELECT * FROM workers
ORDER BY salary; 

SELECT * FROM workers
ORDER BY salary DESC
LIMIT 5;

SELECT COUNT(*) FROM workers
WHERE seniority = 'Рабочий' AND salary > 20000;
