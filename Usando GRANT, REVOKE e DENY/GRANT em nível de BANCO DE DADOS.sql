USE [AdventureWorks2014];

/* GRANT em nível de BANCO DE DADOS */

-- Permissão para CRIAR TABELA no banco de dados
-- O usuário poderá criar novas tabelas (desde que tenha permissão no schema).
GRANT CREATE TABLE TO [user_test];

-- Permissão para CRIAR PROCEDURE no banco de dados
-- O usuário poderá criar stored procedures.
GRANT CREATE PROCEDURE TO [user_test];

-- Permissão para CRIAR VIEW no banco de dados
-- O usuário poderá criar views.
GRANT CREATE VIEW TO [user_test];

-- Permissão para CRIAR FUNCTION no banco de dados
-- O usuário poderá criar funções (scalar ou table-valued).
GRANT CREATE FUNCTION TO [user_test];

-- Permissão para CRIAR SCHEMA no banco de dados
-- O usuário poderá criar novos schemas.
GRANT CREATE SCHEMA TO [user_test];

-- Permissão para realizar BACKUP do banco de dados
-- Permite executar o comando BACKUP DATABASE.
GRANT BACKUP DATABASE TO [user_test];

-- Permissão de CONTROLE TOTAL no banco de dados
-- Concede controle completo sobre o banco AdventureWorks2014.
-- Atenção: Não é equivalente a sysadmin.
GRANT CONTROL ON DATABASE::AdventureWorks2014 TO [user_test];