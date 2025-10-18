/*
    NOLOCK:
    O hint NOLOCK permite uma leitura suja na tabela,
    ou seja, lê os dados sem bloqueio e ignora transações abertas.
    
    Se uma tabela estiver sendo atualizada em uma transação,
    ao executar um SELECT com NOLOCK, será retornado o dado que está sendo modificado,
    mesmo antes da confirmação de um COMMIT ou da conclusão bem-sucedida da transação.
*/

/* Sessão A */
USE AdventureWorks2014;

BEGIN TRANSACTION;

	UPDATE
		HumanResources.Department
	SET
		GroupName = 'Stock Management'
	WHERE
		DepartmentID = 15;

    -- Não é realizado o COMMIT.
    -- A linha acima mantém um lock exclusivo sobre o registro.

/* Sessão B */
SELECT
    *
FROM
    HumanResources.Department WITH (NOLOCK)
WHERE
    DepartmentID = 15;
    -- Resultado: Stock Management