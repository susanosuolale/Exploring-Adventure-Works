USE AdventureWorks2022
--Write a query using the Sales.SalesOrderDetail table to display a value (“Under 10” or “10–19” or “20–29” or “30–39” or “40 and over”)
--based on the OrderQty value by using the CASE function. Include the SalesOrderID and OrderQty columns in the results. 

SELECT OrderQty,SalesOrderID, CASE 
        WHEN OrderQty < 10 THEN 'Under 10' 
		WHEN OrderQty >= 10 AND OrderQty < 19 THEN '10 - 19' 
		WHEN OrderQty >= 19 AND OrderQty < 29 THEN '19 - 29' 
		WHEN OrderQty>= 29 AND OrderQty < 39 THEN '29 - 39' 
        ELSE '40 & Over' 
        END AS type_group
FROM Sales.SalesOrderDetail 

