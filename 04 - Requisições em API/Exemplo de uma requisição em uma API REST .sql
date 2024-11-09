DECLARE @OBJECT_TOKEN INT;
DECLARE @RESPONSE_TEXT VARCHAR(8000);
DECLARE @STATUS INT;
DECLARE @URL_API VARCHAR(MAX) = 'https://viacep.com.br/ws/01001000/json/';
DECLARE @METHOD_API VARCHAR(10) = 'GET';

-- Criar objeto HTTP
EXEC sp_OACreate 'MSXML2.ServerXMLHTTP', @OBJECT_TOKEN OUT;

-- Abrir a conexão
EXEC sp_OAMethod @OBJECT_TOKEN, 'open', NULL, @METHOD_API, @URL_API, false; 

-- Enviar a requisição
EXEC sp_OAMethod @OBJECT_TOKEN, 'send';

-- Obter o código de status HTTP
EXEC sp_OAGetProperty @OBJECT_TOKEN, 'status', @STATUS OUTPUT;

-- Receber a resposta
EXEC sp_OAMethod @OBJECT_TOKEN, 'responseText', @RESPONSE_TEXT OUTPUT;

-- Mostrar o resultado
select @STATUS, @RESPONSE_TEXT;

-- Liberar o objeto HTTP
EXEC sp_OADestroy @OBJECT_TOKEN;