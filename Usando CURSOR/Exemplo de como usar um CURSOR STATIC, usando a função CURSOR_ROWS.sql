/*
	@@CURSOR_ROWS retorna o número de linhas qualificadas atualmente no último cursor aberto na conexão.
*/

USE AdventureWorks2014;

--CURSOR STATIC: Número exato de linhas (porque o resultado é materializado na tempdb).
DECLARE CUR_EMPLOYEE CURSOR STATIC 
FOR
SELECT
	LoginID
FROM
	[HumanResources].[Employee]
WHERE
	JobTitle = 'Design Engineer'
	AND LoginID = 'adventure-works\alan0'

OPEN CUR_EMPLOYEE;

IF @@CURSOR_ROWS = 0
BEGIN

	PRINT('Aviso: Nenhum registro para processar.');
	CLOSE CUR_EMPLOYEE;
	DEALLOCATE CUR_EMPLOYEE;
	RETURN;

END;

DECLARE @LoginID VARCHAR(255);

FETCH NEXT FROM CUR_EMPLOYEE INTO @LoginID;

WHILE @@FETCH_STATUS = 0
BEGIN

	PRINT @LoginID;

	FETCH NEXT FROM CUR_EMPLOYEE INTO @LoginID;

END;

CLOSE CUR_EMPLOYEE;
DEALLOCATE CUR_EMPLOYEE;