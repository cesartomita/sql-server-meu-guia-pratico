USE AdventureWorks2014;
GO

/*
	sys.extended_properties: Contém todas as propriedades estendidas definidas no banco de dados, incluindo descrições.
	sys.columns: Armazena informações sobre as colunas de tabelas.
	sys.tables: Lista todas as tabelas do banco de dados.
*/

SELECT 
    t.name AS TableName,
    c.name AS ColumnName,
    ep.name AS PropertyName,
    ep.value AS Description
FROM 
	sys.extended_properties AS ep
	INNER JOIN sys.columns AS c ON ep.major_id = c.object_id AND ep.minor_id = c.column_id
	INNER JOIN sys.tables AS t ON c.object_id = t.object_id
WHERE 
    ep.name = 'MS_Description'  -- Filtra para mostrar apenas as descrições
ORDER BY 
    t.name,
	c.name;