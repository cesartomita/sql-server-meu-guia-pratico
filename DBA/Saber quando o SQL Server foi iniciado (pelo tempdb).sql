-- A base de dados tempdb é recriada toda vez que o SQL Server é iniciado, então sua data de criação indica o momento do último start.

SELECT
	create_date
FROM
	sys.databases
WHERE
	[name] = 'tempdb';