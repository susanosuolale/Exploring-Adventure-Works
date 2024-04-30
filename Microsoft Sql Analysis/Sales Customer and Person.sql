USE AdventureWorks2022

--The customer names also appear in the Person.Person table. Join the Sales.Customer table to the Person.Person table.
--The BusinessEntityID column in the Person.Person table matches the PersonID column in the Sales.Customer table. 
--Display the CustomerID, StoreID, and TerritoryID columns along with the name columns. 


SELECT CustomerID, StoreID, TerritoryID
FROM Person.Person 
INNER JOIN Sales.Customer ON Person.Person.BusinessEntityID = Sales.Customer.PersonID

