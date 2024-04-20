USE master;

-- Retorna informação do tamanho dos arquivos de banco de dados (mdf e ldf) e agrupa por tipo de arquivo (ROWS para dados e LOG para log). 

SELECT 
    DB_NAME(database_id) AS DatabaseName,
    CONVERT(decimal(12,2), SUM(size)*8/1024.0) AS SizeMB,
	CASE
		WHEN type_desc = 'ROWS' THEN 'mdf'
		WHEN type_desc = 'LOG' THEN 'ldf'
		END AS DatabaseType
FROM 
    sys.master_files
WHERE
	1=1
	AND type_desc IS NOT NULL
	AND type_desc = 'ROWS' -- Comentar para mostrar os aquivos de LOG.
GROUP BY 
    database_id,
	type_desc
ORDER BY
	2 DESC;