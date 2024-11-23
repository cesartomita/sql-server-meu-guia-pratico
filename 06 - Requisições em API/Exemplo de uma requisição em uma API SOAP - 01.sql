DECLARE @OBJECT_TOKEN INT;
DECLARE @RESPONSE_TEXT VARCHAR(8000);
DECLARE @STATUS INT;
DECLARE @URL_API VARCHAR(MAX);
DECLARE @REQUEST_BODY VARCHAR(MAX);

-- URL da api SOAP
SET @URL_API = 'https://www.dataaccess.com/webservicesserver/NumberConversion.wso';

-- Atribundo valor do body
SET @REQUEST_BODY = '<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
  <soap:Body>
    <NumberToWords xmlns="http://www.dataaccess.com/webservicesserver/">
      <ubiNum>50</ubiNum>
    </NumberToWords>
  </soap:Body>
</soap:Envelope>';

-- Criar objeto HTTP
EXEC sp_OACreate 'MSXML2.ServerXMLHTTP', @OBJECT_TOKEN OUT;

-- Abrir a conexão
EXEC sp_OAMethod @OBJECT_TOKEN, 'open', NULL, 'POST', @URL_API, false; 
EXEC sp_OAMethod @OBJECT_TOKEN, 'setRequestHeader', NULL, 'Content-Type', 'text/xml;charset=UTF-8'
EXEC sp_OAMethod @OBJECT_TOKEN, 'setRequestHeader', NULL, 'SOAPAction', 'POST'

-- Enviar a requisição
EXEC sp_OAMethod @OBJECT_TOKEN, 'send', NULL, @REQUEST_BODY;

-- Obter o código de status HTTP
EXEC sp_OAGetProperty @OBJECT_TOKEN, 'status', @STATUS OUTPUT;

-- Receber a resposta
EXEC sp_OAMethod @OBJECT_TOKEN, 'responseText', @RESPONSE_TEXT OUTPUT;

-- Mostrar o resultado
SELECT @STATUS as status, @RESPONSE_TEXT as response;

-- Liberar o objeto HTTP
EXEC sp_OADestroy @OBJECT_TOKEN;

-- Convertendo a resposta VARCHAR para XML
DECLARE @RESPONSE_TEXT_XML XML;
SET @RESPONSE_TEXT_XML = CONVERT(XML,@RESPONSE_TEXT);

-- Exibindo resultado formatado
WITH XMLNAMESPACES
(
	'http://schemas.xmlsoap.org/soap/envelope/' AS soap,
	'http://www.dataaccess.com/webservicesserver/' AS m
)
SELECT
    T.C.value('(m:NumberToWordsResult)[1]', 'VARCHAR(100)') AS NumberToWordsResult
FROM
    @RESPONSE_TEXT_XML.nodes('/soap:Envelope/soap:Body/m:NumberToWordsResponse') AS T(C)

