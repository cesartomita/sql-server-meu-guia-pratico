USE BikeStores;

-- Calcula a média dos valores de uma coluna numérica.
SELECT
    AVG(list_price) AS MEDIA
FROM
    production.products
WHERE
    category_id = 6;