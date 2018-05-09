USE [JTDDB]
GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'ATCDatasetTable')
DROP PROCEDURE [dbo].[TechOpsCommonDatasetTable]
GO

/****** Object:  StoredProcedure [dbo].[ATCDatasetTable]     Script Date: 4/6/2018 9:06:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ATCDatasetTable]
AS
BEGIN
	SET NOCOUNT ON;

SELECT [JTAFileName], [KSAOFileName], [Organization], [Date] FROM [ATC].[ATCDataset];

END