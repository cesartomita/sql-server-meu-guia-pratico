SELECT
	*
FROM
	(VALUES 
		(1, 'JOÃO SILVA', 'joao.silva@email.com'), 
		(2, 'MARIA SANTOS', 'maria.santos@email.com'), 
		(3, 'CARLOS EDUARDO', 'carlos.eduardo@email.com')
	) AS TB
	(
		ID_CLIENTE,
		NOME,
		EMAIL
	);