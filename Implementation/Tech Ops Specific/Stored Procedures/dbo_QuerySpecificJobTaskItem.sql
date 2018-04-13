USE [JTDDB]
GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'QuerySpecificJobTaskItem')
DROP PROCEDURE [dbo].[QuerySpecificJobTaskItem]
GO

/****** Object:  StoredProcedure [dbo].[QuerySpecificJobTaskItem]    Script Date: 4/10/2018 5:42:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[QuerySpecificJobTaskItem]
@QueryColumnSelection nvarchar(max),
@QueryTextEntry nvarchar(max),
@HeirarchySelection nvarchar(max),
@ImportanceSelection nvarchar(max),
@FrequencySelection nvarchar(max),
@DeliveryMethodSelection nvarchar(max),
@SpecificTOSA bit,
@SpecificTOSE bit,
@SpecificTOSN bit,
@SpecificTOSS bit,
@SpecificTOSC bit,
@SpecificTOM bit,
@SpecificTOS bit,
@SpecificTID bit,
@SpecificSOC bit,
@SpecificOCCS bit,
@SpecificOCCT bit,
@SpecificSLE bit
AS
BEGIN
	SET NOCOUNT ON;

DECLARE 
@SpecificQuerySQL nvarchar(2000),
@SpecificQuerySQL1 nvarchar(2000),
@SpecificQuerySQL2 nvarchar(2000),
@SpecificQuerySQL3 nvarchar(2000),
@SpecificQuerySQL4 nvarchar(2000),
@SpecificQuerySQL5 nvarchar(2000),
@SpecificQuerySQL6 nvarchar(2000),
@SpecificQuerySQL7 nvarchar(2000),
@SpecificQuerySQL8 nvarchar(2000),
@SpecificAudienceSQL nvarchar(2000)/*,
@QueryColumnSelection nvarchar(2000),
@QueryTextEntry nvarchar(2000),
@HeirarchySelection nvarchar(2000),
@ImportanceSelection nvarchar(2000),
@FrequencySelection nvarchar(2000),
@DeliveryMethodSelection nvarchar(2000),
@AudienceSelection nvarchar(2000),
@LocationSelection nvarchar(2000)*/

