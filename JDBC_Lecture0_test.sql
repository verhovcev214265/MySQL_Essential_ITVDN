CREATE DATABASE library;
USE library;

CREATE TABLE books
(
id int auto_increment PRIMARY KEY NOT NULL,
name varchar(50) NOT NULL,
numbersOfPages int NOT NULL,
price float NOT NULL
); 

SELECT * FROM books;
