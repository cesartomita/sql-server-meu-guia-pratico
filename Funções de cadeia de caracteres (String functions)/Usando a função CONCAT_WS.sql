/*
    Concatena duas ou mais strings com delimitador entre elas
*/

SELECT CONCAT_WS('-','Microsoft','SQL','Server') -- Result: Microsoft-SQL-Server

SELECT CONCAT_WS('_','Microsoft','SQL','Server') -- Result: Microsoft_SQL_Server

SELECT CONCAT_WS(' ','Microsoft','SQL','Server') -- Result: Microsoft SQL Server
