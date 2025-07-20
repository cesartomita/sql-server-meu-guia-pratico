/*
	DTL	- Linguagem de Transação de Dados (Data Transaction Language)
	TCL - Comandos de Controle de Transações (Transaction Control Language)

	A TCL (Transaction Control Language) é um subconjunto da SQL responsável por gerenciar as transações no banco de dados.
	Uma transação é um conjunto de instruções SQL logicamente relacionadas, executadas nos dados armazenados nas tabelas.
*/

-- Inicia uma transação. A partir desse ponto, as mudanças feitas no banco de dados estão pendentes até que sejam confirmadas ou revertidas.
BEGIN TRANSACTION;

-- Finaliza a transação, salvando permanentemente todas as alterações feitas no banco de dados desde o início da transação.
COMMIT;

-- Reverte todas as operações realizadas desde o início da transação, desfazendo qualquer mudança temporária no banco de dados.
ROLLBACK;