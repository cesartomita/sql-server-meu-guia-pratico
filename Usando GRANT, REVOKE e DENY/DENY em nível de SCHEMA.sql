USE [AdventureWorks2014];

/* DENY em nível de SCHEMA */

-- Negar SELECT em todo o schema Sales
DENY SELECT ON SCHEMA::[Sales] TO [user_test];

-- Negar INSERT em todo o schema Production
DENY INSERT ON SCHEMA::[Production] TO [user_test];

-- Negar UPDATE em todo o schema HumanResources
DENY UPDATE ON SCHEMA::[HumanResources] TO [user_test];

-- Negar DELETE em todo o schema Person
DENY DELETE ON SCHEMA::[Person] TO [user_test];

-- Negar EXECUTE em procedures do schema dbo
DENY EXECUTE ON SCHEMA::[dbo] TO [user_test];

-- Negar ALTER em todo o schema
DENY ALTER ON SCHEMA::[Sales] TO [user_test];

-- Negar REFERENCES (foreign keys) em schema
DENY REFERENCES ON SCHEMA::[Production] TO [user_test];

-- Negar CONTROL em um schema
DENY CONTROL ON SCHEMA::[HumanResources] TO [user_test];