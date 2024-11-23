-- Criando tabela de demonstração
CREATE TABLE FINANCEIRO (
    ANO INT,
    RECEITA DECIMAL(10, 2),
    DESPESA DECIMAL(10, 2),
    LUCRO DECIMAL(10, 2),
	CATEGORIA VARCHAR(100)
);

-- Criando registros de demonstração
INSERT INTO FINANCEIRO (ANO, RECEITA, DESPESA, LUCRO, CATEGORIA)
VALUES 
(2023, 120000.00, 80000.00, 40000.00, 'Vendas'),
(2023, 150000.00, 95000.00, 55000.00, 'Marketing'),
(2024, 200000.00, 100000.00, 100000.00, 'Operacional');

-- Exemplo do UNPIVOT
SELECT
	ANO,
	CATEGORIA,
	TIPOS,
	VALOR
FROM (
	SELECT 
		ANO,
		RECEITA,
		DESPESA,
		LUCRO,
		CATEGORIA
	FROM
		FINANCEIRO
	) AS TB
UNPIVOT
    (VALOR FOR TIPOS IN (RECEITA, DESPESA, LUCRO)) AS UNPVT;

/*

Resultados:

Sem UNPIVOT:

+------+------------+------------+------------+------------------+
| ANO  | RECEITA   | DESPESA    | LUCRO      | CATEGORIA        |
+------+------------+------------+------------+------------------+
| 2023 | 120000.00 | 80000.00   | 40000.00   | Vendas           |
| 2023 | 150000.00 | 95000.00   | 55000.00   | Marketing        |
| 2024 | 200000.00 | 100000.00  | 100000.00  | Operacional      |
+------+------------+------------+------------+------------------+

Com UNPIVOT:

+------+--------------------+---------+------------+
| ANO  | CATEGORIA          | TIPO    | VALOR      |
+------+--------------------+---------+------------+
| 2023 | Vendas             | RECEITA | 120000.00  |
| 2023 | Vendas             | DESPESA | 80000.00   |
| 2023 | Vendas             | LUCRO   | 40000.00   |
| 2023 | Marketing          | RECEITA | 150000.00  |
| 2023 | Marketing          | DESPESA | 95000.00   |
| 2023 | Marketing          | LUCRO   | 55000.00   |
| 2024 | Operacional        | RECEITA | 200000.00  |
| 2024 | Operacional        | DESPESA | 100000.00  |
| 2024 | Operacional        | LUCRO   | 100000.00  |
+------+--------------------+---------+------------+

*/