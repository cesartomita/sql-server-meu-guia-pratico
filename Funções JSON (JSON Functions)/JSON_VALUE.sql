-- A função JSON_VALUE é usada para extrair um único valor escalar (simples) de um documento JSON.

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

SELECT
  JSON_VALUE(@json, '$.nome') AS nome,
  JSON_VALUE(@json, '$.cidade[0]') AS primeira_cidade,
  JSON_VALUE(@json, '$.telefone[1].numero') AS segundo_telefone,
  JSON_VALUE(@json, '$.ativo') AS ativo;
