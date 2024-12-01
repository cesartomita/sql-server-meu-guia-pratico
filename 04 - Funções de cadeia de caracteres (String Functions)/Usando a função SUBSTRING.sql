/*
	Extrai parte de uma string com base na posição inicial e no comprimento.

	Sintaxe: SUBSTRING(string, start, length)
*/

DECLARE @VAR VARCHAR(20) = 'Microsoft SQL Server'

SELECT
	SUBSTRING(@VAR,11,3) AS RESULT;

-- Resultado: SQL