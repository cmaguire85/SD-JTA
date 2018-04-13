USE [JTDDB]

--Drop Table if it already exists in the database
IF OBJECT_ID('[ATC].[ATCDataset]', 'U') IS NOT NULL 
  DROP TABLE [ATC].[ATCDataset]; 
GO 

CREATE TABLE [ATC].[ATCDataset](
	[ATCDatasetID] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[JTAFileName] [varchar](300) NOT NULL,
	[KSAOFileName] [varchar](300) NOT NULL,
	[Organization] [varchar](300) NULL,
	[Date] [varchar](300) NULL,
	[InsertBy] [varchar](50) NULL,
	[InsertDT] [datetime] NULL,
	[UpdateBy] [varchar](50) NULL,
	[UpdateDT] [datetime] NULL)
GO

SET ANSI_PADDING OFF
GO


