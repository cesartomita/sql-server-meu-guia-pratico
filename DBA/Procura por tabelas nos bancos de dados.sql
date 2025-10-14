/*
	Procura em todos os bancos de dados por tabelas pelo texto definido na variável @BUSCA.

	Observação: A busca não irá pesquisar nos bancos de sistema: master, model, msdb e tempdb.
*/

DECLARE	@BUSCA VARCHAR(50) = 'user';

IF OBJECT_ID('tempdb..#TEMP_TABELAS') IS NOT NULL
BEGIN
	DROP TABLE #TEMP_TABELAS
END;

CREATE TABLE #TEMP_TABELAS
(
	DbName SYSNAME,
	SchemaName SYSNAME,
	TableName SYSNAME,
	QuerySelect VARCHAR(300)
);

DECLARE @SQL NVARCHAR(1000) = '
	USE [?];
	IF DB_NAME() NOT IN (''master'',''model'',''msdb'',''tempdb'')
	BEGIN
		INSERT INTO
			#TEMP_TABELAS
		SELECT
			DB_NAME() AS DbName,
			S.[name] AS SchemaName,
			T.[name] AS TableName,
			CONCAT(''SELECT TOP 10 * FROM '',QUOTENAME(DB_NAME()),''.'',QUOTENAME(S.[name]),''.'',QUOTENAME(T.[name]),'';'') AS QuerySelect
		FROM
			sys.tables T
			INNER JOIN sys.schemas S ON S.schema_id = T.schema_id
		WHERE
			T.[name] LIKE ''%''+'''+@BUSCA+'''+''%''
			;
	END;
'

EXEC sp_MSforeachdb @SQL;

SELECT * FROM #TEMP_TABELAS ORDER BY 1,2,3;