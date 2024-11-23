USE BikeStores;

SELECT
    PG.category_name,
    COUNT(*) AS total_category_name
FROM
    production.products PP
    INNER JOIN production.categories PG ON PG.category_id = PP.category_id
GROUP BY
    PG.category_name
HAVING
    COUNT(*) > 50;