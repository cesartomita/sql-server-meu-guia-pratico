/*
    @@TRANCOUNT retorna o número de transações abertas na sessão atual.
*/

BEGIN TRANSACTION;

	SELECT @@TRANCOUNT; -- Retorna: 1
	
	BEGIN TRANSACTION;

		SELECT @@TRANCOUNT; -- Retorna: 2

ROLLBACK TRANSACTION;

