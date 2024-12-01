USE AdventureWorks2014;
GO

/*
	Combinação de Categorias e Subcategorias de Produtos
*/

SELECT
	PC.Name AS ProductCategoryName,
	PS.Name AS ProductSubcategoryName
FROM
	Production.ProductCategory PC
	CROSS JOIN Production.ProductSubcategory PS;