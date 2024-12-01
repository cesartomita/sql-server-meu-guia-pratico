-- Retorna o número de bytes usados para armazenar uma string (útil para strings VARCHAR ou NVARCHAR).

DECLARE
	@VAR_1 VARCHAR(10)  = 'TESTE',
	@VAR_2 NVARCHAR(10) = 'TESTE',
	@VAR_3 VARCHAR(10)  = 'TESTE   ';

SELECT
	DATALENGTH(@VAR_1) AS LEN_VAR_1,
	DATALENGTH(@VAR_2) AS LEN_VAR_2,
	DATALENGTH(@VAR_3) AS LEN_VAR_3;

/*
	Resultado:

	LEN_VAR_1	LEN_VAR_2	LEN_VAR_3
	5			10			8

	(VARCHAR, 1 byte por caractere)
	(NVARCHAR, 2 bytes por caractere)
*/