/*
    DBCC FREEPROCCACHE

    "Remove todos os elementos do cache do plano, remove um plano específico do cache do plano,
    por meio da especificação de um identificador de plano ou identificador SQL
    ou remove todas as entradas de cache com um pool de recursos especificado."
    
    - Limpa o cache de planos de execução.
    - O SQL Server sempre compila um plano de execução para cada query.
    - Esse plano fica guardado no plan cache para ser reutilizado em execuções futuras.
    - Ao rodar esse comando, você obriga o SQL Server a recompilar a query na próxima execução.

    Atenção:
    Se rodar em produção, pode causar queda de performance momentânea para todos os usuários,
    pois o SQL Server vai ter que recompilar planos e recarregar dados do disco.
*/

DBCC FREEPROCCACHE;  -- descarta todos os planos de execução em cache