USE AdventureWorks2022

--Write a query that displays the count of orders placed by year for each customer using the Sales.SalesOrderHeader table. 


SELECT DATEPART(year,OrderDate), COUNT(OrderDate)
FROM  Sales.SalesOrderHeader AS SOH 
JOIN Sales.SalesOrderDetail AS SOD ON SOH.SalesOrderID = SOD.SalesOrderID
JOIN Production.Product AS PP ON SOD.ProductID = PP.ProductID
GROUP BY DATEPART(year,OrderDate)
