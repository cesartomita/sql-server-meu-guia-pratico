USE BikeStores;

-- Essa consulta gera subtotais por ano e categoria, além de um total geral.

-- Exemplo 1
SELECT
    PG.category_name,
    PP.model_year,
    SUM(PP.list_price) AS total_list_price
FROM
    production.products PP
    INNER JOIN production.categories PG ON PG.category_id = PP.category_id
GROUP BY ROLLUP
    (PG.category_name,PP.model_year);

-- Exemplo 2
SELECT
    PG.category_name,
    PP.model_year,
    SUM(PP.list_price) AS total_list_price
FROM
    production.products PP
    INNER JOIN production.categories PG ON PG.category_id = PP.category_id
GROUP BY
    PG.category_name,
    PP.model_year
WITH ROLLUP;

/*

Resultado esperado:

+-------------------+-------------+------------------+
|   category_name   | model_year  | total_list_price |
+-------------------+-------------+------------------+
| Children Bicycles | 2016        | 839.97           |
| Children Bicycles | 2017        | 5179.81          |
| Children Bicycles | 2018        | 10959.63         |
| Children Bicycles | NULL        | 16979.41         |
| Comfort Bicycles  | 2016        | 1649.97          |
| Comfort Bicycles  | 2017        | 4733.90          |
| Comfort Bicycles  | 2018        | 14079.83         |
| Comfort Bicycles  | NULL        | 20463.70         |
| ...               | ...         | ...              |
+-------------------+-------------+------------------+

*/