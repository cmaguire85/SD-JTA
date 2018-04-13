USE [JTDDB]

--Drop Table if it already exists in the database
IF OBJECT_ID('[TechOps].[SpecificDataset]', 'U') IS NOT NULL 
  DROP TABLE [TechOps].[SpecificDataset]; 
GO 

CREATE TABLE [TechOps].[SpecificDataset](
	[SpecificDatasetID] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[FileName] [varchar](300) NOT NULL,
	[Organization] [varchar](300) NULL,
	[Date] [varchar](300) NULL,
	[InsertBy] [varchar](50) NULL,
	[InsertDT] [datetime] NULL,
	[UpdateBy] [varchar](50) NULL,
	[UpdateDT] [datetime] NULL)
GO

SET ANSI_PADDING OFF
GO


