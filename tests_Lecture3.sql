CREATE DATABASE shopDB;
USE shopDB;


CREATE TABLE JoinTest1
(
id_jt1 int,
name varchar(30)
);

CREATE TABLE JoinTest2
(
id_jt2 int,
name varchar(30)
);

INSERT INTO JoinTest1 (id_jt1, name)
VALUES  (1,'one'),
		(2,'two'),
		(3,'three'),
		(4,'four'),
		(5,'five'),
		(9,'nine'),
		(10,'ten');
        
INSERT INTO JoinTest2 (id_jt2, name)
VALUES  (1,'one'),
		(2,'two'),
		(3,'three'),
		(4,'four'),
		(5,'five'),
		(6,'six'),
		(7,'seven'),
		(8,'eight');
        
SELECT * FROM JoinTest1;
SELECT * FROM JoinTest2;

SELECT * FROM JoinTest1
WHERE id_jt1 IN
(SELECT id_jt2 FROM JoinTest2);

SELECT * FROM JoinTest1 WHERE id_jt1 = (SELECT id_jt2 FROM JoinTest2 WHERE name = 'five');













SELECT * FROM JoinTest2 INNER JOIN JoinTest1 ON id_jt1 = id_jt2;

SELECT * FROM JoinTest2 LEFT OUTER JOIN JoinTest1 ON id_jt1 = id_jt2;

SELECT * FROM JoinTest2 RIGHT OUTER JOIN JoinTest1 ON id_jt1 = id_jt2;

SELECT * FROM JoinTest2 CROSS JOIN JoinTest1;

SELECT * FROM JoinTest1
UNION
SELECT * FROM JoinTest2;

SELECT * FROM JoinTest1
UNION ALL
SELECT * FROM JoinTest2;

SELECT * FROM JoinTest1 LEFT OUTER JOIN JoinTest2 ON id_jt1 = id_jt2
UNION
SELECT * FROM JoinTest1 RIGHT OUTER JOIN JoinTest2 ON id_jt1 = id_jt2;

