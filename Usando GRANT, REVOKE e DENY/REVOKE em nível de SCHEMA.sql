USE [AdventureWorks2014];

/* REVOKE em nível de SCHEMA */

-- remover SELECT em todo o schema Sales
REVOKE SELECT ON SCHEMA::[Sales] TO [user_test];

-- remover INSERT em todo o schema Production
REVOKE INSERT ON SCHEMA::[Production] TO [user_test];

-- remover UPDATE em todo o schema HumanResources
REVOKE UPDATE ON SCHEMA::[HumanResources] TO [user_test];

-- remover DELETE em todo o schema Person
REVOKE DELETE ON SCHEMA::[Person] TO [user_test];

-- remover EXECUTE em todos os objetos do schema dbo
REVOKE EXECUTE ON SCHEMA::[dbo] TO [user_test];

-- remover ALTER em todo o schema Sales
REVOKE ALTER ON SCHEMA::[Sales] TO [user_test];

-- remover REFERENCES em todo o schema Production
REVOKE REFERENCES ON SCHEMA::[Production] TO [user_test];

-- remover CONTROL em um schema específico
REVOKE CONTROL ON SCHEMA::[HumanResources] TO [user_test];
