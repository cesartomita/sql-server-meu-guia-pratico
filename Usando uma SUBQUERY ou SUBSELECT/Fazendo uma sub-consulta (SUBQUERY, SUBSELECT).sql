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
    INNER JOIN (SELECT CategoryID FROM Categories WHERE CategoryName = 'Dairy Products') C ON C.CategoryID= P.CategoryID
WHERE
    Country = 'Spain';