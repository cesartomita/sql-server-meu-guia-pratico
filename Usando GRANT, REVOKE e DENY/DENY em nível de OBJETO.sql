USE [AdventureWorks2014];

/* DENY em nível de OBJETO */

-- SELECT
DENY SELECT ON [Person].[Person] TO [user_test];

-- INSERT
DENY INSERT ON [Person].[Person] TO [user_test];

-- UPDATE (tabela inteira)
DENY UPDATE ON [Person].[Person] TO [user_test];

-- UPDATE em uma coluna específica
DENY UPDATE (EmailAddress) ON [Person].[EmailAddress] TO [user_test];

-- DELETE
DENY DELETE ON [Person].[Person] TO [user_test];

-- EXECUTE (Executar) uma PROCEDURE
DENY EXECUTE ON [dbo].[uspGetBillOfMaterials] TO [user_test];

-- EXECUTE (Executar) uma SCALAR FUNCTION
DENY EXECUTE ON [dbo].[ufnGetStock] TO [user_test];

-- SELECT em uma TABLE-VALUED FUNCTION
DENY SELECT ON [dbo].[ufnGetContactInformation] TO [user_test];

-- SELECT uma VIEW
DENY SELECT ON [HumanResources].[vEmployee] TO [user_test];

-- FOREIGN KEY: Negar criação de Foreign Key (REFERENCES)
DENY REFERENCES ON [Person].[Person] TO [user_test];

-- ALTER: Negar alterações da tabela
DENY ALTER ON [Person].[Person] TO [user_test];

-- CONTROL: Negar controle total da tabela
DENY CONTROL ON [Person].[Person] TO [user_test];
