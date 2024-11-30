/*
    s.session_id:               ID da sessão.
    s.host_name:                Nome do host (computador) que iniciou a sessão.
    s.program_name:             Nome do programa ou aplicação que abriu a conexão.
    s.login_name:               Nome do usuário que autenticou na sessão.
    t.transaction_id:			ID da transação.
    t.transaction_descriptor:	Descrição da transação.
    t.enlist_count:				Contagem de enlistamentos (quantas vezes a transação foi enlistada).
    t.is_user_transaction:		Indica se a transação é uma transação de usuário (1) ou do sistema (0).
    t.is_local:					Indica se a transação é local ou distribuída.
    t.is_enlisted:				Indica se a transação está enlistada em um recurso.
    t.is_bound:					Indica se a transação está vinculada a um banco de dados.
    t.open_transaction_count:	Contagem de transações abertas.
    query_text:                 Comando SQL da sessão.
    kill_spid:                  Comando para finalizar a sessão.
*/

SELECT 
    s.session_id,
    s.host_name,
    s.program_name,
    s.login_name,
    t.transaction_id,
    t.transaction_descriptor,
    t.enlist_count,
    t.is_user_transaction,
    t.is_local,
    t.is_enlisted,
    t.is_bound,
    t.open_transaction_count,
    CAST(r.text AS XML) AS query_text,
    CONCAT('KILL ', s.session_id, ';') AS kill_spid
FROM 
    sys.dm_tran_session_transactions AS t
	INNER JOIN sys.dm_exec_sessions AS s ON t.session_id = s.session_id
	LEFT JOIN sys.dm_exec_requests AS req ON s.session_id = req.session_id
	CROSS APPLY sys.dm_exec_sql_text(req.sql_handle) AS r
WHERE
	1=1
	AND t.open_transaction_count >= 1;