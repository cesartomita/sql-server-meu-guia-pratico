SELECT 
    DB_NAME(dbid) AS BANCO_DADOS, 
    COUNT(dbid) AS QTD_CONEXOES,
    loginame as USUARIO
FROM
    sys.sysprocesses
WHERE 
    dbid > 0
GROUP BY 
    dbid, loginame;