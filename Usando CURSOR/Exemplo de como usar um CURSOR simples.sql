USE AdventureWorks2014;

-- Declarar variáveis para armazenar os dados do cursor
DECLARE
    @ProductID INT,
    @Name VARCHAR(100),
    @ListPrice DECIMAL(10,2);

-- Declarando o cursor
DECLARE CURSOR_1 CURSOR FOR
SELECT
    ProductID,
    [Name],
    ListPrice
FROM
    Production.Product
WHERE
    ListPrice > 3000;

-- Abrir o cursor
OPEN CURSOR_1;

-- Busca a primeira linha
FETCH NEXT FROM CURSOR_1 INTO @ProductID, @Name, @ListPrice;

-- Loop para percorrer todo o cursor até o final
WHILE @@FETCH_STATUS = 0
BEGIN

    --Lógica do cursor
    DECLARE @TEXT VARCHAR(255) = CONCAT(@ProductID, ' - ', @Name, ' - New list price: ', CAST((@ListPrice+(@ListPrice*0.1))AS DECIMAL(10,2)));
    PRINT(@TEXT);

    -- Busca a próxima linha
    FETCH NEXT FROM CURSOR_1 INTO @ProductID, @Name, @ListPrice;

END;

-- Fechar o cursor
CLOSE CURSOR_1;

-- Remove referência do cursor
DEALLOCATE CURSOR_1;