/*
    READPAST:
    O hint READPAST não lê dados bloqueados e não gera erro.
    Ele simplesmente "pula" (ignora) os registros que estão com lock exclusivo
    mantidos por outras transações.
    Ou seja, o SQL Server ignora as linhas bloqueadas e continua a leitura da tabela.
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
    HumanResources.Department WITH (READPAST)
WHERE
    DepartmentID = 15;
    -- Resultado: Nenhum registro é retornado
    -- Pois a linha está bloqueada por outra transação e foi ignorada pelo READPAST.
