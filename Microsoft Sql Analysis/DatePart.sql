USE AdventureWorks2022
--Write a query that displays the year of each order date and the numeric month of each order date in separate columns in the results. 
--Include the SalesOrderID and OrderDate columns. 


SELECT DATEPART(year, OrderDate) AS year,DATEPART(month, OrderDate) AS month, SalesOrderID, OrderDate
FROM Sales.SalesOrderHeader 

