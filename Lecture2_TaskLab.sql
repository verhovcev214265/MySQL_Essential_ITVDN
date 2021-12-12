CREATE DATABASE Publishing;
USE Publishing;

CREATE TABLE country
(
ID_Country int auto_increment PRIMARY KEY NOT NULL,
nameOfCountry varchar(40) NOT NULL
);

CREATE TABLE bookTopic
(
ID_Topic int auto_increment PRIMARY KEY NOT NULL,
topicName varchar(50) NOT NULL
);

CREATE TABLE Author
(
ID_Author int auto_increment PRIMARY KEY NOT NULL,
countryID int NOT NULL,
firstName varchar(20) NOT NULL,
lastName varchar (30) NOT NULL,

FOREIGN KEY(countryID) REFERENCES country(ID_Country)
);

CREATE TABLE book
(
ID_Book int auto_increment PRIMARY KEY NOT NULL,
bookNane varchar(30) NOT NULL,
authorID int NOT NULL,
topicID int NOT NULL,
numbersOfPages int NOT NULL,
price double NOT NULL,

FOREIGN KEY (authorID) REFERENCES Author(ID_Author),
FOREIGN KEY (topicID) REFERENCES bookTopic(ID_Topic)
);

CREATE TABLE bookStore
(
ID_BookStore int auto_increment PRIMARY KEY NOT NULL,
storeName varchar (30) NOT NULL,
countryID int NOT NULL,

FOREIGN KEY (countryID) REFERENCES country(ID_Country)
);

CREATE TABLE Priting_House
(
ID_pritingHouse int NOT NULL,
storeID int NOT NULL,
bookID int NOT NULL,
price double NOT NULL,
quantity int NOT NULL, 

FOREIGN KEY(bookID) REFERENCES book(ID_Book),
PRIMARY KEY (ID_pritingHouse, storeID)
);


INSERT INTO country(nameOfCountry) VALUES ('Ukraine'), ('USA'), ('United Kingdom'), ('Lithuania');

INSERT INTO bookTopic(topicName) VALUES ('Philosophy'), ('Technical literature'), ('Fiction');

INSERT INTO Author (firstName, lastName, countryID) VALUES
('Valeriy', 'Markus', 1), ('Bruce', 'Eckel', 2), ('Dan', 'Brown', 2), ('Joanne', 'Rowling', 3), ('Juozas', 'Aputis', 4);

INSERT INTO book (bookNane, authorID, topicID, numbersOfPages, price) VALUES 
('Tracks on the road', 1, 3, 586, 650.99),
('Smėlynuose sustoti negalima', 5, 3, 222, 650.50),
('Philosophers Stone', 4, 3, 886, 750.95),
('Half-Blood Prince ', 4, 3, 1586, 999.99),
('Philosophy Java', 2, 2, 776, 1650.99),
('The lost symbol', 3, 3, 996, 815.77),
('Inferno', 3, 3, 1006, 651.99);

INSERT INTO bookStore (storeName, countryID) VALUES
('Stariy Lev', 1), ('Star Books', 2), ('Royal Library', 3), ('Pegasas', 4);

INSERT INTO Priting_House (ID_pritingHouse, storeID, bookID, price, quantity) VALUES 
(1, 2, 4, 700.50, 15),
(2, 1, 3, 500.95, 100),
(3, 4, 7, 499.50, 150),
(4, 2, 4, 488.25, 25),
(5, 2, 5, 999.50, 55),
(6, 2, 4, 399.99, 77);


SELECT * FROM country;
SELECT * FROM bookTopic;
SELECT * FROM Author;
SELECT * FROM book;
SELECT * FROM bookStore;
SELECT * FROM Priting_House;









