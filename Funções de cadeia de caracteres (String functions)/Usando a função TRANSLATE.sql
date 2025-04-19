-- Troca vários caracteres de uma vez só numa string, um por um, na mesma posição.

-- TRANSLATE(input_string, from_string, to_string)

-- Somente SQL Server 2017+

SELECT TRANSLATE('ABC DEF GHI','ADG','123'); -- Resultado: 1BC 2EF 3HI

SELECT TRANSLATE('CODIGO: 521463', '123456','QWEASD'); -- Resultado: ZBC ZEF ZHI
