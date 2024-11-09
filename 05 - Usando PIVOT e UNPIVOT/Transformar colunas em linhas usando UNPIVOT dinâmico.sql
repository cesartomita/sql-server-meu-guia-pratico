USE AdventureWorks2014;

/*
	@COLS: Vai armazenar os nomes das colunas da tabela Person.Person para a parte IN do UNPIVOT.
	@COLS_CAST: Vai armazenar os nomes das colunas, mas com uma conversão de tipo para VARCHAR(MAX) para garantir que qualquer tipo de dado possa ser convertido para string durante o processo de UNPIVOT.
	@SQL: Vai armazenar a consulta SQL dinâmica que será gerada e executada.
*/

DECLARE
	@COLS NVARCHAR(MAX),
	@COLS_CAST NVARCHAR(MAX),
	@SQL NVARCHAR(MAX);

SELECT @COLS = COALESCE(@COLS + ',', '') + QUOTENAME([name]) FROM (SELECT [name] FROM sys.columns WHERE object_id = OBJECT_ID('Person.Person')) AS TB;
SELECT @COLS_CAST = COALESCE(@COLS_CAST + ',', '') + 'CAST(' + QUOTENAME([name]) + ' AS VARCHAR(MAX)) AS ' + QUOTENAME([name]) FROM (SELECT [name] FROM sys.columns WHERE object_id = OBJECT_ID('Person.Person')) AS TB;

SET @SQL = '
	SELECT
		COLUNA,
		VALOR
	FROM (
		SELECT
			'+@COLS_CAST+'
		FROM
			Person.Person
		WHERE
			BusinessEntityID = 99
		) AS TB
	UNPIVOT
		(VALOR FOR COLUNA IN ('+@COLS+')) AS UNPVT
 ';

EXEC sp_executesql @SQL;