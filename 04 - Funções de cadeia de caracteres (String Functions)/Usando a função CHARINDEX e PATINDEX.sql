-- Retorna a posição da primeira ocorrência de uma substring dentro de uma string. Retorna 0 se não encontrado.
-- Sintaxe: CHARINDEX(substring, string [, start_location])

SELECT CHARINDEX('SQL', 'Microsoft SQL Server - MSSQL 2014', 1);  -- Resultado: 11
SELECT CHARINDEX('SQL', 'Microsoft SQL Server - MSSQL 2014', 12); -- Resultado: 26
SELECT CHARINDEX('SQL', 'Microsoft SQL Server - MSSQL 2014', 27); -- Resultado: 0

-- Similar ao CHARINDEX, mas suporta caracteres curinga para busca.
-- Sintaxe: PATINDEX ('%substring%', string) 

SELECT PATINDEX('%SQL%', 'Microsoft SQL Server - MSSQL 2014');   -- Resultado: 11
SELECT PATINDEX('%[0-9]%', 'Microsoft SQL Server - MSSQL 2014'); -- Resultado: 30
SELECT PATINDEX('%ABC%', 'Microsoft SQL Server - MSSQL 2014');   -- Resultado: 0