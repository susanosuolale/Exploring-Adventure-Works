USE AdventureWorks2022

--Write a query using the Production.Product table displaying the product ID, colour, and name columns.
--If the colour column contains a NULL value, replace the colour with No Colour.

SELECT ProductID, COALESCE(Color, 'No Color') AS Color, Name
FROM Production.Product

