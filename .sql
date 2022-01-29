CREATE DATABASE HR_Department;
USE HR_Department;

-- Спроектируйте базу данных для системы отдела кадров.

CREATE TABLE employees
(
id_employeer int auto_increment NOT NULL,
firstName varchar(30) NOT NULL,
lastName varchar(30) NOT NULL,
possition varchar(50) NOT NULL,
phone varchar(15) DEFAULT 'Unknow' UNIQUE,
PRIMARY KEY(id_employeer)
);

CREATE TABLE salaries
(
id_salary int auto_increment NOT NULL,
employeer_id int NOT NULL,
experience tinyint NOT NULL,
remuneration int DEFAULT 0 NOT NULL,
penalty int DEFAULT 0 NOT NULL,
salary int NOT NULL,
FOREIGN KEY (employeer_id) REFERENCES employees(id_employeer),
PRIMARY KEY (id_salary)
);

INSERT INTO employees (firstName, lastName, possition, phone) VALUES
('Oleksandr', 'Verhovcev', 'CEO', '0959999888'),
('Mark', 'Aurelius', 'CTO', '0978888999'),
('Garick', 'Jafar', 'Team leader', '0967777555'),
('Julia', 'Verhovceva', 'CFO', '099999999');

INSERT INTO salaries (employeer_id, experience, remuneration, penalty, salary) VALUES
(1, 20, 10000, 0, 35000),
(2, 17, 7500, 0, 27500),
(3, 10, 0, 3000, 12000),
(4, 15, 12000, 0, 34500); 

SELECT * FROM employees;
SELECT * FROM salaries;

