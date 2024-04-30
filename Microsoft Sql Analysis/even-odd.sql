USE AdventureWorks2022
--Write a query using the HumanResources.Employee table to display the BusinessEntityID column. 
--Also include a CASE statement that displays “Even” 
--when the BusinessEntityID value is an even number or “Odd” when it is odd. Hint: Use the modulo operator. 

SELECT BusinessEntityID, CASE 
        WHEN BusinessEntityID%2 = 0 THEN 'Even' 
        ELSE 'Odd' 
        END AS type_group
FROM HumanResources.Employee 

