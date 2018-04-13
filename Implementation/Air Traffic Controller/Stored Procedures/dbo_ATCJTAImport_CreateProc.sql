USE [JTDDB]
GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'ATCJTAImport')
DROP PROCEDURE [dbo].[ATCJTAImport]
GO

/****** Object:  StoredProcedure [dbo].[ATCJTAImport]    Script Date: 4/6/2018 9:06:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ATCJTAImport]
@ATCJTAImportFile nvarchar(max),
@ATCJTAFormatFile nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;

DECLARE 
@ATCJTAImportSQL nvarchar(max),
@ATCJTASQL1 nvarchar(200),
@ATCJTASQL2 nvarchar(200),
@ATCJTASQL3 nvarchar(200)

SELECT @ATCJTASQL1 = 'INSERT INTO [ATC].[JTAImport]' + char(13) + 'Select ATCJTAImportRecords.* from openrowset( BULK'
SELECT @ATCJTASQL2 = ', formatfile='
SELECT @ATCJTASQL3 = ', firstrow=1) as ATCJTAImportRecords'

--Select document.* from openrowset(BULK 'C:\Users\crash_000\Desktop\JTDDB\JTDDBTechOpsCommonTest.txt',formatfile='C:\Users\crash_000\Desktop\JTDDB\JTDDBTechOpsCommonTestFormat.fmt' ,firstrow=2) as document

SELECT @ATCJTAImportSQL = @ATCJTASQL1 + @ATCJTAImportFile + @ATCJTASQL2 + @ATCJTAFormatFile + @ATCJTASQL3
--Truncate Common Import Table before inserting new records
TRUNCATE TABLE [TechOps].[CommonImport]

--Insert file contents into CommonImport Table
EXEC(@ATCJTAImportSQL)


--Insert file contents into CommonJobTaskItem Table
INSERT INTO [ATC].[ATCJobTaskItem]
([JTAScalar], 
[TaskStatement], 
[DL], 
[DP], 
[I], 
[F], 
[KnowledgeorPerformance], 
[ActivitySub-ActivityTask], 
[AcademyPerformanceProficiency], 
[AcademyKnowledgeProficiency], 
[FacilityPerformanceProficiency], 
[FacilityKnowledgeProficiency],
[OJTPerformanceProficiency],
[OJTKnowledgeProficiency],
[DIFInstructionalMethod],
[InitialTrainingPriorityRating],
[RefresherTrainingPriorityRating],
[Tower],
[TRACON],
[EnRoute],
[AcademyFacilityOJT],
[Orders/Manuals/Procedures/Instructions],
[ARTCCTool/Procedure],
[ATCTTool/Procedure],
[TRACONTool/Procedure],
[SMEDeliveryMethod],
[InstructionalTime],
[FileName],
[FileRow])        
SELECT jta.[JTAScalar], 
jta.[TaskStatement], 
jta.[DL], 
jta.[DP], 
jta.[I], 
jta.[F], 
jta.[KnowledgeorPerformance], 
jta.[ActivitySub-ActivityTask], 
jta.[AcademyPerformanceProficiency], 
jta.[AcademyKnowledgeProficiency], 
jta.[FacilityPerformanceProficiency], 
jta.[FacilityKnowledgeProficiency],
jta.[OJTPerformanceProficiency],
jta.[OJTKnowledgeProficiency],
jta.[DIFInstructionalMethod],
jta.[InitialTrainingPriorityRating],
jta.[RefresherTrainingPriorityRating],
jta.[Tower],
jta.[TRACON],
jta.[EnRoute],
jta.[AcademyFacilityOJT],
jta.[Orders/Manuals/Procedures/Instructions],
jta.[ARTCCTool/Procedure],
jta.[ATCTTool/Procedure],
jta.[TRACONTool/Procedure],
jta.[SMEDeliveryMethod],
jta.[InstructionalTime],
jta.[FileName],
jta.[FileRow]
FROM [ATC].[JTAImport] jta


END



