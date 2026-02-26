USE [AdventureWorks2014];

/* REVOKE em nível de BANCO DE DADOS */

-- remover permissão de conectar ao banco
REVOKE CONNECT ON DATABASE::[AdventureWorks2014] TO [user_test];

-- remover VIEW DEFINITION (ver estrutura)
REVOKE VIEW DEFINITION ON DATABASE::[AdventureWorks2014] TO [user_test];

-- remover ALTER (alterar propriedades do banco)
REVOKE ALTER ON DATABASE::[AdventureWorks2014] TO [user_test];

-- remover CREATE TABLE
REVOKE CREATE TABLE ON DATABASE::[AdventureWorks2014] TO [user_test];

-- remover CREATE PROCEDURE
REVOKE CREATE PROCEDURE ON DATABASE::[AdventureWorks2014] TO [user_test];

-- remover CREATE VIEW
REVOKE CREATE VIEW ON DATABASE::[AdventureWorks2014] TO [user_test];

-- remover CREATE FUNCTION
REVOKE CREATE FUNCTION ON DATABASE::[AdventureWorks2014] TO [user_test];

-- remover CREATE SCHEMA
REVOKE CREATE SCHEMA ON DATABASE::[AdventureWorks2014] TO [user_test];

-- remover BACKUP DATABASE
REVOKE BACKUP DATABASE ON DATABASE::[AdventureWorks2014] TO [user_test];

-- remover CONTROL (controle total)
REVOKE CONTROL ON DATABASE::[AdventureWorks2014] TO [user_test];
