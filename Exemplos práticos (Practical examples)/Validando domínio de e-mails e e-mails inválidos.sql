USE DB_TESTE;
GO

CREATE TABLE CLIENTE (
    ID INT PRIMARY KEY IDENTITY(1,1),
    NOME VARCHAR(100) NOT NULL,
    EMAIL VARCHAR(255) NULL
);
GO

INSERT INTO CLIENTE
(
    NOME,
    EMAIL
)
VALUES 
    ('João Silva', 'joao.silva@gmail.com'),
    ('Maria Oliveira', 'maria.oliveira@yahoo.com'),
    ('Carlos Souza', 'carlos_souza!@hotmail.com'),
    ('Ana Paula', 'ana%paula@hotmail.com'),
    ('Luiz Costa', 'luizcosta@outlook.com'),
    ('Fernanda Lima', 'fernanda.lima@hotmail.com'),
    ('Roberto Martins', 'roberto.martins#@gmail.com'),
    ('Julia Andrade', 'julia-andrade@gmail.com');
GO

-- Usando CHARINDEX: Verificar o domínio
SELECT
    ID,
    NOME,
    EMAIL
FROM
    CLIENTE
WHERE
    CHARINDEX('@yahoo.com', Email) > 0;

-- Usando PATINDEX: Encontrar e-mails com caracteres suspeitos
SELECT
    ID,
    NOME,
    EMAIL
FROM
    CLIENTE
WHERE
    PATINDEX('%[^a-zA-Z0-9@._-]%', Email) > 0;