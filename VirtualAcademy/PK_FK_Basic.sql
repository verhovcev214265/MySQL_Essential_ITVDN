DROP DATABASE coolCompany;


CREATE DATABASE coolCompany;
USE coolCompany;

CREATE TABLE employee 
(
employee_id int auto_increment primary key NOT NULL,
firstName varchar(45) NOT NULL,
lastName varchar(45) NOT NULL,
age tinyint NOT NULL,
department_id int NOT NULL
);

ALTER TABLE employee ADD CONSTRAINT FK_employee_to_department FOREIGN KEY (department_id) REFERENCES employee(employee_id);
ALTER TABLE employee ADD COLUMN manager_id int NULL;
ALTER TABLE employee ADD CONSTRAINT FK_manager_to_employee FOREIGN KEY (manager_id) REFERENCES employee(employee_id);
  

INSERT INTO employee (firstName, lastName, age, department_id) 
VALUES
('Ivan', 'Kotigoroshko', 25, 1), ('Pan', 'Kotskiy', 89, 2), ('Ivasyk', 'Telesyk', 60, 3), ('Ivasyk', 'Telesyk', 40, 4);

UPDATE employee SET manager_id = 1 WHERE employee_id = 2;
UPDATE employee SET manager_id = 1 WHERE employee_id = 3;
UPDATE employee SET manager_id = 3 WHERE employee_id = 4;

SELECT * FROM employee;

CREATE TABLE department
(
department_id int auto_increment primary key NOT NULL,
name varchar(45) NOT NULL,
description varchar(100) NOT NULL
);

ALTER TABLE department ADD column mgr_employeeID int NOT NULL;
ALTER TABLE department ADD CONSTRAINT fk_mgr_to_emp_id FOREIGN KEY(mgr_employeeID) REFERENCES employee(employee_id);

INSERT INTO department (name, description, mgr_employeeID)
VALUES
('Marketing', 'Does advertising for the company', 2), ('Sales', 'They do much money', 3), ('IT', 'They very clever', 1), ('HR', 'They are hanting very clever people', 4); 

SELECT employee.firstName, lastName, age, department.name, mgr_employeeID FROM employee
INNER JOIN department ON department.department_id = employee.employee_id;