/* CTE recursiva para geração de calendário (Dimensão Calendário) */

DECLARE @ANO SMALLINT = 2026;

WITH CTE_CALENDARIO AS
(
    SELECT 
        DATEFROMPARTS(@ANO,1,1) AS DATA_COMPLETA
    UNION ALL
    SELECT
        DATEADD(DAY,1,DATA_COMPLETA)
    FROM
        CTE_CALENDARIO
    WHERE
        DATA_COMPLETA < DATEFROMPARTS(@ANO,12,31)
)

SELECT 
    DATA_COMPLETA,
    YEAR(DATA_COMPLETA) AS ANO,
    MONTH(DATA_COMPLETA) AS MES,
    DAY(DATA_COMPLETA) AS DIA,
    DATEPART(WEEK, DATA_COMPLETA) AS SEMANA,
    DATEPART(WEEKDAY, DATA_COMPLETA) AS DIA_SEMANA,
    CASE MONTH(DATA_COMPLETA)
        WHEN 1  THEN 'Janeiro'
        WHEN 2  THEN 'Fevereiro'
        WHEN 3  THEN 'Março'
        WHEN 4  THEN 'Abril'
        WHEN 5  THEN 'Maio'
        WHEN 6  THEN 'Junho'
        WHEN 7  THEN 'Julho'
        WHEN 8  THEN 'Agosto'
        WHEN 9  THEN 'Setembro'
        WHEN 10 THEN 'Outubro'
        WHEN 11 THEN 'Novembro'
        WHEN 12 THEN 'Dezembro'
        END AS MES_NOME,
    CASE
        DATEPART(WEEKDAY, DATA_COMPLETA)
        WHEN 1 THEN 'Domingo'
        WHEN 2 THEN 'Segunda-feira'
        WHEN 3 THEN 'Terça-feira'
        WHEN 4 THEN 'Quarta-feira'
        WHEN 5 THEN 'Quinta-feira'
        WHEN 6 THEN 'Sexta-feira'
        WHEN 7 THEN 'Sábado'
        END AS DIA_SEMANA_NOME,
    IIF(DATEPART(WEEKDAY, DATA_COMPLETA) IN (1,7), 0, 1) AS DIA_UTIL,
    IIF(MONTH(DATA_COMPLETA) <= 6, 1, 2) AS SEMESTRE,
    ((MONTH(DATA_COMPLETA)-1)/2)+1 AS BIMESTRE,
    DATEPART(QUARTER, DATA_COMPLETA) AS TRIMESTRE
FROM
    CTE_CALENDARIO
OPTION
    (MAXRECURSION 366);