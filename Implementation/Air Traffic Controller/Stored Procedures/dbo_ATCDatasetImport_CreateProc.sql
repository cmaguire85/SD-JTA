USE [JTDDB]
GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'ATCDatasetImport')
DROP PROCEDURE [dbo].[ATCSDatasetImport]
GO

/****** Object:  StoredProcedure [dbo].[ATCDatasetImport]    Script Date: 4/6/2018 9:06:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ATCDatasetImport]
@ATCJTAFileName varchar(300),
@ATCKSAOFileName varchar(300),
@ATCOrganization varchar(300),
@ATCDate varchar(300)
AS
BEGIN
	SET NOCOUNT ON;

DECLARE 
@ATCDatasetImportSQL varchar(max),
@ATCDatasetImportSQL1 varchar(300),
@ATCDatasetImportSQL2 varchar(300),
@ATCDatasetImportSQL3 varchar(300)


SELECT @ATCDatasetImportSQL1 = 'INSERT INTO [ATC].[ATCDataset] ([JTAFileName], [KSAOFileName], [Organization], [Date]) VALUES ('
SELECT @ATCDatasetImportSQL2 = ', '
SELECT @ATCDatasetImportSQL3 = ');'

SELECT @ATCDatasetImportSQL = @ATCDatasetImportSQL1 + @ATCJTAFileName + @ATCDatasetImportSQL2 +  @ATCKSAOFileName + @ATCDatasetImportSQL2 +@ATCOrganization + @ATCDatasetImportSQL2 + @ATCDate + @ATCDatasetImportSQL3

EXEC(@ATCDatasetImportSQL)

END
