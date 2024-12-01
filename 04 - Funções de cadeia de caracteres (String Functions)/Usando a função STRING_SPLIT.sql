/*
	Divide uma string com base em um delimitador e retorna uma tabela.

	Observação:
	Disponível a partir do SQL Server 2016)
	STRING_SPLIT requer que o nível de compatibilidade seja, no mínimo, 130. Quando o nível de compatibilidade é inferior a 130, o Mecanismo de Banco de Dados não consegue localizar a função STRING_SPLIT.
*/


SELECT
	value AS PALAVRA
FROM
	STRING_SPLIT('Microsoft,SQL,Server,2016', ',');

/*
	Resultado:

	+-----------+
	| PALAVRA   |
	+-----------+
	| Microsoft |
	| SQL       |
	| Server    |
	| 2016      |
	+-----------+
*/
