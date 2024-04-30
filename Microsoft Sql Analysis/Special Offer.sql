USE AdventureWorks2022

--Write a query using the Sales.SpecialOffer table. Display the difference between the MinQty and MaxQty 
--columns along with the SpecialOfferID and Description columns. 


SELECT MaxQty - MinQty AS diff, SpecialOfferID, Description
FROM Sales.SpecialOffer

