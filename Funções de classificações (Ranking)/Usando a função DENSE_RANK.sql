/*
	DENSE_RANK() é uma função analítica que atribui uma posição (ranking) para cada linha dentro de uma partição, sem pular números em caso de empates.

    Exemplo:
    Quando você quer saber a posição (1º, 2º, 3º...) de cada item em um grupo.

	Fórmula:
	PERCENT_RANK =  (RANK() - 1) / (Total de linhas - 1)
*/

CREATE TABLE #FUNCIONARIO
(
    ID INT IDENTITY(1,1),
    NOME VARCHAR(100),
    DEPARTAMENTO VARCHAR(50),
    SALARIO DECIMAL(10,2),
    DATA_ADMISSAO DATE
);

INSERT INTO #FUNCIONARIO (NOME, DEPARTAMENTO, SALARIO, DATA_ADMISSAO)
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
    DENSE_RANK() OVER (PARTITION BY DEPARTAMENTO ORDER BY SALARIO DESC) AS DENSE_RANK_SALARIAL
FROM 
    #FUNCIONARIO;

/*

Resultado:

+----------+--------------+-----------+------------------------+
| NOME     | DEPARTAMENTO | SALARIO   | DENSE_RANK_SALARIAL    |
+----------+--------------+-----------+------------------------+
| Gustavo  | RH           | 4500.00   | 1                      |
| Juliana  | RH           | 4500.00   | 1                      |
| Felipe   | RH           | 3500.00   | 2                      |
| Eduarda  | RH           | 3000.00   | 3                      |
| Daniela  | RH           | 2500.00   | 4                      |
| Camila   | TI           | 10000.00  | 1                      |
| Vanessa  | TI           | 7000.00   | 2                      |
| Carlos   | TI           | 5000.00   | 3                      |
| Alice    | TI           | 3500.00   | 4                      |
| Bruno    | TI           | 3500.00   | 4                      |
+----------+--------------+-----------+------------------------+

*/