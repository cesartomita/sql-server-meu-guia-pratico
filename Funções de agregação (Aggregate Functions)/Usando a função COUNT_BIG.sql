/*
    Diferença entre COUNT e COUNT_BIG:
    COUNT(): Retorna tipo int (até 2.147.483.647)
    COUNT_BIG(): Retorna tipo bigint (até 9.223.372.036.854.775.807)
*/

SELECT
	 COUNT_BIG(*) AS CNT_BIG
FROM
	sys.syscolumns;