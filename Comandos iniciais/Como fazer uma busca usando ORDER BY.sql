USE AdventureWorks2014;
GO

-- Ordena os resultados a partir do campo FirstName, do mais baixo para o mais alto (crescente):
SELECT
	BusinessEntityID,
	FirstName,
	LastName
FROM
	Person.Person
ORDER BY
	FirstName ASC;

-- Ordena os resultados a partir do campo FirstName, do mais alto para o mais baixo (decrescente):
SELECT
	BusinessEntityID,
	FirstName,
	LastName
FROM
	Person.Person
ORDER BY
	FirstName DESC;