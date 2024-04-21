-- Relata informações sobre principais em nível de banco de dados no banco de dados atual.

-- Todos:
EXEC sp_helpuser;

-- Para um usuário específico:
EXEC sp_helpuser 'app_test'

-- Para uma função do banco de dados:
EXEC sp_helpuser 'db_owner'

/* https://learn.microsoft.com/en-us/sql/relational-databases/system-stored-procedures/sp-helpuser-transact-sql?view=sql-server-ver16 */