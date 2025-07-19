-- Constrói uma matriz JSON (array JSON) a partir de uma ou mais expressões SQL.

SELECT JSON_ARRAY(); -- []

SELECT JSON_ARRAY('abc', 123, NULL, '2025-01-01'); -- ["abc",123,"2025-01-01"]

SELECT TOP 1 JSON_ARRAY(name, object_id,create_date) FROM sys.objects; -- ["sysrscols",3,"2022-10-08T06:28:41.360"]