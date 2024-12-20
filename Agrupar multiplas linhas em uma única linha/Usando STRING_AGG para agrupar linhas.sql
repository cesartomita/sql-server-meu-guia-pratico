DECLARE @TB_TESTE AS TABLE (CODIGO VARCHAR(10), NOME VARCHAR(100));

INSERT INTO @TB_TESTE
(
    CODIGO,
    NOME
)
VALUES
    ('AAA', 'Fiat'),
    ('AAA', 'Ford'),
    ('AAA', 'Honda'),
    ('AAA', 'Yamaha'),
    ('BBB', 'Focus'),
    ('BBB', 'Sense');

SELECT
    CODIGO,
    STRING_AGG(NOME, ';') AS NOMES
FROM
    @TB_TESTE
GROUP BY
    CODIGO
ORDER BY
    1;