USE AdventureWorks2022
--Write a query that displays the names of the customers along with the product names that they have purchased.
--Hint: Five tables will be required to write this query! 


SELECT CONCAT(FirstName, ' ', COALESCE(MiddleName, ''), ' ', LastName) AS person_name, PP.Name
FROM Person.Person AS P
JOIN Sales.Customer AS SC ON P.BusinessEntityID = SC.PersonID
JOIN Sales.SalesOrderHeader AS SOH ON SC.CustomerID = SOH.CustomerID
JOIN Sales.SalesOrderDetail AS SOD ON SOH.SalesOrderID = SOD.SalesOrderID
JOIN Production.Product AS PP ON SOD.ProductID = PP.ProductID