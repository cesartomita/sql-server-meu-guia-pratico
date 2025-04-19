USE AdventureWorks2014;
GO

-- Retorna todas as colunas:
SELECT
	*
FROM
	Person.Person;

-- Retorna somente os campos BusinessEntityID, FirstName e LastName:
SELECT
	BusinessEntityID,
	FirstName,
	LastName
FROM
	Person.Person;