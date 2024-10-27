USE AdventureWorks2014;
GO

/*
	sys.foreign_keys: Contém informações sobre as chaves estrangeiras no banco de dados.
	sys.foreign_key_columns: Armazena as colunas que participam das chaves estrangeiras.
	sys.tables: Lista todas as tabelas do banco de dados.
	sys.columns: Contém informações sobre as colunas das tabelas.
*/

SELECT 
    tp.name AS ParentTable,
    cp.name AS ParentColumn,
    tr.name AS ReferencedTable,
    cr.name AS ReferencedColumn,
	fk.name AS ForeignKeyName
FROM 
    sys.foreign_keys AS fk
	INNER JOIN sys.foreign_key_columns AS fkc ON fk.object_id = fkc.constraint_object_id
	INNER JOIN sys.tables AS tp ON fkc.parent_object_id = tp.object_id
	INNER JOIN sys.columns AS cp ON fkc.parent_object_id = cp.object_id AND fkc.parent_column_id = cp.column_id
	INNER JOIN sys.tables AS tr ON fkc.referenced_object_id = tr.object_id
	INNER JOIN sys.columns AS cr ON fkc.referenced_object_id = cr.object_id AND fkc.referenced_column_id = cr.column_id
WHERE
	1=1
	AND tp.name = 'Person' -- Busca por uma tabela específica
ORDER BY
    tp.name,
    cp.name,
    tr.name,
    cr.name,
	fk.name;