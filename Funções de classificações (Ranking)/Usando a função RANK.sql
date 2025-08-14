CREATE TABLE #VENDAS
(
    ID INT IDENTITY(1,1) PRIMARY KEY,
    VENDEDOR NVARCHAR(50),
    REGIAO NVARCHAR(50),
    TOTAL_VENDAS DECIMAL(10,2)
);

INSERT INTO
	#VENDAS (VENDEDOR, REGIAO, TOTAL_VENDAS)
VALUES
	('Ana', 'Sul', 1500.00),
	('Bruno', 'Sul', 2000.00),
	('Carlos', 'Sul', 2000.00),
	('Daniela', 'Sul', 1800.00),
	('Eduardo', 'Norte', 2500.00),
	('Fernanda', 'Norte', 2500.00),
	('Gabriel', 'Norte', 1700.00),
	('Helena', 'Norte', 1500.00),
	('Igor', 'Leste', 3000.00),
	('Julia', 'Leste', 2800.00);

SELECT
	VENDEDOR,
	REGIAO,
	TOTAL_VENDAS,
	RANK() OVER(PARTITION BY REGIAO ORDER BY TOTAL_VENDAS) AS [RANK]
FROM
	#VENDAS;