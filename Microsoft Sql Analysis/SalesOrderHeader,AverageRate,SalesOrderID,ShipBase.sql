USE AdventureWorks2022

--The Sales.SalesOrderHeader table contains foreign keys to the Sales.CurrencyRate and Purchasing.ShipMethod tables. 
--Write a query joining all three tables, making sure it contains all rows from Sales.SalesOrderHeader. 
--Include the CurrencyRateID, AverageRate, SalesOrderID, and ShipBase columns.


SELECT SOH.*, AverageRate, SalesOrderID, ShipBase
FROM Sales.CurrencyRate AS CR 
JOIN Sales.SalesOrderHeader AS SOH ON SOH.CurrencyRateID = CR.CurrencyRateID
JOIN Purchasing.ShipMethod AS p ON p.ShipMethodID = SOH.ShipMethodID