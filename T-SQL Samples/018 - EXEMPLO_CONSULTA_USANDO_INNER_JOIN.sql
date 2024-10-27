USE AdventureWorks2014;
GO

SELECT
	PA.AddressID,
	PA.AddressLine1,
	PA.City,
	PSP.Name AS StateProvinceName,
	PCR.Name AS CountryRegionName
FROM
	Person.Address PA
	INNER JOIN Person.StateProvince PSP ON PSP.StateProvinceID = PA.StateProvinceID
	INNER JOIN Person.CountryRegion PCR ON PCR.CountryRegionCode = PSP.CountryRegionCode
WHERE
	PCR.Name = 'Australia'
ORDER BY
	PA.City,
	PSP.Name,
	PCR.Name;