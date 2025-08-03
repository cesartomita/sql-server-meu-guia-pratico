-- Criando tabela de demonstração
CREATE TABLE DEMO_PIVOT
(
	EMPRESA VARCHAR(50),
	ANO CHAR(4),
	LUCRO DECIMAL(10,4)
);

-- Criando registros na tabela de demonstração
INSERT INTO
	DEMO_PIVOT (EMPRESA, ANO, LUCRO)
VALUES 
    ('Empresa A', '2019', 950.30),
    ('Empresa A', '2020', 1000.50),
    ('Empresa A', '2021', 1200.75),
    ('Empresa A', '2022', 1100.00),
    ('Empresa A', '2023', 1300.20),
    ('Empresa B', '2018', 850.00),
    ('Empresa B', '2019', 900.15),
    ('Empresa B', '2020', 950.25),
    ('Empresa B', '2021', 1050.00),
    ('Empresa B', '2022', 1150.10),
    ('Empresa C', '2018', 1250.30),
    ('Empresa C', '2020', 1300.30),
    ('Empresa C', '2021', 1400.60),
    ('Empresa C', '2022', 1500.80),
    ('Empresa C', '2023', 1550.90),
    ('Empresa D', '2018', 1050.75),
    ('Empresa D', '2019', 1100.85),
    ('Empresa D', '2020', 1150.90),
    ('Empresa D', '2022', 1350.75),
    ('Empresa D', '2023', 1450.65);

-- Exemplo de um PIVOT dinâmico
DECLARE
	@COLS NVARCHAR(MAX),
	@SQL NVARCHAR(MAX);

SELECT @COLS = COALESCE(@COLS + ',', '') + QUOTENAME(ANO) FROM (SELECT DISTINCT ANO FROM DEMO_PIVOT) AS TB;

SET @SQL = '
	SELECT
		EMPRESA,
		'+@COLS+'
	FROM (
		SELECT
			EMPRESA,
			ANO,
			LUCRO
		FROM
			DEMO_PIVOT
		) AS TB
	PIVOT (
		MAX(LUCRO)
		FOR ANO IN ('+@COLS+')
	) AS PVT
';

EXEC sp_executesql @SQL;

/*
Resultados:

Sem PIVOT:

+------------+------+------------+
| EMPRESA    | ANO  | LUCRO      |
+------------+------+------------+
| Empresa A  | 2019 | 950.3000   |
| Empresa A  | 2020 | 1000.5000  |
| Empresa A  | 2021 | 1200.7500  |
| Empresa A  | 2022 | 1100.0000  |
| ...        | ...  | ...        |
+------------+------+------------+

Com PIVOT:

+------------+------------+------------+------------+------------+------------+------------+
|  EMPRESA   |   2018     |   2019     |   2020     |   2021     |   2022     |   2023     |
+------------+------------+------------+------------+------------+------------+------------+
| Empresa A  |    NULL    |  950.3000  |  1000.5000 |  1200.7500 |  1100.0000 |  1300.2000 |
| Empresa B  |  850.0000  |  900.1500  |  950.2500  |  1050.0000 |  1150.1000 |    NULL    |
| Empresa C  |  1250.3000 |    NULL    |  1300.3000 |  1400.6000 |  1500.8000 |  1550.9000 |
| Empresa D  |  1050.7500 |  1100.8500 |  1150.9000 |    NULL    |  1350.7500 |  1450.6500 |
+------------+------------+------------+------------+------------+------------+------------+
*/