USE [JTDDB]
GO

/****** Object:  View [ATC].[vw_ATCJobTaskItem]    Script Date: 5/9/2018 12:03:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [ATC].[vw_ATCJobTaskItem]
AS 
SELECT 
jti.[JTAScalar] AS [ID],
jti.[TaskStatement] AS [Task Description],
jti.[DL] AS [Learn],
jti.[DP] AS [Perform],
jti.[I] AS [Importance],
jti.[F] AS [Frequency],
COALESCE(jti.[AcademyKnowledgeProficiency], jti.[FacilityKnowledgeProficiency], [OJTKnowledgeProficiency]) AS [Knowledge Proficiency],
COALESCE(jti.[AcademyPerformanceProficiency], jti.[FacilityPerformanceProficiency], jti.[OJTPerformanceProficiency]) AS [Performance Proficiency],
jti.[InitialTrainingPriorityRating] AS [Initial],
jti.[RefresherTrainingPriorityRating] AS [Refresher],
jti.[SMEDeliveryMethod] AS [Recommended Format],
jti.[InstructionalTime] AS [Recommended Method],
CONCAT(ksao.[K1.1 FAA organizational structure], '',
ksao.[K1.2 Evolution of air traffic control (ATC)], '') AS [Knowledge ],
CONCAT(ksao.[Sk1, Oral Communication/Sk2, Written],'',
ksao.[Sk3,Active Listening],'') AS Skills,
jti.[ActivitySub-ActivityTask],
jti.[Tower],
jti.[TRACON],
jti.[EnRoute],
jti.[FileName],
CAST(jti.[FileRow] AS int) AS FileRow
FROM [ATC].[ATCJobTaskItem] jti
LEFT JOIN [ATC].[ATCJobTaskItemKSAO] ksao ON jti.[JTAIdentifier] = ksao.[Scalar Number] AND jti.[FileName] = ksao.[FileName]

GO


