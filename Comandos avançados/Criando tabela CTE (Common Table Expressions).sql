USE AdventureWorks2014;
GO

WITH CTE_EMAILS AS
(
	SELECT
		PP.BusinessEntityID,
		PP.FirstName,
		PP.LastName,
		PE.EmailAddress
	FROM
		Person.Person PP
		INNER JOIN Person.EmailAddress PE ON PE.BusinessEntityID = PP.BusinessEntityID
	WHERE
		PP.EmailPromotion = 2
)

SELECT
	*
FROM
	CTE_EMAILS
WHERE
	LastName = 'Smith';