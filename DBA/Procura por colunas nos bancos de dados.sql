/*
	Procura em todos os bancos de dados por colunas pelo texto definido na variável @BUSCA.

	Observação: A busca não irá pesquisar nos bancos de sistema: master, model, msdb e tempdb.
*/

DECLARE	@BUSCA VARCHAR(50) = 'username';

IF OBJECT_ID('tempdb..#TEMP_COLUNAS') IS NOT NULL
BEGIN
	DROP TABLE #TEMP_COLUNAS
END;

CREATE TABLE #TEMP_COLUNAS
(
	DbName SYSNAME,
	SchemaName SYSNAME,
	TableName SYSNAME,
	ColumnName SYSNAME,
	DataType SYSNAME
);

DECLARE @SQL NVARCHAR(1000) = '
	USE [?];
	IF DB_NAME() NOT IN (''master'',''model'',''msdb'',''tempdb'')
	BEGIN
		INSERT INTO
			#TEMP_COLUNAS
		SELECT
			DB_NAME() AS DbName,
			s.name AS SchemaName,
			t.name AS TableName,
			c.name AS ColumnName,
			ty.name AS DataType
		FROM
			sys.columns c
			INNER JOIN sys.tables t ON c.object_id = t.object_id
			INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
			INNER JOIN sys.types ty ON c.user_type_id = ty.user_type_id
		WHERE
			t.is_ms_shipped = 0 /* Criado pelo usuário */
			AND c.[name] LIKE ''%''+'''+@BUSCA+'''+''%'';
	END;
'

EXEC sp_MSforeachdb @SQL;

SELECT * FROM #TEMP_COLUNAS ORDER BY 1,2,3,4;