USE [JTDDB]
GO

if exists(select * from sys.views where name='vw_CommonJobTaskItem' and type='v')
drop view [TechOps].[vw_CommonJobTaskItem];
go

/****** Object:  View [TechOps].[CommonJobTaskItem]    Script Date: 4/6/2018 10:11:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--Create Specific Import Table
CREATE VIEW [TechOps].[vw_CommonJobTaskItem]
WITH SCHEMABINDING
AS 
SELECT 
jti.[JTA Scalar] AS [ID],
jti.[Task Statement] AS [Task Description],
jti.[DL] AS [Learn],
jti.[DP] AS [Perform],
jti.[I] AS [Importance],
jti.[F] AS [Frequency],
jti.[Knowledge Proficiency] AS [Knowledge Proficiency],
jti.[Performance Proficiency] AS [Performance Proficiency],
jti.[Initial Training Priority Rating] AS [Initial],
jti.[Refresher Training Priority Rating] AS [Refresher],
jti.[SME Delivery Method] AS [Recommended Format],
jti.[Calculated Instructional Method] AS [Recommended Method],
CONCAT(jti.[K1.1 Aircraft accidents], '', 
jti.[K1.2 FAA orders/directives (6000.15x, 6030.45x, 6000.30x)], '', 
jti.[K1.3 Reference materials -Maintenance alerts], '',
jti.[K1.4 Reference materials -TechNet], '',
jti.[K1.5 Reference materials - Notices], '',
jti.[K1.6 Certification], '',
jti.[K1.7 FSEP (Facilities Service Equipment Program)], '',
jti.[K1.8 FRD (Faculty Reference Data modifications and documentation)], '',
jti.[K1.9 HAZMAT policy], '',
jti.[K1.10 Logistics], '',
jti.[K1.11 FAA regulations], '',
jti.[K1.12 FAA organizational structure], '',
jti.[K1.13 Training programs], '',
jti.[K1.14 documentation and logging of activities], '',
jti.[K1.15 Safety], '',
jti.[K1.16 NAS architecture (air traffic flow, air traffic control functions )], '',
jti.[K1.17 Labor relations (Union Contract Provisions)], '',
jti.[K1.18 Control centers roles and responsibilities], '',
jti.[K1.19 Coordination (internal and external)], '',
jti.[K1.20 Security requirements], '',
jti.[K2.1 Redundant systems and services], '',
jti.[K2.2 Electronics fundamentals and principles], '',
jti.[K2.3 Electro-mechanical theory], '',
jti.[K2.4 Engineering mathematics], '',
jti.[K2.5 System relationships], '', 
jti.[K2.6 Validate system integrity], '',
jti.[K2.7 Operations and application of software/firmware], '',
jti.[K2.8 Operational theory of NAS systems/subsystems (i.e., Radar, Communication, Navigational)], '',
jti.[K2.9 Equipment evaluation -NASTEP (National Airspace System Technical Evaluation Program)], '',
jti.[K2.10 Equipment evaluation - IOAs (Independent Operational Testing)], '',
jti.[K2.11 Equipment evaluation - JAI (Joint Acceptance Inspection)], '',
jti.[K2.12 NAVAID systems], '',
jti.[K2.13 Satellite communications], '',
jti.[K2.14 RFI (Radio Frequency Interference)], '',
jti.[K2.15 Airport operations], '',
jti.[K2.16 Shutdown and “notice to airmen” procedures], '',
jti.[K2.17 Facility restoration levels], '',
jti.[K2.18 Flight check procedures], '',
jti.[K2.19 Technical discrepancies (e.g., NCPs, PTRs, and HDRs)], '',
jti.[K2.20 Trend analysis], '',
jti.[K2.21 Remote maintenance monitoring (RMM/MASS)], '',
jti.[K2.22 Service delivery (interrelationships between Terminal, GNAS and Center)], '',
jti.[K2.23 Diagnostics and testing], '',
jti.[K2.24 Systems theory and analysis], '',
jti.[K2.25 Antennas and transmission lines], '',
jti.[K2.26 RDAS (Radar Data Analysis Specialist)], '',
jti.[K3.1 Electricity], '',
jti.[K3.2 Power generation and distribution systems], '',
jti.[K3.3 Heating, ventilation, air conditioning, (HVAC) and controls], '',
jti.[K3.4 Lighted aids], '',
jti.[K4.1 Federal telecommunication  infrastructure for  operations], '',
jti.[K5.1 OSHA requirements], '',
jti.[K5.2 Military coordination], '',
jti.[K5.3 NFPA (National Fire Protection Agency) policy (national electric code)], '',
jti.[K5.4 Coaching and teaching], '',
jti.[K5.5 Agency coordination], '',
jti.[K5.6 Weather reporting systems], '',
jti.[K6.1 Technical computer basics - personal  computer hardware/software fundamentals (Includes internet security)], '',
jti.[K6.2 Technical computer basics -networking principles], '',
jti.[K6.3 Technical computer basics - circuit service requests (CSR) for network or telecommunication services], '',
jti.[K6.4 Technical  computer basics - software to meet system/network requirements], '',
jti.[K6.5 Technical computer basics - hardware & software platforms], '',
jti.[K6.6 Technical computer advanced -database and systems management], '',
jti.[K6.7 Technical computer advanced -Internet Protocol (IP) routings], '',
jti.[K6.8 Technical computer advanced -systems administration]) AS [Knowledge ],
CONCAT(jti.[Sk1.1 Upward reporting],'',
jti.[Sk1.2 Professional telephone techniques],'',
jti.[Sk1.3 Radio protocol],'',
jti.[Sk1.4 Formal briefings],'',
jti.[Sk1.5 Technical writing],'',
jti.[Sk1.6 Command of language],'',
jti.[Sk2.1 Professional courtesy &  interpersonal relations],'',
jti.[Sk3.1 Operating motor vehicles],'',
jti.[Sk3.2 Climbing],'',
jti.[Sk3.3 Hand tools/test equipment],'',
jti.[Sk4.1 Direct technical workforce],'',
jti.[Sk4.2 Work activities],'',
jti.[Sk4.3 Resources (include people, money, and material)],'',
jti.[Sk5.1 troubleshooting],'',
jti.[Sk5.2 Data],'',
jti.[Sk5.3 Networking],'',
jti.[Sk5.4 Blueprints]) AS Skills,
jti.[StatementLevel],
jti.[Tech Ops Specialist - Automation (TOS-A)],
jti.[Tech Ops Specialist - Environmental (TOS-E)],
jti.[Tech Ops Specialist - Navigation (TOS-N)],
jti.[Tech Ops Specialist - Surveillance (TOS-S)],
jti.[Tech Ops Specialist - Communication (TOS-C)],
jti.[Tech Ops Managers (TO-M)],
jti.[Tech Ops Supervisors (TO-S)],
jti.[Technician in Depth (TID)],
jti.[Service Operation Center (SOC)],
jti.[Operation Control Center - Specialist (OCC-S)],
jti.[Operation Control Center - Team Leader (OCC-T)],
jti.[Second Level Engineering (SLE)],
jti.[FileName],
CAST(jti.[FileRow] AS int) AS FileRow,
jtih.[ActivityScalar],
jtih.[SubActivityScalar],
jtih.[TaskScalar],
jtih.[SubTaskScalar],
jtih.[StepScalar],
jtih.[ElementScalar]
FROM [TechOps].[CommonJobTaskItem] jti
LEFT JOIN [TechOps].[CommonJobTaskItemHierarchy] jtih
ON jti.[JTA Scalar] = jtih.[JTA Scalar]


GO


