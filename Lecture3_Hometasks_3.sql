-- Задание 4
-- Сделайте выборку при помощи JOIN’s для таких заданий:

-- 1) Получите контактные данные сотрудников (номера телефонов, место жительства).

ALTER TABLE PersonalData ADD CONSTRAINT fk_personalData_to_advancedData 
FOREIGN KEY(AdvancedData_id) REFERENCES AdvancedData(AdvancedData_ID);

SELECT CONCAT(firstname, ' ', lastname) AS EMPLOYEE, PersonalData.phone AS PHONE, AdvancedData.adress AS ADRESS FROM PersonalData
JOIN AdvancedData ON AdvancedData.AdvancedData_id = PersonalData.PersonalData_id;


-- 2) Получите информацию о дате рождения всех холостых сотрудников и их номера телефонов.

ALTER TABLE AdvancedData ADD CONSTRAINT fk_advancedData_to_personalData
FOREIGN KEY(personalData_id) REFERENCES PersonalData(PersonalData_ID);

SELECT CONCAT(PersonalData.firstname, ' ', PersonalData.lastname) AS EMPLOYEE, dataOfBirth AS BIRTHDAY, PersonalData.phone AS PHONE FROM  AdvancedData
JOIN PersonalData ON PersonalData.PersonalData_id = AdvancedData.AdvancedData_id
WHERE AdvancedData.maritalStatus IN (false);


-- 3) Получите информацию обо всех менеджерах компании: дату рождения и номер телефона.

ALTER TABLE EmployeesInformation ADD CONSTRAINT fk_employeesInformation_to_personalData
FOREIGN KEY(personalData_id) REFERENCES PersonalData(PersonalData_ID);

ALTER TABLE EmployeesInformation ADD CONSTRAINT fk_employeesInformation_to_advancedData
FOREIGN KEY(advancedData_id) REFERENCES AdvancedData(AdvancedData_ID);

SELECT CONCAT(PersonalData.firstname, ' ', PersonalData.lastname) AS MANAGER, 
EmployeesInformation.possitionInCompany AS POSITION,
AdvancedData.dataOfBirth AS BIRTHDAY,
PersonalData.phone AS PHONE FROM EmployeesInformation
JOIN PersonalData ON PersonalData.PersonalData_id = EmployeesInformation.EmployeesInformation_ID
JOIN AdvancedData ON AdvancedData.AdvancedData_ID = EmployeesInformation.EmployeesInformation_ID
GROUP BY MANAGER, BIRTHDAY, PHONE 
HAVING EmployeesInformation.possitionInCompany IN ('PM', 'Manager'); 


 