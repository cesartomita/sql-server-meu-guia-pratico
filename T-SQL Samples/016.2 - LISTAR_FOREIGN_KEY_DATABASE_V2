USE AdventureWorks2014;
GO

SELECT
    s1.name AS ParentSchema,        -- Esquema da tabela pai
    tp.name AS ParentTable,         -- Nome da tabela pai
    cp.name AS ParentColumn,        -- Nome da coluna na tabela pai
    s2.name AS ReferencedSchema,    -- Esquema da tabela referenciada
    tr.name AS ReferencedTable,     -- Nome da tabela referenciada
    cr.name AS ReferencedColumn,    -- Nome da coluna na tabela referenciada
    fk.name AS ForeignKeyName       -- Nome da chave estrangeira
FROM 
    sys.foreign_keys AS fk
    INNER JOIN sys.foreign_key_columns AS fkc ON fk.object_id = fkc.constraint_object_id
    INNER JOIN sys.tables AS tp ON fkc.parent_object_id = tp.object_id
    INNER JOIN sys.columns AS cp ON fkc.parent_object_id = cp.object_id AND fkc.parent_column_id = cp.column_id
    INNER JOIN sys.tables AS tr ON fkc.referenced_object_id = tr.object_id
    INNER JOIN sys.columns AS cr ON fkc.referenced_object_id = cr.object_id AND fkc.referenced_column_id = cr.column_id
    INNER JOIN sys.schemas AS s1 ON tp.schema_id = s1.schema_id
    INNER JOIN sys.schemas AS s2 ON tr.schema_id = s2.schema_id
ORDER BY
    s1.name,              -- Esquema da tabela pai
    tp.name,              -- Nome da tabela pai
    cp.name,              -- Nome da coluna na tabela pai
    s2.name,              -- Esquema da tabela referenciada
    tr.name,              -- Nome da tabela referenciada
    cr.name,              -- Nome da coluna na tabela referenciada
    fk.name;              -- Nome da chave estrangeira