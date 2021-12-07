USE carmanager;

-- Используя MySQL Workbench создать пустую базу данных автомобилей. Заполнить таблицу данными
-- (id(Autoincrement), марка, модель, объем двигателя, цена, макс. скорость).
-- запросы:
-- 1) вывести все машины
-- 2) вывести марку, модель и максимальную скорость машин
-- 3) вывести все машины марка которых Audi 
-- 4) вывести все машины марка которых Audi или BMW
-- 5) вывести все машины макс. скрость которых от 200 до 300
-- 6) вывести все машины марка которых Audi и обьем двигателя больше 1.5 л
-- 7) вывести все машины марка которых начинается на "h"
-- 8) вывести все машины цена которых 200_000, 255_000 или 300_000
-- 9) упорядочить все машины по их маркам
-- 10) упорядочить все машины по их цене
-- 11) упорядочить все машины по их объему двигателя и цене
-- 12) отсортировать все машины по макс. скорости в порядке убывания
-- 13) вывести общую стоимость всех машин Audi
-- 14) вывести общее количество всех машин BMW у которых модель A6
-- 15) вывести общее количество всех машин Audi у которых цена больше 200_000 и макс. скорость < 200
-- 16) вывести среднюю скорость всех машин Honda
-- 17) задать новую скорость 500 всем машинам Audi
-- 18) удалить все машины с ценой 200_000

CREATE TABLE cars_list(
id INT AUTO_INCREMENT NOT NULL,
mark VARCHAR(50),
model VARCHAR(30),
enginCapacity INT,
price float,
maxSpeed INT,
PRIMARY KEY(id)
);

INSERT INTO cars_list (mark, model, enginCapacity, price, maxSpeed) VALUES ('BMW', 'X5', 8.0, 25000, 300);

INSERT INTO cars_list (mark, model, enginCapacity, price, maxSpeed) VALUES ('Opel', 'Vectra', 4.0, 2500, 220);

INSERT INTO cars_list (mark, model, enginCapacity, price, maxSpeed) VALUES ('Honda', 'Acord', 6.2, 12000, 260);
INSERT INTO cars_list (mark, model, enginCapacity, price, maxSpeed) VALUES ('Honda', 'Civic', 5.2, 10000, 240);
INSERT INTO cars_list (mark, model, enginCapacity, price, maxSpeed) VALUES ('Honda', 'CRV', 8.0, 50000, 290);

INSERT INTO cars_list (mark, model, enginCapacity, price, maxSpeed) VALUES ('Toyota', 'prius', 6.2, 15000, 280);

INSERT INTO cars_list (mark, model, enginCapacity, price, maxSpeed) VALUES ('Audy', 'A8', 8.0, 115000, 320);
INSERT INTO cars_list (mark, model, enginCapacity, price, maxSpeed) VALUES ('Audy', 'Q7', 12.0, 215000, 360);
INSERT INTO cars_list (mark, model, enginCapacity, price, maxSpeed) VALUES ('Audy', 'A4', 6.0, 210000, 199);
INSERT INTO cars_list (mark, model, enginCapacity, price, maxSpeed) VALUES ('Audy', 'A4.1', 6.0, 210000, 198);

INSERT INTO cars_list (mark, model, enginCapacity, price, maxSpeed) VALUES ('Tavria', 'Nova', 1.3, 500, 160);

INSERT INTO cars_list (mark, model, enginCapacity, price, maxSpeed) VALUES ('Porshe', 'Panamera', 12, 300000, 365);

INSERT INTO cars_list (mark, model, enginCapacity, price, maxSpeed) VALUES ('Ferrary', 'F8 tributo', 14, 255000, 360);

INSERT INTO cars_list (mark, model, enginCapacity, price, maxSpeed) VALUES ('Rols Roys', 'Fantom', 14, 200000, 360);

SELECT * FROM cars_list;
SELECT mark, model, maxSpeed FROM cars_list;
SELECT * FROM cars_list WHERE mark = 'Audy';
SELECT * FROM cars_list WHERE mark = 'Audy' OR mark = 'BMW';
SELECT * FROM cars_list WHERE maxSpeed BETWEEN 200 AND 300;
SELECT * FROM cars_list WHERE mark = 'Audy' AND enginCapacity > 1.5;
SELECT * FROM carmanager.cars_list WHERE mark LIKE 'H%'; 
SELECT * FROM carmanager.cars_list WHERE price IN (200000, 255000, 300000); 

SELECT * FROM cars_list ORDER BY mark;
SELECT * FROM cars_list ORDER BY price;
SELECT * FROM cars_list ORDER BY enginCapacity, price;

SELECT * FROM cars_list ORDER BY maxSpeed DESC;
SELECT SUM(price) FROM cars_list WHERE mark = 'Audy';

SELECT COUNT(*) AS numbersOfCars FROM cars_list;
SELECT COUNT(*) AS BMW_A6 FROM cars_list WHERE model = 'A6';
SELECT COUNT(*) AS Premium_Audy FROM cars_list WHERE price > 200000 AND maxSpeed < 200;

SELECT AVG (maxSpeed) AS AvarageHondaSpeed FROM cars_list WHERE mark = 'Honda';

UPDATE cars_list SET maxSpeed = 500 WHERE mark = 'Audy';
-- 18) удалить все машины с ценой 200_000
DELETE FROM cars_list WHERE price = 200000;





