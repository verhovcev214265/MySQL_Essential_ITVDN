CREATE DATABASE HR_DEPARTMENT2;
-- Спроектировать базу данных для вымышленной системы отдела кадров, провести нормализацию всех таблиц.

CREATE TABLE possitions
(
id int auto_increment PRIMARY KEY NOT NULL,
possition varchar(30) NOT NULL
);

 CREATE TABLE employee
 (
 id int auto_increment PRIMARY KEY NOT NULL,
 possition_id int NOT NULL,
 firsName varchar(30) NOT NULL,
 lastName varchar(30) NOT NULL,
 phone int NOT NULL UNIQUE,
 
 FOREIGN KEY (possition_id) REFERENCES possitions(id)
 );
  
 CREATE TABLE appointment
 (
  id int auto_increment PRIMARY KEY NOT NULL,
  appointmentData varchar(40) NOT NULL
  ); 
  
  CREATE TABLE vocation
  (
  id int auto_increment NOT NULL,
  employee_id int NOT NULL,
  vocationData varchar(40) NOT NULL,
  
  FOREIGN KEY(employee_id) REFERENCES employee(id),
  PRIMARY KEY(id, vocationData)
  );
  
  CREATE TABLE hrSpecialist
  (
  id int auto_increment PRIMARY KEY NOT NULL,
  firstName varchar(30) NOT NULL,
  lastName varchar(30) NOT NULL
  );

  CREATE TABLE infoForEmployees
  (
  id int auto_increment PRIMARY KEY NOT NULL,
  employee_id int NOT NULL,
  appointment_id int NOT NULL,
  vocation_id int NOT NULL,
  hrSpecialist_id int NOT NULL,
  
  FOREIGN KEY(employee_id) REFERENCES employee(id),
  FOREIGN KEY(appointment_id) REFERENCES appointment(id),
  FOREIGN KEY(vocation_id) REFERENCES vocation(id),
  FOREIGN KEY(hrSpecialist_id) REFERENCES hrSpecialist(id)
  );
    
INSERT INTO possitions(possition) VALUES
('General chief'), ('Top-Manager'),('Manager'),('Employee');

INSERT INTO appointment (appointmentData) VALUES
('01.01.2012'),('01.01.2012'),('17.09.2014'),('30.06.2018'),('11.02.2016'),('13.06.2013');
  
INSERT INTO employee (possition_id, firsName, lastName, phone) VALUES
(1, 'Oleksandr', 'Verhovcev', 0683076225),
(2, 'Julia', 'Verhovceva', 0954076221),
(3, 'Elizabeth', 'Denisova', 0733076288),
(4, 'Vitaliy', 'Mevsha', 0983076893),
(4, 'Andriy', 'Pospelov', 0503076789),
(4, 'Oleksandr', 'Bakalyar', 0683076221);

 INSERT INTO vocation(employee_id,vocationData) VALUES
(1, '03.05.2022'),(2, '01.02.2022'),(3, '11.11.2022'),(4, '06.08.2022'),(5, '30,12,2021'),(6, '19,12,2021');
  
INSERT INTO hrSpecialist(firstName, lastName) VALUES
('Olena', 'Plehanova'),('Alisa', 'Ivanova'),('Kristina', 'Cosic');
  
INSERT INTO infoForEmployees(employee_id, appointment_id, vocation_id, hrSpecialist_id) VALUES
(1, 1, 1, 3),(6, 6, 6, 1),(2, 2, 2, 3),(4, 4, 4, 1),(3, 3, 3, 2),(5, 5, 5, 2);
  
  SELECT * FROM possitions;
  SELECT * FROM appointment;
  SELECT * FROM employee;
  SELECT * FROM vocation;
  SELECT * FROM hrSpecialist;
  SELECT * FROM infoForEmployees;

  
  
  
  
  
  
 
