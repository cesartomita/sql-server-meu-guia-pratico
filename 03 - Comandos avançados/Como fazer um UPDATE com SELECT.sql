USE Northwind;

UPDATE
    P
SET
    P.UnitPrice = 15.50
FROM
    Products P
    INNER JOIN Suppliers S ON S.SupplierID = P.SupplierID
    INNER JOIN (SELECT CategoryID FROM Categories WHERE CategoryName = 'Dairy Products') C ON C.CategoryID= P.CategoryID
WHERE
    S.Country = 'Spain';