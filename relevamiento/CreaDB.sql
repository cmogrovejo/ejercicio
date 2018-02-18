IF NOT EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'Viajes')
BEGIN
	USE master
	
	CREATE DATABASE [Viajes] 
	
	exec sp_dboption N'Viajes', N'autoclose', N'false'
	exec sp_dboption N'Viajes', N'bulkcopy', N'false'
	exec sp_dboption N'Viajes', N'trunc. log', N'false'
	exec sp_dboption N'Viajes', N'torn page detection', N'false'
	exec sp_dboption N'Viajes', N'read only', N'false'
	exec sp_dboption N'Viajes', N'dbo use', N'false'
	exec sp_dboption N'Viajes', N'single', N'false'
	exec sp_dboption N'Viajes', N'autoshrink', N'false'
	exec sp_dboption N'Viajes', N'ANSI null default', N'false'
	exec sp_dboption N'Viajes', N'recursive triggers', N'false'
	exec sp_dboption N'Viajes', N'ANSI nulls', N'false'
	exec sp_dboption N'Viajes', N'concat null yields null', N'false'
	exec sp_dboption N'Viajes', N'cursor close on commit', N'false'
	exec sp_dboption N'Viajes', N'default to local cursor', N'false'
	exec sp_dboption N'Viajes', N'quoted identifier', N'false'
	exec sp_dboption N'Viajes', N'ANSI warnings', N'false'
	exec sp_dboption N'Viajes', N'auto create statistics', N'true'
	exec sp_dboption N'Viajes', N'auto update statistics', N'true'

END

GO




