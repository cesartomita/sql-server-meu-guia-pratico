-- Retorna o número de caracteres da expressão de cadeia de caracteres especificada, excluindo espaços à direita.

DECLARE
	@VAR_1 VARCHAR(10) = 'TESTE',
	@VAR_2 VARCHAR(10) = '   TESTE',
	@VAR_3 VARCHAR(10) = 'TESTE   ';

SELECT
	LEN(@VAR_1) AS LEN_VAR_1,
	LEN(@VAR_2) AS LEN_VAR_2,
	LEN(@VAR_3) AS LEN_VAR_3;

/*
	Resultado:

	LEN_VAR_1	LEN_VAR_2	LEN_VAR_3
	5			8			5
*/