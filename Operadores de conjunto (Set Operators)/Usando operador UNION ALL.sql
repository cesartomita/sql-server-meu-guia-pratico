-- UNION ALL: Similar ao UNION, mas inclui todos os valores, incluindo duplicados. Ou seja, retorna todos os registros das consultas combinadas.

USE AdventureWorks2014;

SELECT
    FirstName,
    LastName
FROM
    Person.Person
WHERE
    BusinessEntityID < 10

UNION ALL

SELECT
    FirstName,
    LastName
FROM
    Person.Person
WHERE
    BusinessEntityID BETWEEN 5 AND 15;

-- Resultado: 20 rows affected