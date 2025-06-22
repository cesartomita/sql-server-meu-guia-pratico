/*
    A função @@ROWCOUNT retorna o número de linhas afetadas pela última instrução executada.
	Observação: Retorno máximo de 2.147.483.647 linhas
*/

CREATE TABLE TB_IDENTITY
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	NOME VARCHAR(100)
);
GO

INSERT INTO TB_IDENTITY (NOME) VALUES ('João'), ( 'Ana'), ('Carlos');
SELECT @@ROWCOUNT
GO
-- Resultado: 3

UPDATE TB_IDENTITY SET NOME = 'Ana Maria' WHERE NOME = 'Ana';
SELECT @@ROWCOUNT
GO
-- Resultado: 1

DELETE TB_IDENTITY WHERE NOME IN ('João', 'Carlos');
SELECT @@ROWCOUNT
GO
-- Resultado: 2