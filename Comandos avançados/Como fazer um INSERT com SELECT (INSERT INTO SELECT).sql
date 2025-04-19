USE Northwind;

INSERT INTO Products
(
    ProductName,
    SupplierID,
    CategoryID,
    QuantityPerUnit,
    UnitPrice,
    UnitsInStock,
    UnitsOnOrder,
    ReorderLevel,
    Discontinued 
)
SELECT
ProductName,
SupplierID,
CategoryID,
QuantityPerUnit,
UnitPrice,
UnitsInStock,
UnitsOnOrder,
ReorderLevel,
Discontinued
FROM
    Products P
WHERE
    ReorderLevel > 20 AND UnitPrice > 43.00;