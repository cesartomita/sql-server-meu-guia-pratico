/*
    Filtrar os produtos pelo valor da coluna 'Color' usando a variável @FILTRO.

    - Se @FILTRO contém um valor (por exemplo 'Red'), a consulta retorna produtos com Color = 'Red'.
    - Se @FILTRO for NULL, a consulta também deverá retornar os produtos com Color IS NULL.
*/

USE AdventureWorks2014;

DECLARE @FILTRO VARCHAR(30) = NULL;

SELECT
	ProductID,
	[Name],
	ProductNumber,
	Color
FROM
	[Production].[Product]
WHERE
	ISNULL(Color,0) = ISNULL(@FILTRO,0);