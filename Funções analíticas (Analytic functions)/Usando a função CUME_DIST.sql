/*
	CUME_DIST (Cumulative Distribution) é uma função analítica que calcula a distribuição acumulada de um valor dentro de um conjunto de dados.
	Ou seja, ele mostra a proporção de linhas com valores menores ou iguais ao valor atual, dentro de uma partição.

    Exemplo:
    Quando você quer saber em qual percentil cada valor está (ex: top 20%).

	Fórmula do CUME_DIST:
	CUME_DIST = (Número de linhas com valor MENOR OU IGUAL ao valor atual) / (Total de linhas na partição)
*/

CREATE TABLE #FUNCIONARIO
(
    ID INT IDENTITY(1,1),
    NOME VARCHAR(100),
    DEPARTAMENTO VARCHAR(50),
    SALARIO DECIMAL(10,2),
    DATA_ADMISSAO DATE
);

INSERT INTO #FUNCIONARIO
    (NOME, DEPARTAMENTO, SALARIO, DATA_ADMISSAO)
VALUES
    ('Alice',   'TI', 3500,  '2020-01-15'),
    ('Bruno',   'TI', 3500,  '2020-05-10'),
    ('Carlos',  'TI', 5000,  '2021-03-20'),
    ('Vanessa', 'TI', 7000,  '2022-07-01'),
    ('Camila',  'TI', 10000, '2023-09-25'),
    ('Daniela', 'RH', 2500,  '2019-02-10'),
    ('Eduarda', 'RH', 3000,  '2019-11-05'),
    ('Felipe',  'RH', 3500,  '2020-06-17'),
    ('Gustavo', 'RH', 4500,  '2021-08-30'),
    ('Juliana', 'RH', 4500,  '2021-08-30');

SELECT 
	NOME,
	DEPARTAMENTO,
	SALARIO,
	CUME_DIST() OVER (PARTITION BY DEPARTAMENTO ORDER BY SALARIO) AS CUME_DIST_SALARIO
FROM
	#FUNCIONARIO;


/*

Resultado:

+----------+--------------+-----------+--------------------+
| NOME     | DEPARTAMENTO | SALARIO   | CUME_DIST_SALARIO  |
+----------+--------------+-----------+--------------------+
| Daniela  | RH           | 2500.00   | 0,2                |
| Eduarda  | RH           | 3000.00   | 0,4                |
| Felipe   | RH           | 3500.00   | 0,6                |
| Gustavo  | RH           | 4500.00   | 1                  |
| Juliana  | RH           | 4500.00   | 1                  |
| Alice    | TI           | 3500.00   | 0,4                |
| Bruno    | TI           | 3500.00   | 0,4                |
| Carlos   | TI           | 5000.00   | 0,6                |
| Vanessa  | TI           | 7000.00   | 0,8                |
| Camila   | TI           | 10000.00  | 1                  |
+----------+--------------+-----------+--------------------+

*/