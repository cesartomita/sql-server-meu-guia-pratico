-- INTERSECT: Retorna apenas os registros que são comuns a ambas as consultas, ou seja, a interseção dos conjuntos de dados.

USE AdventureWorks2014;

SELECT
    FirstName,
    LastName
FROM
    Person.Person
WHERE
    BusinessEntityID < 10

INTERSECT

SELECT
    FirstName,
    LastName
FROM
    Person.Person
WHERE
    BusinessEntityID BETWEEN 5 AND 15;

-- Resultado: 5 rows affected