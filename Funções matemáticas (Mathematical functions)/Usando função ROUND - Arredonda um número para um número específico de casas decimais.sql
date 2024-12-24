/*
    Retorna um valor numérico, arredondado, para o comprimento ou precisão especificados.

    ROUND(número, número_decimais, função_truncamento_opcional)

    número: O número que você deseja arredondar. Pode ser inteiro, decimal ou de ponto flutuante.
    número_decimais: O número de casas decimais para o qual o valor será arredondado.
    função_truncamento: Opcional. Define se o número será truncado em vez de arredondado:
                        0 ou omitido: arredonda.
                        1: trunca.
*/

-- Arredondar para um número inteiro:
SELECT
    ROUND(123.555, 0);

-- Arredondar para uma, duas ou três casas decimais:
SELECT
    ROUND(123.555, 1),
    ROUND(123.555, 2),
    ROUND(123.555, 3);

-- Quando o valor de número_decimais é negativo, o arredondamento ocorre à esquerda do ponto decimal:
SELECT
    ROUND(123.555, -0),
    ROUND(123.555, -1),
    ROUND(123.555, -2),
    ROUND(123.555, -3);

-- Ao usar o terceiro parâmetro como 1, o número é truncado (as casas decimais extras são descartadas sem arredondar):
SELECT
    ROUND(123.4567, 2, 1);