/*
    DBCC DROPCLEANBUFFERS

    "Remove todos os buffers limpos do pool de buffers e os objetos de columnstore do pool de objetos columnstore."

    Use DBCC DROPCLEANBUFFERS para testar consultas com um cache de buffer frio sem desligar e reiniciar o servidor.
    Para remover buffers limpos dos objetos de columnstore e do pool de buffers do pool de objetos columnstore,
    primeiro use CHECKPOINT para produzir um cache de buffer frio.
    
    CHECKPOINT faz com que todas as páginas sujas do banco de dados atual sejam gravadas no disco e limpa os buffers.
    Depois de fazer o ponto de verificação do banco de dados, é possível emitir o comando DBCC DROPCLEANBUFFERS a fim de remover todos os buffers do pool de buffers.

    - Limpa os buffers de dados da memória (Buffer Pool).
    - Em outras palavras: descarta páginas de dados que estavam em cache, forçando o SQL Server a ler de novo do disco na próxima execução.
    - Uso típico:
        - Testar o custo real de I/O (como se fosse a primeira vez que a query roda).
        - Ver se a sua query depende de cache para ser rápida.

    Atenção:
    Se rodar em produção, pode causar queda de performance momentânea para todos os usuários,
    pois o SQL Server vai ter que recompilar planos e recarregar dados do disco.
*/

CHECKPOINT;  -- força escrita das páginas sujas em disco
DBCC DROPCLEANBUFFERS;  -- limpa o buffer pool (páginas de dados em cache)