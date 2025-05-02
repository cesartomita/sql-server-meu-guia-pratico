USE AdventureWorks2014;

BEGIN TRY;

	BEGIN TRANSACTION;

	-- Simulando um update inválido
	UPDATE
		Person.Person
	SET
		EmailPromotion = 'Yes'
	WHERE
		BusinessEntityID = 1;

	COMMIT;

END TRY
BEGIN CATCH;

	IF (XACT_STATE() <> 0) ROLLBACK;
	THROW;

END CATCH;