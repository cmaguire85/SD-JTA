USE [JTDDB]
GO
/****** Object:  StoredProcedure [dbo].[QueryCommonJobTaskItem]    Script Date: 5/9/2018 2:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[QueryCommonJobTaskItem]
@QueryColumnSelection nvarchar(max),
@QueryTextEntry nvarchar(max),
@HierarchySelection nvarchar(max),
@ImportanceSelection nvarchar(max),
@FrequencySelection nvarchar(max),
@DeliveryMethodSelection nvarchar(max),
@CommonTOSA bit,
@CommonTOSE bit,
@CommonTOSN bit,
@CommonTOSS bit,
@CommonTOSC bit,
@CommonTOM bit,
@CommonTOS bit,
@CommonTID bit,
@CommonSOC bit,
@CommonOCCS bit,
@CommonOCCT bit,
@CommonSLE bit
--,
--@AudienceSelection nvarchar(max),
--@LocationSelection nvarchar(max)

AS
BEGIN
	SET NOCOUNT ON;

DECLARE 
@CommonQuerySQL nvarchar(2000),
@CommonQuerySQL1 nvarchar(2000),
@CommonQuerySQL2 nvarchar(2000),
@CommonQuerySQL3 nvarchar(2000),
@CommonQuerySQL4 nvarchar(2000),
@CommonQuerySQL5 nvarchar(2000),
@CommonQuerySQL6 nvarchar(2000),
@CommonQuerySQL7 nvarchar(2000),
@CommonQuerySQL8 nvarchar(2000),
@CommonAudienceSQL nvarchar(2000)/*,
@QueryColumnSelection nvarchar(2000),
@QueryTextEntry nvarchar(2000),
@HeirarchySelection nvarchar(2000),
@ImportanceSelection nvarchar(2000),
@FrequencySelection nvarchar(2000),
@DeliveryMethodSelection nvarchar(2000),
@AudienceSelection nvarchar(2000),
@LocationSelection nvarchar(2000)*/

SELECT @CommonQuerySQL1 = 'SELECT '
--SELECT @QueryColumnSelection = '[ID], [Task Description], [Learn], [Perform], [Importance], [Frequency], [Knowledge Proficiency], [Performance Proficiency], [Initial], [Refresher], [Recommended Format], [Recommended Method], [Knowledge], [Skills]'
SELECT @CommonQuerySQL2 = ' FROM [TechOps].[vw_CommonJobTaskItem]' + char(13) + 'WHERE [Task Description] LIKE ('
--SELECT @QueryTextEntry = '''%the%'''
SELECT @CommonQuerySQL3 = ') ' + char(13) + 'AND [StatementLevel] IN ('
--SELECT @HeirarchySelection = '''Activity'', ''Sub-Activity'', ''Task'', ''Sub-Task'', ''Step'', ''Element'''
SELECT @CommonQuerySQL4 = ') ' + char(13) + 'AND [Importance] IN ('
--SELECT @ImportanceSelection = '''1'', ''2'', ''3'', ''4'', ''5'''
SELECT @CommonQuerySQL5 = ') ' + char(13) + 'AND [Frequency] IN ('
--SELECT @FrequencySelection = '''1'', ''2'', ''3'', ''4'', ''5'''
SELECT @CommonQuerySQL6 = ') ' + char(13) + 'AND [Recommended Method] IN ('
--SELECT @DeliveryMethodSelection = '''Blended'', ''FAC'', ''SP'''
SELECT @CommonQuerySQL7 = ') ' + char(13) + 'AND ('
SELECT @CommonAudienceSQL =
					(CASE WHEN @CommonTOSA = 1 
					THEN + '[Tech Ops Specialist - Automation (TOS-A)] = ''X'' AND '
					ELSE + '[Tech Ops Specialist - Automation (TOS-A)] IS NULL  AND '
					END)
					+
					(CASE WHEN @CommonTOSE = 1 
					THEN + '[Tech Ops Specialist - Environmental (TOS-E)] = ''X'' AND '
					ELSE + '[Tech Ops Specialist - Environmental (TOS-E)] IS NULL AND '
					END)
					+
					(CASE WHEN @CommonTOSN = 1 
					THEN + '[Tech Ops Specialist - Navigation (TOS-N)] = ''X'' AND'
					ELSE + '[Tech Ops Specialist - Navigation (TOS-N)] IS NULL AND '
					END)
					+
					(CASE WHEN @CommonTOSS = 1 
					THEN + '[Tech Ops Specialist - Surveillance (TOS-S)] = ''X'' AND'
					ELSE + '[Tech Ops Specialist - Surveillance (TOS-S)] IS NULL AND '
					END)
					+
					(CASE WHEN @CommonTOSC = 1 
					THEN + '[Tech Ops Specialist - Communication (TOS-C)] = ''X'' AND'
					ELSE + '[Tech Ops Specialist - Communication (TOS-C)] IS NULL AND '
					END)
					+
					(CASE WHEN @CommonTOS = 1 
					THEN + '[Tech Ops Supervisors (TO-S)] = ''X'' AND'
					ELSE + '[Tech Ops Supervisors (TO-S)] IS NULL AND '
					END)
					+
					(CASE WHEN @CommonTID = 1 
					THEN + '[Technician in Depth (TID)] = ''X'' AND'
					ELSE + '[Technician in Depth (TID)] IS NULL AND'
					END)
					+
					(CASE WHEN @CommonSOC = 1 
					THEN + '[Service Operation Center (SOC)] = ''X'' AND '
					ELSE + '[Service Operation Center (SOC)] IS NULL AND '
					END)
					+
					(CASE WHEN @CommonOCCS = 1 
					THEN + '[Operation Control Center - Specialist (OCC-S)] = ''X'' AND'
					ELSE + '[Operation Control Center - Specialist (OCC-S)] IS NULL AND '
					END)
					+
					(CASE WHEN @CommonOCCT = 1 
					THEN + '[Operation Control Center - Team Leader (OCC-T)] = ''X'' AND'
					ELSE + '[Operation Control Center - Team Leader (OCC-T)] IS NULL AND '
					END)
					+
					(CASE WHEN @CommonSLE = 1 
					THEN + '[Second Level Engineering (SLE)] = ''X'' '
					ELSE + '[Second Level Engineering (SLE)] IS NULL '
					END)
SELECT @CommonQuerySQL8 = ')' + char(13) + 'ORDER BY [FileRow]'


SELECT @CommonQuerySQL = @CommonQuerySQL1 +  @QueryColumnSelection + @CommonQuerySQL2 + @QueryTextEntry + @CommonQuerySQL3 + @HierarchySelection + @CommonQuerySQL4 + @ImportanceSelection + @CommonQuerySQL5 + @FrequencySelection + @CommonQuerySQL6 + @DeliveryMethodSelection + @CommonQuerySQL7 + @CommonAudienceSQL + @CommonQuerySQL8

--Execute Query SQL
EXEC(@CommonQuerySQL)
--PRINT(@CommonQuerySQL)


END




