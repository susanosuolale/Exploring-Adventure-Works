USE AdventureWorks2022

--Write a query that calculates the number of days between the date an order was placed and the date 
--that it was shipped using the Sales.SalesOrderHeader table. Include the SalesOrderID, OrderDate, and ShipDate columns. 

SELECT DATEDIFF(day, OrderDate, ShipDate) AS DurationInDays, SalesOrderID, OrderDate,ShipDate 
FROM Sales.SalesOrderHeader 

