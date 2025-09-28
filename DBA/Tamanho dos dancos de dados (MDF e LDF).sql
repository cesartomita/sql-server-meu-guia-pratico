SELECT
	DB.name,
	DB.create_date,
	suser_sname(DB.owner_sid) AS owner,
	DB.state_desc,
	CAST(SUM(FS_DATA.size) * 8.0 / 1024 AS DECIMAL(10,2)) AS data_size_mb,
	CAST(SUM(FS_LOG.size) * 8.0 / 1024  AS DECIMAL(10,2)) AS log_size_mb,
    CAST((SUM(FS_DATA.size) + SUM(FS_LOG.size)) * 8.0 / 1024 AS DECIMAL(10,2)) AS total_size_mb
FROM
	sys.databases DB
	INNER JOIN sys.master_files FS_DATA ON FS_DATA.database_id = DB.database_id AND FS_DATA.type = 0
	INNER JOIN sys.master_files FS_LOG ON FS_LOG.database_id = DB.database_id AND FS_LOG.type = 1
GROUP BY
	DB.name,
	DB.owner_sid,
	DB.create_date,
	DB.state_desc;