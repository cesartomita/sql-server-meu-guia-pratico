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

-- Usando XML PATH
SELECT 
   TB.CODIGO,
   STUFF((SELECT
            '; ' + TE.NOME
          FROM
            @TB_TESTE TE
          WHERE
            TE.CODIGO = TB.CODIGO
          FOR XML PATH('')), 1, 1, '') AS NOMES
FROM
    @TB_TESTE TB
GROUP BY
    TB.CODIGO
ORDER BY 1

-- Remove o espaço antes do ponto e vírgula
SELECT 
   TB.CODIGO,
   STUFF((SELECT
            ';' + TE.NOME
          FROM
            @TB_TESTE TE
          WHERE
            TE.CODIGO = TB.CODIGO
          FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 1, '') AS NOMES
FROM @TB_TESTE TB
GROUP BY TB.CODIGO
ORDER BY 1;