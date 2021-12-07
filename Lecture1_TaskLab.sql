CREATE DATABASE university;
USE university;

-- Продемонстрируйте три варианта связей между таблицами (один к одному, один ко многим и многие ко многим)
-- создав различные таблицы (на ваше усмотрение). Добавьте первичные и внешние ключи к таблицам. Заполните
-- таблицы данными.

-- один к одному
CREATE TABLE clients
(
id_client int auto_increment NOT NULL,
name varchar(30) NOT NULL,
phone varchar(15) DEFAULT 'Unknow' UNIQUE,
PRIMARY KEY (id_client)
);

CREATE TABLE smartphones
(
id_smartPhones int auto_increment NOT NULL,
client_id int NOT NULL UNIQUE,
mark varchar(30) NOT NULL,
model varchar(30) NOT NULL,
price double NOT NULL,
FOREIGN KEY (client_id) REFERENCES clients(id_client),
PRIMARY KEY (id_smartPhones)
);

INSERT INTO clients(name, phone) VALUES
('Oleksandr', '0971234567'),
('Garick', '0679807654'),
('Mark', '0501239876');
 
 INSERT INTO smartphones(client_id, mark, model, price) VALUES 
 (1, 'samsung', 'S30', 27999.99),
 (2, 'IPhone', '11-pro', 40000.99),
 (3, 'Xiaomi', 'redmy-7', 15500.79);
 
 INSERT INTO smartphones(client_id, mark, model, price) VALUES
 (1, 'Nokia', '1100', 999999.99); -- Duplicate entry 1 for key smartphones client_id
  
 SELECT * FROM clients;
 SELECT * FROM smartphones;
 
 -- один ко многим и многие ко многим
 
 CREATE TABLE customers
(
id_customer int auto_increment NOT NULL,
name varchar(30) NOT NULL,
phone varchar(15) DEFAULT 'Unknow',
PRIMARY KEY (id_customer)
);

CREATE TABLE cars
(
id_cars int auto_increment NOT NULL,
customers_id int NOT NULL,
mark varchar(30) NOT NULL,
model varchar(30) NOT NULL,
price double NOT NULL,
FOREIGN KEY (customers_id) REFERENCES customers(id_customer),
PRIMARY KEY (id_cars)
);

INSERT INTO customers(name, phone) VALUES 
('Oleksandr', '0971234567'), 
('Garick', '0679807654'),
('Mark', '0501239876');
 
 INSERT INTO cars(customers_id, mark, model, price) VALUES 
 (1, 'BMW', 'X5', 28999.99),
 (2, 'Opel', 'vectra', 4000.99),
 (3, 'Toyota', 'prius', 15000.00);
 
INSERT INTO cars(customers_id, mark, model, price) VALUES  -- Non duplicate
(1, 'Fiat', 'Doblo', 10000.00);

SELECT * FROM customers;
SELECT * FROM cars;

-- многие ко многим

CREATE TABLE Students
(
id_student int auto_increment NOT NULL,
firstName varchar(30) NOT NULL,
lastName varchar(30) NOT NULL,
phone varchar(15) DEFAULT 'Unknow' UNIQUE,
PRIMARY KEY(id_student)
);

CREATE TABLE Courses
(
id_course int auto_increment NOT NULL,
nameOfCourse varchar(40) NOT NULL,
price float NOT NULL,
PRIMARY KEY (id_course)
);

CREATE TABLE StudentsCourses(
id int auto_increment NOT NULL,
student_id int NOT NULL,
course_id int NOT NULL,
FOREIGN KEY (student_id) REFERENCES Students (id_student),
FOREIGN KEY (course_id) REFERENCES Courses (id_course),
PRIMARY KEY(id)
);

INSERT INTO Students(firstName, lastName, phone) VALUES
('Oleksandr', 'Verhovcev', '0971234567'), 
('Garick', 'Jafar', '0679807654'),
('Mark', 'Komov', '0501239876');

INSERT INTO Courses (nameOfCourse, price) VALUES
('C++ start', 2000.00),
('C# essential', 3000.00),
('Java professional', 4000.00),
('Cotlin start', 2000.00),
('MySQL essential', 2500.80); 

INSERT INTO StudentsCourses (student_id, course_id) VALUES
(1,3), (1,4), (2,1), (2,2), (3,1), (3,2), (3,3), (3,4), (3,5);

SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM StudentsCourses;








 
 