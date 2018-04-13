USE [JTDDB]
GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'UpdateSpecificJobTaskItem')
DROP PROCEDURE [dbo].[UpdateSpecificJobTaskItem]
GO

/****** Object:  StoredProcedure [dbo].[UpdateSpecificJobTaskItem]    Script Date: 4/10/2018 5:42:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[UpdateSpecificJobTaskItem]
@UpdateColumn nvarchar(max),
@UpdateValue nvarchar(max),
@JTAScalar nvarchar(max),
@FileName nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;

DECLARE 
@UpdateSpecificSQL nvarchar(2000)

--Create dynamic SQL update statement
SELECT @UpdateSpecificSQL = 'UPDATE [TechOps].[SpecificJobTaskItem]' + char(13) + 'SET [' + @UpdateColumn + '] = ' + @UpdateValue + char(13) + 'WHERE [JTA Scalar] = ' + @JTAScalar + ' AND [FileName] = ' + @FileName 

--Execute constructed update SQL statement
EXEC(@UpdateSpecificSQL)
END 

