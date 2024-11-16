USE Northwind;

SELECT 
    P.ProductID,
    P.CategoryID,
    P.ProductName,
    S.CompanyName,
    S.Country
FROM
    Products P
    INNER JOIN Suppliers S ON S.SupplierID = P.SupplierID
WHERE
    P.CategoryID = (SELECT CategoryID FROM Categories WHERE CategoryName = 'Seafood');
