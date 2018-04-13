USE [JTDDB]
GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'UpdateCommonJobTaskItem')
DROP PROCEDURE [dbo].[UpdateCommonJobTaskItem]
GO

/****** Object:  StoredProcedure [dbo].[UpdateCommonJobTaskItem]    Script Date: 4/10/2018 5:42:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[UpdateCommonJobTaskItem]
@UpdateColumn nvarchar(max),
@UpdateValue nvarchar(max),
@JTAScalar nvarchar(max),
@FileName nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;

DECLARE 
@UpdateCommonSQL nvarchar(2000),
@UpdateCommonSQL1 nvarchar(2000),
@UpdateCommonSQL2 nvarchar(2000),
@UpdateCommonSQL3 nvarchar(2000),
@UpdateCommonSQL4 nvarchar(2000),
@UpdateCommonSQL5 nvarchar(2000),
@UpdateCommonSQL6 nvarchar(2000),
@UpdateCommonSQL7 nvarchar(2000),
@UpdateCommonSQL8 nvarchar(2000)


SELECT @UpdateCommonSQL = 'UPDATE [TechOps].[CommonJobTaskItem]' + char(13) + 'SET [' + @UpdateColumn + '] = ' + @UpdateValue + char(13) + 'WHERE [JTA Scalar] = ' + @JTAScalar + ' AND [FileName] = ' + @FileName 

EXEC(@UpdateCommonSQL)
END 