CREATE DATABASE uniqueKey;
USE uniqueKey;

CREATE TABLE passport
(
id int auto_increment PRIMARY KEY,
firstName varchar(30) NOT NULL,
lastName varchar(30) NOT NULL,
passportNumber nvarchar(10) UNIQUE KEY
);

ALTER TABLE passport ADD column phone varchar(20) UNIQUE KEY;
ALTER TABLE passport ADD column email varchar(40) UNIQUE KEY;

INSERT INTO passport (firstName, lastName, passportNumber, phone, email) 
VALUES
('Oleksandr', 'Maskin', 'BR123456', '0981123456', 'borodatiy@azov.ua'), ('Oleksandr', 'Maskin', 'BR123457', '0981123457', 'borodatiy@azovec.ua');

SELECT * FROM passport;