USE [JTDDB]
GO

--Drop Table if it already exists in the database
IF OBJECT_ID('[TechOps].[SpecificImport]', 'U') IS NOT NULL 
  DROP TABLE [TechOps].[SpecificImport]; 
GO 

/****** Object:  Table [TechOps].[SpecificImport]    Script Date: 4/6/2018 2:14:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [TechOps].[SpecificImport](
	[JTAScalar] [varchar](12) NOT NULL,
	[TaskStatement] [varchar](300) NULL,
	[DL] [int] NULL,
	[DP] [int] NULL,
	[I] [int] NULL,
	[F] [int] NULL,
	[KnowledgeorPerformance] [varchar](11) NULL,
	[StatementLevel] [varchar](12) NULL,
	[KnowledgeProficiency] [varchar](1) NULL,
	[PerformanceProficiency] [varchar](1) NULL,
	[CalculatedInstructionalMethod] [varchar](7) NULL,
	[InitialTraining PriorityRating] [varchar](6) NULL,
	[RefresherTrainingPriorityRating] [varchar](6) NULL,
	[TOS-A] [varchar](1) NULL,
	[TOS-E] [varchar](1) NULL,
	[TOS-N] [varchar](1) NULL,
	[TOS-S] [varchar](1) NULL,
	[TOS-C] [varchar](1) NULL,
	[SpecificCross Functional] [varchar](16) NULL,
	[TO-M] [varchar](1) NULL,
	[TO-S] [varchar](1) NULL,
	[TID] [varchar](1) NULL,
	[SOC] [varchar](1) NULL,
	[OCC-S] [varchar](1) NULL,
	[OCC-T] [varchar](1) NULL,
	[SLE] [varchar](1) NULL,
	[Orders] [varchar](400) NULL,
	[SMEDeliveryMethod] [varchar](9) NULL,
	[InstructionalTime] [varchar](18) NULL,
	[FileName] [varchar](200) NULL,
	[FileRow] [varchar](200) NULL
PRIMARY KEY CLUSTERED 
(
	[JTAScalar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


