CREATE DATABASE militaryBase;
USE militaryBase;

CREATE TABLE serviceman
(
id int auto_increment PRIMARY KEY NOT NULL,
firstName varchar(30) NOT NULL,
lastName varchar(30) NOT NULL,
mobilisationData varchar(30) NOT NULL
);

CREATE TABLE onDuty
(
id int auto_increment PRIMARY KEY NOT NULL,
firstName varchar(30) NOT NULL,
lastName varchar(30) NOT NULL,
mobilisationData varchar(30) NOT NULL
);

CREATE TABLE militaryUnits
(
id int auto_increment PRIMARY KEY NOT NULL,
battalion tinyint NOT NULL,
company tinyint NOT NULL,
platoon tinyint NOT NULL
);

CREATE TABLE ranks
(
id int auto_increment PRIMARY KEY NOT NULL,
rankPossition varchar(40) NOT NULL
);

CREATE TABLE weapon
(
id int auto_increment PRIMARY KEY NOT NULL,
type varchar(30) NOT NULL,
mark varchar(30) NOT NULL,
model varchar(30) NOT NULL,
number varchar(30) NOT NULL UNIQUE 
);

CREATE TABLE guardDuty
(
serviceman_id int NOT NULL,
militaryUnits_id int NOT NULL,
ranks_id int NOT NULL,
weapon_id int NOT NULL,
onDuty_id int NOT NULL,

FOREIGN KEY(serviceman_id) REFERENCES serviceman(id),
FOREIGN KEY(militaryUnits_id) REFERENCES militaryUnits(id),
FOREIGN KEY(ranks_id) REFERENCES ranks(id),
FOREIGN KEY(weapon_id) REFERENCES weapon(id),
FOREIGN KEY(onDuty_id) REFERENCES onDuty(id),

PRIMARY KEY(serviceman_id, militaryUnits_id, ranks_id, onDuty_id)
);

INSERT INTO guardDuty (serviceman_id, militaryUnits_id, ranks_id, weapon_id, onDuty_id) VALUES
(1, 5, 6, 1, 1),(1, 5, 6, 2, 2),   -- Petrov
(2, 4, 5, 4, 3),(2, 4, 5, 1, 2),   -- Lodarev
(3, 3, 6, 3, 1),(3, 3, 6, 3, 2),   -- Lieontyev
(4, 5, 6, 2, 1);                   -- Duchov
 

INSERT INTO serviceman(firstName, lastName, mobilisationData) VALUES 
('Petrov', 'Victor', '21.10.2009'),('Lodariev', 'Pavlo', '18.10.2009'),('Lieontyev', 'Kostyantyn', '26.10.2009'),('Duchov', 'Slon', '09.05.2010');

INSERT INTO onDuty (firstName, lastName, mobilisationData) VALUES
('Burov', 'Oleksiy', '12.11.1997'),('Ribakov', 'Mykola', '22,01,1995'),('Derebanov', 'Valentin', '1988');

INSERT INTO militaryUnits(battalion, company, platoon) VALUES (1, 1, 1),(1, 1, 2),(2, 4, 1),(1, 3, 2),(3, 9, 1);

INSERT INTO ranks (rankPossition) VALUES ('Colonel'),('Major'),('Captain'),('Lieutenant'),('Sergeant'),('Soldier');

INSERT INTO weapon(type, mark, model, number) VALUES
('Automaton', 'AK', '47', 'MI 1132-52'), ('Automaton', 'AK', '47', 'PE 2138-56'), ('Automaton', 'AK', '47', 'HO 9364-48'),
('Automaton', 'AK', '74', 'KO 7692-82'),
('Pistol', 'Glock', '20', 'GW 7779-99'), ('Pistol', 'Glock', '20', 'ZX 8877-01'), ('Pistol', 'Glock', '20', 'QR 1119-09'); 


SELECT * FROM ranks;
SELECT * FROM serviceman;
SELECT * FROM onDuty;
SELECT * FROM militaryUnits;
SELECT * FROM weapon;
SELECT * FROM guardDuty;





