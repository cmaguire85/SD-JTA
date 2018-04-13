USE [JTDDB]
GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'TechOpsSpecificDatasetImport')
DROP PROCEDURE [dbo].[TechOpsSpecificDatasetImport]
GO

/****** Object:  StoredProcedure [dbo].[TechOpsSpecificDatasetImport]    Script Date: 4/6/2018 9:06:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TechOpsSpecificDatasetImport]
@SpecificFileName varchar(300),
@SpecificOrganization varchar(300),
@SpecificDate varchar(300)
AS
BEGIN
	SET NOCOUNT ON;

DECLARE 
@SpecificDatasetImportSQL varchar(max),
@SpecificDatasetImportSQL1 varchar(300),
@SpecificDatasetImportSQL2 varchar(300),
@SpecificDatasetImportSQL3 varchar(300)


SELECT @SpecificDatasetImportSQL1 = 'INSERT INTO [TechOps].[SpecificDataset] ([FileName], [Organization], [Date]) VALUES ('
SELECT @SpecificDatasetImportSQL2 = ', '
SELECT @SpecificDatasetImportSQL3 = ');'

SELECT @SpecificDatasetImportSQL = @SpecificDatasetImportSQL1 + @SpecificFileName + @SpecificDatasetImportSQL2 + @SpecificOrganization + @SpecificDatasetImportSQL2 + @SpecificDate + @SpecificDatasetImportSQL3

EXEC(@SpecificDatasetImportSQL)

END
