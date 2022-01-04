CREATE DATABASE MyJoinsDB;
DROP database MyJoinsDB;

USE MyJoinsDB;

-- В данной базе данных создайте 3 таблицы,
-- В 1-й таблице содержатся имена и номера телефонов сотрудников компании.
CREATE TABLE PersonalData
(
PersonalData_ID int auto_increment PRIMARY KEY,
`firstname` varchar(30) NOT NULL,
`lastname` varchar(30) NOT NULL,
`phone` varchar(15) UNIQUE NOT NULL,
`EmployeesInformation_id` int,
`AdvancedData_id` int 
);

-- Во 2-й таблице содержатся ведомости о зарплате и должностях сотрудников: главный директор,менеджер, рабочий.
CREATE TABLE EmployeesInformation
(
EmployeesInformation_ID int auto_increment PRIMARY KEY,
`priorSalary` decimal(10.2) NOT NULL,
`salary` decimal(10.2) NOT NULL,
`possitionInCompany`varchar(30) NOT NULL,
`personalData_id` int,
`advancedData_id` int
);

-- В 3-й таблице содержится информация о семейном положении, дате рождения, и месте проживания.
CREATE TABLE AdvancedData
(
AdvancedData_ID int auto_increment PRIMARY KEY,
`maritalStatus` boolean,  -- true married, false is not married
`dataOfBirth` date NOT NULL,
`adress` varchar(100) NOT NULL,
`personalData_id` int,
`employeesInformation_id` int
);


 

