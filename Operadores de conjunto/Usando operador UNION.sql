-- UNION: Combina os resultados de duas ou mais consultas e retorna apenas valores distintos, ou seja, elimina duplicatas.


USE AdventureWorks2014;

SELECT
    FirstName,
    LastName
FROM
    Person.Person
WHERE
    BusinessEntityID < 10

UNION

SELECT
    FirstName,
    LastName
FROM
    Person.Person
WHERE
    BusinessEntityID BETWEEN 5 AND 15;

-- Resultado: 15 rows affected