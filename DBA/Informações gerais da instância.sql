/*
	@@SERVERNAME - Nome do servidor/instância

	SERVERPROPERTY('ProductVersion') - Versão do SQL Server
        16 = SQL Server 2022
        15 = SQL Server 2019
        14 = SQL Server 2017
        13 = SQL Server 2016
        12 = SQL Server 2014
        11 = SQL Server 2012

	SERVERPROPERTY('Edition') - Edição do SQL Server
    Exemplos:
        Enterprise Edition
        Standard Edition
        Developer Edition
        Express Edition

	SERVERPROPERTY('EngineEdition') - Tipo de engine/instância
        1 = Personal / Desktop Engine (descontinuado)
        2 = Standard / Enterprise / Developer / Evaluation
        3 = SQL Azure (Banco de Dados individual)
        4 = SQL Data Warehouse
        5 = SQL Azure Managed Instance
        8 = Azure Synapse Serverless
*/

SELECT 
	@@SERVERNAME AS ServerName,
	SERVERPROPERTY('ProductVersion') AS ProductVersion,
	SERVERPROPERTY('ProductLevel') AS ProductLevel,
	SERVERPROPERTY('Edition') AS Edition,
	SERVERPROPERTY('EngineEdition') AS EngineEdition;