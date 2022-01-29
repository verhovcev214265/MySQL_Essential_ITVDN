USE publishing;

INSERT INTO Country (`name`)
VALUES
      ('Ukraine'),
      ('USA'),
      ('France'),
      ('Germany'),
      ('England'),
      ('Sweden'),
      ('Poland'),
      ('Italy'),
      ('Spain'),
      ('Greece');
      
SELECT * FROM Country;


INSERT INTO Author
(`firstname`, `lastname`, `country_id`)
VALUES
       ('Patrick', 'Fluince', 2),
	   ('Mark', 'Schaize', 3),
	   ('Sam', 'Duck', 4),
	   ('Ganna', 'Lyisko', 5),
	   ('Drek', 'Frucken', 6),
	   ('Janush', 'Navak', 7),
	   ('Vlad', 'Ole', 8),
	   ('Eden', 'Speilenman', 9),
	   ('Aristotel', 'Greckiy', 10),
	   ('John', 'Nork', 1);
       
SELECT * FROM Author;


INSERT INTO Topic(`Name`)
VALUES
       ('Philosophy'),
       ('Technical literature'),
       ('Science Fiction'),
       ('Web Development'),
       ('Database theory'),
       ('Networks ans security');

SELECT * FROM Topic;     

INSERT INTO Book
(`name`, `topic_id`, `author_id`, `price`, `copyOfBook`, `pages`)
VALUES
      ('First steps on PC', 2, 10, 59.99, 10000, 345),
	  ('PC it is pro100', 2, 10, 29.99, 5000, 444),
	  ('C++ for newbies', 3, 3, 35.99, 15000, 542),
	  ('C++ for professional', 3, 3, 39.99, 25000, 245),
	  ('HTML + CSS', 3, 4, 25.99, 50000, 564),
	  ('HTML 5.0', 3, 4, 20.99, 45000, 600),
	  ('MS SQL', 5, 4, 15.95, 65000, 246),
	  ('NoSQL', 5, 4, 55.55, 85000, 350),
	  ('Theory of TCP\IP', 6, 5,  15.95, 20000, 588),
	  ('Introducing on network', 6, 5,  17.95, 22000, 754),
	  ('Newest PC', 1, 6, 95.59, 75000, 792),
	  ('Overclocking PC', 1, 6, 105.59, 97000, 379),
	  ('Java for newbies', 3, 7, 58.49, 38000, 555),
	  ('C# and WPF for professional', 3, 7, 55.99, 50000, 888),
	  ('Phyton for web', 4, 8, 76.55, 50000, 564),
	  ('JavaScript for web', 4, 8, 67.50, 45000, 600),
	  ('MS SQL 2017', 5, 8, 15.95, 95000, 755),
	  ('Introducing to NoSQL', 5, 9, 144.99, 77550, 350),
	  ('TCP\IP protocol', 5, 10,  99.95, 24000, 788),
	  ('Hacking on networks', 5, 10, 87.95, 27000, 454);
      
      SELECT * FROM Book;
      
      
INSERT INTO Store (`name`, `country_id`) 
VALUES
	   ('Books for IT', 1),
       ('ITBook', 3),
       ('Book.com', 4),
       ('Books.Kingdom', 5),
       ('RidniBooks', 6),
       ('Readers.SW', 7),
       ('Bukwoedy', 8);
       
SELECT * FROM Store;


INSERT INTO Sales
(`store_id`, `book_id`, `price`, `Qty`)
VALUES 
        (5, 5, 88.75, 11),
        (3, 6, 43.99, 33),
		(1, 7, 39.99, 44),
        (6, 1, 11.75, 9),
        (2, 2, 35.75, 8),
		(2, 3, 44.15, 65),
        (3, 4, 22.15, 56),
        (2, 5, 115.55, 32),
		(4, 6, 79.99, 27),
        (7, 7, 95.49, 67),
        (5, 8, 13.95, 14),
        (4, 2, 137.95, 53),
		(2, 1, 225.00, 12),
        (4, 5, 145.95, 23),
        (1, 7, 88.75, 45);
        
SELECT * FROM Sales;  
