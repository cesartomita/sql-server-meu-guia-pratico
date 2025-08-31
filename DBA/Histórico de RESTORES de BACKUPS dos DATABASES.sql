/*
	Histórico de RESTORES de BACKUPS dos DATABASES

    rh.restore_date:				Data e hora em que o restore foi executado
    rh.destination_database_name:	Nome do banco de dados que foi restaurado
    bmf.physical_device_name:		Caminho físico do arquivo de backup utilizado
    rh.user_name:					Usuário que realizou o restore
    rh.restore_type:				Código do tipo de restore (D = Database / F = File / G = Filegroup / I = Differential / L = Log / V = Verifyonly)
    restore_type_desc:				Descrição legível do tipo de restore (via CASE)
    rh.backup_set_id:				ID do backup utilizado (referência para a tabela backupset)
*/

SELECT
    rh.restore_date,
    rh.destination_database_name AS [database_name],
    bmf.physical_device_name AS backup_file,
    rh.[user_name],
    CASE rh.restore_type
        WHEN 'D' THEN 'Database'
        WHEN 'F' THEN 'File'
        WHEN 'G' THEN 'Filegroup'
        WHEN 'I' THEN 'Differential'
        WHEN 'L' THEN 'Log'
        WHEN 'V' THEN 'Verifyonly'
    END AS restore_type_desc,
    rh.backup_set_id
FROM
    msdb.dbo.restorehistory rh
    LEFT JOIN msdb.dbo.backupset bs ON rh.backup_set_id = bs.backup_set_id
    LEFT JOIN msdb.dbo.backupmediafamily bmf ON bs.media_set_id = bmf.media_set_id
ORDER BY
    rh.restore_date DESC;