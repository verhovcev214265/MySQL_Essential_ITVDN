CREATE table animal
(
animal_id int primary key,
name varchar(30) NOT NULL
);

CREATE TABLE bird
(
bird_id int primary key,
name varchar(30) NOT NULL
);

CREATE TABLE animal_bird_relationship
(
animal_id int NOT NULL,
bird_id int NOT NULL,

PRIMARY KEY (animal_id, bird_id)
);

INSERT INTO animal (animal_id, name) VALUES (1, 'Deer'), (2, 'Toad'), (3, 'Eleohant');
INSERT INTO bird (bird_id, name) VALUES (1, 'crane'), (2, 'ostrich'), (3, 'chicken');