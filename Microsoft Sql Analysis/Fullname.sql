USE AdventureWorks2022
--Using the Person.Person table, build the full names using Title, FirstName, MiddleName, LastName, and Suffix columns.
--Check the table definition to see which columns allow NULL values, and use the COALESCE function on the appropriate columns.

SELECT CONCAT(COALESCE(Title,''), FirstName,' ', COALESCE(MiddleName,''),' ', LastName,' ', COALESCE(Suffix,''))
FROM Person.Person 

