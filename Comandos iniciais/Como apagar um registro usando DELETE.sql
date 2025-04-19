USE AdventureWorks2014;
GO

-- Deletando o registro da tabela Person.PersonPhone, onde a condição é BusinessEntityID = 1 e PhoneNumber = '777-777-7777':
DELETE
	Person.PersonPhone
WHERE
	BusinessEntityID = 1
	AND PhoneNumber = '777-777-7777'; -- Muito importante sempre ter a cláusula WHERE em comando de DELETE
