SELECT
    s.name AS SchemaName,
    t.name AS TableName,
    cc.name AS CheckName,
    c.name AS ColumnName,
    cc.definition AS CheckDefinition,
    CASE
        WHEN cc.is_disabled = 1 THEN 'ATIVADO'
        ELSE 'DESATIVADO'
        END AS StatusCheck,
    CASE 
        WHEN cc.is_not_for_replication = 1 THEN 'Não é aplicado durante replicação'
        WHEN cc.is_not_for_replication = 0 THEN 'Aplica também na replicação'
        END AS NotForReplicationStatus
FROM
    sys.check_constraints cc
    INNER JOIN sys.tables t ON cc.parent_object_id = t.object_id
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
    LEFT JOIN sys.columns c ON cc.parent_column_id = c.column_id AND cc.parent_object_id = c.object_id
ORDER BY
    s.name,
    t.name,
    cc.name;