USE [JTDDB]

--Drop Table if it already exists in the database
IF OBJECT_ID('[ATC].[ATCJobTaskItemHierarchy]', 'U') IS NOT NULL 
  DROP TABLE [ATC].[ATCJobTaskItemHierarchy]; 

GO 
--Create Specific Import Table
CREATE TABLE [ATC].[ATCJobTaskItemHierarchy] (
[ATCJobTaskItemHierarchyID] int Identity(1,1) NOT NULL,
[JTA Scalar] varchar(8),
[ActivityScalar] varchar(8),
[SubActivityScalar] varchar(8),
[TaskScalar] varchar(8),
[SubTaskScalar] varchar(8),
[StepScalar] varchar(8),
[ElementScalar] varchar(8),
[InsertBy] varchar(50),
[InsertDT] datetime,
[UpdateBy] varchar(50),
[UpdateDT] datetime
)



