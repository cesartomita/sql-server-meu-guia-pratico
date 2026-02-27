USE AdventureWorks2014;

SELECT 
    dp.name,
    dp.type_desc,
    CASE 
        WHEN p.major_id = 0 THEN 'DATABASE'
        ELSE SCHEMA_NAME(o.schema_id)
        END AS SchemaName,
    CASE 
        WHEN p.major_id = 0 THEN DB_NAME()
        ELSE o.name
        END AS Objeto,
    p.permission_name,
    p.state_desc
FROM
    sys.database_permissions p
    INNER JOIN sys.database_principals dp ON p.grantee_principal_id = dp.principal_id
    LEFT JOIN sys.objects o ON p.major_id = o.object_id
WHERE
    dp.name = 'nome_do_usuario'
ORDER BY
    SchemaName,
    Objeto;