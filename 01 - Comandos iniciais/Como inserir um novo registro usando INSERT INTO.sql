USE AdventureWorks2014;
GO

-- Inserindo um novo registro na tabela Person.PersonPhone:
INSERT INTO	Person.PersonPhone
(
	BusinessEntityID,
	PhoneNumber,
	PhoneNumberTypeID
)
VALUES
(
	1,
	'999-999-9999',
	2
);