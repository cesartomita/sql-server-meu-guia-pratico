USE AdventureWorks2014;
GO

-- Atualizando campo PhoneNumber da tabela Person.PersonPhone, onde a condição é BusinessEntityID = 1 e PhoneNumber = '999-999-9999':
UPDATE
	Person.PersonPhone
SET
	PhoneNumber = '777-777-7777'
WHERE
	BusinessEntityID = 1
	AND PhoneNumber = '999-999-9999'; -- Muito importante sempre ter a cláusula WHERE em comandos de UPDATE