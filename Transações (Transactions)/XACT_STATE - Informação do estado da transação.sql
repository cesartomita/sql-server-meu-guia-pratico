-- É uma função escalar que informa o estado de transação de usuário de uma solicitação em execução atualmente. XACT_STATE indica se a solicitação tem uma transação de usuário ativa e se a transação consegue ser confirmada.

/*
	Valor | Significado
	------+-------------------------------------------
	0	  | Sem transação ativa
	1	  | Transação ativa e válida
	-1    | Transação ativa com erro (estado inválido)
*/

/*** Estado 0: Sem transação ativa ***/

SELECT XACT_STATE();
-- Resultado: 0

/*** Estado 1: Transação ativa e válida ***/

BEGIN TRANSACTION;

	SELECT XACT_STATE();
	-- Resultado: 1

COMMIT;

/*** Estado -1: Transação ativa com erro (corrompida) ***/

SET XACT_ABORT ON;

BEGIN TRY

    BEGIN TRANSACTION;

	SELECT 1 / 0;
    COMMIT;

END TRY
BEGIN CATCH

    PRINT XACT_STATE();
	-- Resultado: -1

	IF (XACT_STATE() = -1) ROLLBACK;

	THROW;

END CATCH;