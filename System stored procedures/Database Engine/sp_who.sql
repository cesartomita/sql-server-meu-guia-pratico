/* sp_who ou sp_who2 */

-- Fornece informações sobre usuários, sessões e processos atuais em uma instância do Mecanismo de Banco de Dados do SQL Server. As informações podem ser filtradas para retornar apenas os processos que não estão ociosos, que pertencem a um usuário específico ou que pertencem a uma sessão específica.

EXEC sp_who;

-- sp_who2 fornece mais informações

EXEC sp_who2;

/* Exemplos com parâmetros */

--Listar processos de um usuário específico
EXEC sp_who2 'sa';

-- Listar processos ativos
EXEC sp_who2 'active';

-- Listar processo passando um ID de sessão
EXEC sp_who2 55;

/* https://learn.microsoft.com/en-us/sql/relational-databases/system-stored-procedures/sp-who-transact-sql?view=sql-server-ver16 */