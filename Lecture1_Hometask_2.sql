CREATE DATABASE wholesaleWarehouse;
USE wholesaleWarehouse;

-- Задание 2
-- Спроектируйте базу данных для оптового склада, у которого есть поставщики товаров, персонал,
-- постоянные заказчики. Поля таблиц продумать самостоятельно.

CREATE TABLE comstant_customers
(
id_customers int auto_increment NOT NULL,
firstName varchar(30) NOT NULL,
lastName varchar(30) NOT NULL,
phone varchar(15) DEFAULT 'Unknow' UNIQUE,
PRIMARY KEY(id_customers)
);

CREATE TABLE goods
(
id_goods int auto_increment NOT NULL,
brand varchar(50) NOT NULL,
type_of_goods varchar(30) NOT NULL,
price int NOT NULL,
PRIMARY KEY(id_goods)
);

CREATE TABLE suppliers_of_goods
(
id_suppliers int auto_increment NOT NULL,
firstName varchar(30) NOT NULL,
lastName varchar(30) NOT NULL,
phone varchar(15) UNIQUE,
entrepreneursNumber double NOT NULL UNIQUE,
PRIMARY KEY (id_suppliers)
);

CREATE TABLE personnel
(
id_personnel int auto_increment NOT NULL,
firstName varchar(30) NOT NULL,
lastName varchar(30) NOT NULL,
possition varchar(50) NOT NULL,
phone varchar(15) DEFAULT 'Unknow' UNIQUE,
PRIMARY KEY(id_personnel)
);

CREATE TABLE warehouse
(
id_warehouse int auto_increment NOT NULL,
customers_id int NOT NULL,
goods_id int NOT NULL,
suppliers_id int NOT NULL,
personnel_id int NOT NULL,
data datetime NOT NULL,
FOREIGN KEY(customers_id) REFERENCES comstant_customers(id_customers),
FOREIGN KEY(goods_id) REFERENCES goods (id_goods),
FOREIGN KEY(suppliers_id) REFERENCES suppliers_of_goods (id_suppliers),
FOREIGN KEY(personnel_id) REFERENCES personnel (id_personnel),
PRIMARY KEY(id_warehouse)
);

INSERT INTO comstant_customers ( firstName, lastName, phone ) VALUES
('James', 'Bond', '0970070070'),
('Chuck', 'Norris', '0509998888'),
('Arnold', 'Schwarznegger', '0670000000');

INSERT INTO goods ( brand, type_of_goods, price ) VALUES 
('Apple', 'Smart Phone', 5000),
('SAMSUNG', 'Smart Phone', 7999),
('Nokia', 'Smart Phone', 50),
('Colt', 'Guns', 25000);

INSERT INTO suppliers_of_goods ( firstName, lastName, phone, entrepreneursNumber ) VALUES
('Oleksandr', 'Verhovcev', 0679386573, 4356.221),
('Mark', 'Aurelius', 0689386575, 5356.223),
('Garick', 'Jafar', 0669386572, 6356.224),
('Julia', 'Verhovceva', 0959386571, 7356.225);

INSERT INTO personnel ( firstName, lastName, possition, phone ) VALUES
('Volodimir', 'Zelenskyi', 'packer', 0981636741),
('Dmitro', 'Razumkov', 'packer', 0961636733),
('David', 'Arachamiya', 'packer', 0671636785);

INSERT INTO warehouse (customers_id, goods_id, suppliers_id, personnel_id, data) VALUES 
(1, 2, 1, 3, now()),
(2, 3, 3, 1, now()),
(3, 1, 4, 2, now()),
(1, 1, 2, 1, now());

SELECT * FROM comstant_customers;
SELECT * FROM goods;
SELECT * FROM suppliers_of_goods;
SELECT * FROM personnel;
SELECT * FROM warehouse;











