/*
	LEFT: Retorna os primeiros n caracteres de uma string.
	RIGHT: Retorna os últimos n caracteres de uma string.
*/

DECLARE @VAR VARCHAR(20) = 'SQL Server'

SELECT
	LEFT(@VAR, 3) AS RESULT_LEFT,
	RIGHT(@VAR, 6) AS RESULT_RIGHT;


/*
	Resultado:

	RESULT_LEFT	RESULT_RIGHT
	SQL			Server
*/