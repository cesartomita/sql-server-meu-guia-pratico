 /*
    DML - Linguagem de Manipulação de Dados (Data Manipulation Language)

    Conjunto de comandos da linguagem SQL que permitem a manipulação de dados em bancos de dados,
    podemos chamar de CRUD (Create, Read, Update e Delete)

    INSERT	Cria um novo registro (linha) em uma tabela
    UPDATE	Permite modificar registros em uma tabela
    DELETE	Exclui um ou mais registros selecionados de uma tabela
    SELECT INTO	Realiza uma consulta em uma tabela e inclui o resultado como um novo registro em outra tabela
    MERGE	Combina dados de múltiplas tabelas, mesclando elementos das declarações INSERT e UPDATE.
*/
 
/* SELECT: Recuperar dados de uma tabela. */

-- Sintaxe:
SELECT * FROM [TABELA];

-- Exemplo:
SELECT * FROM CLIENTE;

/* INSERT INTO: Inserir novos dados em uma tabela. */

-- Sintaxe:
INSERT INTO [TABELA] ([COLUNA_1], [COLUNA_2]) VALUES ([VALOR_1], [VALOR_2]);

-- Exemplo:
INSERT INTO CLIENTE (ID, NOME, DATA_NASCIMENTO) VALUES (1, 'JOÃO DA SILVA' , '1980-12-31');

/* UPDATE: Atualizar dados existentes. */

--Sintaxe:
UPDATE [TABELA] SET [COLUNA] = [VALOR] WHERE [CONDIÇÃO];

-- Exemplo:
UPDATE CLIENTE SET NOME = 'MARIA DOS SANTOS' WHERE ID = 1;

/* DELETE: Excluir dados de uma tabela. */ 

-- Sintaxe:
DELETE [TABELA] WHERE [CONDIÇÃO];

-- Exemplo:
DELETE CLIENTE WHERE ID = 1;

/* MERGE: Realizar operações de inserção, atualização e exclusão em uma única instrução. */

-- Sintaxe:
MERGE INTO [TABELA_DESTINO] AS T
USING [TABELA_ORIGEM] AS O
ON T.ID = O.ID
WHEN MATCHED THEN
  UPDATE SET T.COLUNA = O.COLUNA
WHEN NOT MATCHED BY TARGET THEN
  INSERT (COLUNA) VALUES (O.COLUNA)
WHEN NOT MATCHED BY SOURCE THEN
  DELETE;

--  Exemplo:
MERGE INTO
	CLIENTE AS TARGET
USING
	CLIENTE_NOVO AS SOURCE
ON
	TARGET.ID = SOURCE.ID
WHEN MATCHED THEN
  UPDATE SET
  TARGET.NOME = SOURCE.NOME
WHEN NOT MATCHED BY TARGET THEN
  INSERT (ID, NOME, DATA_NASCIMENTO)
  VALUES (SOURCE.ID, SOURCE.NOME, SOURCE.DATA_NASCIMENTO)
WHEN NOT MATCHED BY SOURCE THEN
  DELETE;