USE AdventureWorks2014;

SELECT
    FirstName,
    LastName
FROM
    Person.Person
WHERE
    BusinessEntityID < 10

EXCEPT

SELECT
    FirstName,
    LastName
FROM
    Person.Person
WHERE
    BusinessEntityID BETWEEN 5 AND 15;

-- Resultado: 4 rows affected