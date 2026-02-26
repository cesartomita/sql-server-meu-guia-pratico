USE [AdventureWorks2014];

/* DENY em nível de BANCO DE DADOS */

-- Negar acesso ao banco de dados inteiro
DENY CONNECT ON DATABASE::[AdventureWorks2014] TO [user_test];

-- Negar visualização de definições
DENY VIEW DEFINITION ON DATABASE::[AdventureWorks2014] TO [user_test];

-- Negar alteração do banco de dados
DENY ALTER ON DATABASE::[AdventureWorks2014] TO [user_test];

-- Negar criação de tabelas
DENY CREATE TABLE ON DATABASE::[AdventureWorks2014] TO [user_test];

-- Negar criação de procedures
DENY CREATE PROCEDURE ON DATABASE::[AdventureWorks2014] TO [user_test];

-- Negar criação de views
DENY CREATE VIEW ON DATABASE::[AdventureWorks2014] TO [user_test];

-- Negar criação de functions
DENY CREATE FUNCTION ON DATABASE::[AdventureWorks2014] TO [user_test];

-- Negar criação de schemas
DENY CREATE SCHEMA ON DATABASE::[AdventureWorks2014] TO [user_test];

-- Negar backup do banco
DENY BACKUP DATABASE ON DATABASE::[AdventureWorks2014] TO [user_test];

-- Negar controle total do banco
DENY CONTROL ON DATABASE::[AdventureWorks2014] TO [user_test];