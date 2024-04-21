-- Relata informações sobre um banco de dados especificado ou todos os bancos de dados.

-- Todos os databases:

EXEC sp_helpdb;

-- Database específico:

EXEC sp_helpdb 'AdventureWorks2014';

/* https://learn.microsoft.com/en-us/sql/relational-databases/system-stored-procedures/sp-helpdb-transact-sql?view=sql-server-ver16 */