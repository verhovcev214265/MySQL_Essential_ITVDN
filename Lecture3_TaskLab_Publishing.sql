CREATE DATABASE Publishing;
USE Publishing;

CREATE TABLE Country
(
country_id int AUTO_INCREMENT PRIMARY KEY,
`name` varchar(20) NOT NULL  
);


CREATE TABLE Author
(
author_id int AUTO_INCREMENT PRIMARY KEY,
`firstname` varchar(20) NOT NULL,
`lastname` varchar(20) NOT NULL,
`country_id` int,

CONSTRAINT fk_countryID FOREIGN KEY (`country_id`) REFERENCES Country(country_id)
);

       
 CREATE TABLE Topic
 (
 topic_id int AUTO_INCREMENT PRIMARY KEY,
 `name` varchar(30) NOT NULL
 );
 
       
CREATE TABLE Book
(
book_id int AUTO_INCREMENT PRIMARY KEY,
`name` varchar(30) NOT NULL,
`topic_id` int NOT NULL,
`author_id` int NOT NULL,
`price` decimal(6, 2) NOT NULL,
`copyOfBook` int NOT NULL,
`pages` int unsigned NOT NULL,

CONSTRAINT fk_topicID FOREIGN KEY (`topic_id`) REFERENCES Topic(`topic_id`),
CONSTRAINT fk_authorID FOREIGN KEY (`author_id`) REFERENCES Author(`author_id`)
);


CREATE TABLE Store
(
store_id int AUTO_INCREMENT PRIMARY KEY,
`name` varchar(20) NOT NULL,
`country_id` int NOT NULL,

CONSTRAINT fk_countryID_to_Store FOREIGN KEY (`country_id`) REFERENCES Country(`country_id`)
);      


CREATE TABLE Sales
(
Sales_id int AUTO_INCREMENT PRIMARY KEY,
`store_id` int NOT NULL,
`book_id` int NOT NULL,
`price` decimal(6,2) NOT NULL,
`Qty` int unsigned NOT NULL,

CONSTRAINT fk_storeID_to_sales FOREIGN KEY (`store_id`) REFERENCES Store(`store_id`),
CONSTRAINT fk_bookID_to_sales FOREIGN KEY (`book_id`) REFERENCES Book(`book_id`)
);
       
      

