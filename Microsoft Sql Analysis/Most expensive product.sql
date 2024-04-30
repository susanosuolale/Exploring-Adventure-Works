USE AdventureWorks2022
--Write a query to determine the price of the most expensive product ordered. 
--Use the UnitPrice column of the Sales.SalesOrderDetail table.


SELECT TOP(1) PP.Name, SOD.UnitPrice
FROM  Sales.SalesOrderHeader AS SOH 
JOIN Sales.SalesOrderDetail AS SOD ON SOH.SalesOrderID = SOD.SalesOrderID
JOIN Production.Product AS PP ON SOD.ProductID = PP.ProductID
ORDER BY 2 DESC
