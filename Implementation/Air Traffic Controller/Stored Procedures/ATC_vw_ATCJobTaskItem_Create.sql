USE [JTDDB]
GO
/****** Object:  StoredProcedure [dbo].[QueryATCJobTaskItem]    Script Date: 5/9/2018 2:43:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[QueryATCJobTaskItem]
@QueryColumnSelection nvarchar(max),
@QueryTextEntry nvarchar(max),
@HeirarchySelection nvarchar(max),
@ImportanceSelection nvarchar(max),
@FrequencySelection nvarchar(max),
@DeliveryMethodSelection nvarchar(max),
@AudienceTower bit,
@AudienceTRACON bit,
@AudienceEnRoute bit

--,
--@AudienceSelection nvarchar(max),
--@LocationSelection nvarchar(max)

AS
BEGIN
	SET NOCOUNT ON;

DECLARE 
@ATCQuerySQL nvarchar(2000),
@ATCQuerySQL1 nvarchar(2000),
@ATCQuerySQL2 nvarchar(2000),
@ATCQuerySQL3 nvarchar(2000),
@ATCQuerySQL4 nvarchar(2000),
@ATCQuerySQL5 nvarchar(2000),
@ATCQuerySQL6 nvarchar(2000),
@ATCQuerySQL7 nvarchar(2000),
@ATCQuerySQL8 nvarchar(2000),
@ATCAudienceSQL nvarchar(2000)/*,
@QueryColumnSelection nvarchar(2000),
@QueryTextEntry nvarchar(2000),
@HeirarchySelection nvarchar(2000),
@ImportanceSelection nvarchar(2000),
@FrequencySelection nvarchar(2000),
@DeliveryMethodSelection nvarchar(2000),
@AudienceSelection nvarchar(2000),
@LocationSelection nvarchar(2000)*/

SELECT @ATCQuerySQL1 = 'SELECT '
--SELECT @QueryColumnSelection = '[ID], [Task Description], [Learn], [Perform], [Importance], [Frequency], [Knowledge Proficiency], [Performance Proficiency], [Initial], [Refresher], [Recommended Format], [Recommended Method], [Knowledge], [Skills]'
SELECT @ATCQuerySQL2 = ' FROM [ATC].[vw_ATCJobTaskItem]' + char(13) + 'WHERE [Task Description] LIKE ('
--SELECT @QueryTextEntry = '''%the%'''
SELECT @ATCQuerySQL3 = ') ' + char(13) + 'AND [StatementLevel] IN ('
--SELECT @HeirarchySelection = '''Activity'', ''Sub-Activity'', ''Task'', ''Sub-Task'', ''Step'', ''Element'''
SELECT @ATCQuerySQL4 = ') ' + char(13) + 'AND [Importance] IN ('
--SELECT @ImportanceSelection = '''1'', ''2'', ''3'', ''4'', ''5'''
SELECT @ATCQuerySQL5 = ') ' + char(13) + 'AND [Frequency] IN ('
--SELECT @FrequencySelection = '''1'', ''2'', ''3'', ''4'', ''5'''
SELECT @ATCQuerySQL6 = ') ' + char(13) + 'AND [Recommended Method] IN ('
--SELECT @DeliveryMethodSelection = '''Blended'', ''FAC'', ''SP'''
SELECT @ATCQuerySQL7 = ') ' + char(13) + 'AND ('
SELECT @ATCAudienceSQL =
					(CASE WHEN @AudienceTower = 1 
					THEN + '[Tower] = ''Tower'' AND '
					ELSE + '[Tower] IS NULL AND '
					END)
					+
					(CASE WHEN @AudienceTRACON = 1 
					THEN + '[TRACON] = ''TRACON'' AND '
					ELSE + '[TRACON] IS NULL AND '
					END)
					+
					(CASE WHEN @AudienceEnRoute = 1 
					THEN + '[EnRoute] = ''EnRoute'' '
					ELSE + '[EnRoute] IS NULL '
					END)
SELECT @ATCQuerySQL8 = ')' + char(13) + 'ORDER BY [FileRow]'


SELECT @ATCQuerySQL = @ATCQuerySQL1 +  @QueryColumnSelection + @ATCQuerySQL2 + @QueryTextEntry + @ATCQuerySQL3 + @HeirarchySelection + @ATCQuerySQL4 + @ImportanceSelection + @ATCQuerySQL5 + @FrequencySelection + @ATCQuerySQL6 + @DeliveryMethodSelection + @ATCQuerySQL7 + @ATCAudienceSQL + @ATCQuerySQL8

--Execute SQL Query
--EXEC(@ATCQuerySQL)
PRINT(@ATCQuerySQL)


END




