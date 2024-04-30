USE AdventureWorks2022

--Write a query using a WHERE clause that displays all the employees listed in the HumanResources.
--Employee table who have the job title Research and Development Engineer. Display the business entity ID number,
--the login ID, and the title for each one.


SELECT BusinessEntityID, LoginID, JobTitle
FROM HumanResources.Employee
WHERE JobTitle = 'Research and Development Engineer'