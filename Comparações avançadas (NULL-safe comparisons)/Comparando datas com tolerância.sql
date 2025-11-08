/*
    Retorna registros onde a diferença entre duas datas está dentro de um intervalo definido.

    Útil para comparar datas com pequenas tolerâncias, como por exemplo: logs, auditorias ou sincronizações.
*/

USE AdventureWorks2014;

DECLARE
	@DATA DATETIME = '2013-11-05',
	@INTERVALO INT = 5;

SELECT
	BusinessEntityID,
	ModifiedDate,
	ABS(DATEDIFF(DAY,ModifiedDate,@DATA))
FROM
	[Person].[Person]
WHERE
	ABS(DATEDIFF(DAY,ModifiedDate,@DATA))  <= @INTERVALO
ORDER BY
	ModifiedDate;