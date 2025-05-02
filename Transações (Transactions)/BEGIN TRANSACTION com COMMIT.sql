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

-- Confirma todas as alterações feitas desde o BEGIN TRANSACTION
COMMIT; 

SELECT FirstName FROM Person.Person WHERE BusinessEntityID = 1;
-- Resultado: John
