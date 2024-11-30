USE AdventureWorks2014;

SELECT 
    t.name AS TableName, 
    p.rows AS RowCounts, 
    SUM(a.total_pages) * 8 / 1024.0 AS TotalSpaceMB
FROM
	sys.tables t
	INNER JOIN sys.partitions p ON t.object_id = p.object_id
	INNER JOIN sys.allocation_units a ON p.partition_id = a.container_id
GROUP BY
	t.name,
	p.rows
ORDER BY
	TotalSpaceMB DESC;