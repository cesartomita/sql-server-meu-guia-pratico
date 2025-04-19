USE BikeStores;

-- Retorna o menor valor em uma coluna.
SELECT
    MIN(list_price) AS MINIMO
FROM
    production.products
WHERE
    category_id = 6;