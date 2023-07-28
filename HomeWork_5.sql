CREATE DATABASE homework_5;
USE homework_5;

CREATE TABLE cars (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
cost INT
);

INSERT INTO cars(name, cost) VALUES
('Audi', 52642), 
('Mercedes', 57127), 
('Skoda', 9000), 
('Volvo', 29000), 
('Bentley', 35000), 
('Citroen', 21000), 
('Hummer', 41400), 
('Volkswagen', 21600);

-- 1. Создайте представление, в которое попадут автомобили стоимостью до 25 000 долларов
CREATE VIEW CheapCars 
AS SELECT name 
FROM cars 
WHERE Cost<25000; 
SELECT * FROM CheapCars;

-- 2. Изменить в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW);
ALTER VIEW CheapCars
AS SELECT name
FROM cars
WHERE Cost<30000; 
SELECT * FROM CheapCars;

-- 3. Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди” (аналогично) Вывести название и цену для всех анализов, 
-- которые продавались 5 февраля 2020 и всю следующую неделю. Есть таблица анализов Analysis: an_id — ID анализа; an_name — название анализа; 
-- an_cost — себестоимость анализа; an_price — розничная цена анализа; an_group — группа анализов. Есть таблица групп анализов Groups: gr_id — ID группы; 
-- gr_name — название группы; gr_temp — температурный режим хранения. Есть таблица заказов Orders: ord_id — ID заказа; ord_datetime — дата и время заказа; ord_an — ID анализа.
CREATE VIEW cars_bmw_audi 
AS SELECT *
FROM CARS
WHERE name in ('Audi', 'Skoda');
SELECT * FROM cars_bmw_audi;
