USE [master]
GO
/****** Object:  Database [backup]    Script Date: 10/18/2013 16:36:40 ******/
if not exists(select 1 from master..sysdatabases where name='backup')
   CREATE DATABASE [backup]
   GO
USE [backup]
GO
/****** Object:  Table [dbo].[Record]    Script Date: 10/18/2013 16:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Record](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DB] [varchar](50) NOT NULL,
	[Path] [varchar](256) NOT NULL,
	[BackupTime] [datetime] NOT NULL,
	[Remark] [varchar](256) NULL,
 CONSTRAINT [PK_Record] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_Record_BackupTime]    Script Date: 10/18/2013 16:36:40 ******/
ALTER TABLE [dbo].[Record] ADD  CONSTRAINT [DF_Record_BackupTime]  DEFAULT (getdate()) FOR [BackupTime]
GO
