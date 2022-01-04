
INSERT INTO PersonalData (firstname, lastname, phone) VALUES
('Oleksandr', 'Verhovcev', '0967751240'), ('Mark', 'Avrelius', '0971112223'), ('Oleksandr', 'Maskin', '0952213455'),
('Andriy', 'Pospelov', '0981021034'), ('Sergiy', 'Karpovskyi', '0734569871'), ('Sarhan', 'Guseinov', '0951239876'); 
select * from PersonalData;

INSERT INTO EmployeesInformation (priorSalary, salary, possitionInCompany) VALUES 
(15657.99, 65000.50, 'CEO' ), (9999.99, 35000.21, 'PM'), (5555.55, 28888.88, 'Manager'),
(1000.25, 13200.24, 'employee'), (500.25, 11200.24, 'employee'), (4000.25, 33200.24, 'employee');
SELECT * FROM EmployeesInformation;

INSERT INTO AdvancedData (maritalStatus, dataOfBirth, adress) VALUES
(true, '1990-08-02', 'Dnipro'), (true, '1992-09-04', 'Rome'), (false, '1991-12-22', 'Dnipro'),
(true, '1985-02-11', 'Dnipro'), (true, '1983-06-19', 'Kam`yanske'), (true, '1988-08-02', 'Volnovacha');
SELECT * FROM AdvancedData;