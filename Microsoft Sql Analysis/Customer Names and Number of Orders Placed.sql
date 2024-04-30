USE AdventureWorks2022

--Write a query joining the Person.Person, Sales.Customer, and Sales.SalesOrderHeader tables to return
--a list of the customer names along with a count of the orders placed. 


SELECT CONCAT(FirstName, ' ', COALESCE(MiddleName, ''), ' ', LastName) AS person_name, COUNT(OrderDate)
FROM Person.Person AS P
JOIN Sales.Customer AS SC ON P.BusinessEntityID = SC.PersonID
JOIN Sales.SalesOrderHeader AS SOH ON SC.CustomerID = SOH.CustomerID
JOIN Sales.SalesOrderDetail AS SOD ON SOH.SalesOrderID = SOD.SalesOrderID
JOIN Production.Product AS PP ON SOD.ProductID = PP.ProductID
GROUP BY CONCAT(FirstName, ' ', COALESCE(MiddleName, ''), ' ', LastName)