if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_USENUMBE_REFERENCE_NUMBERS]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[UseNumber] DROP CONSTRAINT FK_USENUMBE_REFERENCE_NUMBERS
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Numbers]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Numbers]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UseNumber]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[UseNumber]
GO

CREATE TABLE [dbo].[Numbers] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[NO] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[IntSize] [int] NOT NULL ,
	[Number] [bigint] NOT NULL ,
	[UseDate] [datetime] NOT NULL ,
	[Step] [int] NOT NULL ,
	[Type] [int] NOT NULL ,
	[TimeOut] [int] NULL ,
	[Memo] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[UseNumber] (
	[ID] [varchar] (32) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Number] [bigint] NULL ,
	[State] [int] NULL ,
	[NumberPool] [varchar] (32) COLLATE Chinese_PRC_CI_AS NULL ,
	[UseTime] [datetime] NULL ,
	[UseID] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

