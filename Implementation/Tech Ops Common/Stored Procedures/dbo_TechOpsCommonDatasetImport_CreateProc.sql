USE [JTDDB]
GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'TechOpsCommonDatasetImport')
DROP PROCEDURE [dbo].[TechOpsCommonDatasetImport]
GO

/****** Object:  StoredProcedure [dbo].[TechOpsCommonDatasetImport]    Script Date: 4/6/2018 9:06:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TechOpsCommonDatasetImport]
@CommonFileName varchar(300),
@CommonOrganization varchar(300),
@CommonDate varchar(300)
AS
BEGIN
	SET NOCOUNT ON;

DECLARE 
@CommonDatasetImportSQL varchar(max),
@CommonDatasetImportSQL1 varchar(300),
@CommonDatasetImportSQL2 varchar(300),
@CommonDatasetImportSQL3 varchar(300)


SELECT @CommonDatasetImportSQL1 = 'INSERT INTO [TechOps].[CommonDataset] ([FileName], [Organization], [Date]) VALUES ('
SELECT @CommonDatasetImportSQL2 = ', '
SELECT @CommonDatasetImportSQL3 = ');'

SELECT @CommonDatasetImportSQL = @CommonDatasetImportSQL1 + @CommonFileName + @CommonDatasetImportSQL2 + @CommonOrganization + @CommonDatasetImportSQL2 + @CommonDate + @CommonDatasetImportSQL3

EXEC(@CommonDatasetImportSQL)

END
