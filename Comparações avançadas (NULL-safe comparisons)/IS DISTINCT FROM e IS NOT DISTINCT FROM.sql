/*
    Compara a igualdade de duas expressões, tratando corretamente valores NULL.
    Observação: operador disponível no SQL Server 2022+.
*/

/* Criando tabela de exemplo */

CREATE TABLE #TEMP_DISTINCT
(
	COL_A INT,
	COL_B INT
);

INSERT INTO
	#TEMP_DISTINCT
VALUES
	(0, 0),
	(0, 1),
	(0, NULL),
	(NULL, NULL);

/* usando IS DISTINCT FROM */

SELECT
	COL_A,
	COL_B
FROM
	#TEMP_DISTINCT
WHERE
	COL_A IS DISTINCT FROM COL_B;

-- Pode ser decodificado como:

SELECT
	COL_A,
	COL_B
FROM
	#TEMP_DISTINCT
WHERE
	(
		(COL_A <> COL_B OR COL_A IS NULL OR COL_B IS NULL)
		AND NOT (COL_A IS NULL AND COL_B IS NULL)
	);

/* usando IS NOT DISTINCT FROM */

SELECT
	COL_A,
	COL_B
FROM
	#TEMP_DISTINCT
WHERE
	COL_A IS NOT DISTINCT FROM COL_B;

-- pode ser decodificado como:

SELECT
	COL_A,
	COL_B
FROM
	#TEMP_DISTINCT
WHERE
	(
		NOT (COL_A <> COL_B OR COL_A IS NULL OR COL_B IS NULL)
		OR (COL_A IS NULL AND COL_B IS NULL)
	);