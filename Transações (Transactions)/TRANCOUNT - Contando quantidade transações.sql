-- Retorna o número de instruções BEGIN TRANSACTION que ocorreram na conexão atual.

BEGIN TRANSACTION;

	PRINT @@TRANCOUNT;
	-- Resultado: 1

	BEGIN TRANSACTION;

		PRINT @@TRANCOUNT;
		-- Resultado: 2

		BEGIN TRANSACTION;

			PRINT @@TRANCOUNT;
			-- Resultado: 3

		COMMIT;

			PRINT @@TRANCOUNT;
			-- Resultado: 2

	COMMIT;

	PRINT @@TRANCOUNT;
	-- Resultado: 1

COMMIT;