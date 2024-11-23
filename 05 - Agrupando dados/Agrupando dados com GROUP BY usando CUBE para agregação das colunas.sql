USE DB_TESTE;
GO

-- Gerando uma agregação total de dados em todas as combinações possíveis de colunas.

-- Criando tabela de exemplo e inserindo dados:
CREATE TABLE VENDA
(
    ID INT PRIMARY KEY IDENTITY(1,1),
    CATEGORIA VARCHAR(50) NOT NULL,
    ANO_VENDA SMALLINT,
    VALOR_VENDA DECIMAL(10,2)
);
GO

INSERT INTO VENDA
    (CATEGORIA, ANO_VENDA, VALOR_VENDA)
VALUES 
    ('Eletrodomésticos', 2022, 1100.30),
    ('Móveis', 2022, 1800.45),
    ('Eletrônicos', 2022, 2500.10),
    ('Eletrodomésticos', 2023, 1200.50),
    ('Móveis', 2023, 2100.75),
    ('Eletrônicos', 2023, 2700.00),
    ('Eletrodomésticos', 2023, 1300.90),
    ('Móveis', 2023, 2200.80),
    ('Eletrônicos', 2023, 3000.50),
    ('Eletrodomésticos', 2022, 1450.60),
    ('Móveis', 2022, 1950.30),
    ('Eletrônicos', 2022, 2350.90),
    ('Eletrodomésticos', 2023, 1600.20),
    ('Móveis', 2023, 2450.10),
    ('Eletrônicos', 2023, 3100.75),
    ('Eletrodomésticos', 2023, 1400.85),
    ('Móveis', 2023, 2150.40),
    ('Eletrônicos', 2023, 2750.60);
GO

-- Exemplo 1
SELECT
    ANO_VENDA,
    CATEGORIA,
    SUM(VALOR_VENDA) AS VALOR_VENDA
FROM
    VENDA
GROUP BY CUBE
    (ANO_VENDA, CATEGORIA);

-- Exemplo 2
SELECT
    ANO_VENDA,
    CATEGORIA,
    SUM(VALOR_VENDA) AS VALOR_VENDA
FROM
    VENDA
GROUP BY
    ANO_VENDA,
    CATEGORIA
WITH CUBE;

/*

Resultado esperado:

+------------+--------------------+-------------+
| ANO_VENDA  | CATEGORIA          | VALOR_VENDA |
+------------+--------------------+-------------+
| 2022       | Eletrodomésticos   | 2550.90     |
| 2023       | Eletrodomésticos   | 5502.45     |
| NULL       | Eletrodomésticos   | 8053.35     |
| 2022       | Eletrônicos        | 4851.00     |
| 2023       | Eletrônicos        | 11551.85    | 
| NULL       | Eletrônicos        | 16402.85    |
| 2022       | Móveis             | 3750.75     |
| 2023       | Móveis             | 8902.05     |
| NULL       | Móveis             | 12652.80    |
| NULL       | NULL               | 37109.00    |
| 2022       | NULL               | 11152.65    |
| 2023       | NULL               | 25956.35    |
+------------+--------------------+-------------+

*/