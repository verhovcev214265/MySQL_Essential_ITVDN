-- Задание 2
-- Создать базу данных с именем “MyDB”.

CREATE database MyDB;

-- Задание 3
-- В созданной базе данных (из задания 2) создать 3 таблицы:
-- 1-я содержит имена и номера телефонов сотрудников некой компании,
-- 2-я содержит ведомости об их зарплате, и должностях,
-- 3-я содержит информацию о семейном положении, дате рождения и месте проживания.

CREATE TABLE contactsOfEmploees
(
id int AUTO_INCREMENT NOT NULL,
name varchar(30) NOT NULL,
phone int NOT NULL,
primary key(id)
);

INSERT INTO contactsOfEmploees ( name, phone ) VALUES ('Petro', 9379992);
INSERT INTO contactsOfEmploees ( name, phone ) VALUES ('Julia', 9369992);
INSERT INTO contactsOfEmploees ( name, phone ) VALUES ('Oleg', 9359992);

CREATE TABLE  work_informations
(
id int AUTO_INCREMENT NOT NULL,
salary float NOT NULL,
position varchar(100) NOT NULL,
primary key(id)
);

INSERT INTO work_informations ( salary, position ) VALUES ( 250000, 'presedent' );
INSERT INTO work_informations ( salary, position ) VALUES ( 50000, 'prime ministr' );
INSERT INTO work_informations ( salary, position ) VALUES ( 8000, 'deputy of Verhovna Rada' );


CREATE TABLE personal_information
(
id int AUTO_INCREMENT NOT NULL,
marital_status varchar(20) NOT NULL,
data_of_birth double NOT NULL,
place_of_residense varchar(100) NOT NULL,
primary key(id)
);

INSERT INTO personal_information ( marital_status, data_of_birth, place_of_residense) VALUES ( 'unmarried', 09.1965, 'Kyiv');
INSERT INTO personal_information ( marital_status, data_of_birth, place_of_residense) VALUES ( 'married', 11.1960, 'Dnipro');
INSERT INTO personal_information ( marital_status, data_of_birth, place_of_residense) VALUES ( 'unmarried', 12.1972, 'Chernygiv');

-- Задание 4
-- Из задания 3 таблицы 2 получить id сотрудников, зарплата которых больше 10000.

SELECT id FROM work_informations WHERE salary > 10000;


-- Задание 5
-- Из задания 3 сотрудник по id 1 был не женат, женился изменить данные в третьей таблице о семейном
-- положении.

UPDATE mydb.personal_information SET marital_status = 'married' WHERE id = 1;
SELECT * FROM personal_information;






