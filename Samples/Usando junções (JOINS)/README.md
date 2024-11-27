INNER JOIN: Retorna apenas as linhas que têm correspondência em ambas as tabelas. Se não houver correspondência, a linha não será incluída.

LEFT JOIN: Retorna todas as linhas da tabela à esquerda e as correspondências da tabela à direita. Se não houver correspondência na tabela à direita, os valores serão NULL.

RIGHT JOIN: Semelhante ao LEFT JOIN, mas retorna todas as linhas da tabela à direita e as correspondências da tabela à esquerda. Se não houver correspondência, os valores serão NULL na tabela à esquerda.

FULL JOIN: Retorna todas as linhas da tabela à esquerda e todas as linhas da tabela à direita. Combina o comportamento de LEFT JOIN e RIGHT JOIN.

CROSS JOIN: Retorna o produto cartesiano de ambas as tabelas, ou seja, combina todas as linhas da primeira tabela com todas as linhas da segunda tabela. Não precisa de condição de junção.

SELF JOIN: Uma junção de uma tabela consigo mesma. É usada para comparar registros dentro da mesma tabela, associando uma instância da tabela a outra.

![](<../../Imagens/Usando junções (JOINS).png>)