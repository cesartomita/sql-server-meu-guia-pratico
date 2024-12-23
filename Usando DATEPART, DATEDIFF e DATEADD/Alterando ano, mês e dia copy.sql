DECLARE @HORA TIME = GETDATE();

SELECT
    @HORA,
    DATEADD(HOUR, 1, @HORA),    -- Adicionando 1 hora
    DATEADD(MINUTE, 10, @HORA), -- Adicionando 10 minutos
    DATEADD(SECOND, 30, @HORA); -- Adicionando 30 segundos