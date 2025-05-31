/*
	Retorna o primeiro valor de uma coluna, com base em uma ordenação.
	Útil para saber o valor inicial de um grupo ou faixa.
*/

CREATE TABLE #TESTE
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	CODIGO VARCHAR(10) NOT NULL
);

INSERT INTO #TESTE
VALUES ('AAA'), ('BBB'),('AAA'), ('CCC'),('AAA'), ('BBB'),('BBB'), ('CCC');

SELECT
  ID,
  CODIGO,
  FIRST_VALUE(ID) OVER (PARTITION BY CODIGO ORDER BY ID) AS PRIMEIRO_ID_POR_CODIGO
FROM
	#TESTE
ORDER BY
	ID;

/*
Resultado:

+----+--------+------------------------+
| ID | CODIGO | PRIMEIRO_ID_POR_CODIGO |
+----+--------+------------------------+
|  1 | AAA    |                      1 |
|  2 | BBB    |                      2 |
|  3 | AAA    |                      1 |
|  4 | CCC    |                      4 |
|  5 | AAA    |                      1 |
|  6 | BBB    |                      2 |
|  7 | BBB    |                      2 |
|  8 | CCC    |                      4 |
+----+--------+------------------------+
*/