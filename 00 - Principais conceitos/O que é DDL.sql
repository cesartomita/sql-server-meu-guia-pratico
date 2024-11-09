/*
	DDL - Comandos de Definição de Dados (Data Definition Language)

	Os comandos DDL (Data Definition Language) são usados para definir e gerenciar a estrutura de um banco de dados. Eles permitem criar, alterar e excluir objetos como tabelas, índices, visões, entre outros. 
	Alguns dos principais comandos DDL são:

	CREATE TABLE: Cria uma nova tabela no banco de dados 
	ALTER TABLE: Permite modificar a estrutura de uma tabela existente 
	DROP TABLE: Remove uma tabela do banco de dados 
	ALTER TABLE ADD: Adiciona uma coluna na tabela 
	ALTER TABLE DROP: Exclui uma coluna na tabela 
*/

-- Criando uma nova tabela:

CREATE TABLE CLIENTE
(
	ID INT PRIMARY KEY,
	NOME VARCHAR(100),
	DATA_NASCIMENTO DATE
);

-- Alterando uma tabela, adicionando uma nova coluna:

ALTER TABLE CLIENTE
ADD CPF INT;

-- Alterando uma tabela, alterando tipo de uma coluna:

ALTER TABLE CLIENTE
ALTER COLUMN CPF VARCHAR(11);

-- Criando um índice na coluna NOME:

CREATE INDEX IDX_CLIENTE ON CLIENTE (NOME);

-- Apagando um índice:

DROP INDEX IDX_CLIENTE ON CLIENTE;

-- Apagando uma tabela:

DROP TABLE CLIENTE;