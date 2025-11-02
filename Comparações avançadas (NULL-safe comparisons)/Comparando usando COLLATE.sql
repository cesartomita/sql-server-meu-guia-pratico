-- Usa COLLATE (SQL_Latin1_General_CP1_CI_AI) para comparar ignorando acentuação
-- e diferenças entre maiúsculas/minúsculas (case-insensitive, accent-insensitive).

USE AdventureWorks2014;

DECLARE @FILTRO VARCHAR(50) = 'MUNOZ'

SELECT
	BusinessEntityID,
	FirstName,
	LastName
FROM
	[Person].[Person]
WHERE
	LastName COLLATE SQL_Latin1_General_CP1_CI_AI = @FILTRO;