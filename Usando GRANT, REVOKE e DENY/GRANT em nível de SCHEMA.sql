USE [AdventureWorks2014];

/* GRANT em nível de SCHEMA */

-- Permissão de SELECT no SCHEMA inteiro.
-- O usuário poderá dar SELECT em TODAS as tabelas e views que existirem dentro do schema [Person].
GRANT SELECT ON SCHEMA::Person TO [user_test];

-- Permissão de EXECUTE no SCHEMA inteiro
-- O usuário poderá executar TODAS as procedures e functions que existirem dentro do schema [dbo].
GRANT EXECUTE ON SCHEMA::dbo TO [user_test];

-- Permissão de CONTROL no SCHEMA inteiro.
-- O usuário terá controle total sobre todos os objetos dentro do schema [HumanResources].
-- Inclui implicitamente: SELECT, INSERT, UPDATE, DELETE, ALTER, REFERENCES e EXECUTE.
GRANT CONTROL ON SCHEMA::HumanResources TO [user_test];