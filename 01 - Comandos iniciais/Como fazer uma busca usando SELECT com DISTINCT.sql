USE AdventureWorks2014;
GO

-- Elimina resultados duplicados:
SELECT DISTINCT
	FirstName,
	LastName
FROM
	Person.Person;