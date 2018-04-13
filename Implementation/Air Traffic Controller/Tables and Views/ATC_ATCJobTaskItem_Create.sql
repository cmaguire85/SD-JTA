USE [JTDDB]
GO

--Drop Table if it already exists in the database
IF OBJECT_ID('[ATC].[ATCJobTaskItem]', 'U') IS NOT NULL 
  DROP TABLE [ATC].[ATCJobTaskItem]; 
GO 


/****** Object:  Table [ATC].[ATCJobTaskItem]    Script Date: 4/8/2018 11:53:51 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [ATC].[ATCJobTaskItem](
	[JTAIdentifier] [varchar](12) NULL,
	[JTAScalar] [varchar](30) NULL,
	[TaskStatement] [varchar](400) NULL,
	[DL] [varchar](2) NULL,
	[DP] [varchar](2) NULL,
	[I] [varchar](2) NULL,
	[F] [varchar](2) NULL,
	[KnowledgeorPerformance] [varchar](11) NULL,
	[ActivitySub-ActivityTask] [varchar](12) NULL,
	[AcademyPerformanceProficiency] [varchar](7) NULL,
	[AcademyKnowledgeProficiency] [varchar](7) NULL,
	[FacilityPerformanceProficiency] [varchar](7) NULL,
	[FacilityKnowledgeProficiency] [varchar](7) NULL,
	[OJTPerformanceProficiency] [varchar](7) NULL,
	[OJTKnowledgeProficiency] [varchar](7) NULL,
	[DIFInstructionalMethod] [varchar](7) NULL,
	[InitialTrainingPriorityRating] [varchar](7) NULL,
	[RefresherTrainingPriorityRating] [varchar](7) NULL,
	[Tower] [varchar](6) NULL,
	[TRACON] [varchar](6) NULL,
	[EnRoute] [varchar](9) NULL,
	[AcademyFacilityOJT] [varchar](38) NULL,
	[Orders/Manuals/Procedures/Instructions] [varchar](200) NULL,
	[ARTCCTool/Procedure] [varchar](200) NULL,
	[ATCTTool/Procedure] [varchar](300) NULL,
	[TRACONTool/Procedure] [varchar](200) NULL,
	[SMEDeliveryMethod] [varchar](10) NULL,
	[InstructionalTime] [varchar](200) NULL,
	[FileName] [varchar](300) NULL,
	[FileRow] [varchar](200) NULL,
	[InsertBy] [varchar](50) NULL,
	[InsertDT] [datetime] NULL,
	[UpdateBy] [varchar](50) NULL,
	[UpdateDT] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


