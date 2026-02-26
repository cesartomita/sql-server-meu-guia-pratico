USE [AdventureWorks2014];

/* REVOKE em nível de OBJETO */

-- SELECT
REVOKE SELECT ON [Person].[Person] TO [user_test];

-- INSERT
REVOKE INSERT ON [Person].[Person] TO [user_test];

-- UPDATE (tabela inteira)
REVOKE UPDATE ON [Person].[Person] TO [user_test];

-- UPDATE em uma coluna específica
REVOKE UPDATE (EmailAddress) ON [Person].[EmailAddress] TO [user_test];

-- DELETE
REVOKE DELETE ON [Person].[Person] TO [user_test];

-- EXECUTE (Executar) uma PROCEDURE
REVOKE EXECUTE ON [dbo].[uspGetBillOfMaterials] TO [user_test];

-- EXECUTE (Executar) uma SCALAR FUNCTION
REVOKE EXECUTE ON [dbo].[ufnGetStock] TO [user_test];

-- SELECT em uma TABLE-VALUED FUNCTION
REVOKE SELECT ON [dbo].[ufnGetContactInformation] TO [user_test];

-- SELECT uma VIEW
REVOKE SELECT ON [HumanResources].[vEmployee] TO [user_test];

-- FOREIGN KEY: Remover permissão REFERENCES
REVOKE REFERENCES ON [Person].[Person] TO [user_test];

-- ALTER: Remover permissão ALTER
REVOKE ALTER ON [Person].[Person] TO [user_test];

-- CONTROL: Remover permissão CONTROL
REVOKE CONTROL ON [Person].[Person] TO [user_test];
