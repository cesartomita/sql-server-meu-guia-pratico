CREATE DATABASE DB_TESTE
ON
(
	NAME = 'DB_TESTE',
	FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DB_TESTE.mdf',
	SIZE = 20MB,			-- O arquivo começa com 20MB
	MAXSIZE = UNLIMITED,	-- Sem limite máximo de tamanho
	FILEGROWTH = 10%		-- O arquivo crescerá 10% do seu tamanho atual
)
LOG ON
(
	NAME = 'DB_TESTE_LOG',
	FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DB_TESTE.ldf',
	SIZE = 20MB,			-- O arquivo começa com 20MB
	MAXSIZE = UNLIMITED,	-- Sem limite máximo de tamanho
	FILEGROWTH = 10			-- O arquivo crescerá 10% do seu tamanho atual
)
COLLATE SQL_Latin1_General_CP1_CI_AS;  -- Define o collation
GO

USE DB_TESTE;
GO