USE AdventureWorks2022

--Write a query that lists the total number of products ordered. 
--Use the OrderQty column of the Sales.SalesOrderDetail table and the SUM function. 

SELECT PP.Name, SUM(OrderQty)
FROM  Sales.SalesOrderHeader AS SOH 
JOIN Sales.SalesOrderDetail AS SOD ON SOH.SalesOrderID = SOD.SalesOrderID
JOIN Production.Product AS PP ON SOD.ProductID = PP.ProductID
GROUP BY PP.Name