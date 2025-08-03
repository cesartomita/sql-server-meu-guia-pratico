DECLARE @NOME VARCHAR(50) = 'José da Silva Conceição';

SELECT 
	@NOME AS NOME_ORIGINAL,
	TRANSLATE(@NOME, 'áàâãéèêíìîóòôõúùûç', 'aaaaeeeiiioooouuuc') AS NOME_SEM_ACENTO;
