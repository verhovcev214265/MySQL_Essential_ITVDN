CREATE DATABASE tests;
USE tests;

DROP TABLE clients;

CREATE TABLE clients
(
id int auto_increment NOT NULL,
name varchar(30) NOT NULL,
age tinyint NOT NULL,
phone varchar(30) DEFAULT 'unknow',
data datetime NOT NULL,
PRIMARY KEY(id, name)
);

CREATE TABLE cars
(
id int auto_increment NOT NULL,
client_id int NOT NULL,
mark varchar(30) NOT NULL,
model varchar(30) NOT NULL,
FOREIGN KEY (client_id) REFERENCES clients(id),
PRIMARY KEY (id)
);

INSERT INTO clients (name, age, phone, data) VALUES
('Oleksandr', 31, '0679386572', now()), ('Julia', 36, '0969110203', now());

SELECT * FROM clients;

INSERT INTO cars (client_id, mark, model) VALUES
(1, 'BMW', 'X6'), (2, 'Toyota', 'Rav 4'), (2, 'Nissan', 'Leaf'), (1, 'Toyota', 'Prius');

SELECT * FROM cars;





