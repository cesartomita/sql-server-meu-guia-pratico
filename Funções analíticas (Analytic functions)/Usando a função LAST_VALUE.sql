/*
	Retorna o último valor de uma coluna, com base em uma ordenação.
	Útil para saber o valor final de um grupo ou faixa.
	
	Por que usar ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING com LAST_VALUE()?
    
    Por padrão, a janela de uma função analítica com ORDER BY é da primeira linha da partição até a linha atual (chamada de window frame padrão):

    RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW

    Isso significa que a função só vê as linhas até a linha atual, não as posteriores.
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
  LAST_VALUE(ID) OVER (PARTITION BY CODIGO ORDER BY ID ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS ULTIMO_ID_POR_CODIGO
FROM
	#TESTE
ORDER BY
	ID;

/*
Resultado:

+----+--------+----------------------+
| ID | CODIGO | ULTIMO_ID_POR_CODIGO |
+----+--------+----------------------+
|  1 | AAA    |                    5 |
|  2 | BBB    |                    7 |
|  3 | AAA    |                    5 |
|  4 | CCC    |                    8 |
|  5 | AAA    |                    5 |
|  6 | BBB    |                    7 |
|  7 | BBB    |                    7 |
|  8 | CCC    |                    8 |
+----+--------+----------------------+
*/