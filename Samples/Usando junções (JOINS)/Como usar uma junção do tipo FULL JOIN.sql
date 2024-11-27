USE AdventureWorks2014;
GO

SELECT
	PA.City,
	PSP.Name AS StateProvinceName
FROM
	Person.Address PA
	FULL JOIN Person.StateProvince PSP ON PSP.StateProvinceID = PA.StateProvinceID;