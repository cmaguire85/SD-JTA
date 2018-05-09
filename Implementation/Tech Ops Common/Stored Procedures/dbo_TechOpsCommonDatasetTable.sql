USE [JTDDB]
GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'TechOpsCommonDatasetTable')
DROP PROCEDURE [dbo].[TechOpsCommonDatasetTable]
GO

/****** Object:  StoredProcedure [dbo].[TechOpsCommonDatasetTable]    Script Date: 4/6/2018 9:06:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TechOpsCommonDatasetTable]
AS
BEGIN
	SET NOCOUNT ON;

SELECT [FileName], [Organization], [Date] FROM [TechOps].[CommonDataset];

END