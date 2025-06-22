/*
    A função ROWCOUNT_BIG() retorna o número de linhas afetadas pela última instrução T-SQL executada.
	Retorna um bigint, ideal para ambientes com grandes tabelas, onde o número de linhas afetadas pode ultrapassar o limite de um int.
*/

SELECT * FROM TABELA;
SELECT ROWCOUNT_BIG();