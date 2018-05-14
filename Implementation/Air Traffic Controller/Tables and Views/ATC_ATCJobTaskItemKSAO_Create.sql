USE [JTDDB]
GO

/****** Object:  Table [ATC].[ATCJobTaskItemKSAO]    Script Date: 5/1/2018 4:29:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [ATC].[ATCJobTaskItemKSAO](
	[ATCJobTaskItemKSAOID] [int] IDENTITY(1,1) NOT NULL,
	[Unique ID] [varchar](300) NULL,
	[Scalar Number] [varchar](300) NULL,
	[Statement] [varchar](300) NULL,
	[A/SA/T/ST/S/E] [varchar](1) NULL,
	[K1.1 FAA organizational structure] [varchar](300) NULL,
	[K1.2 Evolution of air traffic control (ATC)] [varchar](300) NULL,
	[K1.3 Safety culture] [varchar](300) NULL,
	[K1.4 NextGen initiative] [varchar](300) NULL,
	[K1.6 Employee representation] [varchar](300) NULL,
	[K2.1 Decoding facility identifiers] [varchar](300) NULL,
	[K2.2 Types of ATC facilities] [varchar](300) NULL,
	[K2.3 Roles of each facility type] [varchar](300) NULL,
	[K2.4 Types of ATCS positions in each facility type] [varchar](300) NULL,
	[K2.5 ATCS responsibilities for each position in each facility type] [varchar](300) NULL,
	[K2.6 Types of Traffic Management Unit (TMU) positions] [varchar](300) NULL,
	[K2.7 Traffic Management Unit (TMU) responsibilities] [varchar](300) NULL,
	[K2.8 Automated Flight Service Station (AFSS)] [varchar](300) NULL,
	[K3.1 Aeromedical requirements] [varchar](300) NULL,
	[K3.2 Training requirements] [varchar](300) NULL,
	[K3.3 Credentialing requirements] [varchar](300) NULL,
	[K3.4 Certification requirements] [varchar](300) NULL,
	[K4.1 Aircraft aerodynamics] [varchar](300) NULL,
	[K4.2 Wake turbulence] [varchar](300) NULL,
	[K4.3 Speed regimes (low speed, crusing, high speed)] [varchar](300) NULL,
	[K4.4 Phases of flight] [varchar](300) NULL,
	[K5.1 Human cognitive/K5.2physical performance limitations] [varchar](300) NULL,
	[K5.3 Team concept] [varchar](300) NULL,
	[K5.4 ATC automation] [varchar](300) NULL,
	[K6.1 National geography] [varchar](300) NULL,
	[K6.2 International geography] [varchar](300) NULL,
	[K6.3 Types of obstructions] [varchar](300) NULL,
	[K6.4 Types of altitude references] [varchar](300) NULL,
	[K6.5 Types of distance metrics (NM, SM)] [varchar](300) NULL,
	[K7.1 Air route structure] [varchar](300) NULL,
	[K7.2 Types of navigation aids (NAVAIDS)] [varchar](300) NULL,
	[K7.3 Types of navigation] [varchar](300) NULL,
	[K7.4 Aeronautical charts] [varchar](300) NULL,
	[K7.5 Compass properties] [varchar](300) NULL,
	[K7.6 Geo-referencing] [varchar](300) NULL,
	[K7.7 Compulsory position reporting] [varchar](300) NULL,
	[K7.8 Terrain features] [varchar](300) NULL,
	[K8.1 Atmospheric properties] [varchar](300) NULL,
	[K8.2 Sources of weather information] [varchar](300) NULL,
	[K8.3 Weather terminology] [varchar](300) NULL,
	[K8.4 Weather features] [varchar](300) NULL,
	[K8.5 Weather observation (taking the weather observation)] [varchar](300) NULL,
	[K8.5/6 Weather data interpretation] [varchar](300) NULL,
	[K8.6/7 Impact on operations] [varchar](300) NULL,
	[K8.7/8 Impact on flight/aircraft] [varchar](300) NULL,
	[K8.8/9 Pilot Report (PIREP) solicitation requirements] [varchar](300) NULL,
	[K8.9/10 Weather information recording] [varchar](300) NULL,
	[K8.10/11 Weather information dissemination requirements] [varchar](300) NULL,
	[K8.11/12 Weather minimums] [varchar](300) NULL,
	[K9.1 Types of surveillance systems] [varchar](300) NULL,
	[K9.2 Fundamentals] [varchar](300) NULL,
	[K9.3 Components] [varchar](300) NULL,
	[K9.4 Utility] [varchar](300) NULL,
	[K9.5 Limitations] [varchar](300) NULL,
	[K10.1 Types of communication systems] [varchar](300) NULL,
	[K10.2 Fundamentals] [varchar](300) NULL,
	[K10.3 Components] [varchar](300) NULL,
	[K10.4 Utility] [varchar](300) NULL,
	[K10.5 Limitations] [varchar](300) NULL,
	[K11.1 Categories] [varchar](300) NULL,
	[K11.2 Weight classes] [varchar](300) NULL,
	[K11.3 Designators] [varchar](300) NULL,
	[K11.4 Performance characteristics] [varchar](300) NULL,
	[K11.5 Identification features] [varchar](300) NULL,
	[K11. 5/6 Avionics] [varchar](300) NULL,
	[K12.1 Types of flight operations] [varchar](300) NULL,
	[K12.2 Types of surface operations] [varchar](300) NULL,
	[K12.3 Flight rules] [varchar](300) NULL,
	[K12.4 Altimeter setting criteria] [varchar](300) NULL,
	[K12.5 Aircraft transponder modes] [varchar](300) NULL,
	[K13.1 Decoding airport identifiers] [varchar](300) NULL,
	[K13.2 Components of airport diagram] [varchar](300) NULL,
	[K13.3 Movement versus non-movement area] [varchar](300) NULL,
	[K13.2/4 Services and equipment] [varchar](300) NULL,
	[K13.5 Types of signage] [varchar](300) NULL,
	[K13.3/6 Types of airport lighting] [varchar](300) NULL,
	[K14.1 Types of aeronautical publications and ATC procedures and directives] [varchar](300) NULL,
	[K14.2 Purpose of aeronautical publications and ATC procedures and directives] [varchar](300) NULL,
	[K14.3 Authoritative source of the information] [varchar](300) NULL,
	[K14.4 Location and format of current version] [varchar](300) NULL,
	[K14.5 Subject areas contained in each ATC publication] [varchar](300) NULL,
	[K14.6 Types of sensitive documents] [varchar](300) NULL,
	[K15.1 Airspace classification] [varchar](300) NULL,
	[K15.2 Air defense identification zone (ADIZ)] [varchar](300) NULL,
	[K15.3 ARTCC delegated airspace concept] [varchar](300) NULL,
	[K15.4 Special Activity Airspace] [varchar](300) NULL,
	[K15.5 Flight information region (FIR)] [varchar](300) NULL,
	[K16.1 Types of flight plans] [varchar](300) NULL,
	[K16.2 Required components] [varchar](300) NULL,
	[K16.3 Filing process] [varchar](300) NULL,
	[K16.4 Evaluation strategies] [varchar](300) NULL,
	[K16.5 Flight plan processing] [varchar](300) NULL,
	[K16.6 Flight plan data display methods] [varchar](300) NULL,
	[K17.1 Purpose of traffic management units] [varchar](300) NULL,
	[K17.2 Reasons for traffic management initiatives] [varchar](300) NULL,
	[K17.3 Types of traffic management initiatives] [varchar](300) NULL,
	[K17.4 Strategies for managing traffic management initiatives] [varchar](300) NULL,
	[K18.1 Facility identifier] [varchar](300) NULL,
	[K18.2 Facility level] [varchar](300) NULL,
	[K18.3 Physical location] [varchar](300) NULL,
	[K18.4 Facility/airport contact information] [varchar](300) NULL,
	[K18.5 Airport diagram (Tower & TRACON)] [varchar](300) NULL,
	[K18.5/6 Facility radio frequencies] [varchar](300) NULL,
	[K18.6/7 Local navigation aids (NAVAIDS)] [varchar](300) NULL,
	[K18.8 Airport services (Tower & TRACON)] [varchar](300) NULL,
	[K18.7/9 Airspace dimensions] [varchar](300) NULL,
	[K18.8/10 Adjacent airspace] [varchar](300) NULL,
	[K18.9/11 Sector configurations] [varchar](300) NULL,
	[K18.10/12 Airport configurations] [varchar](300) NULL,
	[K18.11/13 Local geography] [varchar](300) NULL,
	[K18.12/14 Impact of local topography on flight] [varchar](300) NULL,
	[K18.13/15 Local obstructions/ obstacles] [varchar](300) NULL,
	[K18.14/16 Local weather patterns] [varchar](300) NULL,
	[K18.17 Tower blind spots] [varchar](300) NULL,
	[K18.15/17/18 Facility traffic flows] [varchar](300) NULL,
	[K18.19 Local traffic patterns] [varchar](300) NULL,
	[K18.16/18/20 Areas with high potential for confliction (hot spots)] [varchar](300) NULL,
	[K18.17/19/21 Facility specific directives and procedures] [varchar](300) NULL,
	[K18.18/20/22 Airspace coordination procedures] [varchar](300) NULL,
	[K19.1 Types of tools and equipment] [varchar](300) NULL,
	[K19.2 Functionality of tools and equipment] [varchar](300) NULL,
	[K19.3 Operation of tools and equipment] [varchar](300) NULL,
	[K19.4 Interpretation of information provided] [varchar](300) NULL,
	[K19.5 Limitations] [varchar](300) NULL,
	[K19.6 Degradation indicators] [varchar](300) NULL,
	[K19.7 Minor troubleshooting] [varchar](300) NULL,
	[K19.8 Backup systems] [varchar](300) NULL,
	[K19.9 Interoperability (exchanging information between systems)] [varchar](300) NULL,
	[K20.1 Types of ATC communications] [varchar](300) NULL,
	[K20.2 Components of each type of communication] [varchar](300) NULL,
	[K20.3 Proper phraseology] [varchar](300) NULL,
	[K20.4 Roles and responsibilities of communicators] [varchar](300) NULL,
	[K20.5 Communication procedures] [varchar](300) NULL,
	[K21.1 Types of separation standards] [varchar](300) NULL,
	[K21.2 Separation minima] [varchar](300) NULL,
	[K21.3 Conflict resolution strategies] [varchar](300) NULL,
	[K21.4 Operational and personal impact of loss of separation] [varchar](300) NULL,
	[K22.1 Types of air traffic services] [varchar](300) NULL,
	[K22.2 Duty priorities] [varchar](300) NULL,
	[K22.3 Scanning strategies] [varchar](300) NULL,
	[K22.4 Procedures for composing clearances and control] [varchar](300) NULL,
	[K22.5 Application of separation standards] [varchar](300) NULL,
	[K22.6 Radar services procedures] [varchar](300) NULL,
	[K22.7 Nonradar procedures] [varchar](300) NULL,
	[K22.8 Conformance assurance] [varchar](300) NULL,
	[K22.9 Course trend information] [varchar](300) NULL,
	[K22.10 Strategies for severe weather avoidance] [varchar](300) NULL,
	[K22.11 Transfer of control requirements] [varchar](300) NULL,
	[K22.12 Transfer of communication requirements] [varchar](300) NULL,
	[K22.13 Approach control service] [varchar](300) NULL,
	[K22.14 Notice to Airmen (NOTAM)] [varchar](300) NULL,
	[K23.1 Aircraft Management Information System (AMIS)] [varchar](300) NULL,
	[K23.1/2 Direction finding (DF) services] [varchar](300) NULL,
	[K23.2/3 Visual flight rule (VFR) flight following] [varchar](300) NULL,
	[K23.3/4 Flight information service (FIS)] [varchar](300) NULL,
	[K23.4 Glidepath trend information (Tower & TRACON)] [varchar](300) NULL,
	[K23.5 Uncontrolled aircraft] [varchar](300) NULL,
	[K23.6 Nonparticipating aircraft (TRACON & En Route)] [varchar](300) NULL,
	[K23.6 Tower en route control service (Tower)] [varchar](300) NULL,
	[K24.1 Approach/arrival information] [varchar](300) NULL,
	[K24.2 Instrument approaches] [varchar](300) NULL,
	[K24.3 Arrival routes] [varchar](300) NULL,
	[K24.4 Conventional standard terminal arrival routes (STARs)] [varchar](300) NULL,
	[K24.5 Area navigation (RNAV-enabled) arrival routes] [varchar](300) NULL,
	[K24.6 Visual approaches] [varchar](300) NULL,
	[K24.7 Missed approaches] [varchar](300) NULL,
	[K24.8 Visual flight rule (VFR) arrival] [varchar](300) NULL,
	[K24.9 Continual descent approach (CDA)/Optimized] [varchar](300) NULL,
	[K24.9 Continuous descent operations] [varchar](300) NULL,
	[K24.9/10 Practice approaches] [varchar](300) NULL,
	[K24.10/11 Arrival sequence] [varchar](300) NULL,
	[K24.11 Landing operations] [varchar](300) NULL,
	[K25.1 Departure sequence] [varchar](300) NULL,
	[K25.2 Taxi and departure routes] [varchar](300) NULL,
	[K25.3 Departure information] [varchar](300) NULL,
	[K25.4 Conventional standard instrument departures (SIDs)] [varchar](300) NULL,
	[K25.5 Area navigation (RNAV-enabled) departure routes] [varchar](300) NULL,
	[K25.6 Visual flight rule (VFR) departures] [varchar](300) NULL,
	[K25.7 Missed approach procedures] [varchar](300) NULL,
	[K26.1 Types of special operations] [varchar](300) NULL,
	[K26.2 Required clearances and control instructions] [varchar](300) NULL,
	[K26.3 Coordination requirements] [varchar](300) NULL,
	[K26.4 Notification requirements] [varchar](300) NULL,
	[K27.1 Types of ground emergency or unusual operations] [varchar](300) NULL,
	[K27.2 Types of in-flight emergency or unusual operations] [varchar](300) NULL,
	[K27.3 Required clearances and control instructions] [varchar](300) NULL,
	[K27.4 Search and rescue] [varchar](300) NULL,
	[K27.5 Emergency assistance techniques] [varchar](300) NULL,
	[K27.6 Coordination requirements] [varchar](300) NULL,
	[K27.7 Notification requirements] [varchar](300) NULL,
	[K27.8 Reporting requirements] [varchar](300) NULL,
	[Sk1, Oral Communication/Sk2, Written] [varchar](300) NULL,
	[Sk3,Active Listening] [varchar](300) NULL,
	[Sk4, Task Switching] [varchar](300) NULL,
	[Sk5, Attention Switching] [varchar](300) NULL,
	[Sk6, Interruption Recovery] [varchar](300) NULL,
	[Sk7, Information Location] [varchar](300) NULL,
	[Sk8, Decoding/Sk9, Encoding] [varchar](300) NULL,
	[Sk10, Reading Comprehension] [varchar](300) NULL,
	[Sk11, Information Filtering] [varchar](300) NULL,
	[Sk12, Rule Application] [varchar](300) NULL,
	[Sk13, Basic Math Operations] [varchar](300) NULL,
	[Sk14, Principle Application] [varchar](300) NULL,
	[Sk15, High Workload Recognition] [varchar](300) NULL,
	[Sk16, Performance Monitoring] [varchar](300) NULL,
	[Sk17, Task Prioritization] [varchar](300) NULL,
	[Sk18, Task Timing] [varchar](300) NULL,
	[Sk19, Composure Maintenance] [varchar](300) NULL,
	[Sk20, Position Relief Briefings] [varchar](300) NULL,
	[Sk21, Shared Responsibility Position Teamwork] [varchar](300) NULL,
	[Sk22, Inter-position Teamwork] [varchar](300) NULL,
	[Sk23, Coordination] [varchar](300) NULL,
	[Sk24, Cue Recognition/ Comprehension] [varchar](300) NULL,
	[Sk25, Service Orientation] [varchar](300) NULL,
	[Sk26, Strategic Scanning] [varchar](300) NULL,
	[Sk27, Operational Comprehension] [varchar](300) NULL,
	[Sk28, Object Projection] [varchar](300) NULL,
	[Sk29, Facility Monitoring (inter and intra facility monitoring)] [varchar](300) NULL,
	[Sk30, Flight Strip Utilization (Air Traffic Flight Data Utilization)] [varchar](300) NULL,
	[Sk31, Spatial Information Application] [varchar](300) NULL,
	[Sk32, Object Identification and Position Establishment] [varchar](300) NULL,
	[Sk33, Separation Strategy Development/ Sk34, Selection] [varchar](300) NULL,
	[Sk35, Separation Strategy Implementation] [varchar](300) NULL,
	[Sk36, Sequencing Strategy Development] [varchar](300) NULL,
	[Sk37, Sequencing Strategy Selection/ Sk38, Implementation] [varchar](300) NULL,
	[Sk39, Spacing Strategy Development] [varchar](300) NULL,
	[Sk40, Spacing Strategy Selection] [varchar](300) NULL,
	[Sk41, Spacing Strategy Implementation] [varchar](300) NULL,
	[Sk42, Conflict Identification] [varchar](300) NULL,
	[Sk43, Conflict Resolution Strategy Development] [varchar](300) NULL,
	[Sk44, Conflict Resolution Strategy Selection] [varchar](300) NULL,
	[Sk45, Conflict Resolution Strategy Implementation] [varchar](300) NULL,
	[Sk46, Advisories/ Alerts Utilization] [varchar](300) NULL,
	[Sk47, Weather Data Interpretation] [varchar](300) NULL,
	[Sk48, Current Weather Assessment] [varchar](300) NULL,
	[Sk49,  Weather Projection] [varchar](300) NULL,
	[Sk50, Weather Strategy Development] [varchar](300) NULL,
	[Sk51,  Weather Strategy Selection] [varchar](300) NULL,
	[Sk52, Weather Strategy Implementation] [varchar](300) NULL,
	[Sk53,  Tool & Equipment Operation (includes keyboarding)] [varchar](300) NULL,
	[Sk54,  Tool & Equipment Status Recognition] [varchar](300) NULL,
	[Sk55,  Tool & Equipment Degradation/ Failure Response] [varchar](300) NULL,
	[Sk56,  Emergency Recognition] [varchar](300) NULL,
	[Sk57,  Emergency Response Development/ 58, Selection] [varchar](300) NULL,
	[Sk59,  Emergency Response Implementation] [varchar](300) NULL,
	[FileName] [varchar](300) NULL,
	[RowNumber] [varchar](300) NULL
	[InsertBy] [varchar](50) NULL,
	[InsertDT] [datetime] NULL,
	[UpdateBy] [varchar](50) NULL,
	[UpdateDT] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


