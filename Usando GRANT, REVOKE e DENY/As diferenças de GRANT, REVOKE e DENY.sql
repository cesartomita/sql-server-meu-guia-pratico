/*
	Diferença entre GRANT, REVOKE e DENY.

    Em resumo:
    - GRANT: Concede permissão ao usuário
    - REVOKE: Remove uma permissão concedida (volta ao estado anterior).
    - DENY: Nega explicitamente a permissão (bloqueia a ação).

    PRIORIDADE: DENY > GRANT (DENY sempre vence)

    Use GRANT quando:
    - Quer conceder permissões normais a usuários
    - Usuários precisam de acesso padrão
    - Grupos herdam permissões

    Use REVOKE quando:
    - Quer remover permissões concedidas
    - Usuário sai de um projeto
    - Precisa remover GRANT e permitir herança de grupo

    Use DENY quando:
    - Quer bloquear completamente uma ação específica
    - Precisa proibir mesmo que o grupo tenha permissão
    - Segurança crítica (ex: bloquear DELETE em tabela sensível)
    - Quer garantir que ninguém (exceto sysadmin) execute uma ação
*/

/*
    1. GRANT - Conceder Permissões

    Concede permissões explícitas a um usuário ou grupo.

    - Permite que o usuário execute uma ação
    - Pode ser herdado de grupos
    - Pode ser revogado
*/

-- Exemplo: Conceder SELECT em uma tabela
GRANT SELECT ON [Sales].[SalesOrderHeader] TO [user_test];

/*
    REVOKE - Remover Permissões

    Remove uma permissão que foi concedida anteriormente.

    - Volta o estado anterior (como se nunca tivesse sido concedido)
    - Remove a permissão completamente
    - Não bloqueia se herdada de um grupo
*/

-- Exemplo: Remover permissão SELECT
REVOKE SELECT ON [Sales].[SalesOrderHeader] FROM [user_test];

/*
    DENY - Negar Permissões Explicitamente

    Bloqueia explicitamente uma permissão.

    - Bloqueia completamente a ação
    - Tem PRIORIDADE sobre GRANT (mesmo de grupos)
    - Impede até permissões herdadas
    - Mais restritivo que REVOKE
*/

-- Exemplo: Negar SELECT em uma tabela
DENY SELECT ON [Sales].[SalesOrderHeader] TO [user_test];