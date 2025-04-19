USE BikeStores;
GO

SELECT
	year_order_date,
	calc_total_price_with_discount AS total_current_year,
	LAG(calc_total_price_with_discount) OVER (ORDER BY year_order_date) AS total_previous_year,
	LEAD(calc_total_price_with_discount) OVER (ORDER BY year_order_date) AS total_next_year
FROM (
	SELECT
		YEAR(O.order_date) AS year_order_date,
		SUM((OI.quantity*OI.list_price)-((OI.quantity*OI.list_price)*OI.discount)) AS calc_total_price_with_discount
	FROM
		sales.orders O
		INNER JOIN sales.order_items OI ON OI.order_id = O.order_id
	GROUP BY
		YEAR(O.order_date)
	) TB
ORDER BY
	TB.year_order_date;

 --https://www.sqlservertutorial.net/getting-started/sql-server-sample-database/