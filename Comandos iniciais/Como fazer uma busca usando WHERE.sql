USE AdventureWorks2014;
GO

-- Filtrando a coluna EmailPromotion com o valor 1:
SELECT
	BusinessEntityID,
	FirstName,
	LastName
FROM
	Person.Person
WHERE
	EmailPromotion = 1;

-- Filtrando a coluna FirstName com o valor 'John':
SELECT
	BusinessEntityID,
	FirstName,
	LastName
FROM
	Person.Person
WHERE
	FirstName = 'John';