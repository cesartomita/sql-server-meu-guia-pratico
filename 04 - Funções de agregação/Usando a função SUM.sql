USE BikeStores;

-- Soma os valores de uma coluna numérica.
SELECT
    SUM(list_price) AS SOMA
FROM
    production.products
WHERE
    category_id = 6;