SELECT @SpecificQuerySQL1 = 'SELECT '
--SELECT @QueryColumnSelection = '[ID], [Task Description], [Learn], [Perform], [Importance], [Frequency], [Knowledge Proficiency], [Performance Proficiency], [Initial], [Refresher], [Recommended Format], [Recommended Method], [Knowledge], [Skills]'
SELECT @SpecificQuerySQL2 = ' FROM [TechOps].[vw_SpecificJobTaskItem]' + char(13) + 'WHERE [Task Description] LIKE ('
--SELECT @QueryTextEntry = '''%the%'''
SELECT @SpecificQuerySQL3 = ') ' + char(13) + 'AND [StatementLevel] IN ('
--SELECT @HeirarchySelection = '''Activity'', ''Sub-Activity'', ''Task'', ''Sub-Task'', ''Step'', ''Element'''
SELECT @SpecificQuerySQL4 = ') ' + char(13) + 'AND [Importance] IN ('
--SELECT @ImportanceSelection = '''1'', ''2'', ''3'', ''4'', ''5'''
SELECT @SpecificQuerySQL5 = ') ' + char(13) + 'AND [Frequency] IN ('
--SELECT @FrequencySelection = '''1'', ''2'', ''3'', ''4'', ''5'''
SELECT @SpecificQuerySQL6 = ') ' + char(13) + 'AND [Recommended Method] IN ('
--SELECT @DeliveryMethodSelection = '''Blended'', ''FAC'', ''SP'''
SELECT @SpecificQuerySQL7 = ') ' + char(13) + 'AND ('
SELECT @SpecificAudienceSQL =
					(CASE WHEN @SpecificTOSA = 1 
					THEN + '[Tech Ops Specialist - Automation (TOS-A)] = ''X'' '
						+ (CASE WHEN (@SpecificTOSE = 1 OR @SpecificTOSN = 1 OR @SpecificTOSS = 1 OR @SpecificTOSC = 1 OR @SpecificTOS = 1 OR @SpecificTID = 1 OR @SpecificSOC = 1 OR @SpecificOCCS = 1  OR @SpecificOCCT = 1 OR @SpecificSLE = 1)  
							THEN + 'AND ' 
							ELSE + ''
							END)
					ELSE + '[Tech Ops Specialist - Automation (TOS-A)] IS NULL '
					END)
					+
					(CASE WHEN @SpecificTOSE = 1 
					THEN + '[Tech Ops Specialist - Environmental (TOS-E)] = ''X'' '
						+ (CASE WHEN (@SpecificTOSN = 1 OR @SpecificTOSS = 1 OR @SpecificTOSC = 1 OR @SpecificTOS = 1 OR @SpecificTID = 1 OR @SpecificSOC = 1 OR @SpecificOCCS = 1  OR @SpecificOCCT = 1 OR @SpecificSLE = 1) 
							THEN + 'AND ' 
							ELSE + ''
							END)
					ELSE + '[Tech Ops Specialist - Environmental (TOS-E)] IS NULL '
					END)
					+
					(CASE WHEN @SpecificTOSN = 1 
					THEN + '[Tech Ops Specialist - Navigation (TOS-N)] = ''X'' '
						+ (CASE WHEN (@SpecificTOSS = 1 OR @SpecificTOSC = 1 OR @SpecificTOS = 1 OR @SpecificTID = 1 OR @SpecificSOC = 1 OR @SpecificOCCS = 1  OR @SpecificOCCT = 1 OR @SpecificSLE = 1) 
							THEN + 'AND ' 
							ELSE + ''
							END)
					ELSE + '[Tech Ops Specialist - Navigation (TOS-N)] IS NULL '
					END)
					+
					(CASE WHEN @SpecificTOSS = 1 
					THEN + '[Tech Ops Specialist - Surveillance (TOS-S)] = ''X'' '
						+ (CASE WHEN (@SpecificTOSC = 1 OR @SpecificTOS = 1 OR @SpecificTID = 1 OR @SpecificSOC = 1 OR @SpecificOCCS = 1  OR @SpecificOCCT = 1 OR @SpecificSLE = 1) 
							THEN + 'AND ' 
							ELSE + ''
							END)
					ELSE + '[Tech Ops Specialist - Surveillance (TOS-S)] IS NULL '
					END)
					+
					(CASE WHEN @SpecificTOSC = 1 
					THEN + '[Tech Ops Specialist - Communication (TOS-C)] = ''X'' '
						+ (CASE WHEN (@SpecificTOS = 1 OR @SpecificTID = 1 OR @SpecificSOC = 1 OR @SpecificOCCS = 1  OR @SpecificOCCT = 1 OR @SpecificSLE = 1) 
							THEN + 'AND ' 
							ELSE + ''
							END)
					ELSE + '[Tech Ops Specialist - Communication (TOS-C)] IS NULL '
					END)
					+
					(CASE WHEN @SpecificTOS = 1 
					THEN + '[Tech Ops Supervisors (TO-S)] = ''X'' '
						+ (CASE WHEN (@SpecificTID = 1 OR @SpecificSOC = 1 OR @SpecificOCCS = 1  OR @SpecificOCCT = 1 OR @SpecificSLE = 1) 
							THEN + 'AND ' 
							ELSE + ''
							END)
					ELSE + '[Tech Ops Supervisors (TO-S)] IS NULL '
					END)
					+
					(CASE WHEN @SpecificTID = 1 
					THEN + '[Technician in Depth (TID)] = ''X'' '
						+ (CASE WHEN (@SpecificSOC = 1 OR @SpecificOCCS = 1  OR @SpecificOCCT = 1 OR @SpecificSLE = 1) 
							THEN + 'AND ' 
							ELSE + ''
							END)
					ELSE + '[Technician in Depth (TID)] IS NULL '
					END)
					+
					(CASE WHEN @SpecificSOC = 1 
					THEN + '[Service Operation Center (SOC)] = ''X'' '
						+ (CASE WHEN (@SpecificOCCS = 1  OR @SpecificOCCT = 1 OR @SpecificSLE = 1) 
							THEN + 'AND ' 
							ELSE + ''
							END)
					ELSE + '[Service Operation Center (SOC)] IS NULL'
					END)
					+
					(CASE WHEN @SpecificOCCS = 1 
					THEN + '[Operation Control Center - Specialist (OCC-S)] = ''X'' '
						+ (CASE WHEN (@SpecificOCCT = 1 OR @SpecificSLE = 1) 
							THEN + 'AND ' 
							ELSE + ''
							END)
					ELSE + '[Operation Control Center - Specialist (OCC-S)] IS NULL '
					END)
					+
					(CASE WHEN @SpecificOCCT = 1 
					THEN + '[Operation Control Center - Team Leader (OCC-T)] = ''X'' '
						+ (CASE WHEN (@SpecificSLE = 1) 
							THEN + 'AND ' 
							ELSE + ''
							END)
					ELSE + '[Operation Control Center - Team Leader (OCC-T)] IS NULL '
					END)
					+
					(CASE WHEN @SpecificSLE = 1 
					THEN + '[Second Level Engineering (SLE)] = ''X'' '
					ELSE + '[Second Level Engineering (SLE)] IS NULL '
					END)
SELECT @SpecificQuerySQL8 = ')' + char(13) + 'ORDER BY [FileRow]'


SELECT @SpecificQuerySQL = @SpecificQuerySQL1 +  @QueryColumnSelection + @SpecificQuerySQL2 + @QueryTextEntry + @SpecificQuerySQL3 + @HeirarchySelection + @SpecificQuerySQL4 + @ImportanceSelection + @SpecificQuerySQL5 + @FrequencySelection + @SpecificQuerySQL6 + @DeliveryMethodSelection + @SpecificQuerySQL7 + @SpecificAudienceSQL + @SpecificQuerySQL8

--Execute SQL Query
EXEC(@SpecificQuerySQL)


END




GO


