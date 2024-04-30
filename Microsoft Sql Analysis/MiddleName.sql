USE AdventureWorks2022
--Write a query using a WHERE clause that displays all the names in Person.Person with the middle name J. 
--Display the first, last, and middle names along with the ID numbers.


SELECT FirstName, MiddleName, LastName, BusinessEntityID
FROM Person.Person
WHERE MiddleName = 'J'
