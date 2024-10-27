USE BikeStores; 
GO

SELECT
	PC.category_name,
	PB.brand_name,
	PP.model_year,
	MIN(PP.list_price) AS min_price,
	MAX(PP.list_price) AS max_price,
	AVG(PP.list_price) AS avg_price,
	COUNT(PP.list_price) AS count_price,
    SUM(PP.list_price) AS total_price
FROM
	production.products PP
	INNER JOIN production.categories PC ON PC.category_id = PP.category_id
	INNER JOIN production.brands PB ON PB.brand_id = PP.brand_id
WHERE
	PC.category_name = 'Mountain Bikes'
	AND PB.brand_name = 'Trek'
GROUP BY
	PC.category_name,
	PB.brand_name,
	PP.model_year;

--https://www.sqlservertutorial.net/getting-started/sql-server-sample-database/
--https://learn.microsoft.com/pt-br/sql/t-sql/functions/aggregate-functions-transact-sql?view=sql-server-ver16