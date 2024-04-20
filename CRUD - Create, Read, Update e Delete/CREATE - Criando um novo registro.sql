
-- Comando para criar uma tabela chamado PESSOA

CREATE TABLE PESSOA
(
    ID INT,
    NOME VARCHAR(120),
    EMAIL VARCHAR(120)
);

-- Comando para inserir um dado na tabela PESSOA

INSERT INTO PESSOA
(
    NOME,
    EMAIL
)
VALUES
(
    'José Silva',
    'jose.silva@email.com'
);