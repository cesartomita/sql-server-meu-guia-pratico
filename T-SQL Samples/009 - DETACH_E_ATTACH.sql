/*** DETACH & ATTACH ***/

-- DETACH

USE [master]
GO
EXEC master.dbo.sp_detach_db @dbname = N'StackOverflow2010'
GO

-- ATTACH

USE [master]
GO
CREATE DATABASE [StackOverflow2010] ON 
( FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\StackOverflow2010.mdf' ),
( FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\StackOverflow2010_log.ldf' )
 FOR ATTACH
GO
