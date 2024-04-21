-- Exemplo simples juntando duas queries de select usando o UNION ALL.

-- Usando o database AdventureWorks2014 como teste.

SELECT TOP 10
	BusinessEntityID,
	FirstName,
	LastName
FROM
	Person.Person
WHERE
	EmailPromotion = 1

UNION ALL

SELECT TOP 10
	BusinessEntityID,
	FirstName,
	LastName
FROM
	Person.Person
WHERE
	EmailPromotion = 2;