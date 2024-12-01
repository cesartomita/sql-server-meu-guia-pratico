/*
	A função FORMATMESSAGE no SQL Server é usada para formatar mensagens com placeholders (%s, %d, etc.) que podem ser preenchidos dinamicamente.
	Ela é útil em várias situações práticas do dia a dia, como geração de mensagens de erro personalizadas, logs ou notificações.

	Sintaxe:
	FORMATMESSAGE ( { msg_number | msg_string }, param_value [, ...n] )

	msg_number: Identificador de uma mensagem armazenada no catálogo do SQL Server (opcional).
	msg_string: Mensagem diretamente fornecida com placeholders.
	param_value: Valores a serem inseridos nos placeholders.
*/

DECLARE @USUARIO NVARCHAR(50) = 'Maria';
DECLARE @OPERACAO NVARCHAR(50) = 'Atualização de Cadastro';

SELECT FORMATMESSAGE('Usuário %s realizou a operação: %s', @USUARIO, @OPERACAO);