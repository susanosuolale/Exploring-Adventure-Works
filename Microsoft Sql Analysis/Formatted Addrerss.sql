USE AdventureWorks2022
--Write a query that displays in the “AddressLine1 (City PostalCode)” format from the Person.Address table.


SELECT CONCAT(AddressLine1, ' (', City, ' ', PostalCode, ')') AS FormattedAddress
FROM Person.Address

