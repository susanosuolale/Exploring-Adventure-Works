USE AdventureWorks2022

--Write a query displaying all the columns of the Production.ProductCostHistory 
--table from the rows that were modified on June 17, 2003.

SELECT *
FROM Production.ProductCostHistory
WHERE ModifiedDate = '2003-06-17'
