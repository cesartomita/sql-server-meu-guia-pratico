/*
	DCL - Comandos de Controle de Segurança (Data Definition Language)

	Os Comandos de Controle de Segurança (DCL) são usados para gerenciar permissões e controle de acesso em um banco de dados.
	Eles permitem que administradores concedam ou revoguem direitos de execução de certos comandos ou acesso a dados para usuários ou grupos de usuários.
*/

-- Conceder permissão de SELECT em uma tabela específica:

GRANT SELECT ON CLIENTE TO [user_test];

-- Conceder permissão de UPDATE em uma tabela específica:

GRANT UPDATE ON CLIENTE TO [user_test];

-- Remover uma permissão concedida, revogar permissão de SELECT em uma tabela:

REVOKE SELECT ON CLIENTE TO [user_test];

-- Remover uma permissão concedida, revogar permissão de UPDATE em uma tabela:

REVOKE UPDATE ON CLIENTE TO [user_test];

-- Negar permissão de SELECT a uma tabela:

DENY SELECT ON CLIENTE TO [user_test];

-- Negar permissão de DELETE a uma tabela:

DENY DELETE ON CLIENTE TO [user_test];

/*
	Diferença entre REVOKE e DENY:
	REVOKE: Remove permissões que foram previamente concedidas, mas o usuário pode ter essas permissões indiretamente (através de grupo ou função).
	DENY: Nega explicitamente uma permissão, bloqueando o acesso, mesmo que a permissão tenha sido concedida em outro nível (como em um grupo). DENY tem prioridade sobre GRANT.
*/
