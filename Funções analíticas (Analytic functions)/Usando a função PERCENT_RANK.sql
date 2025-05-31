/*
    A função PERCENT_RANK calcula a posição relativa de uma linha dentro de um conjunto de linhas (como uma partição ou o resultado total da consulta), expressa como uma porcentagem.
    O valor varia de 0 a 1. A primeira linha na ordenação definida sempre terá PERCENT_RANK igual a 0.
*/

CREATE TABLE #BOLETIM (
    ALUNO VARCHAR(100),
    NOTA_FINAL DECIMAL(5,2)
);

INSERT INTO #BOLETIM (ALUNO, NOTA_FINAL) VALUES
('Ana', 8.5),
('Bruno', 9.0),
('Carla', 7.0),
('Daniel', 9.0),
('Elena', 6.5),
('João', 10.0);

SELECT
    ALUNO,
    NOTA_FINAL,
    PERCENT_RANK() OVER (ORDER BY NOTA_FINAL ASC) AS RANK_PERCENTUAL,
	CONCAT((PERCENT_RANK() OVER (ORDER BY NOTA_FINAL ASC) * 100), '%') AS  PERCENTUAL_FORMATADO
FROM
    #BOLETIM;

/*
Resultado:
+--------+------------+-----------------+----------------------+
| ALUNO  | NOTA_FINAL | RANK_PERCENTUAL | PERCENTUAL_FORMATADO |
+--------+------------+-----------------+----------------------+
| Elena  |       6.50 |               0 |                   0% |
| Carla  |       7.00 |             0.2 |                  20% |
| Ana    |       8.50 |             0.4 |                  40% |
| Bruno  |       9.00 |             0.6 |                  60% |
| Daniel |       9.00 |             0.6 |                  60% |
| João   |      10.00 |               1 |                 100% |
+--------+------------+-----------------+----------------------+
*/