USE AdventureWorks2022
--The HumanResources.Employee table does not contain the employee names. 
--Join that table to the Person.Person table on the BusinessEntityID column. Display the job title, birth date, first name, and last name.


SELECT JobTitle, BirthDate, FirstName, LastName
FROM Person.Person 
INNER JOIN HumanResources.Employee ON Person.Person.BusinessEntityID = HumanResources.Employee.BusinessEntityID

