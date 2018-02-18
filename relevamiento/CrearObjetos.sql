USE [Viajes]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Vuelo_Autorizador]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Vuelo] DROP CONSTRAINT FK_Vuelo_Autorizador
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Vuelo_Solicitante]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Vuelo] DROP CONSTRAINT FK_Vuelo_Solicitante
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Vuelo_Login]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Vuelo] DROP CONSTRAINT FK_Vuelo_Login
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Vuelo_Destino]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Vuelo] DROP CONSTRAINT FK_Vuelo_Destino
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Vuelo_Linea]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Vuelo] DROP CONSTRAINT FK_Vuelo_Linea
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Vuelo_Estado]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Vuelo] DROP CONSTRAINT FK_Vuelo_Estado
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Vuelo_Estatus_Vuelo]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Vuelo] DROP CONSTRAINT FK_Vuelo_Estatus_Vuelo
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Usuario_Area]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Usuario] DROP CONSTRAINT FK_Usuario_Area
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Itinerario_Vuelo]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Itinerario] DROP CONSTRAINT FK_Itinerario_Vuelo
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Itinerario]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Itinerario]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Vuelo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Vuelo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Usuario]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Usuario]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Area]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Area]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Destino]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Destino]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Linea]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Linea]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Estado]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Estado]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Estatus_Vuelo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Estatus_Vuelo]
GO

CREATE TABLE [dbo].[Estatus_Vuelo] (
	[EstatusID] [int] NOT NULL ,
	[Valor] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Estado] (
	[EstadoID] [int] NOT NULL ,
	[Valor] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Linea] (
	[LineaID] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Nombre] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Destino] (
	[DestinoID] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Nombre] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Area] (
	[AreaID] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Nombre] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Usuario] (
	[UsuarioID] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[AreaID] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Nombre] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Cuenta] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Password] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Autorizador] [binary] NULL ,
	[Perfil] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Vuelo] (
	[VueloID] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[DestinoID] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[LineaID] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[EstadoID] [int] NOT NULL ,
	[EstatusID] [int] NOT NULL ,
	[Costo] [money] NULL ,
	[Autorizador] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Ext_Int] [binary] NOT NULL ,
	[Observacion] [nvarchar] (800) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Motivo] [nvarchar] (400) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Solicitante] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Ofi_Pers] [binary] NOT NULL ,	
	[Fecha_Creacion] [int] NOT NULL ,
	[Login_Creacion] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Fecha_Viaje_Para] [int] NOT NULL ,
	[Historico_Si_No] [binary] NOT NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Itinerario] (
	[ItinID] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[VueloID] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Salida] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Hr_Salida] [int] NOT NULL ,
	[Fecha_Salida] [int] NOT NULL ,
	[Llegada] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Hr_Llegada] [int] NOT NULL ,
	[Fecha_Llegada] [int] NOT NULL ,
	[In_Out] [binary] NOT NULL ,	
	[Num_Vuelo] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Area] ADD 
	CONSTRAINT [PK_Area] PRIMARY KEY  NONCLUSTERED 
	(
		[AreaID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Destino] ADD 
	CONSTRAINT [PK_Destino] PRIMARY KEY  NONCLUSTERED 
	(
		[DestinoID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Linea] ADD 
	CONSTRAINT [PK_Linea] PRIMARY KEY  NONCLUSTERED 
	(
		[LineaID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Estado] ADD 
	CONSTRAINT [PK_Estado] PRIMARY KEY  NONCLUSTERED 
	(
		[EstadoID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Estatus_Vuelo] ADD 
	CONSTRAINT [PK_Estatus_Vuelo] PRIMARY KEY  NONCLUSTERED 
	(
		[EstatusID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Usuario] ADD 
	CONSTRAINT [PK_Usuario] PRIMARY KEY  NONCLUSTERED 
	(
		[UsuarioID]
	)  ON [PRIMARY] ,
	CONSTRAINT [IX_Usuario] UNIQUE  NONCLUSTERED 
	(
		[Cuenta]
	)  ON [PRIMARY]  
GO

ALTER TABLE [dbo].[Vuelo] ADD 
	CONSTRAINT [PK_Vuelo] PRIMARY KEY  NONCLUSTERED 
	(
		[VueloID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Itinerario] ADD 
	CONSTRAINT [PK_Itinerario] PRIMARY KEY  NONCLUSTERED 
	(
		[ItinID]
	)  ON [PRIMARY] 
GO
 
ALTER TABLE [dbo].[Usuario] ADD 
	CONSTRAINT [FK_Usuario_Area] FOREIGN KEY 
	(
		[AreaID]
	) REFERENCES [dbo].[Area] (
		[AreaID]
	) NOT FOR REPLICATION 
GO

ALTER TABLE [dbo].[Vuelo] ADD 
	CONSTRAINT [FK_Vuelo_Autorizador] FOREIGN KEY 
	(
		[Autorizador]
	) REFERENCES [dbo].[Usuario] (
		[UsuarioID]
	) NOT FOR REPLICATION ,
	CONSTRAINT [FK_Vuelo_Solicitante] FOREIGN KEY 
	(
		[Solicitante]
	) REFERENCES [dbo].[Usuario] (
		[UsuarioID]
	) NOT FOR REPLICATION ,
	CONSTRAINT [FK_Vuelo_Login] FOREIGN KEY 
	(
		[Login_Creacion]
	) REFERENCES [dbo].[Usuario] (
		[UsuarioID]
	) NOT FOR REPLICATION ,
	CONSTRAINT [FK_Vuelo_Estado] FOREIGN KEY 
	(
		[EstadoID]
	) REFERENCES [dbo].[Estado] (
		[EstadoID]
	) NOT FOR REPLICATION ,
	CONSTRAINT [FK_Vuelo_Estatus_Vuelo] FOREIGN KEY 
	(
		[EstatusID]
	) REFERENCES [dbo].[Estatus_Vuelo] (
		[EstatusID]
	) NOT FOR REPLICATION ,
	CONSTRAINT [FK_Vuelo_Destino] FOREIGN KEY 
	(
		[DestinoID]
	) REFERENCES [dbo].[Destino] (
		[DestinoID]
	) NOT FOR REPLICATION ,
	CONSTRAINT [FK_Vuelo_Linea] FOREIGN KEY 
	(
		[LineaID]
	) REFERENCES [dbo].[Linea] (
		[LineaID]
	) NOT FOR REPLICATION 
GO

ALTER TABLE [dbo].[Itinerario] ADD 
	CONSTRAINT [FK_Itinerario_Vuelo] FOREIGN KEY 
	(
		[VueloID]
	) REFERENCES [dbo].[Vuelo] (
		[VueloID]
	)
GO