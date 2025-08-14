/*
    NTILE é utilizado quando é necessário dividir dados em grupos para fins de análise.
	Cada grupo recebe um número sequencial iniciando em 1.

    No exemplo abaixo, os produtos são classificados em 3 grupos (CLASSIFICACAO) com base no preço, em ordem decrescente.
*/

CREATE TABLE #PRODUTO (
    PRODUTO VARCHAR(50),
    PRECO DECIMAL(10,2)
);

INSERT INTO #PRODUTO
	(PRODUTO, PRECO)
VALUES
	('Notebook', 3899.90),
	('Smartphone', 4999.00),
	('Monitor', 1499.99),
	('Headset', 599.90),
	('Mouse', 259.00),
	('Teclado', 799.90),
	('SSD', 429.00),
	('Placa de Vídeo', 3899.00),
	('Tablet', 4299.00),
	('Impressora', 1299.90);

SELECT 
    PRODUTO,
    PRECO,
    NTILE(3) OVER (ORDER BY PRECO DESC) AS CLASSIFICACAO
FROM
	#PRODUTO
ORDER BY
	CLASSIFICACAO;
