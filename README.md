# SQL Server - Meu guia prático

Esse repositório é para quem está começando a aprender a linguagem SQL, especialmente o T-SQL (usado no SQL Server), mas também serve para quem já tem mais experiência na área. Aqui, compartilho um pouco do que aprendi, com alguns scripts para ajudar na sua trajetória.

 ### Hello world:

<code>SELECT 'Hello world!';</code>

 ### Databases utilizados:
- [AdventureWorks2014](https://learn.microsoft.com/pt-br/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms)
- [Northwind](https://github.com/microsoft/sql-server-samples/tree/master/samples/databases/northwind-pubs)
- [BikeStores](https://www.sqlservertutorial.net/getting-started/sql-server-sample-database/)

## Agrupando dados

- [Agrupando dados com GROUP BY e filtrando com HAVING](Agrupando%20dados/Agrupando%20dados%20com%20GROUP%20BY%20e%20filtrando%20com%20HAVING.sql)
- [Agrupando dados com GROUP BY e usando CUBE para agregação das colunas](Agrupando%20dados/Agrupando%20dados%20com%20GROUP%20BY%20e%20usando%20CUBE%20para%20agrega%C3%A7%C3%A3o%20das%20colunas.sql)
- [Agrupando dados com GROUP BY e usando ROLLUP para subtotais](Agrupando%20dados/Agrupando%20dados%20com%20GROUP%20BY%20e%20usando%20ROLLUP%20para%20subtotais.sql)
- [Agrupando dados com GROUP BY](Agrupando%20dados/Agrupando%20dados%20com%20GROUP%20BY.sql)
## Agrupar multiplas linhas em uma única linha

- [Usando STRING_AGG para agrupar linhas](Agrupar%20multiplas%20linhas%20em%20uma%20%C3%BAnica%20linha/Usando%20STRING_AGG%20para%20agrupar%20linhas.sql)
- [Usando XML para agrupar linhas](Agrupar%20multiplas%20linhas%20em%20uma%20%C3%BAnica%20linha/Usando%20XML%20para%20agrupar%20linhas.sql)
## Comandos avançados

- [Como fazer um INSERT com SELECT (INSERT INTO SELECT)](Comandos%20avan%C3%A7ados/Como%20fazer%20um%20INSERT%20com%20SELECT%20(INSERT%20INTO%20SELECT).sql)
- [Como fazer um UPDATE com SELECT](Comandos%20avan%C3%A7ados/Como%20fazer%20um%20UPDATE%20com%20SELECT.sql)
- [Criando tabela temporária na global](Comandos%20avan%C3%A7ados/Criando%20tabela%20tempor%C3%A1ria%20na%20global.sql)
- [Criando tabela temporária na sessão](Comandos%20avan%C3%A7ados/Criando%20tabela%20tempor%C3%A1ria%20na%20sess%C3%A3o.sql)
- [Criando tabela temporária usando VALUES - 01](Comandos%20avan%C3%A7ados/Criando%20tabela%20tempor%C3%A1ria%20usando%20VALUES%20-%2001.sql)
- [Criando tabela temporária usando VALUES - 02](Comandos%20avan%C3%A7ados/Criando%20tabela%20tempor%C3%A1ria%20usando%20VALUES%20-%2002.sql)
- [Criando uma variável de tabela](Comandos%20avan%C3%A7ados/Criando%20uma%20vari%C3%A1vel%20de%20tabela.sql)
## Comandos iniciais

- [Como apagar um registro usando DELETE](Comandos%20iniciais/Como%20apagar%20um%20registro%20usando%20DELETE.sql)
- [Como atualizar um campo usando UPDATE](Comandos%20iniciais/Como%20atualizar%20um%20campo%20usando%20UPDATE.sql)
- [Como criar um banco de dados (DATABASE) com parâmetros](Comandos%20iniciais/Como%20criar%20um%20banco%20de%20dados%20(DATABASE)%20com%20par%C3%A2metros.sql)
- [Como criar um banco de dados (DATABASE) simples](Comandos%20iniciais/Como%20criar%20um%20banco%20de%20dados%20(DATABASE)%20simples.sql)
- [Como criar uma tabela (TABLE)](Comandos%20iniciais/Como%20criar%20uma%20tabela%20(TABLE).sql)
- [Como fazer uma busca usando ORDER BY](Comandos%20iniciais/Como%20fazer%20uma%20busca%20usando%20ORDER%20BY.sql)
- [Como fazer uma busca usando SELECT com DISTINCT](Comandos%20iniciais/Como%20fazer%20uma%20busca%20usando%20SELECT%20com%20DISTINCT.sql)
- [Como fazer uma busca usando SELECT](Comandos%20iniciais/Como%20fazer%20uma%20busca%20usando%20SELECT.sql)
- [Como fazer uma busca usando WHERE](Comandos%20iniciais/Como%20fazer%20uma%20busca%20usando%20WHERE.sql)
- [Como inserir um novo registro usando INSERT INTO](Comandos%20iniciais/Como%20inserir%20um%20novo%20registro%20usando%20INSERT%20INTO.sql)
## Como fazer uma SUBQUERY

- [Fazendo uma sub-consulta no SELECT](Como%20fazer%20uma%20SUBQUERY/Fazendo%20uma%20sub-consulta%20no%20SELECT.sql)
- [Fazendo uma sub-consulta no WHERE](Como%20fazer%20uma%20SUBQUERY/Fazendo%20uma%20sub-consulta%20no%20WHERE.sql)
## Conversão

- [Convertendo data](Convers%C3%A3o/Convertendo%20data.sql)
## DBA

- [Como fazer um DETACH e ATTACH](DBA/Como%20fazer%20um%20DETACH%20e%20ATTACH.sql)
- [Como movimentar os arquivos MDF e LDF](DBA/Como%20movimentar%20os%20arquivos%20MDF%20e%20LDF.sql)
- [Como verificar conexões ativas no SQL Server](DBA/Como%20verificar%20conex%C3%B5es%20ativas%20no%20SQL%20Server.sql)
- [Informações gerais do banco de dados](DBA/Informa%C3%A7%C3%B5es%20gerais%20do%20banco%20de%20dados.sql)
- [Listando as FOREIGN KEY de um DATABASE com SCHEMA](DBA/Listando%20as%20FOREIGN%20KEY%20de%20um%20DATABASE%20com%20SCHEMA.sql)
- [Listando as FOREIGN KEY de um DATABASE](DBA/Listando%20as%20FOREIGN%20KEY%20de%20um%20DATABASE.sql)
- [Listando valores do campo MS_Description das propriedades estendidas](DBA/Listando%20valores%20do%20campo%20MS_Description%20das%20propriedades%20estendidas.sql)
- [Mostrar transações abertas](DBA/Mostrar%20transa%C3%A7%C3%B5es%20abertas.sql)
- [Tabelas com maior uso de espaço em disco](DBA/Tabelas%20com%20maior%20uso%20de%20espa%C3%A7o%20em%20disco.sql)
## Exemplos práticos

- [Agrupando múltiplas linhas em somente uma (Versão 2005+)](Exemplos%20pr%C3%A1ticos/Agrupando%20m%C3%BAltiplas%20linhas%20em%20somente%20uma%20(Vers%C3%A3o%202005+).sql)
- [Agrupando múltiplas linhas em somente uma (Versão 2017+)](Exemplos%20pr%C3%A1ticos/Agrupando%20m%C3%BAltiplas%20linhas%20em%20somente%20uma%20(Vers%C3%A3o%202017+).sql)
- [Removendo nome com acentos (Versão 2017+)](Exemplos%20pr%C3%A1ticos/Removendo%20nome%20com%20acentos%20(Vers%C3%A3o%202017+).sql)
- [Validando domínio de e-mails e e-mails inválidos](Exemplos%20pr%C3%A1ticos/Validando%20dom%C3%ADnio%20de%20e-mails%20e%20e-mails%20inv%C3%A1lidos.sql)
## Funções analíticas (Analytic functions)

- [Usando a função CUME_DIST](Fun%C3%A7%C3%B5es%20anal%C3%ADticas%20(Analytic%20functions)/Usando%20a%20fun%C3%A7%C3%A3o%20CUME_DIST.sql)
- [Usando a função FIRST_VALUE](Fun%C3%A7%C3%B5es%20anal%C3%ADticas%20(Analytic%20functions)/Usando%20a%20fun%C3%A7%C3%A3o%20FIRST_VALUE.sql)
- [Usando a função LAST_VALUE](Fun%C3%A7%C3%B5es%20anal%C3%ADticas%20(Analytic%20functions)/Usando%20a%20fun%C3%A7%C3%A3o%20LAST_VALUE.sql)
- [Usando a função PERCENT_RANK](Fun%C3%A7%C3%B5es%20anal%C3%ADticas%20(Analytic%20functions)/Usando%20a%20fun%C3%A7%C3%A3o%20PERCENT_RANK.sql)
- [Usando as funções LAG e LEAD](Fun%C3%A7%C3%B5es%20anal%C3%ADticas%20(Analytic%20functions)/Usando%20as%20fun%C3%A7%C3%B5es%20LAG%20e%20LEAD.sql)
## Funções de agregação

- [Usando a função AVG](Fun%C3%A7%C3%B5es%20de%20agrega%C3%A7%C3%A3o/Usando%20a%20fun%C3%A7%C3%A3o%20AVG.sql)
- [Usando a função COUNT](Fun%C3%A7%C3%B5es%20de%20agrega%C3%A7%C3%A3o/Usando%20a%20fun%C3%A7%C3%A3o%20COUNT.sql)
- [Usando a função MAX](Fun%C3%A7%C3%B5es%20de%20agrega%C3%A7%C3%A3o/Usando%20a%20fun%C3%A7%C3%A3o%20MAX.sql)
- [Usando a função MIN](Fun%C3%A7%C3%B5es%20de%20agrega%C3%A7%C3%A3o/Usando%20a%20fun%C3%A7%C3%A3o%20MIN.sql)
- [Usando a função SUM](Fun%C3%A7%C3%B5es%20de%20agrega%C3%A7%C3%A3o/Usando%20a%20fun%C3%A7%C3%A3o%20SUM.sql)
## Funções de cadeia de caracteres (String functions)

- [Usando a função CHARINDEX e PATINDEX](Fun%C3%A7%C3%B5es%20de%20cadeia%20de%20caracteres%20(String%20functions)/Usando%20a%20fun%C3%A7%C3%A3o%20CHARINDEX%20e%20PATINDEX.sql)
- [Usando a função CONCAT](Fun%C3%A7%C3%B5es%20de%20cadeia%20de%20caracteres%20(String%20functions)/Usando%20a%20fun%C3%A7%C3%A3o%20CONCAT.sql)
- [Usando a função DATALENGTH](Fun%C3%A7%C3%B5es%20de%20cadeia%20de%20caracteres%20(String%20functions)/Usando%20a%20fun%C3%A7%C3%A3o%20DATALENGTH.sql)
- [Usando a função FORMATMESSAGE](Fun%C3%A7%C3%B5es%20de%20cadeia%20de%20caracteres%20(String%20functions)/Usando%20a%20fun%C3%A7%C3%A3o%20FORMATMESSAGE.sql)
- [Usando a função LEFT e RIGHT](Fun%C3%A7%C3%B5es%20de%20cadeia%20de%20caracteres%20(String%20functions)/Usando%20a%20fun%C3%A7%C3%A3o%20LEFT%20e%20RIGHT.sql)
- [Usando a função LEN](Fun%C3%A7%C3%B5es%20de%20cadeia%20de%20caracteres%20(String%20functions)/Usando%20a%20fun%C3%A7%C3%A3o%20LEN.sql)
- [Usando a função QUOTENAME](Fun%C3%A7%C3%B5es%20de%20cadeia%20de%20caracteres%20(String%20functions)/Usando%20a%20fun%C3%A7%C3%A3o%20QUOTENAME.sql)
- [Usando a função REPLACE](Fun%C3%A7%C3%B5es%20de%20cadeia%20de%20caracteres%20(String%20functions)/Usando%20a%20fun%C3%A7%C3%A3o%20REPLACE.sql)
- [Usando a função STRING_SPLIT](Fun%C3%A7%C3%B5es%20de%20cadeia%20de%20caracteres%20(String%20functions)/Usando%20a%20fun%C3%A7%C3%A3o%20STRING_SPLIT.sql)
- [Usando a função STUFF](Fun%C3%A7%C3%B5es%20de%20cadeia%20de%20caracteres%20(String%20functions)/Usando%20a%20fun%C3%A7%C3%A3o%20STUFF.sql)
- [Usando a função SUBSTRING](Fun%C3%A7%C3%B5es%20de%20cadeia%20de%20caracteres%20(String%20functions)/Usando%20a%20fun%C3%A7%C3%A3o%20SUBSTRING.sql)
- [Usando a função TRANSLATE](Fun%C3%A7%C3%B5es%20de%20cadeia%20de%20caracteres%20(String%20functions)/Usando%20a%20fun%C3%A7%C3%A3o%20TRANSLATE.sql)
- [Usando a função UPPER e LOWER](Fun%C3%A7%C3%B5es%20de%20cadeia%20de%20caracteres%20(String%20functions)/Usando%20a%20fun%C3%A7%C3%A3o%20UPPER%20e%20LOWER.sql)
## Funções de classificações (Ranking)

- [Usando a função DENSE_RANK](Fun%C3%A7%C3%B5es%20de%20classifica%C3%A7%C3%B5es%20(Ranking)/Usando%20a%20fun%C3%A7%C3%A3o%20DENSE_RANK.sql)
## Funções matemáticas (Mathematical functions)

- [Usando função ABS - Retorna o valor absoluto de um número](Fun%C3%A7%C3%B5es%20matem%C3%A1ticas%20(Mathematical%20functions)/Usando%20fun%C3%A7%C3%A3o%20ABS%20-%20Retorna%20o%20valor%20absoluto%20de%20um%20n%C3%BAmero.sql)
- [Usando função CEILING - Arredonda um número para cima](Fun%C3%A7%C3%B5es%20matem%C3%A1ticas%20(Mathematical%20functions)/Usando%20fun%C3%A7%C3%A3o%20CEILING%20-%20Arredonda%20um%20n%C3%BAmero%20para%20cima.sql)
- [Usando função FLOOR - Arredonda um número para baixo](Fun%C3%A7%C3%B5es%20matem%C3%A1ticas%20(Mathematical%20functions)/Usando%20fun%C3%A7%C3%A3o%20FLOOR%20-%20Arredonda%20um%20n%C3%BAmero%20para%20baixo.sql)
- [Usando função RAND - Gera um número aleatório entre 0 e 1](Fun%C3%A7%C3%B5es%20matem%C3%A1ticas%20(Mathematical%20functions)/Usando%20fun%C3%A7%C3%A3o%20RAND%20-%20Gera%20um%20n%C3%BAmero%20aleat%C3%B3rio%20entre%200%20e%201.sql)
- [Usando função ROUND - Arredonda um número para um número específico de casas decimais](Fun%C3%A7%C3%B5es%20matem%C3%A1ticas%20(Mathematical%20functions)/Usando%20fun%C3%A7%C3%A3o%20ROUND%20-%20Arredonda%20um%20n%C3%BAmero%20para%20um%20n%C3%BAmero%20espec%C3%ADfico%20de%20casas%20decimais.sql)
## Operadores de conjunto

- [Usando operador EXCEPT](Operadores%20de%20conjunto/Usando%20operador%20EXCEPT.sql)
- [Usando operador INTERSECT](Operadores%20de%20conjunto/Usando%20operador%20INTERSECT.sql)
- [Usando operador UNION ALL](Operadores%20de%20conjunto/Usando%20operador%20UNION%20ALL.sql)
- [Usando operador UNION](Operadores%20de%20conjunto/Usando%20operador%20UNION.sql)
## Principais conceitos

- [O que é DCL](Principais%20conceitos/O%20que%20%C3%A9%20DCL.sql)
- [O que é DDL](Principais%20conceitos/O%20que%20%C3%A9%20DDL.sql)
- [O que é DML](Principais%20conceitos/O%20que%20%C3%A9%20DML.sql)
- [O que é TCL](Principais%20conceitos/O%20que%20%C3%A9%20TCL.sql)
## Requisições em API

- [Exemplo de uma função de requisição em uma API REST](Requisi%C3%A7%C3%B5es%20em%20API/Exemplo%20de%20uma%20fun%C3%A7%C3%A3o%20de%20requisi%C3%A7%C3%A3o%20em%20uma%20API%20REST.sql)
- [Exemplo de uma requisição em uma API REST ](Requisi%C3%A7%C3%B5es%20em%20API/Exemplo%20de%20uma%20requisi%C3%A7%C3%A3o%20em%20uma%20API%20REST%20.sql)
- [Exemplo de uma requisição em uma API SOAP - 01](Requisi%C3%A7%C3%B5es%20em%20API/Exemplo%20de%20uma%20requisi%C3%A7%C3%A3o%20em%20uma%20API%20SOAP%20-%2001.sql)
- [Exemplo de uma requisição em uma API SOAP - 02](Requisi%C3%A7%C3%B5es%20em%20API/Exemplo%20de%20uma%20requisi%C3%A7%C3%A3o%20em%20uma%20API%20SOAP%20-%2002.sql)
## Transações (Transactions)

- [BEGIN TRANSACTION com COMMIT](Transa%C3%A7%C3%B5es%20(Transactions)/BEGIN%20TRANSACTION%20com%20COMMIT.sql)
- [BEGIN TRANSACTION com ROLLBACK](Transa%C3%A7%C3%B5es%20(Transactions)/BEGIN%20TRANSACTION%20com%20ROLLBACK.sql)
- [BEGIN TRANSACTION com SAVE TRANSACTION](Transa%C3%A7%C3%B5es%20(Transactions)/BEGIN%20TRANSACTION%20com%20SAVE%20TRANSACTION.sql)
- [BEGIN TRANSACTION com TRY CATCH](Transa%C3%A7%C3%B5es%20(Transactions)/BEGIN%20TRANSACTION%20com%20TRY%20CATCH.sql)
- [TRANCOUNT - Contando quantidade transações](Transa%C3%A7%C3%B5es%20(Transactions)/TRANCOUNT%20-%20Contando%20quantidade%20transa%C3%A7%C3%B5es.sql)
- [XACT_STATE - Informação do estado da transação](Transa%C3%A7%C3%B5es%20(Transactions)/XACT_STATE%20-%20Informa%C3%A7%C3%A3o%20do%20estado%20da%20transa%C3%A7%C3%A3o.sql)
## Usando CURSOR

- [Exemplo de como usar um CURSOR DYNAMIC, navegando para trente e para trás](Usando%20CURSOR/Exemplo%20de%20como%20usar%20um%20CURSOR%20DYNAMIC,%20navegando%20para%20trente%20e%20para%20tr%C3%A1s.sql)
- [Exemplo de como usar um CURSOR FORWARD_ONLY](Usando%20CURSOR/Exemplo%20de%20como%20usar%20um%20CURSOR%20FORWARD_ONLY.sql)
- [Exemplo de como usar um CURSOR simples](Usando%20CURSOR/Exemplo%20de%20como%20usar%20um%20CURSOR%20simples.sql)
- [Exemplo de como usar um CURSOR STATIC, navegando para trente e para trás](Usando%20CURSOR/Exemplo%20de%20como%20usar%20um%20CURSOR%20STATIC,%20navegando%20para%20trente%20e%20para%20tr%C3%A1s.sql)
## Usando DATEPART, DATEDIFF e DATEADD

- [Alterando ano, mês e dia copy](Usando%20DATEPART,%20DATEDIFF%20e%20DATEADD/Alterando%20ano,%20m%C3%AAs%20e%20dia%20copy.sql)
- [Alterando ano, mês e dia](Usando%20DATEPART,%20DATEDIFF%20e%20DATEADD/Alterando%20ano,%20m%C3%AAs%20e%20dia.sql)
- [Calculando diferença de anos, meses e dias](Usando%20DATEPART,%20DATEDIFF%20e%20DATEADD/Calculando%20diferen%C3%A7a%20de%20anos,%20meses%20e%20dias.sql)
- [Calculando diferença de horas, minutos e segundos](Usando%20DATEPART,%20DATEDIFF%20e%20DATEADD/Calculando%20diferen%C3%A7a%20de%20horas,%20minutos%20e%20segundos.sql)
- [Descobrindo o dia e semana do ano](Usando%20DATEPART,%20DATEDIFF%20e%20DATEADD/Descobrindo%20o%20dia%20e%20semana%20do%20ano.sql)
- [Extraindo ano, mês e dia](Usando%20DATEPART,%20DATEDIFF%20e%20DATEADD/Extraindo%20ano,%20m%C3%AAs%20e%20dia.sql)
- [Extraindo hora, minuto, segundo e milissegundo](Usando%20DATEPART,%20DATEDIFF%20e%20DATEADD/Extraindo%20hora,%20minuto,%20segundo%20e%20milissegundo.sql)
- [Obtendo o dia da semana](Usando%20DATEPART,%20DATEDIFF%20e%20DATEADD/Obtendo%20o%20dia%20da%20semana.sql)
- [Obtendo o trimestre](Usando%20DATEPART,%20DATEDIFF%20e%20DATEADD/Obtendo%20o%20trimestre.sql)
## Usando junções (JOINS)

- [Como usar uma junção do tipo CROSS JOIN](Usando%20jun%C3%A7%C3%B5es%20(JOINS)/Como%20usar%20uma%20jun%C3%A7%C3%A3o%20do%20tipo%20CROSS%20JOIN.sql)
- [Como usar uma junção do tipo FULL JOIN](Usando%20jun%C3%A7%C3%B5es%20(JOINS)/Como%20usar%20uma%20jun%C3%A7%C3%A3o%20do%20tipo%20FULL%20JOIN.sql)
- [Como usar uma junção do tipo INNER JOIN](Usando%20jun%C3%A7%C3%B5es%20(JOINS)/Como%20usar%20uma%20jun%C3%A7%C3%A3o%20do%20tipo%20INNER%20JOIN.sql)
- [Como usar uma junção do tipo LEFT JOIN](Usando%20jun%C3%A7%C3%B5es%20(JOINS)/Como%20usar%20uma%20jun%C3%A7%C3%A3o%20do%20tipo%20LEFT%20JOIN.sql)
- [Como usar uma junção do tipo RIGHT JOIN](Usando%20jun%C3%A7%C3%B5es%20(JOINS)/Como%20usar%20uma%20jun%C3%A7%C3%A3o%20do%20tipo%20RIGHT%20JOIN.sql)
- [Como usar uma junção do tipo SELF JOIN](Usando%20jun%C3%A7%C3%B5es%20(JOINS)/Como%20usar%20uma%20jun%C3%A7%C3%A3o%20do%20tipo%20SELF%20JOIN.sql)
## Usando PIVOT e UNPIVOT

- [Transformar colunas em linhas usando UNPIVOT dinâmico](Usando%20PIVOT%20e%20UNPIVOT/Transformar%20colunas%20em%20linhas%20usando%20UNPIVOT%20din%C3%A2mico.sql)
- [Transformar colunas em linhas usando UNPIVOT](Usando%20PIVOT%20e%20UNPIVOT/Transformar%20colunas%20em%20linhas%20usando%20UNPIVOT.sql)
- [Transformar linhas em colunas usando PIVOT dinâmico](Usando%20PIVOT%20e%20UNPIVOT/Transformar%20linhas%20em%20colunas%20usando%20PIVOT%20din%C3%A2mico.sql)
- [Transformar linhas em colunas usando PIVOT](Usando%20PIVOT%20e%20UNPIVOT/Transformar%20linhas%20em%20colunas%20usando%20PIVOT.sql)
