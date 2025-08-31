/*
	Monitorar espaço de log de transações.

	- Nome do banco (Database Name)
	- Tamanho atual do log (MB)
	- % de espaço usado
	- Status (sempre 0)

	Observação: A partir do SQL Server 2012, pode usar a DMV:

	SELECT * FROM sys.dm_db_log_space_usage;

	Se a utilização estiver acima de 80%, isso é um alerta.

	> DBCC OPENTRAN: ver se há transações abertas.
	> Recovery model: se FULL/BULK_LOGGED, rodar backup de log.
	> Checar replicação/CDC/Always On atrasando truncamento.
	> Analisar operações grandes: dividir em lotes menores.
	> Shrink do log só após backup e apenas em emergência.
	> Implementar backup regular de log + monitoramento.

	Exemplo de resultado:
    
	+---------------------+---------------+-----------------------+--------+
	| Database Name       | Log Size (MB) | Log Space Used (%)    | Status |
	+---------------------+---------------+-----------------------+--------+
	| master              | 2,242188      | 33,44948              | 0      |
	| tempdb              | 7,992188      | 22,23851              | 0      |
	| model               | 7,992188      | 62,65885              | 0      |
	| msdb                | 23,80469      | 6,366918              | 0      |
	| AdventureWorks2022  | 71,99219      | 2,892024              | 0      |
	+---------------------+---------------+-----------------------+--------+
*/

DBCC SQLPERF(LOGSPACE);