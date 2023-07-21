CREATE DATABASE homework_2;
USE homework_2;

CREATE TABLE sales
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    order_date DATE NOT NULL,
    bucket VARCHAR(50) NOT NULL    
);

INSERT INTO sales (order_date, bucket)
VALUES ('2021-01-01', '101 to 300'),
    ('2021-01-02', '101 to 300'),
    ('2021-01-03', 'less than equal to 100'),
    ('2021-01-04', '101 to 300'),
    ('2021-01-05', 'greater than 300');
SELECT * FROM sales;

SELECT 
	order_date, 
    bucket,
	CASE bucket 
		WHEN 'less than equal to 100' THEN 'Маленький заказ'
        WHEN '101 to 300' THEN 'Средний заказ'
		WHEN 'greater than 300' THEN 'Большой заказ'
	END class
FROM sales;


CREATE TABLE orders
(
    orderid INT AUTO_INCREMENT PRIMARY KEY,
    employeeid CHAR(3) NOT NULL,
    amount DECIMAL NOT NULL,
    orderstatus VARCHAR(30) NOT NULL
);

INSERT INTO orders (employeeid, amount, orderstatus)
VALUES 
    ('e03', 15.00,'OPEN'),
    ('e01', 25.50,'OPEN'),
    ('e05', 100.70,'CLOSED'),
    ('e02', 22.18,'OPEN'),
    ('e04', 9.50,'CANCELLED'),
    ('e04', 99.99,'OPEN');
SELECT * FROM orders;

SELECT
	employeeid, 
    amount, 
    orderstatus,
	CASE
		WHEN orderstatus = 'OPEN' THEN 'Order is in open state'
		WHEN orderstatus = 'CLOSED' THEN 'Order is closed'
		WHEN orderstatus = 'CANCELLED' THEN 'Order is cancelled'
END AS Full_status
FROM orders;

SELECT * FROM orders;
