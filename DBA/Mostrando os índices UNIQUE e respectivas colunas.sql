WITH CTE_UNIQUE_CONSTRAINTS AS
(
    SELECT
        t.name AS TableName,
        s.name AS SchemaName,
        c.name AS ColumnName,
        i.type_desc AS IndexType,
        i.name AS IndexName,
        ic.key_ordinal
    FROM
        sys.indexes i
        INNER JOIN sys.index_columns ic ON i.object_id = ic.object_id AND i.index_id = ic.index_id
        INNER JOIN sys.columns c ON ic.object_id = c.object_id AND ic.column_id = c.column_id
        INNER JOIN sys.tables t ON i.object_id = t.object_id
        INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    WHERE
        1=1
        AND i.is_unique = 1       -- Somente índices UNIQUE
        AND i.is_primary_key = 0  -- Ignora índices de Primary Key
        AND i.is_hypothetical = 0 -- Ignora índices hipotéticos (criadores pelo DTA)
        AND i.type IN (1, 2)      -- 1 = Clustered index, 2 = Nonclustered index
)
SELECT
    TableName,
    SchemaName,
    IndexType,
    IndexName,
    COUNT(key_ordinal) AS CntColumnsUnique,
    STUFF
        ((SELECT
           ', ' + B.ColumnName
        FROM
            CTE_UNIQUE_CONSTRAINTS B
        WHERE
            A.SchemaName = B.SchemaName
            AND A.TableName = B.TableName
            AND A.IndexName = B.IndexName
        ORDER BY
            B.key_ordinal
        FOR
            XML PATH(''), TYPE).value('.','NVARCHAR(MAX)'), 1, 2, '') AS ColumnsUnique
FROM
    CTE_UNIQUE_CONSTRAINTS A
GROUP BY
    TableName,
    SchemaName,
    IndexType,
    IndexName    
ORDER BY 
    SchemaName,
    TableName;