USE AdventureWorks2014;
GO

SELECT
	SOH.OrderDate,
	SUM(SOD.UnitPrice) AS TotalUnitPrice
FROM
	Sales.SalesOrderDetail SOD
	INNER JOIN Sales.SalesOrderHeader SOH ON SOH.SalesOrderID = SOD.SalesOrderID
GROUP BY
	SOH.OrderDate
ORDER BY
	1;