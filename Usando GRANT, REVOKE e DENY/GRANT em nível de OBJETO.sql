USE [AdventureWorks2014];

/* GRANT em nível de OBJETO */

-- SELECT
GRANT SELECT ON [Person].[Person] TO [user_test];

-- INSERT
GRANT INSERT ON [Person].[Person] TO [user_test];

-- UPDATE (tabela inteira)
GRANT UPDATE ON [Person].[Person] TO [user_test];

-- UPDATE em uma coluna específica
GRANT UPDATE (EmailAddress) ON [Person].[EmailAddress] TO [user_test];

-- DELETE
GRANT DELETE ON [Person].[Person] TO [user_test];

-- EXECUTE (Executar) uma PROCEDURE
GRANT EXECUTE ON [dbo].[uspGetBillOfMaterials] TO [user_test];

-- EXECUTE (Executar) uma SCALAR FUNCTION
GRANT EXECUTE ON [dbo].[ufnGetStock] TO [user_test];

-- SELECT em uma TABLE-VALUED FUNCTION
GRANT SELECT ON [dbo].[ufnGetContactInformation] TO [user_test];

-- SELECT uma VIEW
GRANT SELECT ON [HumanResources].[vEmployee] TO [user_test];

-- FOREIGN KEY: Criar uma Foreign Key (chave estrangeira)
GRANT REFERENCES ON [Person].[Person] TO [user_test];

-- ALTER: Fazer alterações da tabela: Adicionar coluna, alterar tipo, criação de índice...
GRANT ALTER ON [Person].[Person] TO [user_test];

-- CONTROL: Controle total da tabela (Implícito: ALTER, SELECT, INSERT, DELETE, UPDATE, REFERENCES...)
GRANT CONTROL ON [Person].[Person] TO [user_test];