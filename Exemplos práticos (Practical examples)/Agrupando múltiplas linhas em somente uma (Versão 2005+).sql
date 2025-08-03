-- Criando tabela de exemplo
DECLARE @TB_EXEMPLE AS TABLE (COL1 VARCHAR(50) , COL2 VARCHAR(50));

-- Inserindo dados de exemplo
INSERT INTO @TB_EXEMPLE
	(COL1, COL2)
VALUES 
	('A', 'X1'),
	('A', 'X2'),
	('A', 'X3'),
	('B', 'Y1'),
	('B', 'Y2'),
	('C', 'Z1'),
	('C', 'Z2'),
	('C', 'Z3'),
	('C', 'Z4');

-- Agrupando a coluna COL1 por COL1
SELECT
	COL1,
	STUFF((SELECT
		', ' + B.COL2
	FROM
		@TB_EXEMPLE B
	WHERE
		B.COL1 = A.COL1
	FOR
		XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'),1, 2,'') AS COL2_GROUPED
FROM
	@TB_EXEMPLE A
GROUP BY
	COL1;