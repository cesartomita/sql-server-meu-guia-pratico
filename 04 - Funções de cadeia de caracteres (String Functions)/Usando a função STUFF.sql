/*
    Substitui parte de uma string por outra, especificando a posição inicial e o número de caracteres a serem removidos.

    Sintaxe: STUFF(string, start, length, new_string)
*/

SELECT
    STUFF('Microsoft SQL Server', 11, 3, 'MySQL'); -- Resultado: Microsoft MySQL Server