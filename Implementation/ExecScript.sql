USE [JTDDB]

--Tech Ops Common Import
TRUNCATE TABLE [TechOps].[CommonJobTaskItem]
EXEC [dbo].[TechOpsCommonImport] @CommonImportFile= '''C:\Users\crash_000\Desktop\JTDDB\SQL\Implementation\Input\RawFiles\JTDDBTechOpsCommonTest.txt''', @CommonFormatFile = '''C:\Users\crash_000\Desktop\JTDDB\SQL\Implementation\Input\Format Files\JTDDBTechOpsCommonTestFormat.fmt'''
--SELECT * FROM [TechOps].[vw_CommonJobTaskItem] ORDER BY [FileRow]

--Tech Ops Common Dataset Import
EXEC [dbo].[TechOpsCommonDatasetImport] 
@CommonFileName = '''Tech Ops Common for Drexel''', 
@CommonOrganization = '''Raytheon''', 
@CommonDate = '''5/1/2018'''
SELECT * FROM [TechOps].[CommonDataset]



--Tech Ops Specific Import
TRUNCATE TABLE [TechOps].[SpecificJobTaskItem]
EXEC [dbo].[TechOpsSpecificImport] @SpecificImportFile= '''C:\Users\crash_000\Desktop\JTDDB\JTDDBTechOpsSpecificTest.txt''', @SpecificFormatFile = '''C:\Users\crash_000\Desktop\JTDDB\JTDDBTechOpsSpecificTestFormat.fmt'''
SELECT * FROM [TechOps].[vw_SpecificJobTaskItem] ORDER BY [FileRow]
SELECT * FROM [TechOps].[vw_CommonJobTaskItem] WHERE [Task Description] LIKE '%,%'
SELECT * FROM [TechOps].[vw_CommonJobTaskItem] WHERE [Skills] LIKE '%,%'
SELECT * FROM [TechOps].[vw_CommonJobTaskItem] WHERE [Knowledge] LIKE '%,%'

--Tech Ops Specific Dataset Import
EXEC [dbo].[TechOpsSpecificDatasetImport] 
@SpecificFileName = '''Tech Ops Specific for Drexel''', 
@SpecificOrganization = '''Raytheon''', 
@SpecificDate = '''4/8/2018'''
SELECT * FROM [TechOps].[SpecificDataset]

--Default Tech Ops Common Summary Report
SELECT [ID], [Task Description], [Learn], [Perform], [Importance], [Frequency], [Knowledge Proficiency], [Performance Proficiency], [Initial], [Refresher], [Recommended Format], [Recommended Method], [Knowledge], [Skills] 
FROM [TechOps].[vw_CommonJobTaskItem] 
WHERE [StatementLevel] IN ('Activity', 'Sub-Activity', 'Task')
ORDER BY [FileRow]

SELECT * FROM [TechOps].[vw_CommonJobTaskItem]  

--Default Tech Ops Specific Summary Report
SELECT [ID], [Task Description], [Learn], [Perform], [Importance], [Frequency], [Knowledge Proficiency], [Performance Proficiency], [Initial], [Refresher], [Recommended Format], [Recommended Method], [Knowledge], [Skills] 
FROM [TechOps].[vw_SpecificJobTaskItem] 
WHERE [StatementLevel] IN ('Activity', 'Sub-Activity', 'Task')
ORDER BY [FileRow]


EXEC [dbo].[ATCJTAImport] @ATCJTAImportFile= '''C:\Users\crash_000\Desktop\JTDDB\JTDDBATCJTATest.txt''', @ATCJTAFormatFile = '''C:\Users\crash_000\Desktop\JTDDB\JTDDBATCJTAFormat.fmt'''

SELECT * FROM [ATC].[ATCDataset]
SELECT * FROM [ATC].[JTAImport]
SELECT * FROM [ATC].[ATCJobTaskItem]

--ATC Dataset Import
EXEC [dbo].[ATCDatasetImport] 
@ATCJTAFileName = '''ATC JTA Workbook for Drexel''', 
@ATCKSAOFileName = '''ATC_KSAOs_V1.2_28March13 - Final''', 
@ATCOrganization = '''Raytheon''', 
@ATCDate = '''4/8/2018'''

--Tech Ops Common
--SQL Query
SELECT [FileName], [Organization], [Date] FROM [TechOps].[CommonDataset]
--Stored Procedure Call
EXEC [dbo].[TechOpsCommonDatasetTable] 


--Tech Ops Specific
--SQL Query
SELECT [FileName], [Organization], [Date] FROM [TechOps].[SpecificDataset]
--Stored Procedure Call
EXEC [dbo].[TechOpsSpecificDatasetTable] 

--ATC
--SQL Query
SELECT [JTAFileName], [KSAOFileName], [Organization], [Date] FROM [ATC].[ATCDataset]
--Stored Procedure Call
EXEC [dbo].[ATCDatasetTable] 




