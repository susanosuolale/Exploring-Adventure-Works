USE AdventureWorks2022
--Write a query using the Sales.SpecialOffer table that multiplies the MaxQty column by the DiscountPCT column. 
--If the MaxQty value is null, replace it with the value 10. Include the SpecialOfferID and Description columns in the results.

SELECT COALESCE(MaxQty *DiscountPCT, 10) AS Multiply, SpecialOfferID, Description
FROM Sales.SpecialOffer

