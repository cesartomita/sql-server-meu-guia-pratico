USE AdventureWorks2014;
GO

SELECT
	PP.BusinessEntityID,
	SPC.CreditCardID
FROM
	Person.Person PP
	LEFT JOIN Sales.PersonCreditCard SPC ON SPC.BusinessEntityID = PP.BusinessEntityID
WHERE
	SPC.CreditCardID IS NULL
ORDER BY
	1;