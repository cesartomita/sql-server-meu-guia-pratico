USE BikeStores;

-- Retorna o maior valor em uma coluna.
SELECT
    MAX(list_price) AS MAXIMO
FROM
    production.products
WHERE
    category_id = 6;