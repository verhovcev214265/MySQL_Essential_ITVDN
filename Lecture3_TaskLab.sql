CREATE DATABASE Publishing;
USE Publishing;

CREATE TABLE Country
(
ID_Country int auto_increment PRIMARY KEY NOT NULL,
nameOfCountry varchar(40) NOT NULL
);

INSERT INTO Country (nameOfCountry) VALUES ('Ukraine'), ('USA'), ('France'), ('Germany'), ('England'), ('Sweden'), ('Poland'), ('Italy'), ('Spain'), ('Greece');
SELECT * FROM Country;

CREATE TABLE Authors
(
ID_Author int auto_increment PRIMARY KEY NOT NULL,
firstName varchar(20) NOT NULL,
lastName varchar (30) NOT NULL,
countryID int NOT NULL,

FOREIGN KEY(countryID) REFERENCES Country(ID_Country)
);

INSERT INTO Authors
(firstName, lastName, countryID)
VALUES ('Patrick', 'Fluince', 2),
	   ('Mark', 'Schaize', 3),
	   ('Sam', 'Duck', 4),
	   ('Ganna', 'Lyisko', 5),
	   ('Drek', 'Frucken', 6),
	   ('Janush', 'Navak', 7),
	   ('Vlad', 'Ole', 8),
	   ('Eden', 'Speilenman', 9),
	   ('Aristotel', 'Greckiy', 10),
	   ('John', 'Nork', 1);
       
       
CREATE TABLE bookTopic
(
ID_Topic int auto_increment PRIMARY KEY NOT NULL,
topicName varchar(50) NOT NULL
);

INSERT INTO bookTopic(topicName) VALUES ('Philosophy'), ('Technical literature'), ('Science Fiction'), ('Web Development'), ('Database theory'), ('Networks ans security');

CREATE TABLE Books
(
ID_book int auto_increment PRIMARY KEY NOT NULL,
bookName varchar(30) NOT NULL,
price double NOT NULL,
drawingOfBook int NOT NULL,
numbersOfPages int NOT NULL,
topicID int NOT NULL,
authorID int NOT NULL,

FOREIGN KEY (authorID) REFERENCES Authors(ID_Author), 
FOREIGN KEY (topicID) REFERENCES bookTopic(ID_Topic)
);


INSERT INTO Books
(bookName, price, drawingOfBook, numbersOfPages, topicID, authorID)
VALUES ('First steps on PC', 59.99, 10000, 345, 1, 10),
	('PC it is pro100', 29.99, 5000, 444, 1, 10),
	('C++ for newbies', 35.99, 15000, 542, 2, 3),
	('C++ for professional', 39.99, 25000, 245, 2, 3),
	('HTML + CSS', 25.99, 50000, 564, 3, 3),
	('HTML 5.0', 20.99, 45000, 600, 3, 3),
	('MS SQL', 15.95, 65000, 755, 4, 4),
	('NoSQL', 55.55, 85000, 350, 4, 4),
	('Theory of TCP\IP', 15.95, 20000, 588, 5, 5),
	('Introducing on network', 17.95, 22000, 754, 5, 5),
	('Newest PC', 95.59, 75000, 792, 1, 6),
	('Overclocking PC', 105.59, 97000, 379, 1, 6),
	('Java for newbies', 58.49, 38000, 555, 2, 7),
	('C# and WPF for professional', 55.99, 50000, 888, 2, 7),
	('Phyton for web', 76.55, 50000, 564, 3, 8),
	('JavaScript for web', 67.50, 45000, 600, 3, 8),
	('MS SQL 2017', 15.95, 95000, 755, 4, 9),
	('Introducing to NoSQL', 144.99, 77550, 350, 4, 9),
	('TCP\IP protocol', 99.95, 24000, 788, 5, 10),
	('Hacking on networks', 87.95, 27000, 454, 5, 10);

CREATE TABLE bookStore
(
ID_BookStore int auto_increment PRIMARY KEY NOT NULL,
storeName varchar (30) NOT NULL,
country_ID int NOT NULL,

FOREIGN KEY (country_ID) REFERENCES country(ID_Country)
);

INSERT INTO bookStore (storeName, country_ID) VALUES ('Books for IT', 1), ('ITBook', 3),('Book.com', 4), ('Books.Kingdom', 5), ('RidniBooks', 6), ('Readers.SW', 7), ('Bukwoedy', 8);

CREATE TABLE Sales 
(
sales_ID int AUTO_INCREMENT PRIMARY KEY NOT NULL,
bookStore_ID int NOT NULL,
book_ID int NOT NULL,
price double NOT NULL,
Qty int NOT NULL
);

INSERT INTO Sales
(bookStore_ID, book_ID, price, Qty)
VALUES 
(5, 5, 88.75, 11),
(3, 6, 43.99, 33),
(1, 7, 39.99, 44),
(6, 1, 11.75, 9),
(9, 2, 35.75, 8),
(10, 3, 44.15, 65),
(3, 4, 22.15, 56),
(2, 5, 115.55, 32),
(4, 6, 79.99, 27),
(7, 7, 95.49, 67),
(8, 8, 13.95, 14),
(4, 2, 137.95, 53),
(2, 1, 225.00, 12),
(8, 5, 145.95, 23),
(1, 7, 88.75, 45);

