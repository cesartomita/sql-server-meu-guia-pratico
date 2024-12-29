/*
    Forward-Only Cursor (Somente Avanço)

    - Só navega para frente.
    - Mais rápido e mais leve.
    - O cursor FORWARD_ONLY é dinâmico por padrão, a menos que você o configure explicitamente como STATIC, KEYSET ou DYNAMIC.
    - Tem uma abertura mais rápida, pois não materializa o conjunto de dados como os cursores STATIC.
    - É eficiente para processar conjuntos de dados grandes em cenários onde apenas movimentação para frente é necessária.
*/


-- Criando uma variável tabela
DECLARE @CLIENTE AS TABLE (
    ID INT PRIMARY KEY,
    NOME NVARCHAR(100) NOT NULL, 
    CIDADE NVARCHAR(100) NOT NULL,
    SALDO DECIMAL(10, 2) NOT NULL
);

-- Inserindo dados na variável tabela 
INSERT INTO @CLIENTE
    (ID, NOME, CIDADE, SALDO)
VALUES
    (1, 'João Silva', 'São Paulo', 150.00),
    (2, 'Maria Oliveira', 'Rio de Janeiro', -50.00),
    (3, 'Pedro Santos', 'Salvador', 0.00),
    (4, 'Ana Costa', 'Belo Horizonte', 300.00);

-- Declarando as variáveis usadas no Cursor
DECLARE
    @ID INT,
    @NOME NVARCHAR(100),
    @CIDADE NVARCHAR(100),
    @SALDO DECIMAL(10,2);

-- Criando Cursor
DECLARE CUR_CLIENTE CURSOR FORWARD_ONLY FOR
SELECT ID, NOME, CIDADE, SALDO FROM @CLIENTE;

-- Abrindo Cursor
OPEN CUR_CLIENTE;

-- Adicionando um novo cliente enquanto o cursor está aberto
INSERT INTO @CLIENTE
    (ID, NOME, CIDADE, SALDO)
VALUES
    (5, 'Carlos Mendes', 'Curitiba', 100.00);

-- Buscando a primeira linha
FETCH NEXT FROM CUR_CLIENTE INTO @ID, @NOME, @CIDADE, @SALDO;

-- Loop para percorrer todo o Cursor
WHILE @@FETCH_STATUS = 0
BEGIN

    PRINT CONCAT('Cliente: ', @NOME, ' - Cidade: ', @CIDADE, ' - Saldo: ', @SALDO);

    -- Buscando a proxima linha
    FETCH NEXT FROM CUR_CLIENTE INTO @ID, @NOME, @CIDADE, @SALDO;

END;

CLOSE CUR_CLIENTE;
DEALLOCATE CUR_CLIENTE;

/*
    Resultado:

    Cliente: João Silva - Cidade: São Paulo - Saldo: 150.00
    Cliente: Maria Oliveira - Cidade: Rio de Janeiro - Saldo: -50.00
    Cliente: Pedro Santos - Cidade: Salvador - Saldo: 0.00
    Cliente: Ana Costa - Cidade: Belo Horizonte - Saldo: 300.00
    Cliente: Carlos Mendes - Cidade: Curitiba - Saldo: 100.00
    
    OBS.: A linha de Carlos Mendes será visível porque foi inserida antes de o cursor alcançar essa parte do conjunto de dados.
*/