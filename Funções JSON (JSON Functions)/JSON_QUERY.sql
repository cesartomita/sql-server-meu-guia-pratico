-- A função JSON_QUERY é usada para extrair objetos ou arrays inteiros de um documento JSON.

DECLARE @json NVARCHAR(MAX) = '
	{
	  "id": 1,
	  "nome": "Maria",
	  "cidade": ["São Paulo", "Rio de Janeiro"],
	  "telefone": [
		{ "tipo": "celular", "numero": "5555-5555" },
		{ "tipo": "fixo", "numero": "7777-7777" }
	  ],
	  "ativo": true
	}
';

SELECT JSON_QUERY(@json, '$.cidade') AS lista_cidades; -- ["São Paulo", "Rio de Janeiro"]
SELECT JSON_QUERY(@json, '$.telefone[0]') AS lista_cidades; -- { "tipo": "celular", "numero": "5555-5555" }