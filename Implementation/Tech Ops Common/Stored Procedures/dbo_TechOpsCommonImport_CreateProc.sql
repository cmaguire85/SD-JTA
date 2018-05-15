USE [JTDDB]
GO
/****** Object:  StoredProcedure [dbo].[TechOpsCommonImport]    Script Date: 5/14/2018 4:34:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TechOpsCommonFileImport]
AS
BEGIN
	SET NOCOUNT ON;

--Truncate Common Import Table before inserting new records
TRUNCATE TABLE [TechOps].[CommonImport]

--Insert file contents into CommonImport Table
INSERT INTO [TechOps].[CommonImport]
SELECT CommonImportRecords.* FROM openrowset(BULK 'C:\Users\Administrator\Desktop\DatabaseImport\JTDDBTechOpsSpecificFinal.txt',formatfile='C:\Users\Administrator\Desktop\FormatFiles\JTDDBTechOpsCommonFormat.fmt' , firstrow=1) as CommonImportRecords

--Insert file contents into CommonJobTaskItem Table
INSERT INTO [TechOps].[CommonJobTaskItem]
([JTA Scalar], 
[Task Statement], 
[DL], 
[DP], 
[I], 
[F], 
[Knowledge or Performance], 
[StatementLevel], 
[Knowledge Proficiency], 
[Performance Proficiency], 
[Calculated Instructional Method], 
[Initial Training Priority Rating], 
[Refresher Training Priority Rating], 
[Tech Ops Specialist - Automation (TOS-A)], 
[Tech Ops Specialist - Environmental (TOS-E)], 
[Tech Ops Specialist - Navigation (TOS-N)], 
[Tech Ops Specialist - Surveillance (TOS-S)], 
[Tech Ops Specialist - Communication (TOS-C)], 
[Common, Cross Functiona, Common Specific], 
[Tech Ops Managers (TO-M)], 
[Tech Ops Supervisors (TO-S)], 
[Technician in Depth (TID)], 
[Service Operation Center (SOC)], 
[Operation Control Center - Specialist (OCC-S)], 
[Operation Control Center - Team Leader (OCC-T)], 
[Second Level Engineering (SLE)], 
[Orders/Manuals/Procedures/Instructions], 
[SME Delivery Method], 
[Instructional Time], 
[FileName],
[FileRow])        
SELECT ci.[JTAScalar], 
ci.[TaskStatement], 
ci.[DL], 
ci.[DP], 
ci.[I], 
ci.[F], 
ci.[KnowledgeOrPerformance], 
ci.[StatementLevel], 
ci.[KnowledgeProficiency], 
ci.[PerformanceProficiency], 
ci.[CalculatedInstructionalMethod], 
ci.[InitialTraining PriorityRating], 
ci.[RefresherTrainingPriorityRating],
ci.[TOS-A], 
ci.[TOS-E], 
ci.[TOS-N], 
ci.[TOS-S], 
ci.[TOS-C], 
ci.[CommonCross Functional], 
ci.[TO-M], 
ci.[TO-S], 
ci.[TID], 
ci.[SOC], 
ci.[OCC-S], 
ci.[OCC-T], 
ci.[SLE], 
ci.[Orders], 
ci.[SMEDeliveryMethod], 
ci.[InstructionalTime],
ci.[FileName],
ci.[FileRow]
FROM [TechOps].[CommonImport] ci


END



