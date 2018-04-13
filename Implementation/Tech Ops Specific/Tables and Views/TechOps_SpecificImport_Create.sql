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
	[K1.1] [varchar](200) NULL,
	[K1.2] [varchar](200) NULL,
	[K1.3] [varchar](200) NULL,
	[K1.4] [varchar](200) NULL,
	[K1.5] [varchar](200) NULL,
	[K1.6] [varchar](200) NULL,
	[K1.7] [varchar](200) NULL,
	[K1.8] [varchar](200) NULL,
	[K1.9] [varchar](200) NULL,
	[K1.10] [varchar](200) NULL,
	[K1.11] [varchar](200) NULL,
	[K1.12] [varchar](200) NULL,
	[K1.13] [varchar](200) NULL,
	[K1.14] [varchar](200) NULL,
	[K1.15] [varchar](200) NULL,
	[K1.16] [varchar](200) NULL,
	[K1.17] [varchar](200) NULL,
	[K1.18] [varchar](200) NULL,
	[K1.19] [varchar](200) NULL,
	[K1.20] [varchar](200) NULL,
	[K2.1] [varchar](200) NULL,
	[K2.2] [varchar](200) NULL,
	[K2.3] [varchar](200) NULL,
	[K2.4] [varchar](200) NULL,
	[K2.5] [varchar](200) NULL,
	[K2.6] [varchar](200) NULL,
	[K2.7] [varchar](200) NULL,
	[K2.8] [varchar](200) NULL,
	[K2.9] [varchar](200) NULL,
	[K2.10] [varchar](200) NULL,
	[K2.11] [varchar](200) NULL,
	[K2.12] [varchar](200) NULL,
	[K2.13] [varchar](200) NULL,
	[K2.14] [varchar](200) NULL,
	[K2.15] [varchar](200) NULL,
	[K2.16] [varchar](200) NULL,
	[K2.17] [varchar](200) NULL,
	[K2.18] [varchar](200) NULL,
	[K2.19] [varchar](200) NULL,
	[K2.20] [varchar](200) NULL,
	[K2.21] [varchar](200) NULL,
	[K2.22] [varchar](200) NULL,
	[K2.23] [varchar](200) NULL,
	[K2.24] [varchar](200) NULL,
	[K2.25] [varchar](200) NULL,
	[K2.26] [varchar](200) NULL,
	[K3.1] [varchar](200) NULL,
	[K3.2] [varchar](200) NULL,
	[K3.3] [varchar](200) NULL,
	[K3.4] [varchar](200) NULL,
	[K4.1] [varchar](200) NULL,
	[K5.1] [varchar](200) NULL,
	[K5.2] [varchar](200) NULL,
	[K5.3] [varchar](200) NULL,
	[K5.4] [varchar](200) NULL,
	[K5.5] [varchar](200) NULL,
	[K5.6] [varchar](200) NULL,
	[K6.1] [varchar](200) NULL,
	[K6.2] [varchar](200) NULL,
	[K6.3] [varchar](200) NULL,
	[K6.4] [varchar](200) NULL,
	[K6.5] [varchar](200) NULL,
	[K6.6] [varchar](200) NULL,
	[K6.7] [varchar](200) NULL,
	[K6.8] [varchar](200) NULL,
	[Sk1.1] [varchar](200) NULL,
	[Sk1.2] [varchar](200) NULL,
	[Sk1.3] [varchar](200) NULL,
	[Sk1.4] [varchar](200) NULL,
	[Sk1.5] [varchar](200) NULL,
	[Sk1.6] [varchar](200) NULL,
	[Sk2.1] [varchar](200) NULL,
	[Sk3.1] [varchar](200) NULL,
	[Sk3.2] [varchar](200) NULL,
	[Sk3.3] [varchar](200) NULL,
	[Sk4.1] [varchar](200) NULL,
	[Sk4.2] [varchar](200) NULL,
	[Sk4.3] [varchar](200) NULL,
	[Sk5.1] [varchar](200) NULL,
	[Sk5.2] [varchar](200) NULL,
	[Sk5.3] [varchar](200) NULL,
	[Sk5.4] [varchar](200) NULL,
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


