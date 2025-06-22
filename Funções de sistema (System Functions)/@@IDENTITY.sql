/*
    Retorna o último valor de identidade (IDENTITY) gerado na sessão atual.

    Se houver um INSERT que dispare uma trigger, e essa trigger também inserir algo em outra tabela com IDENTITY, o valor retornado será o da trigger, e não o da tabela que você inseriu originalmente.
*/

CREATE TABLE TB_IDENTITY
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	NOME VARCHAR(100)
);
GO

INSERT INTO TB_IDENTITY (NOME) VALUES ('João'), ( 'Ana'), ('Carlos');
SELECT @@IDENTITY
GO

-- Resultado: 3