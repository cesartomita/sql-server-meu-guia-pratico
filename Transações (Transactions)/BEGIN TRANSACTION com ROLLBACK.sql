USE AdventureWorks2014;

SELECT FirstName FROM Person.Person WHERE BusinessEntityID = 1;
-- Resultado: Ken

-- Inicia a transação
BEGIN TRANSACTION; 

	-- Atualiza o FirstName para John
	UPDATE
		Person.Person
	SET
		FirstName = 'John'
	WHERE
		BusinessEntityID = 1;

-- Cancela todas as alterações feita desde o BEGIN TRANSACTION
ROLLBACK; 

SELECT FirstName FROM Person.Person WHERE BusinessEntityID = 1;
-- Resultado: Ken
