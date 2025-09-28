-- Top 10 queries que mais consomem CPU
SELECT TOP 10
    qs.total_worker_time/1000 AS cpu_total_ms,
    qs.total_worker_time/qs.execution_count/1000 AS cpu_avg_ms,
    qs.execution_count,
    qs.total_elapsed_time/1000 AS duration_total_ms,
    qs.total_elapsed_time/qs.execution_count/1000 AS duration_avg_ms,
    qs.creation_time,
    qs.last_execution_time,
    COALESCE(
        NULLIF(
            SUBSTRING(qt.text, (qs.statement_start_offset/2)+1,
                CASE WHEN qs.statement_end_offset = -1 
                     THEN LEN(qt.text)
                     ELSE (qs.statement_end_offset - qs.statement_start_offset)/2 + 1
                END
            ), ''
        ), 
        qt.text
    ) AS query_text,
    qs.plan_handle,
    DB_NAME(qt.dbid) AS database_name
FROM
    sys.dm_exec_query_stats qs
    CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) qt
WHERE
    qs.execution_count > 0
ORDER BY
    qs.total_worker_time DESC;
