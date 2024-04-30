USE AdventureWorks2022

--Write a query that displays all the products along with the SalesOrderID 
--even if an order has never been placed for that product. Join to the Sales.SalesOrderDetail table using the ProductID column.

SELECT PP.Name,SalesOrderID
FROM Sales.SalesOrderDetail AS SOD 
JOIN Production.Product AS PP ON SOD.ProductID = PP.ProductID