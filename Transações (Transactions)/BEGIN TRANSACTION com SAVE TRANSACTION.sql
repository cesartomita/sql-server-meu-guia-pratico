USE AdventureWorks2014;

-- Inicia a transação
BEGIN TRANSACTION; 

	-- Atualiza o FirstName para John
	UPDATE
		Person.Person
	SET
		FirstName = 'John'
	WHERE
		BusinessEntityID = 1;

	-- Marca um ponto de salvamento
	SAVE TRANSACTION tran_alteracao_de_nome

	SELECT FirstName FROM Person.Person WHERE BusinessEntityID = 1;
	-- Resultado: John
	
	-- Atualiza o FirstName para Bob
	UPDATE
		Person.Person
	SET
		FirstName = 'Bob'
	WHERE
		BusinessEntityID = 1;

	SELECT FirstName FROM Person.Person WHERE BusinessEntityID = 1;
	-- Resultado: Bob

	-- Voltando para o ponto de salvamento, não era para alterar o nome para Bob
	ROLLBACK TRANSACTION tran_alteracao_de_nome;

	SELECT FirstName FROM Person.Person WHERE BusinessEntityID = 1;
	-- Resultado: John

-- Confirma todas as alterações feitas desde o BEGIN TRANSACTION
COMMIT; 