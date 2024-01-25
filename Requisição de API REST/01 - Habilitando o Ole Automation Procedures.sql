
-- Exibir o status de 'show advanced options' e 'Ole Automation Procedures' estão habilitados.

EXEC sp_configure 'show advanced options';
EXEC sp_configure 'Ole Automation Procedures';

-- Habilitar o ''show advanced options' e 'Ole Automation Procedures':

EXEC sp_configure 'show advanced options', 1;
RECONFIGURE;
GO

EXEC sp_configure 'Ole Automation Procedures', 1;
RECONFIGURE;
GO