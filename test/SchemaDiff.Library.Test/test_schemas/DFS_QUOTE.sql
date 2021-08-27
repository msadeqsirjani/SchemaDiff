/****** Object:  Table [dbo].[CmicBusinessPursuits]    Script Date: 10/10/2009 15:44:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicBusinessPursuits](
	[id] [tinyint] NOT NULL,
	[description] [varchar](60) NOT NULL,
 CONSTRAINT [PK_CmicBusinessPursuitsType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicConstructionType]    Script Date: 10/10/2009 15:44:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicConstructionType](
	[code] [char](1) NOT NULL,
	[description] [varchar](40) NOT NULL,
	[sort] [tinyint] NOT NULL,
	[allowOnMobileHome] [bit] NOT NULL,
	[allowOnNonMobileHome] [bit] NOT NULL,
 CONSTRAINT [PK_CmicConstructionType] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicCoverageL]    Script Date: 10/10/2009 15:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CmicCoverageL](
	[amount] [int] NOT NULL,
	[grandfatherOnly] [bit] NOT NULL,
 CONSTRAINT [PK_CmicCoverageL_1] PRIMARY KEY CLUSTERED 
(
	[amount] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[AddAgentPayment]    Script Date: 10/10/2009 15:43:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddAgentPayment]
	(		
		@agtpay_amt MONEY, 
		@agtpay_account INT, 
		@agtpay_prefix VARCHAR(4), 
		@agtpay_policy VARCHAR(7), 
		@agtpay_agentno VARCHAR(9), 
		@agtpay_logon_name VARCHAR(10), 
		@agtpay_subnumber VARCHAR(2), 
		@agtpay_name VARCHAR(30), 
		@agtpay_agencyname VARCHAR(30), 
		@agtpay_company VARCHAR(2), 
		@agtpay_system_id VARCHAR(5),
		@id int OUTPUT	
	)
AS

EXEC AGENTBILLING.dbo.AddAgentPayment 
		@agtpay_amt, 
		@agtpay_account, 
		@agtpay_prefix, 
		@agtpay_policy, 
		@agtpay_agentno, 
		@agtpay_logon_name,
		@agtpay_subnumber,
		@agtpay_name,
		@agtpay_agencyname,
		@agtpay_company,
		@agtpay_system_id

SET @id = @@IDENTITY
RETURN
GO
/****** Object:  Table [dbo].[CmicCoverageM]    Script Date: 10/10/2009 15:44:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CmicCoverageM](
	[amount] [int] NOT NULL,
	[grandfatherOnly] [bit] NOT NULL,
 CONSTRAINT [PK_CmicCoverageM_1] PRIMARY KEY CLUSTERED 
(
	[amount] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CmicDeductible]    Script Date: 10/10/2009 15:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CmicDeductible](
	[amount] [int] NOT NULL,
 CONSTRAINT [PK_CmicDeductible_1] PRIMARY KEY CLUSTERED 
(
	[amount] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CmicEndorsement]    Script Date: 10/10/2009 15:44:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicEndorsement](
	[id] [tinyint] NOT NULL,
	[name] [varchar](7) NOT NULL,
	[url] [varchar](30) NULL,
	[description] [varchar](20) NOT NULL,
	[sort] [int] NOT NULL,
 CONSTRAINT [PK_CmicEndorsement] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicFireAlarm]    Script Date: 10/10/2009 15:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicFireAlarm](
	[code] [char](1) NOT NULL,
	[description] [varchar](10) NOT NULL,
	[sort] [tinyint] NOT NULL,
 CONSTRAINT [PK_CmicFireAlarm] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicForm]    Script Date: 10/10/2009 15:44:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicForm](
	[code] [int] NOT NULL,
	[description] [char](4) NOT NULL,
 CONSTRAINT [PK_CmicForm_1] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicFoundationType]    Script Date: 10/10/2009 15:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicFoundationType](
	[code] [char](1) NOT NULL,
	[description] [varchar](10) NOT NULL,
	[sort] [tinyint] NOT NULL,
 CONSTRAINT [PK_CmicFoundation] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[test]    Script Date: 10/10/2009 15:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test](
	[first] [int] NOT NULL,
	[second] [int] NOT NULL,
	[third] [int] NOT NULL,
	[fourth] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CmicHeatType]    Script Date: 10/10/2009 15:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicHeatType](
	[code] [char](1) NOT NULL,
	[description] [varchar](30) NOT NULL,
	[sort] [tinyint] NOT NULL,
 CONSTRAINT [PK_CmicHeatType] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pktest]    Script Date: 10/10/2009 15:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pktest](
	[col1] [char](1) NOT NULL,
	[col2] [char](1) NOT NULL,
 CONSTRAINT [pk_pktest] PRIMARY KEY CLUSTERED 
(
	[col1] ASC,
	[col2] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicIncidentalOccupancyType]    Script Date: 10/10/2009 15:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicIncidentalOccupancyType](
	[id] [tinyint] NOT NULL,
	[description] [varchar](30) NOT NULL,
 CONSTRAINT [PK_CmicIncidentalOccupancyType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicInsuredType]    Script Date: 10/10/2009 15:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicInsuredType](
	[id] [tinyint] NOT NULL,
	[description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CmicInsuredType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_InsuredType] UNIQUE NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[DeleteAgentPayment]    Script Date: 10/10/2009 15:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteAgentPayment]
	@id int
AS
BEGIN
	EXEC AGENTBILLING.dbo.DeletePendingPayment @id

	SELECT @@ROWCOUNT
	RETURN 
END
GO
/****** Object:  Table [dbo].[CmicLossSettlement]    Script Date: 10/10/2009 15:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicLossSettlement](
	[code] [char](1) NOT NULL,
	[description] [varchar](30) NOT NULL,
	[sort] [tinyint] NOT NULL,
 CONSTRAINT [PK_CmicLossSettlement] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicInterestType]    Script Date: 10/10/2009 15:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicInterestType](
	[code] [char](1) NOT NULL,
	[description] [varchar](20) NOT NULL,
	[sort] [tinyint] NOT NULL,
 CONSTRAINT [PK_CmicInterestType] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicOccupancy]    Script Date: 10/10/2009 15:45:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicOccupancy](
	[code] [char](1) NOT NULL,
	[description] [varchar](20) NOT NULL,
 CONSTRAINT [PK_CmicOccupancy] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicOutbuildingType]    Script Date: 10/10/2009 15:45:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicOutbuildingType](
	[code] [char](2) NOT NULL,
	[description] [varchar](30) NOT NULL,
	[sort] [tinyint] NOT NULL,
 CONSTRAINT [PK_CmicOtherStructureType] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicPOBoxZipCode]    Script Date: 10/10/2009 15:45:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicPOBoxZipCode](
	[zipCode] [char](5) NOT NULL,
 CONSTRAINT [PK_CmicPOBoxZipCode] PRIMARY KEY CLUSTERED 
(
	[zipCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicPolicyStatus]    Script Date: 10/10/2009 15:45:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicPolicyStatus](
	[code] [char](1) NOT NULL,
	[description] [varchar](30) NOT NULL,
 CONSTRAINT [PK_CmicPolicyStatus] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicProtectionClass]    Script Date: 10/10/2009 15:45:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CmicProtectionClass](
	[code] [tinyint] NOT NULL,
 CONSTRAINT [PK_CmicProtectionClass] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CmicRelationType]    Script Date: 10/10/2009 15:45:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicRelationType](
	[code] [char](1) NOT NULL,
	[description] [varchar](20) NOT NULL,
	[sort] [tinyint] NOT NULL,
 CONSTRAINT [PK_CmicRelationType] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicRoofType]    Script Date: 10/10/2009 15:45:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicRoofType](
	[code] [char](1) NOT NULL,
	[description] [varchar](30) NOT NULL,
	[sort] [tinyint] NOT NULL,
 CONSTRAINT [PK_CmicRoofType] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicState]    Script Date: 10/10/2009 15:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicState](
	[code] [char](2) NOT NULL,
	[name] [varchar](30) NOT NULL,
 CONSTRAINT [PK_CmicState] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicStructureType]    Script Date: 10/10/2009 15:45:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicStructureType](
	[code] [char](1) NOT NULL,
	[description] [varchar](20) NOT NULL,
	[sort] [tinyint] NOT NULL,
 CONSTRAINT [PK_CmicStructureType] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicSystem]    Script Date: 10/10/2009 15:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicSystem](
	[id] [int] NOT NULL,
	[code] [char](3) NOT NULL,
	[description] [varchar](20) NOT NULL,
 CONSTRAINT [PK_CmicSystem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicTheftType]    Script Date: 10/10/2009 15:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicTheftType](
	[code] [char](1) NOT NULL,
	[description] [varchar](50) NOT NULL,
	[sort] [tinyint] NOT NULL,
 CONSTRAINT [PK_CmicTheftType] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicTieDown]    Script Date: 10/10/2009 15:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicTieDown](
	[code] [char](1) NOT NULL,
	[description] [varchar](20) NOT NULL,
	[sort] [tinyint] NOT NULL,
 CONSTRAINT [PK_CmicTieDown] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicUsage]    Script Date: 10/10/2009 15:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicUsage](
	[code] [char](2) NOT NULL,
	[description] [varchar](20) NOT NULL,
	[sort] [tinyint] NOT NULL,
 CONSTRAINT [PK_CmicUsageType] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicWatercraftType]    Script Date: 10/10/2009 15:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicWatercraftType](
	[code] [char](1) NOT NULL,
	[description] [varchar](20) NOT NULL,
	[sort] [tinyint] NOT NULL,
 CONSTRAINT [PK_CmicWatercraftType] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicZipCode]    Script Date: 10/10/2009 15:45:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicZipCode](
	[zipCode] [char](5) NOT NULL,
 CONSTRAINT [PK_CmicZipCode] PRIMARY KEY CLUSTERED 
(
	[zipCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Batch]    Script Date: 10/10/2009 15:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Batch](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[extractDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Batch] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CmicAddress]    Script Date: 10/10/2009 15:44:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicAddress](
	[id] [int] NOT NULL,
	[line1] [varchar](30) NOT NULL,
	[line2] [varchar](30) NULL,
	[city] [varchar](30) NOT NULL,
	[stateCode] [char](2) NOT NULL,
	[zip] [char](5) NOT NULL,
	[zip4] [char](4) NULL,
 CONSTRAINT [PK_CmicAddress] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicAddressType]    Script Date: 10/10/2009 15:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicAddressType](
	[code] [char](1) NOT NULL,
	[description] [varchar](20) NOT NULL,
 CONSTRAINT [PK_AddressType] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicBurglarAlarm]    Script Date: 10/10/2009 15:44:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicBurglarAlarm](
	[code] [char](1) NOT NULL,
	[description] [varchar](10) NOT NULL,
	[sort] [tinyint] NOT NULL,
 CONSTRAINT [PK_CmicBurglarAlarm] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Location]    Script Date: 10/10/2009 15:45:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Location](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[policyId] [int] NOT NULL,
	[rapidRating] [bit] NOT NULL CONSTRAINT [DF_Location_rapidRating]  DEFAULT ((1)),
	[addressId] [int] NOT NULL,
	[storage] [bit] NOT NULL CONSTRAINT [DF_Location_storage]  DEFAULT ((0)),
	[liabilityOnly] [bit] NOT NULL CONSTRAINT [DF_Location_liabilityOnly]  DEFAULT ((0)),
	[usageCode] [char](2) NULL,
	[numberOfFamilies] [int] NULL,
	[occupancyCode] [char](1) NULL,
	[numberOfEmployees] [int] NULL,
	[numberOfAcres] [int] NULL,
	[numberOfAcresOff] [int] NULL,
	[acresOffDescription] [varchar](40) NULL,
	[acresOffAddressId] [int] NULL,
	[lossAssessmentPropertyLimit] [int] NULL,
	[lossAssessmentLiabilityLimit] [int] NULL,
	[personalInjury] [bit] NULL,
	[underConstruction] [bit] NULL,
	[buildersRiskLimit] [int] NULL,
	[businessOnPremises] [bit] NULL,
	[businessDescription] [varchar](50) NULL,
	[incidentalOccupancyTypeId] [tinyint] NULL,
	[incidentalOccupancyLiability] [bit] NULL,
	[incidentalContentsLimit] [int] NULL,
	[incidentalStorageLimit] [int] NULL,
	[businessPursuitsTypeId] [tinyint] NULL,
	[businessPursuitsInsuredId] [int] NULL,
	[corporalPunishment] [bit] NULL,
	[farming] [bit] NULL,
	[pets] [bit] NULL,
	[petBreed] [varchar](20) NULL,
	[trampoline] [bit] NULL,
	[trampolineNet] [bit] NULL,
	[pool] [bit] NULL,
	[poolAboveGround] [bit] NULL,
	[poolDivingBoard] [bit] NULL,
	[poolSlide] [bit] NULL,
	[poolFenceHeight] [int] NULL,
	[comment] [varchar](128) NULL,
	[snapshotLocId] [tinyint] NULL,
	[tStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicOffer]    Script Date: 10/10/2009 15:45:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicOffer](
	[id] [int] NOT NULL,
	[companyId] [int] NOT NULL,
	[programCode] [char](2) NOT NULL,
	[symbol] [varchar](4) NOT NULL,
	[effDate] [datetime] NOT NULL,
	[expDate] [datetime] NULL,
 CONSTRAINT [PK_CmicOffer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StorageUnit]    Script Date: 10/10/2009 15:46:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StorageUnit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[locationId] [int] NOT NULL,
	[rapidRating] [bit] NOT NULL,
	[protectionClassCode] [tinyint] NOT NULL,
	[constructionTypeCode] [char](1) NOT NULL,
	[coverageC] [int] NOT NULL,
	[extended] [bit] NOT NULL,
	[theftLimit] [int] NULL,
	[fireDeptDistance] [smallint] NULL,
	[fireDistrict] [varchar](30) NULL,
 CONSTRAINT [PK_StorageUnit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Outbuilding]    Script Date: 10/10/2009 15:46:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Outbuilding](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[locationId] [int] NOT NULL,
	[limit] [int] NOT NULL,
	[constructionTypeCode] [char](1) NOT NULL,
	[outbuildingTypeCode] [char](2) NOT NULL,
	[underConstruction] [bit] NOT NULL,
	[isLogicallyDeleted] [bit] NOT NULL CONSTRAINT [DF_Outbuilding_isLogicallyDeleted]  DEFAULT ((0)),
	[snapshotSeqNum] [tinyint] NULL,
	[snapshotSubNum] [tinyint] NULL,
	[tStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_OtherStructure] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Structure]    Script Date: 10/10/2009 15:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Structure](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[locationId] [int] NOT NULL,
	[rapidRating] [bit] NOT NULL CONSTRAINT [DF_Structure_rapidRating]  DEFAULT ((1)),
	[protectionClassCode] [tinyint] NOT NULL,
	[constructionTypeCode] [char](1) NOT NULL,
	[yearBuilt] [smallint] NOT NULL,
	[structureTypeCode] [char](1) NOT NULL,
	[numUnitsInFireDiv] [tinyint] NULL,
	[burglarAlarmCode] [char](1) NOT NULL,
	[fireAlarmCode] [char](1) NOT NULL,
	[heatTypeCode] [char](1) NOT NULL,
	[woodStove] [bit] NOT NULL,
	[coverageA] [int] NULL,
	[coverageC] [int] NULL,
	[coverageD] [int] NULL,
	[coverageE] [int] NULL,
	[extended] [bit] NULL,
	[vandalism] [bit] NULL,
	[lossSettlementCode] [char](1) NULL,
	[replacementCost] [int] NULL,
	[acvLossSettlementRoof] [bit] NULL,
	[theftTypeCode] [char](1) NULL,
	[theftOnLimit] [int] NULL,
	[theftOffLimit] [int] NULL,
	[outdoorEquipmentLimit] [int] NULL,
	[improvementsLimit] [int] NULL,
	[unitOwnersLimit] [int] NULL,
	[specialCoverage] [bit] NULL,
	[waterBackup] [bit] NULL,
	[permissionToMove] [bit] NULL,
	[lienholderSingleInterest] [bit] NULL,
	[manufacturer] [varchar](30) NULL,
	[serialNum] [varchar](15) NULL,
	[model] [varchar](30) NULL,
	[length] [smallint] NULL,
	[width] [tinyint] NULL,
	[planToMove] [bit] NULL,
	[damaged] [bit] NULL,
	[thermostat] [bit] NULL,
	[foundationCode] [char](1) NULL,
	[tieDownCode] [char](1) NULL,
	[inCityLimits] [bit] NULL,
	[fireDeptDistance] [smallint] NULL,
	[fireDistrict] [varchar](30) NULL,
	[fireHydrant] [bit] NULL,
	[fireHydrantDistance] [smallint] NULL,
	[roofTypeCode] [char](1) NULL,
	[fireplace] [bit] NULL,
	[fireplaceCleaned] [bit] NULL,
	[wiringYear] [smallint] NULL,
	[plumbingYear] [smallint] NULL,
	[heatingYear] [smallint] NULL,
	[roofYear] [smallint] NULL,
	[isLogicallyDeleted] [bit] NOT NULL CONSTRAINT [DF_Structure_isLogicallyDeleted]  DEFAULT ((0)),
	[tStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_Dwelling] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Motor]    Script Date: 10/10/2009 15:46:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Motor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[watercraftId] [int] NOT NULL,
	[year] [int] NOT NULL,
	[make] [varchar](20) NOT NULL,
	[model] [varchar](12) NOT NULL,
	[horsepower] [int] NOT NULL,
	[serialNumber] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Motor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Address]    Script Date: 10/10/2009 15:44:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[policyId] [int] NOT NULL,
	[addressTypeCode] [char](1) NOT NULL,
	[line1] [varchar](30) NOT NULL,
	[line2] [varchar](30) NULL,
	[city] [varchar](30) NOT NULL,
	[stateCode] [char](2) NOT NULL,
	[zip] [char](5) NOT NULL,
	[zip4] [char](4) NULL,
	[isScrubbed] [bit] NOT NULL CONSTRAINT [DF_Address_isScrubbed]  DEFAULT ((0)),
	[scrubOverride] [bit] NOT NULL CONSTRAINT [DF_Address_scrubOverride]  DEFAULT ((0)),
	[scrubReturnCode] [varchar](3) NULL,
	[countyId] [int] NULL,
	[type] [char](1) NULL,
	[primaryNumber] [varchar](10) NULL,
	[preDirectional] [varchar](2) NULL,
	[postDirectional] [varchar](2) NULL,
	[street] [varchar](30) NULL,
	[suffix] [varchar](4) NULL,
	[unitDesignator] [varchar](4) NULL,
	[unitNumber] [varchar](10) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicCountyZipCode]    Script Date: 10/10/2009 15:44:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicCountyZipCode](
	[countyId] [int] NOT NULL,
	[zipCode] [char](5) NOT NULL,
 CONSTRAINT [PK_CmicCountyZipCode_1] PRIMARY KEY CLUSTERED 
(
	[countyId] ASC,
	[zipCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Policy]    Script Date: 10/10/2009 15:46:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Policy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[batchId] [int] NULL,
	[agencyId] [int] NOT NULL,
	[agentId] [int] NOT NULL,
	[reqStatus] [char](1) NOT NULL CONSTRAINT [DF_Policy_reqStatus]  DEFAULT ((0)),
	[lastDateUpd] [datetime] NOT NULL CONSTRAINT [DF_Policy_lastDateUpd]  DEFAULT (getdate()),
	[effDate] [datetime] NOT NULL,
	[coverageTypeCode] [char](2) NOT NULL,
	[formCode] [int] NULL,
	[deductibleAmount] [int] NULL,
	[coverageLAmount] [int] NULL,
	[coverageMAmount] [int] NULL,
	[personalInjury] [bit] NULL,
	[isE2ValueComplete] [bit] NOT NULL CONSTRAINT [DF_Policy_isE2ValueComplete]  DEFAULT ((0)),
	[isImport] [bit] NOT NULL CONSTRAINT [DF_Policy_imported]  DEFAULT ((0)),
	[isImportComplete] [bit] NULL,
	[isAmend] [bit] NOT NULL CONSTRAINT [DF_Policy_isAmend]  DEFAULT ((0)),
	[amendKey] [varchar](25) NULL,
	[amendEffDate] [datetime] NULL,
	[tStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_Policy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Insured]    Script Date: 10/10/2009 15:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Insured](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[policyId] [int] NOT NULL,
	[isLogicallyDeleted] [bit] NOT NULL CONSTRAINT [DF_Insured_isLogicallyDeleted]  DEFAULT ((0)),
	[rapidRating] [bit] NOT NULL CONSTRAINT [DF_Insured_rapidRating]  DEFAULT ((1)),
	[addressId] [int] NULL,
	[insuredTypeId] [tinyint] NOT NULL,
	[firstName] [varchar](20) NOT NULL,
	[midName] [varchar](10) NULL,
	[lastName] [varchar](20) NOT NULL,
	[nameSuffix] [varchar](5) NULL,
	[businessName] [varchar](30) NULL,
	[phoneNumber] [char](10) NULL,
	[ssn] [char](9) NULL,
	[dob] [datetime] NULL,
	[occupation] [varchar](30) NULL,
	[isDriver] [bit] NOT NULL CONSTRAINT [DF_Insured_isDriver]  DEFAULT ((0)),
	[gender] [char](1) NULL,
	[relationTypeCode] [char](1) NULL,
	[licenseNumber] [varchar](23) NULL,
	[licenseStateCode] [char](2) NULL,
	[tStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_Insured] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mortgagee]    Script Date: 10/10/2009 15:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mortgagee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[policyId] [int] NOT NULL,
	[sendBill] [bit] NOT NULL,
	[name1] [varchar](30) NOT NULL,
	[name2] [varchar](30) NULL,
	[addressId] [int] NOT NULL,
	[interestTypeCode] [char](1) NOT NULL,
	[isLogicallyDeleted] [bit] NOT NULL CONSTRAINT [DF_Mortgagee_isLogicallyDeleted]  DEFAULT ((0)),
	[amendId] [int] NULL,
	[tStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_Mortgagee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicOccupancyUsage]    Script Date: 10/10/2009 15:45:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicOccupancyUsage](
	[occupancyCode] [char](1) NOT NULL,
	[usageCode] [char](2) NOT NULL,
 CONSTRAINT [PK_CmicOccupancyUsage] PRIMARY KEY CLUSTERED 
(
	[occupancyCode] ASC,
	[usageCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicOfferState]    Script Date: 10/10/2009 15:45:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicOfferState](
	[offerId] [int] NOT NULL,
	[stateCode] [char](2) NOT NULL,
 CONSTRAINT [PK_CmicOfferState] PRIMARY KEY CLUSTERED 
(
	[offerId] ASC,
	[stateCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rate]    Script Date: 10/10/2009 15:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[policyId] [int] NOT NULL,
	[offerId] [int] NOT NULL,
	[term] [int] NOT NULL,
	[rateDate] [datetime] NOT NULL,
	[expireDate] [datetime] NOT NULL,
	[totalPremium] [money] NOT NULL,
	[quoteXmlChecksum] [binary](20) NOT NULL,
 CONSTRAINT [PK_Rate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicCoverageType]    Script Date: 10/10/2009 15:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicCoverageType](
	[code] [char](2) NOT NULL,
	[description] [varchar](30) NOT NULL,
	[programCode] [char](2) NOT NULL,
 CONSTRAINT [PK_CmicCoverage] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicCounty]    Script Date: 10/10/2009 15:44:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicCounty](
	[id] [int] NOT NULL,
	[stateCode] [char](2) NOT NULL,
	[code] [char](3) NOT NULL,
	[name] [varchar](20) NOT NULL,
 CONSTRAINT [PK_CmicCounty_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicProgram]    Script Date: 10/10/2009 15:45:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicProgram](
	[code] [char](2) NOT NULL,
	[description] [varchar](30) NOT NULL,
	[printDescription] [varchar](30) NOT NULL,
	[systemId] [int] NOT NULL,
 CONSTRAINT [PK_CmicProgram] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Watercraft]    Script Date: 10/10/2009 15:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Watercraft](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[policyId] [int] NOT NULL,
	[isLogicallyDeleted] [bit] NOT NULL CONSTRAINT [DF_Watercraft_isLogicallyDeleted]  DEFAULT ((0)),
	[watercraftTypeCode] [char](1) NOT NULL,
	[year] [int] NOT NULL,
	[make] [varchar](20) NOT NULL,
	[model] [varchar](12) NOT NULL,
	[length] [int] NOT NULL,
	[serialNumber] [varchar](20) NOT NULL,
	[tStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_Watercraft] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdditionalInsuredLocation]    Script Date: 10/10/2009 15:44:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdditionalInsuredLocation](
	[additionalInsuredId] [int] NOT NULL,
	[locationId] [int] NOT NULL,
 CONSTRAINT [PK_AdditionalInsuredLocation] PRIMARY KEY CLUSTERED 
(
	[additionalInsuredId] ASC,
	[locationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdditionalInsured]    Script Date: 10/10/2009 15:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdditionalInsured](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[policyId] [int] NOT NULL,
	[name1] [varchar](30) NOT NULL,
	[name2] [varchar](30) NULL,
	[addressId] [int] NOT NULL,
	[tStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_AdditionalInsured] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MVR]    Script Date: 10/10/2009 15:46:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MVR](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[insuredId] [int] NOT NULL,
	[orderDate] [datetime] NOT NULL,
	[statusCode] [char](1) NULL,
	[returnCode] [int] NOT NULL,
	[mvrReturnCode] [int] NOT NULL,
	[errorMessage] [text] NULL,
	[report] [text] NULL,
 CONSTRAINT [PK_MVR] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MortgageeLocation]    Script Date: 10/10/2009 15:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MortgageeLocation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mortgageeId] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[loanNumber] [varchar](20) NULL,
	[snapshotSeqNum] [tinyint] NULL,
	[snapshotMortgageeNum] [tinyint] NULL,
	[tStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_MortgageeLocation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CLUE]    Script Date: 10/10/2009 15:44:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CLUE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[locationId] [int] NOT NULL,
	[orderDate] [datetime] NOT NULL,
	[statusCode] [char](1) NULL,
	[report] [text] NULL,
 CONSTRAINT [PK_CLUE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RateItem]    Script Date: 10/10/2009 15:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RateItem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rateId] [int] NOT NULL,
	[locationId] [int] NULL,
	[description] [varchar](50) NOT NULL,
	[limit] [int] NULL,
	[premium] [money] NULL,
 CONSTRAINT [PK_RateItem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Message]    Script Date: 10/10/2009 15:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Message](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[policyId] [int] NOT NULL,
	[agencyMessage] [varchar](512) NULL,
	[agentMessage] [varchar](512) NULL,
	[tStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Note]    Script Date: 10/10/2009 15:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Note](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[policyId] [int] NOT NULL,
	[user] [varchar](50) NOT NULL,
	[date] [datetime] NOT NULL,
	[text] [varchar](512) NOT NULL,
 CONSTRAINT [PK_Note] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Snowmobile]    Script Date: 10/10/2009 15:46:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Snowmobile](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[policyId] [int] NOT NULL,
	[isLogicallyDeleted] [bit] NOT NULL CONSTRAINT [DF_Snowmobile_isLogicallyDeleted]  DEFAULT ((0)),
	[year] [int] NOT NULL,
	[make] [varchar](20) NOT NULL,
	[serialNumber] [varchar](20) NOT NULL,
	[tStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_Vehicle] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Underwriting]    Script Date: 10/10/2009 15:47:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Underwriting](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[policyId] [int] NOT NULL,
	[forSale] [bit] NULL,
	[accessible] [bit] NOT NULL,
	[codeViolations] [bit] NULL,
	[renovation] [bit] NULL,
	[primaryInsured] [bit] NULL,
	[primaryPolNum] [varchar](25) NULL,
	[otherInsurance] [bit] NOT NULL,
	[otherInsurancePolNums] [varchar](128) NULL,
	[nearCommercial] [bit] NOT NULL,
	[converted] [bit] NOT NULL,
	[felony] [bit] NOT NULL,
	[bankruptcy] [bit] NOT NULL,
	[totalFireLoss] [bit] NULL,
	[waterLoss] [bit] NULL,
	[otherLoss] [bit] NULL,
	[otherLossDescription] [varchar](256) NULL,
	[comment] [varchar](256) NULL,
	[tStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_Underwriting] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UploadInfo]    Script Date: 10/10/2009 15:47:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UploadInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[policyId] [int] NOT NULL,
	[uploadedBy] [varchar](100) NOT NULL,
	[paymentId] [int] NULL,
	[policyPrefix] [varchar](4) NULL,
	[policyNumber] [varchar](10) NULL,
	[bound] [bit] NOT NULL,
	[boundDate] [datetime] NULL,
	[producer] [int] NOT NULL,
	[remittanceAmount] [money] NULL,
	[mortgageeBill] [bit] NOT NULL,
	[paymentMethod] [char](3) NULL,
	[checkNumber] [varchar](10) NULL,
	[agencyMemo] [varchar](50) NULL,
	[tStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_UploadInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RateSubItem]    Script Date: 10/10/2009 15:46:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RateSubItem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rateItemId] [int] NOT NULL,
	[description] [varchar](50) NOT NULL,
	[limit] [int] NULL,
	[premium] [money] NULL,
 CONSTRAINT [PK_RateSubItem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicCompany]    Script Date: 10/10/2009 15:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicCompany](
	[id] [int] NOT NULL,
	[name] [varchar](40) NOT NULL,
	[addressId] [int] NOT NULL,
 CONSTRAINT [PK_CmicCompany] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[UpdateUnderwriting]    Script Date: 10/10/2009 15:44:17 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[UpdateUnderwriting]
	@id int, 
	@policyId int, 
	@forSale bit, 
	@accessible bit, 
	@codeViolations bit, 
	@renovation bit, 
	@primaryInsured bit, 
	@primaryPolNum varchar(25), 
	@otherInsurance bit, 
	@otherInsurancePolNums varchar(128), 
	@nearCommercial bit, 
	@converted bit, 
	@felony bit, 
	@bankruptcy bit, 
	@totalFireLoss bit, 
	@waterLoss bit, 
	@otherLoss bit, 
	@otherLossDescription varchar(256), 	
	@comment varchar(256),
	@tStamp timestamp 
	,@tStampOut TIMESTAMP OUTPUT
AS

UPDATE [dbo].[Underwriting] SET
	[policyId] = @policyId,
	[forSale] = @forSale,
	[accessible] = @accessible,
	[codeViolations] = @codeViolations,
	[renovation] = @renovation,
	[primaryInsured] = @primaryInsured,
	[primaryPolNum] = @primaryPolNum,
	[otherInsurance] = @otherInsurance,
	[otherInsurancePolNums] = @otherInsurancePolNums,
	[nearCommercial] = @nearCommercial,
	[converted] = @converted,
	[felony] = @felony,
	[bankruptcy] = @bankruptcy,
	[totalFireLoss] = @totalFireLoss,
	[waterLoss] = @waterLoss,
	[otherLoss] = @otherLoss,
	[otherLossDescription] = @otherLossDescription,	
	[comment] = @comment
WHERE
	[id] = @id	
	AND [tStamp] = @tStamp
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT

-- get the new timestamp
SET @tStampOut = (SELECT tStamp FROM [dbo].[Underwriting] WHERE [id] = @id)

SELECT  @rowCountOut
GO
/****** Object:  StoredProcedure [dbo].[AddUnderwriting]    Script Date: 10/10/2009 15:43:46 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[AddUnderwriting]
	@policyId int,
	@forSale bit,
	@accessible bit,
	@codeViolations bit,
	@renovation bit,
	@primaryInsured bit,
	@primaryPolNum varchar(25),
	@otherInsurance bit,
	@otherInsurancePolNums varchar(128),
	@nearCommercial bit,
	@converted bit,
	@felony bit,
	@bankruptcy bit,
	@totalFireLoss bit,
	@waterLoss bit,
	@otherLoss bit,
	@otherLossDescription varchar(256),	
	@comment varchar(256),
	@id int OUTPUT,
	@tStamp timestamp OUTPUT
	
AS

INSERT INTO [dbo].[Underwriting] (
	[policyId],
	[forSale],
	[accessible],
	[codeViolations],
	[renovation],
	[primaryInsured],
	[primaryPolNum],
	[otherInsurance],
	[otherInsurancePolNums],
	[nearCommercial],
	[converted],
	[felony],
	[bankruptcy],
	[totalFireLoss],
	[waterLoss],
	[otherLoss],
	[otherLossDescription],	
	[comment]
) VALUES (
	@policyId,
	@forSale,
	@accessible,
	@codeViolations,
	@renovation,
	@primaryInsured,
	@primaryPolNum,
	@otherInsurance,
	@otherInsurancePolNums,
	@nearCommercial,
	@converted,
	@felony,
	@bankruptcy,
	@totalFireLoss,
	@waterLoss,
	@otherLoss,
	@otherLossDescription,
	@comment
)
SET @id = @@IDENTITY
SELECT @tStamp = tStamp FROM [Underwriting] WHERE id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[GetQuote]    Script Date: 10/10/2009 15:43:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetQuote]
	@policyId int
AS
BEGIN
	SELECT * FROM Policy WHERE id = @policyId	
	SELECT * FROM Address WHERE policyId = @policyId	
	SELECT * FROM Insured WHERE policyId = @policyId		
	SELECT * FROM Location WHERE policyId = @policyId
	SELECT s.* FROM Structure s INNER JOIN Location l ON l.id = s.locationId 
		WHERE l.policyId = @policyId	
	SELECT o.* FROM Outbuilding o INNER JOIN Location l ON l.id = o.locationId
		WHERE l.policyId = @policyId
	SELECT s.* FROM StorageUnit s INNER JOIN Location l ON l.id = s.locationId
		WHERE l.policyId = @policyId
		
	SELECT * FROM AdditionalInsured WHERE policyId = @policyId	
	SELECT il.* FROM AdditionalInsuredLocation il INNER JOIN Location l ON l.id = il.locationid
		WHERE l.policyId = @policyId
	SELECT * FROM Snowmobile WHERE policyId = @policyId		
	SELECT * FROM Watercraft WHERE policyId = @policyId
	SELECT m.* FROM Motor m INNER JOIN Watercraft w ON w.id = m.watercraftId
		WHERE w.policyId = @policyId	
	SELECT * FROM Mortgagee WHERE policyId = @policyId
	SELECT ml.* FROM MortgageeLocation ml INNER JOIN Location l ON l.id = ml.locationid
		WHERE l.policyId = @policyId
	SELECT * FROM Underwriting WHERE policyId = @policyId
	SELECT * FROM UploadInfo WHERE policyId = @policyId
	SELECT * FROM Rate WHERE policyId = @policyId
	SELECT * FROM RateItem ri INNER JOIN Rate r ON r.id = ri.rateId
		WHERE r.policyId = @policyId	
	SELECT rsi.* FROM RateSubItem rsi 
			INNER JOIN RateItem ri ON ri.id = rsi.rateItemId
			INNER JOIN Rate r ON r.id = ri.rateId
		WHERE r.policyId = @policyId
	SELECT * FROM Message WHERE policyId = @policyId
	SELECT c.* FROM CLUE c INNER JOIN Location l ON l.id = c.locationId
		WHERE l.policyId = @policyId
	SELECT * FROM Note WHERE policyId = @policyId
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteUnderwriting]    Script Date: 10/10/2009 15:43:52 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[DeleteUnderwriting]
	@id int
AS

DELETE FROM [dbo].[Underwriting]
WHERE id = @id	
SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[GetBatchForUpload]    Script Date: 10/10/2009 15:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetBatchForUpload]
	@batchId int,
	@isAmend bit
AS
BEGIN

SELECT p.*	
FROM Policy p
WHERE  id IN
       (SELECT id
       FROM   Policy
       WHERE  batchId = @batchId AND isAmend = @isAmend
       )

SELECT i.*, a.line1, a.line2, a.city, a.stateCode, a.zip, a.zip4
FROM   Insured i LEFT OUTER JOIN Address a ON a.id = i.addressId
WHERE  i.policyId IN
       (SELECT id
       FROM   Policy
       WHERE  batchId = @batchId AND isAmend = @isAmend
       )

SELECT ai.*, a.line1, a.line2, a.city, a.stateCode, a.zip, a.zip4
FROM   AdditionalInsured ai LEFT OUTER JOIN Address a ON a.id = ai.addressId
WHERE  ai.policyId IN
       (SELECT id
       FROM   Policy
       WHERE  batchId = @batchId AND isAmend = @isAmend
       )

SELECT a.line1, a.line2, a.city, a.stateCode, a.zip, a.zip4, il.*
FROM   AdditionalInsuredLocation il
       INNER JOIN Location l ON l.id = il.locationid
		INNER JOIN Address a ON l.addressId = a.id
WHERE  l.policyId IN
       (SELECT id
       FROM   Policy
       WHERE  batchId = @batchId AND isAmend = @isAmend
       )

SELECT  
	a.line1, 
	a.line2, 
	a.city, 
	a.stateCode, 
	a.zip, 
	a.zip4, 
	c.code as countyCode,
	acresOff.line1 as acresOffLine1, 
	acresOff.line2 as acresOffLine2, 
	acresOff.city as acresOffCity, 
	acresOff.stateCode as acresOffStateCode, 
	acresOff.zip as acresOffZip, 
	acresOff.zip4 as acresOffZip4,	
	(
		i.firstName 
		+ ' ' + ISNULL(i.midName+' ','') 
		+ i.lastName 
		+ ISNULL(' '+i.nameSuffix,'') 
	)as businessPursuitsInsuredName,	
	l.*
FROM   Location l
		INNER JOIN Address a ON l.addressId = a.id
		LEFT OUTER JOIN CmicCounty c ON c.id = a.countyId
		LEFT OUTER JOIN Address acresOff ON l.acresOffAddressId = acresOff.id		
		LEFT OUTER JOIN Insured i ON l.businessPursuitsInsuredId = i.id
WHERE  l.policyId IN
       (SELECT id
       FROM   Policy
       WHERE  batchId = @batchId AND isAmend = @isAmend
       )

SELECT s.*
FROM   Structure s
       INNER JOIN Location l
       ON     l.id = s.locationId
WHERE  l.policyId IN
       (SELECT id
       FROM   Policy
       WHERE  batchId = @batchId AND isAmend = @isAmend
       )

SELECT o.*
FROM   Outbuilding o
       INNER JOIN Location l
       ON     l.id = o.locationId
WHERE  l.policyId IN
       (SELECT id
       FROM   Policy
       WHERE  batchId = @batchId AND isAmend = @isAmend
       )

SELECT s.*
FROM   StorageUnit s
       INNER JOIN Location l
       ON     l.id = s.locationId
WHERE  l.policyId IN
       (SELECT id
       FROM   Policy
       WHERE  batchId = @batchId AND isAmend = @isAmend
		)

SELECT *
FROM   Snowmobile
WHERE  policyId IN
       (SELECT id
       FROM   Policy
       WHERE  batchId = @batchId AND isAmend = @isAmend
       )
SELECT *
FROM   Watercraft
WHERE  policyId IN
       (SELECT id
       FROM   Policy
       WHERE  batchId = @batchId AND isAmend = @isAmend
       )
SELECT m.*
FROM   Motor m
       INNER JOIN Watercraft w
       ON     w.id = m.watercraftId
WHERE  w.policyId IN
       (SELECT id
       FROM   Policy
       WHERE  batchId = @batchId AND isAmend = @isAmend
       )

SELECT a.line1, a.line2, a.city, a.stateCode, a.zip, a.zip4, m.*
FROM   Mortgagee m
		INNER JOIN Address a ON m.addressId = a.id
WHERE  m.policyId IN
       (SELECT id
       FROM   Policy
       WHERE  batchId = @batchId AND isAmend = @isAmend
       )

SELECT a.line1, a.line2, a.city, a.stateCode, a.zip, a.zip4, ml.* 
FROM   MortgageeLocation ml
       INNER JOIN Location l ON l.id = ml.locationid
		INNER JOIN Address a ON l.addressId = a.id
WHERE  l.policyId IN
       (SELECT id
       FROM   Policy
       WHERE  batchId = @batchId AND isAmend = @isAmend
       )
SELECT *
FROM   Underwriting
WHERE  policyId IN
       (SELECT id
       FROM   Policy
       WHERE  batchId = @batchId AND isAmend = @isAmend
       )
SELECT *
FROM   UploadInfo
WHERE  policyId IN
       (SELECT id
       FROM   Policy
       WHERE  batchId = @batchId AND isAmend = @isAmend
       )
SELECT *
FROM   Rate
WHERE  policyId IN
       (SELECT id
       FROM   Policy
       WHERE  batchId = @batchId AND isAmend = @isAmend
       )
SELECT ri.*
FROM   RateItem ri
       INNER JOIN Rate r
       ON     r.id = ri.rateId
WHERE  r.policyId IN
       (SELECT id
       FROM   Policy
       WHERE  batchId = @batchId AND isAmend = @isAmend
       )
END
GO
/****** Object:  StoredProcedure [dbo].[GetOfferedCompany]    Script Date: 10/10/2009 15:43:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetOfferedCompany]
	@coverageTypeCode char(2),
	@effDate datetime,
	@stateCode char(2)
AS
BEGIN
	SELECT 
		c.id,
		c.name
	FROM CmicCompany c
		INNER JOIN CmicOffer o ON o.companyId = c.id		
		INNER JOIN CmicCoverageType cv ON cv.programCode = o.programCode
	WHERE
		cv.code = @coverageTypeCode
		AND (o.effDate <= @effDate AND (o.expDate IS NULL OR o.expDate > @effDate))
		AND @stateCode IN (SELECT stateCode from CmicOfferState where offerId = o.id)
END
GO
/****** Object:  StoredProcedure [dbo].[GetOffers]    Script Date: 10/10/2009 15:43:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetOffers]
	@coverageTypeCode char(2) = NULL,
	@effDate datetime = NULL,
	@stateCode char(2) = NULL
AS
BEGIN
	SELECT distinct
		o.id,
		c.name as companyName,
		a.line1 as companyLine1,
		a.city as companyCity,
		a.stateCode as companyState,
		a.zip as companyZip,
		a.zip4 as companyZip4,
		p.description as programDescription,
		p.printDescription as programPrintDescription,
		o.symbol,
		s.code as systemCode
	FROM CmicOffer o		
		INNER JOIN CmicCompany c ON c.id = o.companyId
		INNER JOIN CmicAddress a ON a.id = c.addressId
		INNER JOIN CmicProgram p ON p.code = o.programCode
		INNER JOIN CmicCoverageType cv ON cv.programCode = o.programCode
		INNER JOIN CmicSystem s ON s.id = p.systemId		
	WHERE
		@coverageTypeCode IS NULL OR cv.code = @coverageTypeCode
		AND (@effDate IS NULL 
			OR (o.effDate <= @effDate 
				AND (o.expDate IS NULL OR o.expDate > @effDate)
			)
		)
		AND (@stateCode IS NULL
			OR @stateCode IN (
				SELECT stateCode 
				FROM CmicOfferState 
				WHERE offerId = o.id
			)
		)
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteUploadInfo]    Script Date: 10/10/2009 15:43:52 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Thursday, August 28, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[DeleteUploadInfo]
	@policyId int
AS

DELETE FROM [dbo].[UploadInfo]
WHERE
	policyId = @policyId
SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[AddUploadInfo]    Script Date: 10/10/2009 15:43:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Thursday, August 28, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[AddUploadInfo]
	@policyId int,
	@uploadedBy varchar(100),
	@paymentId int,	
	@policyPrefix varchar(4),
	@policyNumber varchar(10),
	@bound bit,
	@boundDate datetime,
	@producer int,
	@remittanceAmount money,
	@mortgageeBill bit,
	@paymentMethod char(3),
	@checkNumber varchar(10),
	@agencyMemo varchar(50),	
	@id int OUTPUT,
	@tStamp timestamp OUTPUT
	
AS

INSERT INTO [dbo].[UploadInfo] (
	[policyId],
	[uploadedBy],
	[paymentId],
	[policyPrefix],
	[policyNumber],
	[bound],
	[boundDate],
	[producer],
	[remittanceAmount],
	[mortgageeBill],
	[paymentMethod],
	[checkNumber],
	[agencyMemo]
) VALUES (
	@policyId,
	@uploadedBy,
	@paymentId,
	@policyPrefix,
	@policyNumber,
	@bound,
	@boundDate,
	@producer,
	@remittanceAmount,
	@mortgageeBill,
	@paymentMethod,
	@checkNumber,
	@agencyMemo
)
SET @id = @@IDENTITY
SELECT @tStamp = tStamp FROM [UploadInfo] WHERE id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[UpdateUploadInfo]    Script Date: 10/10/2009 15:44:18 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Thursday, August 28, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[UpdateUploadInfo]
	@id int, 
	@policyId int, 
	@uploadedBy varchar(100), 
	@paymentId int,	
	@policyPrefix varchar(4),
	@policyNumber varchar(10), 
	@bound bit, 
	@boundDate datetime, 
	@producer int, 
	@remittanceAmount money, 
	@mortgageeBill bit, 
	@paymentMethod char(3), 
	@checkNumber varchar(10), 
	@agencyMemo varchar(50), 	
	@tStamp timestamp 
	,@tStampOut TIMESTAMP OUTPUT
AS

UPDATE [dbo].[UploadInfo] SET
	[policyId] = @policyId,
	[uploadedBy] = @uploadedBy,
	[paymentId] = @paymentId,	
	[policyPrefix] = @policyPrefix,
	[policyNumber] = @policyNumber,
	[bound] = @bound,
	[boundDate] = @boundDate,
	[producer] = @producer,
	[remittanceAmount] = @remittanceAmount,
	[mortgageeBill] = @mortgageeBill,
	[paymentMethod] = @paymentMethod,
	[checkNumber] = @checkNumber,
	[agencyMemo] = @agencyMemo
WHERE
	[id] = @id	
	AND [tStamp] = @tStamp
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT

-- get the new timestamp
SET @tStampOut = (SELECT tStamp FROM [dbo].[UploadInfo] WHERE [id] = @id)

SELECT  @rowCountOut
GO
/****** Object:  StoredProcedure [dbo].[GetQuoteInfoList]    Script Date: 10/10/2009 15:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetQuoteInfoList]
(	
	@firstName varchar(30),
	@lastName varchar(30),
	@city varchar(20),
	@state varchar(2),
	@zip varchar(5),
	@polNumber varchar(20),
	@agencyId int,
	@agentId int,
	@policyId int,
	@reqStatus char(1),
	@bound bit,
	@isAmend bit,
	@sortBy varchar(50),
	@sortOrder varchar(4)
)
AS
IF @sortBy IS NULL BEGIN
	SET @sortBy = 'lastDateUpd'
END
IF @sortOrder IS NULL BEGIN
	SET @sortOrder = 'DESC'
END

SELECT TOP 100
	p.id,
	p.batchId,
	b.extractDate,
	p.effDate,	
	(i.firstname + ' ' + ISNULL(i.midName,'') + ' ' + i.lastName) as name,
	a.line1 as address,
	a.city,
	u.policyPrefix + ' ' + REPLICATE('0', 10 - LEN(u.policyNumber)) + u.policyNumber AS policyNumber,	
	a.stateCode as state,
	a.zip,
	p.agencyId,
	p.agentId,
	i.phoneNumber as applicantPhoneNumber
FROM Policy p 
	LEFT OUTER JOIN Insured i ON i.policyId = p.id AND i.insuredTypeId = 1
	LEFT OUTER JOIN Address a ON a.id = i.addressId	
	LEFT OUTER JOIN UploadInfo u ON u.policyId = p.id
	LEFT OUTER JOIN Rate r ON r.policyId = p.id
	LEFT OUTER JOIN Batch b ON b.id = p.batchId
WHERE
	(firstName like @firstName + '%' OR @firstName is NULL)
	AND (lastName like @lastName + '%' OR @lastName is NULL)
	AND (city like @city + '%' OR @city is NULL)
	AND (stateCode = @state OR @state is NULL)
	AND (zip = @zip OR @zip is NULL)
	AND (policyNumber like @polNumber OR @polNumber IS NULL)
	AND (agencyId = @agencyId OR @agencyId = 0 OR @agencyId IS NULL)
	AND (agentId = @agentId OR @agentId = 0 OR @agentId IS NULL)
	AND (p.id = @policyId OR @policyId IS NULL)
	AND (reqStatus = @reqStatus OR @reqStatus IS NULL)
	AND (bound = @bound OR @bound IS NULL)
	AND (isAmend = @isAmend OR @isAmend IS NULL)
ORDER BY
	CASE 
		WHEN @sortBy = 'batchId'  AND @sortOrder = 'ASC' THEN batchId
	END ASC,
	CASE 
		WHEN @sortBy = 'batchId'  AND @sortOrder = 'DESC' THEN batchId
	END DESC,
	CASE 
		--WHEN @sortBy = 'batchId'  AND @sortOrder = 'ASC' THEN cast(batchId as varchar(10))
		WHEN @sortBy = 'firstName'  AND @sortOrder = 'ASC' THEN firstName
		WHEN @sortBy = 'lastName'  AND @sortOrder = 'ASC' THEN lastName
		WHEN @sortBy = 'lastDateUpd' AND @sortOrder = 'ASC' THEN convert(char(19), lastDateUpd, 20) 
		WHEN @sortBy = 'zip' AND @sortOrder = 'ASC' THEN zip
		WHEN @sortBy = 'city' AND @sortOrder = 'ASC' THEN city
		WHEN @sortBy = 'state' AND @sortOrder = 'ASC' THEN stateCode
	END ASC,
	CASE 
		--WHEN @sortBy = 'batchId'  AND @sortOrder = 'DESC' THEN cast(batchId as varchar(10))
		WHEN @sortBy = 'firstName'  AND @sortOrder = 'DESC' THEN firstName
		WHEN @sortBy = 'lastName'  AND @sortOrder = 'DESC' THEN lastName
		WHEN @sortBy = 'lastDateUpd' AND @sortOrder = 'DESC' THEN convert(char(19), lastDateUpd, 20) 
		WHEN @sortBy = 'zip' AND @sortOrder = 'DESC' THEN zip
		WHEN @sortBy = 'city' AND @sortOrder = 'DESC' THEN city
		WHEN @sortBy = 'state' AND @sortOrder = 'DESC' THEN stateCode
	END DESC
GO
/****** Object:  StoredProcedure [dbo].[UpdateWatercraft]    Script Date: 10/10/2009 15:44:19 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[UpdateWatercraft]
	@id int, 
	@policyId int,
	@isLogicallyDeleted bit, 
	@watercraftTypeCode char(1), 
	@year int, 
	@make varchar(20), 
	@model varchar(12), 
	@length int, 
	@serialNumber varchar(20), 
	@tStamp timestamp 
	,@tStampOut TIMESTAMP OUTPUT
AS

UPDATE [dbo].[Watercraft] SET
	[policyId] = @policyId,
	[isLogicallyDeleted] = @isLogicallyDeleted,
	[watercraftTypeCode] = @watercraftTypeCode,
	[year] = @year,
	[make] = @make,
	[model] = @model,
	[length] = @length,
	[serialNumber] = @serialNumber
WHERE
	[id] = @id	
	AND [tStamp] = @tStamp
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT

-- get the new timestamp
SET @tStampOut = (SELECT tStamp FROM [dbo].[Watercraft] WHERE [id] = @id)

SELECT  @rowCountOut

RETURN 0

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[AddWatercraft]    Script Date: 10/10/2009 15:43:48 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[AddWatercraft]
	@policyId int,
	@isLogicallyDeleted bit,
	@watercraftTypeCode char(1),
	@year int,
	@make varchar(20),
	@model varchar(12),
	@length int,
	@serialNumber varchar(20),
	@id int OUTPUT,
	@tStamp timestamp OUTPUT
	
AS

INSERT INTO [dbo].[Watercraft] (
	[policyId],
	[isLogicallyDeleted],
	[watercraftTypeCode],
	[year],
	[make],
	[model],
	[length],
	[serialNumber]
) VALUES (
	@policyId,
	@isLogicallyDeleted,
	@watercraftTypeCode,
	@year,
	@make,
	@model,
	@length,
	@serialNumber
)
SET @id = @@IDENTITY
SELECT @tStamp = tStamp FROM [Watercraft] WHERE id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[DeleteWatercraft]    Script Date: 10/10/2009 15:43:53 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[DeleteWatercraft]
	@id int
AS

DELETE FROM [dbo].[Watercraft]
WHERE
	[id] = @id
SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[GetQuoteForRating]    Script Date: 10/10/2009 15:43:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetQuoteForRating]
	@policyId int
AS
BEGIN
	-- Policy
	SELECT
		id,
		effDate,
		coverageTypeCode,
		formCode,
		deductibleAmount,
		coverageLAmount,
		coverageMAmount,
		personalInjury,
		(
			select count(*) from Snowmobile 
			where policyId = @policyId 
				AND isLogicallyDeleted = 0	
		) AS snowmobileCount
	FROM Policy
	WHERE id = @policyId

	-- Location
	SELECT
		l.id,
		l.policyId,
		a.stateCode,
		l.liabilityOnly,		
		l.usageCode,
		l.numberOfFamilies,
		l.occupancyCode,
		l.numberOfEmployees,
		l.numberOfAcres,
		l.numberOfAcresOff,
		l.lossAssessmentPropertyLimit,
		l.lossAssessmentLiabilityLimit,		
		l.underConstruction,
		l.buildersRiskLimit,
		l.businessOnPremises,
		l.incidentalOccupancyTypeId,
		l.incidentalOccupancyLiability,
		l.incidentalContentsLimit,
		l.incidentalStorageLimit,
		l.businessPursuitsTypeId,
		l.corporalPunishment,

		-- structure fields
		s.protectionClassCode,
		s.constructionTypeCode,
		s.yearBuilt,
		s.structureTypeCode,
		s.burglarAlarmCode,
		s.fireAlarmCode,
		s.heatTypeCode,
		s.woodStove,
		s.coverageA,
		(select sum(limit) from Outbuilding where locationId = s.locationId) as coverageB,
		s.coverageC,
		s.coverageD,
		s.coverageE,
		s.extended,
		s.vandalism,
		s.lossSettlementCode,
		s.replacementCost,
		s.acvLossSettlementRoof,
		s.theftTypeCode,
		s.theftOnLimit,
		s.theftOffLimit,
		s.outdoorEquipmentLimit,
		s.improvementsLimit,
		s.unitOwnersLimit,
		s.specialCoverage,		
		s.waterBackup,
		s.permissionToMove,
		s.lienholderSingleInterest
	FROM 
		Policy p
		LEFT OUTER JOIN Location l ON l.policyId = p.id	
		LEFT OUTER JOIN [Address] a ON a.id = l.addressId			
		LEFT OUTER JOIN Structure s ON s.locationId = l.id 
			AND s.isLogicallyDeleted = 0			
	WHERE
		l.storage = 0
		AND p.id = @policyId

	-- Storage Locations
	SELECT
		l.id,
		l.policyId,
		a.stateCode,
		s.protectionClassCode,
		s.constructionTypeCode,
		s.coverageC,		
		s.extended,		
		s.theftLimit		
	FROM 
		Policy p
		LEFT OUTER JOIN Location l ON l.policyId = p.id	
		LEFT OUTER JOIN [Address] a ON a.id = l.addressId			
		LEFT OUTER JOIN StorageUnit s ON s.locationId = l.id 			
	WHERE
		p.id = @policyId
		AND l.storage = 1

	-- Outbuildings
	SELECT
		o.id,
		o.locationId,
		o.limit,
		o.constructionTypeCode,
		o.outbuildingTypeCode,
		o.underConstruction
	FROM
		Policy p
		LEFT OUTER JOIN Location l ON l.policyId = p.id
		LEFT OUTER JOIN Outbuilding o ON o.locationId = l.id
	WHERE
		p.id = @policyId
		AND o.isLogicallyDeleted = 0
		
	-- Watercraft
	SELECT
		id,
		policyId,
		watercraftTypeCode,		
		length		
	FROM Watercraft w		
	WHERE policyId = @policyId AND isLogicallyDeleted = 0		

	-- Motor
	SELECT
		m.id,
		m.watercraftId,
		m.horsepower
	FROM Watercraft w
		LEFT OUTER JOIN Motor m ON m.watercraftId = w.id
	WHERE w.policyId = @policyId AND w.isLogicallyDeleted = 0	
END
GO
/****** Object:  StoredProcedure [dbo].[GetCmicCountyListByZipCode]    Script Date: 10/10/2009 15:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetCmicCountyListByZipCode] 
	@zipCode char(5)
AS
BEGIN
	SELECT
		c.id,
		c.stateCode,
		c.code,
		c.name
	FROM CmicCounty c
		INNER JOIN CmicCountyZipCode cz ON c.id = cz.countyId
	WHERE
		cz.zipCode = @zipCode
END
GO
/****** Object:  StoredProcedure [dbo].[GetCoverageTypeList]    Script Date: 10/10/2009 15:43:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetCoverageTypeList]
	@systemCode char(3)
AS
BEGIN
	SELECT DISTINCT c.* FROM CmicCoverageType c
		INNER JOIN CmicProgram p ON p.code = c.programCode
		INNER JOIN CmicSystem s ON s.id = p.systemId	
	WHERE s.code = @systemCode
END
GO
/****** Object:  StoredProcedure [dbo].[GetOfferedStates]    Script Date: 10/10/2009 15:43:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetOfferedStates]
	@coverageTypeCode char(2),
	@effDate datetime
AS
BEGIN
	SELECT DISTINCT
		s.code, 
		s.name
	FROM CmicState s
		INNER JOIN CmicOfferState os ON os.stateCode = s.code
		INNER JOIN CmicOffer o ON o.id = os.offerId
		INNER JOIN CmicCoverageType c ON c.programCode = o.programCode
	WHERE
		c.code = @coverageTypeCode
		AND (o.effDate <= @effDate AND (o.expDate IS NULL OR o.expDate > @effDate))
END
GO
/****** Object:  StoredProcedure [dbo].[GetCmicStateList]    Script Date: 10/10/2009 15:43:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCmicStateList] 	
AS
BEGIN
	-- get the list of states ordered by name
	-- with states offered by cmic listed before
	-- other states that start with the same letter
	select
		code,
		name,
		case
			when (	select count(*) from CmicOfferState 
					where stateCode = s.code
				  ) > 0 then 1
			else 0
		end as isOffered
	from cmicstate s 
	order by SUBSTRING(name,1,1), isOffered desc, name 
	
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteAdditionalInsured]    Script Date: 10/10/2009 15:43:48 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteAdditionalInsured]
	@id int
AS

BEGIN TRANSACTION

-- delete insured locations before deleting the insured to prevent foreign key conflict
DELETE FROM AdditionalInsuredLocation WHERE additionalInsuredId = @id
IF @@ERROR <> 0 GOTO PROBLEM

DELETE FROM [dbo].[AdditionalInsured]
WHERE
	[id] = @id
	
	
COMMIT TRANSACTION
SELECT @@ROWCOUNT
RETURN 0

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[AddAdditionalInsured]    Script Date: 10/10/2009 15:43:23 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddAdditionalInsured]
	@policyId int,
	@name1 varchar(30),
	@name2 varchar(30),
	@addressId int,
	@id int OUTPUT,
	@tStamp timestamp OUTPUT
	
AS

INSERT INTO [dbo].[AdditionalInsured] (
	[policyId],
	[name1],
	[name2],
	[addressId]
) VALUES (
	@policyId,
	@name1,
	@name2,
	@addressId
)
SET @id = @@IDENTITY
SELECT @tStamp = tStamp FROM [AdditionalInsured] WHERE id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[UpdateAdditionalInsured]    Script Date: 10/10/2009 15:43:57 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateAdditionalInsured]
	@id int, 
	@policyId int, 
	@name1 varchar(30), 
	@name2 varchar(30), 
	@addressId int, 
	@tStamp timestamp 
	,@tStampOut TIMESTAMP OUTPUT
AS

BEGIN TRANSACTION

UPDATE [dbo].[AdditionalInsured] SET
	[policyId] = @policyId,
	[name1] = @name1,
	[name2] = @name2,
	[addressId] = @addressId
WHERE
	[id] = @id	
	AND [tStamp] = @tStamp
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT

-- get the new timestamp
SET @tStampOut = (SELECT tStamp FROM [dbo].[AdditionalInsured] WHERE [id] = @id)

IF @rowCountOut > 0 BEGIN
	-- delete associated insured locations
	DELETE FROM AdditionalInsuredLocation WHERE additionalInsuredId = @id	
END

SELECT  @rowCountOut

COMMIT TRANSACTION
RETURN 0

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[AddAdditionalInsuredLocation]    Script Date: 10/10/2009 15:43:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddAdditionalInsuredLocation]
	@additionalInsuredId int,
	@locationId int
AS
BEGIN
	INSERT INTO AdditionalInsuredLocation (
		additionalInsuredId,
		locationId
	) VALUES (
		@additionalInsuredId,
		@locationId
	)
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteAddress]    Script Date: 10/10/2009 15:43:48 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[DeleteAddress]
	@id int
AS

DECLARE @addressTypeCode CHAR(1)
SET @addressTypeCode = (SELECT addressTypeCode FROM Address WHERE id = @id)

IF @addressTypeCode = 'O' BEGIN
	-- if this is an off premises address we need to set the acresOffAddressId 
	-- = NULL in the Location table before we delete to prevent FK conflict	
	UPDATE Location SET acresOffAddressId = NULL WHERE acresOffAddressId = @id
END

DELETE FROM [dbo].[Address]
WHERE
	[id] = @id
SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[AddAddress]    Script Date: 10/10/2009 15:43:25 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[AddAddress]
	@policyId int,
	@addressTypeCode char(1),
	@line1 varchar(30),
	@line2 varchar(30),
	@city varchar(30),
	@stateCode char(2),
	@zip char(5),
	@zip4 char(4),
	@isScrubbed bit,
	@scrubOverride bit,
	@scrubReturnCode varchar(3),
	@countyId int,
	@type char(1),
	@primaryNumber varchar(10),
	@preDirectional varchar(2),
	@postDirectional varchar(2),
	@street varchar(30),
	@suffix varchar(4),
	@unitDesignator varchar(4),
	@unitNumber varchar(10),
	@id int OUTPUT
	
AS

INSERT INTO [dbo].[Address] (
	[policyId],
	[addressTypeCode],
	[line1],
	[line2],
	[city],
	[stateCode],
	[zip],
	[zip4],
	[isScrubbed],
	[scrubOverride],
	[scrubReturnCode],
	[countyId],
	[type],
	[primaryNumber],
	[preDirectional],
	[postDirectional],
	[street],
	[suffix],
	[unitDesignator],
	[unitNumber]
) VALUES (
	@policyId,
	@addressTypeCode,
	@line1,
	@line2,
	@city,
	@stateCode,
	@zip,
	@zip4,
	@isScrubbed,
	@scrubOverride,
	@scrubReturnCode,
	@countyId,
	@type,
	@primaryNumber,
	@preDirectional,
	@postDirectional,
	@street,
	@suffix,
	@unitDesignator,
	@unitNumber
)
SET @id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[UpdateAddress]    Script Date: 10/10/2009 15:43:59 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[UpdateAddress]
	@id int, 
	@policyId int, 
	@addressTypeCode char(1), 
	@line1 varchar(30), 
	@line2 varchar(30), 
	@city varchar(30), 
	@stateCode char(2), 
	@zip char(5), 
	@zip4 char(4), 
	@isScrubbed bit, 
	@scrubOverride bit, 
	@scrubReturnCode varchar(3),
	@countyId int,
	@type char(1), 
	@primaryNumber varchar(10), 
	@preDirectional varchar(2), 
	@postDirectional varchar(2), 
	@street varchar(30), 
	@suffix varchar(4), 
	@unitDesignator varchar(4), 
	@unitNumber varchar(10) 
AS

UPDATE [dbo].[Address] SET
	[policyId] = @policyId,
	[addressTypeCode] = @addressTypeCode,
	[line1] = @line1,
	[line2] = @line2,
	[city] = @city,
	[stateCode] = @stateCode,
	[zip] = @zip,
	[zip4] = @zip4,
	[isScrubbed] = @isScrubbed,
	[scrubOverride] = @scrubOverride,
	[scrubReturnCode] = @scrubReturnCode,
	[countyId] = @countyId,
	[type] = @type,
	[primaryNumber] = @primaryNumber,
	[preDirectional] = @preDirectional,
	[postDirectional] = @postDirectional,
	[street] = @street,
	[suffix] = @suffix,
	[unitDesignator] = @unitDesignator,
	[unitNumber] = @unitNumber
WHERE
	[id] = @id	
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT


SELECT  @rowCountOut
GO
/****** Object:  StoredProcedure [dbo].[GetBatch]    Script Date: 10/10/2009 15:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetBatch]
	@id int
AS
BEGIN
	SELECT * FROM Batch WHERE id = @id
	SELECT id FROM Policy WHERE batchId = @id
END
GO
/****** Object:  StoredProcedure [dbo].[AddBatch]    Script Date: 10/10/2009 15:43:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddBatch]	
	@id int OUTPUT
AS
BEGIN
	INSERT INTO Batch (extractDate) VALUES (GETDATE())
	
	SET @id = @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[AddCLUE]    Script Date: 10/10/2009 15:43:27 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Friday, October 03, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[AddCLUE]
	@locationId int,
	@orderDate datetime,
	@statusCode char(1),	
	@report text,
	@id int OUTPUT
	
AS

INSERT INTO [dbo].[CLUE] (
	[locationId],
	[orderDate],
	[statusCode],	
	[report]
) VALUES (
	@locationId,
	@orderDate,
	@statusCode,	
	@report
)
SET @id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[DeleteCLUE]    Script Date: 10/10/2009 15:43:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Friday, October 03, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[DeleteCLUE]
	@id int
AS

DELETE FROM [dbo].[CLUE]
WHERE
	[id] = @id
SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[UpdateCLUE]    Script Date: 10/10/2009 15:44:00 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Friday, October 03, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[UpdateCLUE]
	@id int, 
	@locationId int, 
	@orderDate datetime, 
	@statusCode char(1), 	
	@report text 
AS

UPDATE [dbo].[CLUE] SET
	[locationId] = @locationId,
	[orderDate] = @orderDate,
	[statusCode] = @statusCode,	
	[report] = @report
WHERE
	[id] = @id	
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT


SELECT  @rowCountOut
GO
/****** Object:  StoredProcedure [dbo].[UpdateInsured]    Script Date: 10/10/2009 15:44:01 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[UpdateInsured]
	@id int, 
	@policyId int, 
	@isLogicallyDeleted bit,
	@addressId int = NULL, 
	@rapidRating bit,
	@insuredTypeId tinyint, 
	@firstName varchar(20), 
	@midName varchar(10), 
	@lastName varchar(20), 
	@nameSuffix varchar(5), 
	@businessName varchar(30), 
	@phoneNumber char(10), 
	@ssn char(9), 
	@dob datetime, 
	@occupation varchar(30), 
	@isDriver bit, 
	@gender char(1), 
	@relationTypeCode char(1), 
	@licenseNumber varchar(23), 
	@licenseStateCode char(2),
	@tStamp timestamp 
	,@tStampOut TIMESTAMP OUTPUT
AS

UPDATE [dbo].[Insured] SET
	[policyId] = @policyId,
	[isLogicallyDeleted] = @isLogicallyDeleted,
	[addressId] = @addressId,
	[rapidRating] = @rapidRating,
	[insuredTypeId] = @insuredTypeId,
	[firstName] = @firstName,
	[midName] = @midName,
	[lastName] = @lastName,
	[nameSuffix] = @nameSuffix,
	[businessName] = @businessName,
	[phoneNumber] = @phoneNumber,
	[ssn] = @ssn,
	[dob] = @dob,
	[occupation] = @occupation,
	[isDriver] = @isDriver,
	[gender] = @gender,
	[relationTypeCode] = @relationTypeCode,
	[licenseNumber] = @licenseNumber,
	[licenseStateCode] = @licenseStateCode	
WHERE
	[id] = @id	
	AND [tStamp] = @tStamp
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT

-- get the new timestamp
SET @tStampOut = (SELECT tStamp FROM [dbo].[Insured] WHERE [id] = @id)

SELECT  @rowCountOut
GO
/****** Object:  StoredProcedure [dbo].[DeleteInsured]    Script Date: 10/10/2009 15:43:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[DeleteInsured]
	@id int
AS

BEGIN TRANSACTION

-- update Location businessPursuitsInsuredId before deleting the insured to
-- prevent foreign key conflict
UPDATE Location 
SET businessPursuitsInsuredId = NULL
WHERE businessPursuitsInsuredId = @id

DELETE FROM [dbo].[Insured] WHERE [id] = @id
IF @@ERROR <> 0 GOTO PROBLEM

COMMIT TRANSACTION
SELECT @@ROWCOUNT
RETURN 0

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[AddInsured]    Script Date: 10/10/2009 15:43:28 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[AddInsured]
	@policyId int,
	@isLogicallyDeleted bit,
	@rapidRating bit,
	@addressId int = NULL,
	@insuredTypeId tinyint,
	@firstName varchar(20),
	@midName varchar(10),
	@lastName varchar(20),
	@nameSuffix varchar(5),
	@businessName varchar(30),
	@phoneNumber char(10),
	@ssn char(9),
	@dob datetime,
	@occupation varchar(30),
	@isDriver bit,
	@gender char(1),
	@relationTypeCode char(1),
	@licenseNumber varchar(23),
	@licenseStateCode char(2),	
	@id int OUTPUT,
	@tStamp timestamp OUTPUT
	
AS

INSERT INTO [dbo].[Insured] (
	[policyId],
	[isLogicallyDeleted],
	[rapidRating],
	[addressId],
	[insuredTypeId],
	[firstName],
	[midName],
	[lastName],
	[nameSuffix],
	[businessName],
	[phoneNumber],
	[ssn],
	[dob],
	[occupation],
	[isDriver],
	[gender],
	[relationTypeCode],
	[licenseNumber],
	[licenseStateCode]	
) VALUES (
	@policyId,
	@isLogicallyDeleted,
	@rapidRating,
	@addressId,
	@insuredTypeId,
	@firstName,
	@midName,
	@lastName,
	@nameSuffix,
	@businessName,
	@phoneNumber,
	@ssn,
	@dob,
	@occupation,
	@isDriver,
	@gender,
	@relationTypeCode,
	@licenseNumber,
	@licenseStateCode
)
SET @id = @@IDENTITY
SELECT @tStamp = tStamp FROM [Insured] WHERE id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[AddLocation]    Script Date: 10/10/2009 15:43:31 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[AddLocation]
	@policyId int,
	@addressId int,
	@rapidRating bit,
	@storage bit,
	@liabilityOnly bit,
	@usageCode char(2),
	@numberOfFamilies int,
	@occupancyCode char(1),
	@numberOfEmployees int,
	@numberOfAcres int,
	@numberOfAcresOff int,
	@acresOffDescription varchar(50),
	@acresOffAddressId int = NULL,
	@lossAssessmentPropertyLimit int,
	@lossAssessmentLiabilityLimit int,	
	@underConstruction bit,
	@buildersRiskLimit int,
	@businessOnPremises bit,
	@businessDescription varchar(50),
	@incidentalOccupancyTypeId tinyint,
	@incidentalOccupancyLiability bit,
	@incidentalContentsLimit int,
	@incidentalStorageLimit int,
	@businessPursuitsTypeId tinyint,
	@businessPursuitsInsuredId int = NULL,
	@corporalPunishment bit,
	@farming bit,
	@pets bit,
	@petBreed varchar(20),
	@trampoline bit,
	@trampolineNet bit,
	@pool bit,
	@poolAboveGround bit,
	@poolDivingBoard bit,
	@poolSlide bit,
	@poolFenceHeight int,
	@comment varchar(128),
	@snapshotLocId tinyint,	
	@id int OUTPUT,
	@tStamp timestamp OUTPUT
	
AS

INSERT INTO [dbo].[Location] (
	[policyId],
	[addressId],
	[rapidRating],
	[storage],
	[liabilityOnly],
	[usageCode],
	[numberOfFamilies],
	[occupancyCode],
	[numberOfEmployees],
	[numberOfAcres],
	[numberOfAcresOff],
	[acresOffDescription],
	[acresOffAddressId],
	[lossAssessmentPropertyLimit],
	[lossAssessmentLiabilityLimit],	
	[underConstruction],
	[buildersRiskLimit],
	[businessOnPremises],
	[businessDescription],
	[incidentalOccupancyTypeId],
	[incidentalOccupancyLiability],
	[incidentalContentsLimit],
	[incidentalStorageLimit],
	[businessPursuitsTypeId],
	[businessPursuitsInsuredId],
	[corporalPunishment],
	[farming],
	[pets],
	[petBreed],
	[trampoline],
	[trampolineNet],
	[pool],
	[poolAboveGround],
	[poolDivingBoard],
	[poolSlide],
	[poolFenceHeight],
	[comment],
	[snapshotLocId]	
) VALUES (
	@policyId,
	@addressId,
	@rapidRating,
	@storage,
	@liabilityOnly,
	@usageCode,
	@numberOfFamilies,
	@occupancyCode,
	@numberOfEmployees,
	@numberOfAcres,
	@numberOfAcresOff,
	@acresOffDescription,
	@acresOffAddressId,
	@lossAssessmentPropertyLimit,
	@lossAssessmentLiabilityLimit,	
	@underConstruction,
	@buildersRiskLimit,
	@businessOnPremises,
	@businessDescription,
	@incidentalOccupancyTypeId,
	@incidentalOccupancyLiability,
	@incidentalContentsLimit,
	@incidentalStorageLimit,
	@businessPursuitsTypeId,
	@businessPursuitsInsuredId,
	@corporalPunishment,
	@farming,
	@pets,
	@petBreed,
	@trampoline,
	@trampolineNet,
	@pool,
	@poolAboveGround,
	@poolDivingBoard,
	@poolSlide,
	@poolFenceHeight,
	@comment,
	@snapshotLocId	
)
SET @id = @@IDENTITY
SELECT @tStamp = tStamp FROM [Location] WHERE id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[DeleteLocation]    Script Date: 10/10/2009 15:43:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[DeleteLocation]
	@id int
AS

BEGIN TRANSACTION

-- delete Rates first to prevent foreign key conflict
DELETE FROM Rate WHERE policyId = (SELECT policyId FROM Location WHERE id = @id)

DELETE FROM [dbo].[Location]
WHERE
	[id] = @id
DECLARE @rowCount int
SET @rowCount = @@ROWCOUNT

COMMIT TRANSACTION
SELECT @rowCount
RETURN 0

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[UpdateLocation]    Script Date: 10/10/2009 15:44:04 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[UpdateLocation]
	@id int, 
	@policyId int, 
	@addressId int, 
	@rapidRating bit,
	@storage bit,
	@liabilityOnly bit,
	@usageCode char(2), 
	@numberOfFamilies int, 
	@occupancyCode char(1), 
	@numberOfEmployees int, 
	@numberOfAcres int, 
	@numberOfAcresOff int, 
	@acresOffDescription varchar(50), 
	@acresOffAddressId int = NULL, 
	@lossAssessmentPropertyLimit int, 
	@lossAssessmentLiabilityLimit int, 	
	@underConstruction bit, 
	@buildersRiskLimit int, 
	@businessOnPremises bit, 
	@businessDescription varchar(50), 
	@incidentalOccupancyTypeId tinyint, 
	@incidentalOccupancyLiability bit,
	@incidentalContentsLimit int, 
	@incidentalStorageLimit int, 
	@businessPursuitsTypeId tinyint, 
	@businessPursuitsInsuredId int = NULL,
	@corporalPunishment bit, 
	@farming bit, 
	@pets bit, 
	@petBreed varchar(20), 
	@trampoline bit, 
	@trampolineNet bit, 
	@pool bit, 
	@poolAboveGround bit, 
	@poolDivingBoard bit, 
	@poolSlide bit, 
	@poolFenceHeight int, 
	@comment varchar(128), 
	@snapshotLocId tinyint,	
	@tStamp timestamp 
	,@tStampOut TIMESTAMP OUTPUT
AS

UPDATE [dbo].[Location] SET
	[policyId] = @policyId,
	[addressId] = @addressId,
	[rapidRating] = @rapidRating,
	[storage] = @storage,
	[liabilityOnly] = @liabilityOnly,
	[usageCode] = @usageCode,
	[numberOfFamilies] = @numberOfFamilies,
	[occupancyCode] = @occupancyCode,
	[numberOfEmployees] = @numberOfEmployees,
	[numberOfAcres] = @numberOfAcres,
	[numberOfAcresOff] = @numberOfAcresOff,
	[acresOffDescription] = @acresOffDescription,
	[acresOffAddressId] = @acresOffAddressId,
	[lossAssessmentPropertyLimit] = @lossAssessmentPropertyLimit,
	[lossAssessmentLiabilityLimit] = @lossAssessmentLiabilityLimit,	
	[underConstruction] = @underConstruction,
	[buildersRiskLimit] = @buildersRiskLimit,
	[businessOnPremises] = @businessOnPremises,
	[businessDescription] = @businessDescription,
	[incidentalOccupancyTypeId] = @incidentalOccupancyTypeId,
	[incidentalOccupancyLiability] = @incidentalOccupancyLiability,
	[incidentalContentsLimit] = @incidentalContentsLimit,
	[incidentalStorageLimit] = @incidentalStorageLimit,
	[businessPursuitsTypeId] = @businessPursuitsTypeId,
	[businessPursuitsInsuredId] = @businessPursuitsInsuredId,
	[corporalPunishment] = @corporalPunishment,
	[farming] = @farming,
	[pets] = @pets,
	[petBreed] = @petBreed,
	[trampoline] = @trampoline,
	[trampolineNet] = @trampolineNet,
	[pool] = @pool,
	[poolAboveGround] = @poolAboveGround,
	[poolDivingBoard] = @poolDivingBoard,
	[poolSlide] = @poolSlide,
	[poolFenceHeight] = @poolFenceHeight,
	[comment] = @comment,
	[snapshotLocId] = @snapshotLocId	
WHERE
	[id] = @id	
	AND [tStamp] = @tStamp
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT

-- get the new timestamp
SET @tStampOut = (SELECT tStamp FROM [dbo].[Location] WHERE [id] = @id)

SELECT  @rowCountOut
GO
/****** Object:  StoredProcedure [dbo].[UpdateMessage]    Script Date: 10/10/2009 15:44:05 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Monday, September 29, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[UpdateMessage]
	@id int, 
	@policyId int, 
	@agencyMessage varchar(512), 
	@agentMessage varchar(512), 
	@tStamp timestamp 
	,@tStampOut TIMESTAMP OUTPUT
AS

UPDATE [dbo].[Message] SET
	[policyId] = @policyId,
	[agencyMessage] = @agencyMessage,
	[agentMessage] = @agentMessage
WHERE
	[id] = @id	
	AND [tStamp] = @tStamp
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT

-- get the new timestamp
SET @tStampOut = (SELECT tStamp FROM [dbo].[Message] WHERE [id] = @id)

SELECT  @rowCountOut
GO
/****** Object:  StoredProcedure [dbo].[DeleteMessage]    Script Date: 10/10/2009 15:43:50 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Monday, September 29, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[DeleteMessage]
	@id int
AS

DELETE FROM [dbo].[Message]
WHERE
	[id] = @id
SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[AddMessage]    Script Date: 10/10/2009 15:43:31 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Monday, September 29, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[AddMessage]
	@policyId int,
	@agencyMessage varchar(512),
	@agentMessage varchar(512),
	@id int OUTPUT,
	@tStamp timestamp OUTPUT
	
AS

INSERT INTO [dbo].[Message] (
	[policyId],
	[agencyMessage],
	[agentMessage]
) VALUES (
	@policyId,
	@agencyMessage,
	@agentMessage
)
SET @id = @@IDENTITY
SELECT @tStamp = tStamp FROM [Message] WHERE id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[AddMortgagee]    Script Date: 10/10/2009 15:43:32 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[AddMortgagee]
	@policyId int,
	@sendBill bit,
	@name1 varchar(30),
	@name2 varchar(30),
	@addressId int,
	@interestTypeCode char(1),	
	@isLogicallyDeleted bit,
	@amendId int,
	@id int OUTPUT,
	@tStamp timestamp OUTPUT
	
AS

INSERT INTO [dbo].[Mortgagee] (
	[policyId],
	[sendBill],
	[name1],
	[name2],
	[addressId],
	[interestTypeCode],	
	[isLogicallyDeleted],
	[amendId]
) VALUES (
	@policyId,
	@sendBill,
	@name1,
	@name2,
	@addressId,
	@interestTypeCode,	
	@isLogicallyDeleted,
	@amendId
)
SET @id = @@IDENTITY
SELECT @tStamp = tStamp FROM [Mortgagee] WHERE id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[DeleteMortgagee]    Script Date: 10/10/2009 15:43:50 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[DeleteMortgagee]
	@id int
AS

BEGIN TRANSACTION

-- delete mortgagee locations before deleting the mortgagee to prevent foreign key conflict
DELETE FROM MortgageeLocation WHERE mortgageeId = @id
IF @@ERROR <> 0 GOTO PROBLEM

DELETE FROM [dbo].[Mortgagee] WHERE	[id] = @id
IF @@ERROR <> 0 GOTO PROBLEM

COMMIT TRANSACTION
SELECT @@ROWCOUNT
RETURN 0

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[UpdateMortgagee]    Script Date: 10/10/2009 15:44:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[UpdateMortgagee]
	@id int, 
	@policyId int, 
	@sendBill bit, 
	@name1 varchar(30), 
	@name2 varchar(30), 
	@addressId int, 
	@interestTypeCode char(1), 	
	@isLogicallyDeleted bit,
	@amendId int,
	@tStamp timestamp 
	,@tStampOut TIMESTAMP OUTPUT
AS

BEGIN TRANSACTION

UPDATE [dbo].[Mortgagee] SET
	[policyId] = @policyId,
	[sendBill] = @sendBill,
	[name1] = @name1,
	[name2] = @name2,
	[addressId] = @addressId,
	[interestTypeCode] = @interestTypeCode,	
	[isLogicallyDeleted] = @isLogicallyDeleted,
	[amendId] = @amendId	
WHERE
	[id] = @id	
	AND [tStamp] = @tStamp
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT

-- get the new timestamp
SET @tStampOut = (SELECT tStamp FROM [dbo].[Mortgagee] WHERE [id] = @id)

SELECT  @rowCountOut

COMMIT TRANSACTION
RETURN 0

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[UpdateMortgageeLocation]    Script Date: 10/10/2009 15:44:06 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateMortgageeLocation]
	@id int, 
	@mortgageeId int, 
	@locationId int, 
	@loanNumber varchar(20), 
	@snapshotSeqNum tinyint, 
	@snapshotMortgageeNum tinyint,
	@tStamp timestamp 
	,@tStampOut TIMESTAMP OUTPUT
AS

UPDATE [dbo].[MortgageeLocation] SET
	[mortgageeId] = @mortgageeId,
	[locationId] = @locationId,
	[loanNumber] = @loanNumber,
	[snapshotSeqNum] = @snapshotSeqNum,
	[snapshotMortgageeNum] = @snapshotMortgageeNum
WHERE
	[id] = @id	
	AND [tStamp] = @tStamp
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT

-- get the new timestamp
SET @tStampOut = (SELECT tStamp FROM [dbo].[MortgageeLocation] WHERE [id] = @id)

SELECT  @rowCountOut
GO
/****** Object:  StoredProcedure [dbo].[DeleteMortgageeLocation]    Script Date: 10/10/2009 15:43:50 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteMortgageeLocation]
	@id int
AS

DELETE FROM [dbo].[MortgageeLocation]
WHERE
	[id] = @id
SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[AddMortgageeLocation]    Script Date: 10/10/2009 15:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddMortgageeLocation]
	@mortgageeId int,
	@locationId int,
	@loanNumber varchar(20),
	@snapshotSeqNum tinyint,
	@snapshotMortgageeNum tinyint,
	@id int OUTPUT,
	@tStamp timestamp OUTPUT
AS
BEGIN
	INSERT INTO MortgageeLocation (
		mortgageeId,
		locationId,
		loanNumber,
		snapshotSeqNum,
		snapshotMortgageeNum
	) VALUES (
		@mortgageeId,
		@locationId,
		@loanNumber,
		@snapshotSeqNum,
		@snapshotMortgageeNum
	)
	SET @id = @@IDENTITY
	SELECT @tStamp = tStamp FROM [MortgageeLocation] WHERE id = @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[AddMotor]    Script Date: 10/10/2009 15:43:33 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[AddMotor]
	@watercraftId int,
	@year int,
	@make varchar(20),
	@model varchar(12),
	@horsepower int,
	@serialNumber varchar(20),
	@id int OUTPUT
	
AS

INSERT INTO [dbo].[Motor] (
	[watercraftId],
	[year],
	[make],
	[model],
	[horsepower],
	[serialNumber]
) VALUES (
	@watercraftId,
	@year,
	@make,
	@model,
	@horsepower,
	@serialNumber
)
SET @id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[DeleteMotor]    Script Date: 10/10/2009 15:43:50 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[DeleteMotor]
	@id int
AS

DELETE FROM [dbo].[Motor]
WHERE
	[id] = @id
SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[UpdateMotor]    Script Date: 10/10/2009 15:44:07 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[UpdateMotor]
	@id int, 
	@watercraftId int, 
	@year int, 
	@make varchar(20), 
	@model varchar(12), 
	@horsepower int, 
	@serialNumber varchar(20) 
AS

UPDATE [dbo].[Motor] SET
	[watercraftId] = @watercraftId,
	[year] = @year,
	[make] = @make,
	[model] = @model,
	[horsepower] = @horsepower,
	[serialNumber] = @serialNumber
WHERE
	[id] = @id	
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT


SELECT  @rowCountOut
GO
/****** Object:  StoredProcedure [dbo].[UpdateMVR]    Script Date: 10/10/2009 15:44:08 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Thursday, October 02, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[UpdateMVR]
	@id int, 
	@insuredId int, 
	@orderDate datetime, 
	@statusCode char(1), 
	@returnCode int,
	@mvrReturnCode int,
	@errorMessage text,
	@report text 
AS

UPDATE [dbo].[MVR] SET
	[insuredId] = @insuredId,
	[orderDate] = @orderDate,
	[statusCode] = @statusCode,
	[returnCode] = @returnCode,
	[mvrReturnCode] = @mvrReturnCode,
	[errorMessage] = @errorMessage,
	[report] = @report
WHERE
	[id] = @id	
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT


SELECT  @rowCountOut
GO
/****** Object:  StoredProcedure [dbo].[GetMVR]    Script Date: 10/10/2009 15:43:54 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Thursday, October 02, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[GetMVR]
	@insuredId int
AS

SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT * FROM MVR WHERE insuredId = @insuredId
GO
/****** Object:  StoredProcedure [dbo].[DeleteMVR]    Script Date: 10/10/2009 15:43:51 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Thursday, October 02, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[DeleteMVR]
	@id int
AS

DELETE FROM [dbo].[MVR]
WHERE
	[id] = @id
SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[AddMVR]    Script Date: 10/10/2009 15:43:34 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Thursday, October 02, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[AddMVR]
	@insuredId int,
	@orderDate datetime,
	@statusCode char(1),	
	@returnCode int,
	@mvrReturnCode int,
	@errorMessage text,
	@report text,
	@id int OUTPUT
	
AS

INSERT INTO [dbo].[MVR] (
	[insuredId],
	[orderDate],
	[statusCode],
	[returnCode],
	[mvrReturnCode],
	[errorMessage],
	[report]
) VALUES (
	@insuredId,
	@orderDate,
	@statusCode,
	@returnCode,
	@mvrReturnCode,
	@errorMessage,
	@report
)
SET @id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[AddNote]    Script Date: 10/10/2009 15:43:35 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddNote]
	@policyId int,
	@user varchar(50),
	@date datetime,
	@text varchar(512),
	@id int OUTPUT
	
AS

INSERT INTO [dbo].[Note] (
	[policyId],
	[user],
	[date],
	[text]
) VALUES (
	@policyId,
	@user,
	@date,
	@text
)
SET @id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[AddOutbuilding]    Script Date: 10/10/2009 15:43:35 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[AddOutbuilding]
	@locationId int,
	@limit int,
	@constructionTypeCode char(1),
	@outbuildingTypeCode char(2),
	@underConstruction bit,
	@isLogicallyDeleted bit,
	@id int OUTPUT,
	@snapshotSeqNum tinyint,
	@snapshotSubNum tinyint,	
	@tStamp timestamp OUTPUT	
AS

INSERT INTO [dbo].[Outbuilding] (
	[locationId],
	[limit],
	[constructionTypeCode],
	[outbuildingTypeCode],
	[underConstruction],
	[isLogicallyDeleted],
	[snapshotSeqNum],
	[snapshotSubNum]
) VALUES (
	@locationId,
	@limit,
	@constructionTypeCode,
	@outbuildingTypeCode,
	@underConstruction,	
	@isLogicallyDeleted,
	@snapshotSeqNum,
	@snapshotSubNum	
)
SET @id = @@IDENTITY
SELECT @tStamp = tStamp FROM [Outbuilding] WHERE id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[DeleteOutbuilding]    Script Date: 10/10/2009 15:43:51 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[DeleteOutbuilding]
	@id int
AS

DELETE FROM [dbo].[Outbuilding]
WHERE
	[id] = @id
SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[UpdateOutbuilding]    Script Date: 10/10/2009 15:44:09 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[UpdateOutbuilding]
	@id int, 
	@locationId int, 
	@limit int,
	@constructionTypeCode char(1), 
	@outbuildingTypeCode char(2), 
	@underConstruction bit, 
	@isLogicallyDeleted bit,
	@snapshotSeqNum tinyint,
	@snapshotSubNum tinyint,	
	@tStamp timestamp 
	,@tStampOut TIMESTAMP OUTPUT
AS

UPDATE [dbo].[Outbuilding] SET
	[locationId] = @locationId,
	[limit] = @limit,
	[constructionTypeCode] = @constructionTypeCode,
	[outbuildingTypeCode] = @outbuildingTypeCode,
	[underConstruction] = @underConstruction,
	[isLogicallyDeleted] = @isLogicallyDeleted,
	[snapshotSeqNum] = @snapshotSeqNum,
	[snapshotSubNum] = @snapshotSubNum	
WHERE
	[id] = @id	
	AND [tStamp] = @tStamp
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT

-- get the new timestamp
SET @tStampOut = (SELECT tStamp FROM [dbo].[Outbuilding] WHERE [id] = @id)

SELECT  @rowCountOut
GO
/****** Object:  StoredProcedure [dbo].[UpdatePolicy]    Script Date: 10/10/2009 15:44:10 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[UpdatePolicy]
	@id int, 
	@batchId int,
	@agencyId int,
	@agentId int,
	@reqStatus char(1),
	@effDate datetime, 
	@coverageTypeCode char(2), 
	@formCode int, 
	@deductibleAmount int, 
	@coverageLAmount int, 
	@coverageMAmount int,
	@personalInjury bit, 
	@isE2ValueComplete bit,
	@isImport bit,
	@isImportComplete bit,
	@isAmend bit,
	@amendKey varchar(25),
	@amendEffDate datetime,	
	@tStamp timestamp 
	,@tStampOut TIMESTAMP OUTPUT
AS

UPDATE [dbo].[Policy] SET
	[batchId] = @batchId,
	[agencyId] = @agencyId,
	[agentId] = @agentId,
	[reqStatus] = @reqStatus,
	[effDate] = @effDate,
	[coverageTypeCode] = @coverageTypeCode,
	[formCode] = @formCode,
	[deductibleAmount] = @deductibleAmount,
	[coverageLAmount] = @coverageLAmount,
	[coverageMAmount] = @coverageMAmount,	
	[personalInjury] = @personalInjury,
	[isE2ValueComplete] = @isE2ValueComplete,
	[isImport] = @isImport,
	[isImportComplete] = @isImportComplete,
	[isAmend] = @isAmend,
	[amendKey] = @amendKey,
	[amendEffDate] = @amendEffDate,
	lastDateUpd = GETDATE()
WHERE
	[id] = @id	
	AND [tStamp] = @tStamp
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT

-- get the new timestamp
SET @tStampOut = (SELECT tStamp FROM [dbo].[Policy] WHERE [id] = @id)

SELECT  @rowCountOut
GO
/****** Object:  StoredProcedure [dbo].[DeletePolicy]    Script Date: 10/10/2009 15:43:51 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[DeletePolicy]
	@id int
AS

DELETE FROM [dbo].[Policy]
WHERE
	[id] = @id
SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[AddPolicy]    Script Date: 10/10/2009 15:43:37 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[AddPolicy]
	@batchId int,
	@agencyId int,
	@agentId int,
	@reqStatus char(1),
	@effDate datetime,
	@coverageTypeCode char(2),
	@formCode int,
	@deductibleAmount int,
	@coverageLAmount int,
	@coverageMAmount int,
	@personalInjury bit,	
	@isE2ValueComplete bit,
	@isImport bit,
	@isImportComplete bit,
	@isAmend bit,
	@amendKey varchar(25),
	@amendEffDate datetime,
	@id int OUTPUT,
	@tStamp timestamp OUTPUT
	
AS

INSERT INTO [dbo].[Policy] (
	[batchId],
	[agencyId],
	[agentId],
	[reqStatus],
	[effDate],
	[coverageTypeCode],
	[formCode],
	[deductibleAmount],
	[coverageLAmount],
	[coverageMAmount],
	[personalInjury],
	[isE2ValueComplete],
	[isImport],
	[isImportComplete],
	[isAmend],
	[amendKey],
	[amendEffDate]
) VALUES (
	@batchId,
	@agencyId,
	@agentId,
	@reqStatus,
	@effDate,
	@coverageTypeCode,
	@formCode,
	@deductibleAmount,
	@coverageLAmount,
	@coverageMAmount,
	@personalInjury,
	@isE2ValueComplete,
	@isImport,
	@isImportComplete,
	@isAmend,
	@amendKey,
	@amendEffDate	
)
SET @id = @@IDENTITY
SELECT @tStamp = tStamp FROM [Policy] WHERE id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[AddRate]    Script Date: 10/10/2009 15:43:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddRate]
	@policyId int,
	@offerId int,
	@term tinyint,
	@expireDate datetime,
	@totalPremium as money,
	@quoteXmlChecksum as binary(20),
	@id int OUTPUT
AS
BEGIN TRANSACTION

	DELETE FROM Rate WHERE policyId = @policyId
	IF @@ERROR <> 0 GOTO PROBLEM

	INSERT INTO Rate (
		policyId,
		offerId,
		term,
		rateDate,
		expireDate,
		totalPremium,
		quoteXmlChecksum
	) VALUES (
		@policyId,
		@offerId,
		@term,
		GETDATE(),
		@expireDate,
		@totalPremium,
		@quoteXmlChecksum
	)
	IF @@ERROR <> 0 GOTO PROBLEM

	SET @id = @@IDENTITY

COMMIT TRANSACTION
RETURN 0

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[AddRateItem]    Script Date: 10/10/2009 15:43:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 20, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[AddRateItem]
	@rateId int,
	@locationId int,
	@description varchar(50),
	@limit int,
	@premium money,
	@id int OUTPUT
	
AS

INSERT INTO [dbo].[RateItem] (
	[rateId],
	[locationId],
	[description],
	[limit],
	[premium]
) VALUES (
	@rateId,
	@locationId,
	@description,
	@limit,
	@premium
)
SET @id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[AddRateSubItem]    Script Date: 10/10/2009 15:43:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Thursday, November 13, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[AddRateSubItem]
	@rateItemId int,
	@description varchar(50),
	@limit int,
	@premium money,
	@id int OUTPUT
	
AS

INSERT INTO [dbo].[RateSubItem] (
	[rateItemId],
	[description],
	[limit],
	[premium]
) VALUES (
	@rateItemId,
	@description,
	@limit,
	@premium
)
SET @id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[AddSnowmobile]    Script Date: 10/10/2009 15:43:39 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[AddSnowmobile]
	@policyId int,
	@isLogicallyDeleted bit,
	@year int,
	@make varchar(20),
	@serialNumber varchar(20),
	@id int OUTPUT,
	@tStamp timestamp OUTPUT
	
AS

INSERT INTO [dbo].[Snowmobile] (
	[policyId],
	[isLogicallyDeleted],
	[year],
	[make],
	[serialNumber]
) VALUES (
	@policyId,
	@isLogicallyDeleted,
	@year,
	@make,
	@serialNumber
)
SET @id = @@IDENTITY
SELECT @tStamp = tStamp FROM [Snowmobile] WHERE id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[DeleteSnowmobile]    Script Date: 10/10/2009 15:43:51 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[DeleteSnowmobile]
	@id int
AS

DELETE FROM [dbo].[Snowmobile]
WHERE
	[id] = @id
SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[UpdateSnowmobile]    Script Date: 10/10/2009 15:44:11 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[UpdateSnowmobile]
	@id int, 
	@policyId int,
	@isLogicallyDeleted bit, 
	@year int, 
	@make varchar(20), 
	@serialNumber varchar(20), 
	@tStamp timestamp 
	,@tStampOut TIMESTAMP OUTPUT
AS

UPDATE [dbo].[Snowmobile] SET
	[policyId] = @policyId,
	[isLogicallyDeleted] = @isLogicallyDeleted,
	[year] = @year,
	[make] = @make,
	[serialNumber] = @serialNumber
WHERE
	[id] = @id	
	AND [tStamp] = @tStamp
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT

-- get the new timestamp
SET @tStampOut = (SELECT tStamp FROM [dbo].[Snowmobile] WHERE [id] = @id)

SELECT  @rowCountOut
GO
/****** Object:  StoredProcedure [dbo].[DeleteStorageUnit]    Script Date: 10/10/2009 15:43:52 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Monday, December 08, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[DeleteStorageUnit]
	@id int
AS

DELETE FROM [dbo].[StorageUnit]
WHERE
	[id] = @id
SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[AddStorageUnit]    Script Date: 10/10/2009 15:43:40 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Monday, December 08, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[AddStorageUnit]
	@locationId int,
	@rapidRating bit,
	@protectionClassCode tinyint,
	@constructionTypeCode char(1),
	@coverageC int,
	@extended bit,
	@theftLimit int,
	@fireDeptDistance smallint,
	@fireDistrict varchar(30),
	@id int OUTPUT
	
AS

INSERT INTO [dbo].[StorageUnit] (
	[locationId],
	[rapidRating],
	[protectionClassCode],
	[constructionTypeCode],
	[coverageC],
	[extended],
	[theftLimit],
	[fireDeptDistance],
	[fireDistrict]
) VALUES (
	@locationId,
	@rapidRating,
	@protectionClassCode,
	@constructionTypeCode,
	@coverageC,
	@extended,
	@theftLimit,
	@fireDeptDistance,
	@fireDistrict
)
SET @id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[UpdateStorageUnit]    Script Date: 10/10/2009 15:44:12 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Monday, December 08, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[UpdateStorageUnit]
	@id int, 
	@locationId int, 
	@rapidRating bit,
	@protectionClassCode tinyint, 
	@constructionTypeCode char(1), 
	@coverageC int, 
	@extended bit, 
	@theftLimit int,
	@fireDeptDistance smallint,
	@fireDistrict varchar(30)
AS

UPDATE [dbo].[StorageUnit] SET
	[locationId] = @locationId,
	[rapidRating] = @rapidRating,
	[protectionClassCode] = @protectionClassCode,
	[constructionTypeCode] = @constructionTypeCode,
	[coverageC] = @coverageC,
	[extended] = @extended,
	[theftLimit] = @theftLimit,
	[fireDeptDistance] = @fireDeptDistance,
	[fireDistrict] = @fireDistrict
WHERE
	[id] = @id	
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT


SELECT  @rowCountOut
GO
/****** Object:  StoredProcedure [dbo].[UpdateStructure]    Script Date: 10/10/2009 15:44:15 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[UpdateStructure]
	@id int, 
	@locationId int, 
	@rapidRating bit,
	@protectionClassCode tinyint, 
	@constructionTypeCode char(1), 
	@yearBuilt smallint, 
	@structureTypeCode char(1), 
	@numUnitsInFireDiv tinyint, 
	@burglarAlarmCode char(1), 
	@fireAlarmCode char(1), 
	@heatTypeCode char(1), 
	@woodStove bit, 
	@coverageA int, 
	@coverageC int, 
	@coverageD int, 
	@coverageE int, 
	@extended bit, 
	@vandalism bit, 
	@lossSettlementCode char(1), 
	@replacementCost int, 
	@acvLossSettlementRoof bit, 
	@theftTypeCode char(1), 
	@theftOnLimit int, 
	@theftOffLimit int, 
	@outdoorEquipmentLimit int, 
	@improvementsLimit int, 
	@unitOwnersLimit int, 
	@specialCoverage bit,
	@waterBackup bit, 
	@permissionToMove bit, 
	@lienholderSingleInterest bit, 
	@manufacturer varchar(30), 
	@serialNum varchar(15), 
	@model varchar(30), 
	@length smallint, 
	@width tinyint, 
	@planToMove bit, 
	@damaged bit, 
	@thermostat bit, 
	@foundationCode char(1), 
	@tieDownCode char(1), 
	@inCityLimits bit, 
	@fireDeptDistance smallint, 
	@fireDistrict varchar(30), 
	@fireHydrant bit, 
	@fireHydrantDistance smallint, 
	@roofTypeCode char(1), 
	@fireplace bit, 
	@fireplaceCleaned bit, 
	@wiringYear smallint, 
	@plumbingYear smallint, 
	@heatingYear smallint, 
	@roofYear smallint, 
	@isLogicallyDeleted bit,	
	@tStamp timestamp 
	,@tStampOut TIMESTAMP OUTPUT
AS

UPDATE [dbo].[Structure] SET
	[locationId] = @locationId,
	[rapidRating] = @rapidRating,
	[protectionClassCode] = @protectionClassCode,
	[constructionTypeCode] = @constructionTypeCode,
	[yearBuilt] = @yearBuilt,
	[structureTypeCode] = @structureTypeCode,
	[numUnitsInFireDiv] = @numUnitsInFireDiv,
	[burglarAlarmCode] = @burglarAlarmCode,
	[fireAlarmCode] = @fireAlarmCode,
	[heatTypeCode] = @heatTypeCode,
	[woodStove] = @woodStove,
	[coverageA] = @coverageA,
	[coverageC] = @coverageC,
	[coverageD] = @coverageD,
	[coverageE] = @coverageE,
	[extended] = @extended,
	[vandalism] = @vandalism,
	[lossSettlementCode] = @lossSettlementCode,
	[replacementCost] = @replacementCost,
	[acvLossSettlementRoof] = @acvLossSettlementRoof,
	[theftTypeCode] = @theftTypeCode,
	[theftOnLimit] = @theftOnLimit,
	[theftOffLimit] = @theftOffLimit,
	[outdoorEquipmentLimit] = @outdoorEquipmentLimit,
	[improvementsLimit] = @improvementsLimit,
	[unitOwnersLimit] = @unitOwnersLimit,
	[specialCoverage] = @specialCoverage,
	[waterBackup] = @waterBackup,
	[permissionToMove] = @permissionToMove,
	[lienholderSingleInterest] = @lienholderSingleInterest,
	[manufacturer] = @manufacturer,
	[serialNum] = @serialNum,
	[model] = @model,
	[length] = @length,
	[width] = @width,
	[planToMove] = @planToMove,
	[damaged] = @damaged,
	[thermostat] = @thermostat,
	[foundationCode] = @foundationCode,
	[tieDownCode] = @tieDownCode,
	[inCityLimits] = @inCityLimits,
	[fireDeptDistance] = @fireDeptDistance,
	[fireDistrict] = @fireDistrict,
	[fireHydrant] = @fireHydrant,
	[fireHydrantDistance] = @fireHydrantDistance,
	[roofTypeCode] = @roofTypeCode,
	[fireplace] = @fireplace,
	[fireplaceCleaned] = @fireplaceCleaned,
	[wiringYear] = @wiringYear,
	[plumbingYear] = @plumbingYear,
	[heatingYear] = @heatingYear,
	[roofYear] = @roofYear,
	[isLogicallyDeleted] = @isLogicallyDeleted	
WHERE
	[id] = @id	
	AND [tStamp] = @tStamp
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT

-- get the new timestamp
SET @tStampOut = (SELECT tStamp FROM [dbo].[Structure] WHERE [id] = @id)

SELECT  @rowCountOut
GO
/****** Object:  StoredProcedure [dbo].[DeleteStructure]    Script Date: 10/10/2009 15:43:52 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[DeleteStructure]
	@id int
AS

DELETE FROM [dbo].[Structure]
WHERE
	[id] = @id
SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[AddStructure]    Script Date: 10/10/2009 15:43:44 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------
-- Date Created: Wednesday, August 06, 2008
-- Created By:   Generated by CodeSmith
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[AddStructure]
	@locationId int,
	@rapidRating bit,
	@protectionClassCode tinyint,
	@constructionTypeCode char(1),
	@yearBuilt smallint,
	@structureTypeCode char(1),
	@numUnitsInFireDiv tinyint,
	@burglarAlarmCode char(1),
	@fireAlarmCode char(1),
	@heatTypeCode char(1),
	@woodStove bit,
	@coverageA int,
	@coverageC int,
	@coverageD int,
	@coverageE int,
	@extended bit,
	@vandalism bit,
	@lossSettlementCode char(1),
	@replacementCost int,
	@acvLossSettlementRoof bit,
	@theftTypeCode char(1),
	@theftOnLimit int,
	@theftOffLimit int,
	@outdoorEquipmentLimit int,
	@improvementsLimit int,
	@unitOwnersLimit int,
	@specialCoverage bit,
	@waterBackup bit,
	@permissionToMove bit,
	@lienholderSingleInterest bit,
	@manufacturer varchar(30),
	@serialNum varchar(15),
	@model varchar(30),
	@length smallint,
	@width tinyint,
	@planToMove bit,
	@damaged bit,
	@thermostat bit,
	@foundationCode char(1),
	@tieDownCode char(1),
	@inCityLimits bit,
	@fireDeptDistance smallint,
	@fireDistrict varchar(30),
	@fireHydrant bit,
	@fireHydrantDistance smallint,
	@roofTypeCode char(1),
	@fireplace bit,
	@fireplaceCleaned bit,
	@wiringYear smallint,
	@plumbingYear smallint,
	@heatingYear smallint,
	@roofYear smallint,
	@isLogicallyDeleted bit,	
	@id int OUTPUT,
	@tStamp timestamp OUTPUT
	
AS

INSERT INTO [dbo].[Structure] (
	[locationId],
	[rapidRating],
	[protectionClassCode],
	[constructionTypeCode],
	[yearBuilt],
	[structureTypeCode],
	[numUnitsInFireDiv],
	[burglarAlarmCode],
	[fireAlarmCode],
	[heatTypeCode],
	[woodStove],
	[coverageA],
	[coverageC],
	[coverageD],
	[coverageE],
	[extended],
	[vandalism],
	[lossSettlementCode],
	[replacementCost],
	[acvLossSettlementRoof],
	[theftTypeCode],
	[theftOnLimit],
	[theftOffLimit],
	[outdoorEquipmentLimit],
	[improvementsLimit],
	[unitOwnersLimit],
	[specialCoverage],
	[waterBackup],
	[permissionToMove],
	[lienholderSingleInterest],
	[manufacturer],
	[serialNum],
	[model],
	[length],
	[width],
	[planToMove],
	[damaged],
	[thermostat],
	[foundationCode],
	[tieDownCode],
	[inCityLimits],
	[fireDeptDistance],
	[fireDistrict],
	[fireHydrant],
	[fireHydrantDistance],
	[roofTypeCode],
	[fireplace],
	[fireplaceCleaned],
	[wiringYear],
	[plumbingYear],
	[heatingYear],
	[roofYear],	
	[isLogicallyDeleted]	
) VALUES (
	@locationId,
	@rapidRating,
	@protectionClassCode,
	@constructionTypeCode,
	@yearBuilt,
	@structureTypeCode,
	@numUnitsInFireDiv,
	@burglarAlarmCode,
	@fireAlarmCode,
	@heatTypeCode,
	@woodStove,
	@coverageA,
	@coverageC,
	@coverageD,
	@coverageE,
	@extended,
	@vandalism,
	@lossSettlementCode,
	@replacementCost,
	@acvLossSettlementRoof,
	@theftTypeCode,
	@theftOnLimit,
	@theftOffLimit,
	@outdoorEquipmentLimit,
	@improvementsLimit,
	@unitOwnersLimit,
	@specialCoverage,
	@waterBackup,
	@permissionToMove,
	@lienholderSingleInterest,
	@manufacturer,
	@serialNum,
	@model,
	@length,
	@width,
	@planToMove,
	@damaged,
	@thermostat,
	@foundationCode,
	@tieDownCode,
	@inCityLimits,
	@fireDeptDistance,
	@fireDistrict,
	@fireHydrant,
	@fireHydrantDistance,
	@roofTypeCode,
	@fireplace,
	@fireplaceCleaned,
	@wiringYear,
	@plumbingYear,
	@heatingYear,
	@roofYear,
	@isLogicallyDeleted
)
SET @id = @@IDENTITY
SELECT @tStamp = tStamp FROM [Structure] WHERE id = @@IDENTITY
GO
/****** Object:  ForeignKey [FK_AdditionalInsured_Address]    Script Date: 10/10/2009 15:44:22 ******/
ALTER TABLE [dbo].[AdditionalInsured]  WITH CHECK ADD  CONSTRAINT [FK_AdditionalInsured_Address] FOREIGN KEY([addressId])
REFERENCES [dbo].[Address] ([id])
GO
ALTER TABLE [dbo].[AdditionalInsured] CHECK CONSTRAINT [FK_AdditionalInsured_Address]
GO
/****** Object:  ForeignKey [FK_AdditionalInsured_Policy]    Script Date: 10/10/2009 15:44:22 ******/
ALTER TABLE [dbo].[AdditionalInsured]  WITH CHECK ADD  CONSTRAINT [FK_AdditionalInsured_Policy] FOREIGN KEY([policyId])
REFERENCES [dbo].[Policy] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AdditionalInsured] CHECK CONSTRAINT [FK_AdditionalInsured_Policy]
GO
/****** Object:  ForeignKey [FK_AdditionalInsuredLocation_AdditionalInsured]    Script Date: 10/10/2009 15:44:24 ******/
ALTER TABLE [dbo].[AdditionalInsuredLocation]  WITH CHECK ADD  CONSTRAINT [FK_AdditionalInsuredLocation_AdditionalInsured] FOREIGN KEY([additionalInsuredId])
REFERENCES [dbo].[AdditionalInsured] ([id])
GO
ALTER TABLE [dbo].[AdditionalInsuredLocation] CHECK CONSTRAINT [FK_AdditionalInsuredLocation_AdditionalInsured]
GO
/****** Object:  ForeignKey [FK_AdditionalInsuredLocation_Location]    Script Date: 10/10/2009 15:44:24 ******/
ALTER TABLE [dbo].[AdditionalInsuredLocation]  WITH CHECK ADD  CONSTRAINT [FK_AdditionalInsuredLocation_Location] FOREIGN KEY([locationId])
REFERENCES [dbo].[Location] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AdditionalInsuredLocation] CHECK CONSTRAINT [FK_AdditionalInsuredLocation_Location]
GO
/****** Object:  ForeignKey [FK_Address_AddressType]    Script Date: 10/10/2009 15:44:31 ******/
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_AddressType] FOREIGN KEY([addressTypeCode])
REFERENCES [dbo].[CmicAddressType] ([code])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_AddressType]
GO
/****** Object:  ForeignKey [FK_Address_CmicCounty]    Script Date: 10/10/2009 15:44:32 ******/
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_CmicCounty] FOREIGN KEY([countyId])
REFERENCES [dbo].[CmicCounty] ([id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_CmicCounty]
GO
/****** Object:  ForeignKey [FK_Address_CmicState]    Script Date: 10/10/2009 15:44:32 ******/
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_CmicState] FOREIGN KEY([stateCode])
REFERENCES [dbo].[CmicState] ([code])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_CmicState]
GO
/****** Object:  ForeignKey [FK_Address_Policy1]    Script Date: 10/10/2009 15:44:32 ******/
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Policy1] FOREIGN KEY([policyId])
REFERENCES [dbo].[Policy] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Policy1]
GO
/****** Object:  ForeignKey [FK_CLUE_Location]    Script Date: 10/10/2009 15:44:35 ******/
ALTER TABLE [dbo].[CLUE]  WITH CHECK ADD  CONSTRAINT [FK_CLUE_Location] FOREIGN KEY([locationId])
REFERENCES [dbo].[Location] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CLUE] CHECK CONSTRAINT [FK_CLUE_Location]
GO
/****** Object:  ForeignKey [FK_CmicCompany_CmicAddress]    Script Date: 10/10/2009 15:44:43 ******/
ALTER TABLE [dbo].[CmicCompany]  WITH CHECK ADD  CONSTRAINT [FK_CmicCompany_CmicAddress] FOREIGN KEY([addressId])
REFERENCES [dbo].[CmicAddress] ([id])
GO
ALTER TABLE [dbo].[CmicCompany] CHECK CONSTRAINT [FK_CmicCompany_CmicAddress]
GO
/****** Object:  ForeignKey [FK_CmicCounty_CmicState]    Script Date: 10/10/2009 15:44:47 ******/
ALTER TABLE [dbo].[CmicCounty]  WITH CHECK ADD  CONSTRAINT [FK_CmicCounty_CmicState] FOREIGN KEY([stateCode])
REFERENCES [dbo].[CmicState] ([code])
GO
ALTER TABLE [dbo].[CmicCounty] CHECK CONSTRAINT [FK_CmicCounty_CmicState]
GO
/****** Object:  ForeignKey [FK_CmicCountyZipCode_CmicCounty]    Script Date: 10/10/2009 15:44:48 ******/
ALTER TABLE [dbo].[CmicCountyZipCode]  WITH CHECK ADD  CONSTRAINT [FK_CmicCountyZipCode_CmicCounty] FOREIGN KEY([countyId])
REFERENCES [dbo].[CmicCounty] ([id])
GO
ALTER TABLE [dbo].[CmicCountyZipCode] CHECK CONSTRAINT [FK_CmicCountyZipCode_CmicCounty]
GO
/****** Object:  ForeignKey [FK_CmicCountyZipCode_CmicZipCode]    Script Date: 10/10/2009 15:44:48 ******/
ALTER TABLE [dbo].[CmicCountyZipCode]  WITH CHECK ADD  CONSTRAINT [FK_CmicCountyZipCode_CmicZipCode] FOREIGN KEY([zipCode])
REFERENCES [dbo].[CmicZipCode] ([zipCode])
GO
ALTER TABLE [dbo].[CmicCountyZipCode] CHECK CONSTRAINT [FK_CmicCountyZipCode_CmicZipCode]
GO
/****** Object:  ForeignKey [FK_CmicCoverage_CmicProgram]    Script Date: 10/10/2009 15:44:52 ******/
ALTER TABLE [dbo].[CmicCoverageType]  WITH CHECK ADD  CONSTRAINT [FK_CmicCoverage_CmicProgram] FOREIGN KEY([programCode])
REFERENCES [dbo].[CmicProgram] ([code])
GO
ALTER TABLE [dbo].[CmicCoverageType] CHECK CONSTRAINT [FK_CmicCoverage_CmicProgram]
GO
/****** Object:  ForeignKey [FK_CmicOccupancyUsage_CmicOccupancy]    Script Date: 10/10/2009 15:45:07 ******/
ALTER TABLE [dbo].[CmicOccupancyUsage]  WITH CHECK ADD  CONSTRAINT [FK_CmicOccupancyUsage_CmicOccupancy] FOREIGN KEY([occupancyCode])
REFERENCES [dbo].[CmicOccupancy] ([code])
GO
ALTER TABLE [dbo].[CmicOccupancyUsage] CHECK CONSTRAINT [FK_CmicOccupancyUsage_CmicOccupancy]
GO
/****** Object:  ForeignKey [FK_CmicOccupancyUsage_CmicUsage]    Script Date: 10/10/2009 15:45:07 ******/
ALTER TABLE [dbo].[CmicOccupancyUsage]  WITH CHECK ADD  CONSTRAINT [FK_CmicOccupancyUsage_CmicUsage] FOREIGN KEY([usageCode])
REFERENCES [dbo].[CmicUsage] ([code])
GO
ALTER TABLE [dbo].[CmicOccupancyUsage] CHECK CONSTRAINT [FK_CmicOccupancyUsage_CmicUsage]
GO
/****** Object:  ForeignKey [FK_CmicOffer_CmicCompany]    Script Date: 10/10/2009 15:45:10 ******/
ALTER TABLE [dbo].[CmicOffer]  WITH CHECK ADD  CONSTRAINT [FK_CmicOffer_CmicCompany] FOREIGN KEY([companyId])
REFERENCES [dbo].[CmicCompany] ([id])
GO
ALTER TABLE [dbo].[CmicOffer] CHECK CONSTRAINT [FK_CmicOffer_CmicCompany]
GO
/****** Object:  ForeignKey [FK_CmicOffer_CmicProgram]    Script Date: 10/10/2009 15:45:10 ******/
ALTER TABLE [dbo].[CmicOffer]  WITH CHECK ADD  CONSTRAINT [FK_CmicOffer_CmicProgram] FOREIGN KEY([programCode])
REFERENCES [dbo].[CmicProgram] ([code])
GO
ALTER TABLE [dbo].[CmicOffer] CHECK CONSTRAINT [FK_CmicOffer_CmicProgram]
GO
/****** Object:  ForeignKey [FK_CmicOfferState_CmicOffer]    Script Date: 10/10/2009 15:45:11 ******/
ALTER TABLE [dbo].[CmicOfferState]  WITH CHECK ADD  CONSTRAINT [FK_CmicOfferState_CmicOffer] FOREIGN KEY([offerId])
REFERENCES [dbo].[CmicOffer] ([id])
GO
ALTER TABLE [dbo].[CmicOfferState] CHECK CONSTRAINT [FK_CmicOfferState_CmicOffer]
GO
/****** Object:  ForeignKey [FK_CmicOfferState_CmicState]    Script Date: 10/10/2009 15:45:12 ******/
ALTER TABLE [dbo].[CmicOfferState]  WITH CHECK ADD  CONSTRAINT [FK_CmicOfferState_CmicState] FOREIGN KEY([stateCode])
REFERENCES [dbo].[CmicState] ([code])
GO
ALTER TABLE [dbo].[CmicOfferState] CHECK CONSTRAINT [FK_CmicOfferState_CmicState]
GO
/****** Object:  ForeignKey [FK_CmicProgram_CmicSystem]    Script Date: 10/10/2009 15:45:16 ******/
ALTER TABLE [dbo].[CmicProgram]  WITH CHECK ADD  CONSTRAINT [FK_CmicProgram_CmicSystem] FOREIGN KEY([systemId])
REFERENCES [dbo].[CmicSystem] ([id])
GO
ALTER TABLE [dbo].[CmicProgram] CHECK CONSTRAINT [FK_CmicProgram_CmicSystem]
GO
/****** Object:  ForeignKey [FK_Insured_Address]    Script Date: 10/10/2009 15:45:38 ******/
ALTER TABLE [dbo].[Insured]  WITH CHECK ADD  CONSTRAINT [FK_Insured_Address] FOREIGN KEY([addressId])
REFERENCES [dbo].[Address] ([id])
GO
ALTER TABLE [dbo].[Insured] CHECK CONSTRAINT [FK_Insured_Address]
GO
/****** Object:  ForeignKey [FK_Insured_CmicInsuredType]    Script Date: 10/10/2009 15:45:38 ******/
ALTER TABLE [dbo].[Insured]  WITH CHECK ADD  CONSTRAINT [FK_Insured_CmicInsuredType] FOREIGN KEY([insuredTypeId])
REFERENCES [dbo].[CmicInsuredType] ([id])
GO
ALTER TABLE [dbo].[Insured] CHECK CONSTRAINT [FK_Insured_CmicInsuredType]
GO
/****** Object:  ForeignKey [FK_Insured_CmicRelationType]    Script Date: 10/10/2009 15:45:38 ******/
ALTER TABLE [dbo].[Insured]  WITH CHECK ADD  CONSTRAINT [FK_Insured_CmicRelationType] FOREIGN KEY([relationTypeCode])
REFERENCES [dbo].[CmicRelationType] ([code])
GO
ALTER TABLE [dbo].[Insured] CHECK CONSTRAINT [FK_Insured_CmicRelationType]
GO
/****** Object:  ForeignKey [FK_Insured_CmicState]    Script Date: 10/10/2009 15:45:38 ******/
ALTER TABLE [dbo].[Insured]  WITH CHECK ADD  CONSTRAINT [FK_Insured_CmicState] FOREIGN KEY([licenseStateCode])
REFERENCES [dbo].[CmicState] ([code])
GO
ALTER TABLE [dbo].[Insured] CHECK CONSTRAINT [FK_Insured_CmicState]
GO
/****** Object:  ForeignKey [FK_Insured_Policy]    Script Date: 10/10/2009 15:45:38 ******/
ALTER TABLE [dbo].[Insured]  WITH CHECK ADD  CONSTRAINT [FK_Insured_Policy] FOREIGN KEY([policyId])
REFERENCES [dbo].[Policy] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Insured] CHECK CONSTRAINT [FK_Insured_Policy]
GO
/****** Object:  ForeignKey [FK_Location_Address]    Script Date: 10/10/2009 15:45:53 ******/
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_Address] FOREIGN KEY([addressId])
REFERENCES [dbo].[Address] ([id])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_Address]
GO
/****** Object:  ForeignKey [FK_Location_Address1]    Script Date: 10/10/2009 15:45:53 ******/
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_Address1] FOREIGN KEY([acresOffAddressId])
REFERENCES [dbo].[Address] ([id])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_Address1]
GO
/****** Object:  ForeignKey [FK_Location_CmicBusinessPursuitsType]    Script Date: 10/10/2009 15:45:53 ******/
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_CmicBusinessPursuitsType] FOREIGN KEY([businessPursuitsTypeId])
REFERENCES [dbo].[CmicBusinessPursuits] ([id])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_CmicBusinessPursuitsType]
GO
/****** Object:  ForeignKey [FK_Location_CmicIncidentalOccupancyType]    Script Date: 10/10/2009 15:45:53 ******/
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_CmicIncidentalOccupancyType] FOREIGN KEY([incidentalOccupancyTypeId])
REFERENCES [dbo].[CmicIncidentalOccupancyType] ([id])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_CmicIncidentalOccupancyType]
GO
/****** Object:  ForeignKey [FK_Location_CmicOccupancy]    Script Date: 10/10/2009 15:45:54 ******/
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_CmicOccupancy] FOREIGN KEY([occupancyCode])
REFERENCES [dbo].[CmicOccupancy] ([code])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_CmicOccupancy]
GO
/****** Object:  ForeignKey [FK_Location_CmicUsageType]    Script Date: 10/10/2009 15:45:54 ******/
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_CmicUsageType] FOREIGN KEY([usageCode])
REFERENCES [dbo].[CmicUsage] ([code])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_CmicUsageType]
GO
/****** Object:  ForeignKey [FK_Location_Insured]    Script Date: 10/10/2009 15:45:54 ******/
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_Insured] FOREIGN KEY([businessPursuitsInsuredId])
REFERENCES [dbo].[Insured] ([id])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_Insured]
GO
/****** Object:  ForeignKey [FK_Message_Policy]    Script Date: 10/10/2009 15:45:56 ******/
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Policy] FOREIGN KEY([policyId])
REFERENCES [dbo].[Policy] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Policy]
GO
/****** Object:  ForeignKey [FK_Mortgagee_Address]    Script Date: 10/10/2009 15:46:00 ******/
ALTER TABLE [dbo].[Mortgagee]  WITH CHECK ADD  CONSTRAINT [FK_Mortgagee_Address] FOREIGN KEY([addressId])
REFERENCES [dbo].[Address] ([id])
GO
ALTER TABLE [dbo].[Mortgagee] CHECK CONSTRAINT [FK_Mortgagee_Address]
GO
/****** Object:  ForeignKey [FK_Mortgagee_CmicInterestType]    Script Date: 10/10/2009 15:46:00 ******/
ALTER TABLE [dbo].[Mortgagee]  WITH CHECK ADD  CONSTRAINT [FK_Mortgagee_CmicInterestType] FOREIGN KEY([interestTypeCode])
REFERENCES [dbo].[CmicInterestType] ([code])
GO
ALTER TABLE [dbo].[Mortgagee] CHECK CONSTRAINT [FK_Mortgagee_CmicInterestType]
GO
/****** Object:  ForeignKey [FK_Mortgagee_Policy]    Script Date: 10/10/2009 15:46:00 ******/
ALTER TABLE [dbo].[Mortgagee]  WITH CHECK ADD  CONSTRAINT [FK_Mortgagee_Policy] FOREIGN KEY([policyId])
REFERENCES [dbo].[Policy] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Mortgagee] CHECK CONSTRAINT [FK_Mortgagee_Policy]
GO
/****** Object:  ForeignKey [FK_MortgageeLocation_Location]    Script Date: 10/10/2009 15:46:03 ******/
ALTER TABLE [dbo].[MortgageeLocation]  WITH CHECK ADD  CONSTRAINT [FK_MortgageeLocation_Location] FOREIGN KEY([locationId])
REFERENCES [dbo].[Location] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MortgageeLocation] CHECK CONSTRAINT [FK_MortgageeLocation_Location]
GO
/****** Object:  ForeignKey [FK_MortgageeLocation_Mortgagee]    Script Date: 10/10/2009 15:46:03 ******/
ALTER TABLE [dbo].[MortgageeLocation]  WITH CHECK ADD  CONSTRAINT [FK_MortgageeLocation_Mortgagee] FOREIGN KEY([mortgageeId])
REFERENCES [dbo].[Mortgagee] ([id])
GO
ALTER TABLE [dbo].[MortgageeLocation] CHECK CONSTRAINT [FK_MortgageeLocation_Mortgagee]
GO
/****** Object:  ForeignKey [FK_Motor_Watercraft]    Script Date: 10/10/2009 15:46:06 ******/
ALTER TABLE [dbo].[Motor]  WITH CHECK ADD  CONSTRAINT [FK_Motor_Watercraft] FOREIGN KEY([watercraftId])
REFERENCES [dbo].[Watercraft] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Motor] CHECK CONSTRAINT [FK_Motor_Watercraft]
GO
/****** Object:  ForeignKey [FK_MVR_Insured]    Script Date: 10/10/2009 15:46:09 ******/
ALTER TABLE [dbo].[MVR]  WITH CHECK ADD  CONSTRAINT [FK_MVR_Insured] FOREIGN KEY([insuredId])
REFERENCES [dbo].[Insured] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MVR] CHECK CONSTRAINT [FK_MVR_Insured]
GO
/****** Object:  ForeignKey [FK_Note_Policy]    Script Date: 10/10/2009 15:46:12 ******/
ALTER TABLE [dbo].[Note]  WITH CHECK ADD  CONSTRAINT [FK_Note_Policy] FOREIGN KEY([policyId])
REFERENCES [dbo].[Policy] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Note] CHECK CONSTRAINT [FK_Note_Policy]
GO
/****** Object:  ForeignKey [FK_OtherStructure_CmicConstructionType]    Script Date: 10/10/2009 15:46:16 ******/
ALTER TABLE [dbo].[Outbuilding]  WITH CHECK ADD  CONSTRAINT [FK_OtherStructure_CmicConstructionType] FOREIGN KEY([constructionTypeCode])
REFERENCES [dbo].[CmicConstructionType] ([code])
GO
ALTER TABLE [dbo].[Outbuilding] CHECK CONSTRAINT [FK_OtherStructure_CmicConstructionType]
GO
/****** Object:  ForeignKey [FK_OtherStructure_CmicOtherStructureType]    Script Date: 10/10/2009 15:46:16 ******/
ALTER TABLE [dbo].[Outbuilding]  WITH CHECK ADD  CONSTRAINT [FK_OtherStructure_CmicOtherStructureType] FOREIGN KEY([outbuildingTypeCode])
REFERENCES [dbo].[CmicOutbuildingType] ([code])
GO
ALTER TABLE [dbo].[Outbuilding] CHECK CONSTRAINT [FK_OtherStructure_CmicOtherStructureType]
GO
/****** Object:  ForeignKey [FK_OtherStructure_Location]    Script Date: 10/10/2009 15:46:16 ******/
ALTER TABLE [dbo].[Outbuilding]  WITH CHECK ADD  CONSTRAINT [FK_OtherStructure_Location] FOREIGN KEY([locationId])
REFERENCES [dbo].[Location] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Outbuilding] CHECK CONSTRAINT [FK_OtherStructure_Location]
GO
/****** Object:  ForeignKey [FK_Policy_Batch]    Script Date: 10/10/2009 15:46:25 ******/
ALTER TABLE [dbo].[Policy]  WITH CHECK ADD  CONSTRAINT [FK_Policy_Batch] FOREIGN KEY([batchId])
REFERENCES [dbo].[Batch] ([id])
GO
ALTER TABLE [dbo].[Policy] CHECK CONSTRAINT [FK_Policy_Batch]
GO
/****** Object:  ForeignKey [FK_Policy_CmicCoverageL]    Script Date: 10/10/2009 15:46:25 ******/
ALTER TABLE [dbo].[Policy]  WITH CHECK ADD  CONSTRAINT [FK_Policy_CmicCoverageL] FOREIGN KEY([coverageLAmount])
REFERENCES [dbo].[CmicCoverageL] ([amount])
ON UPDATE SET DEFAULT
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Policy] CHECK CONSTRAINT [FK_Policy_CmicCoverageL]
GO
/****** Object:  ForeignKey [FK_Policy_CmicCoverageM]    Script Date: 10/10/2009 15:46:25 ******/
ALTER TABLE [dbo].[Policy]  WITH CHECK ADD  CONSTRAINT [FK_Policy_CmicCoverageM] FOREIGN KEY([coverageMAmount])
REFERENCES [dbo].[CmicCoverageM] ([amount])
GO
ALTER TABLE [dbo].[Policy] CHECK CONSTRAINT [FK_Policy_CmicCoverageM]
GO
/****** Object:  ForeignKey [FK_Policy_CmicCoverageType]    Script Date: 10/10/2009 15:46:25 ******/
ALTER TABLE [dbo].[Policy]  WITH CHECK ADD  CONSTRAINT [FK_Policy_CmicCoverageType] FOREIGN KEY([coverageTypeCode])
REFERENCES [dbo].[CmicCoverageType] ([code])
GO
ALTER TABLE [dbo].[Policy] CHECK CONSTRAINT [FK_Policy_CmicCoverageType]
GO
/****** Object:  ForeignKey [FK_Policy_CmicDeductible]    Script Date: 10/10/2009 15:46:26 ******/
ALTER TABLE [dbo].[Policy]  WITH CHECK ADD  CONSTRAINT [FK_Policy_CmicDeductible] FOREIGN KEY([deductibleAmount])
REFERENCES [dbo].[CmicDeductible] ([amount])
GO
ALTER TABLE [dbo].[Policy] CHECK CONSTRAINT [FK_Policy_CmicDeductible]
GO
/****** Object:  ForeignKey [FK_Policy_CmicForm]    Script Date: 10/10/2009 15:46:26 ******/
ALTER TABLE [dbo].[Policy]  WITH CHECK ADD  CONSTRAINT [FK_Policy_CmicForm] FOREIGN KEY([formCode])
REFERENCES [dbo].[CmicForm] ([code])
GO
ALTER TABLE [dbo].[Policy] CHECK CONSTRAINT [FK_Policy_CmicForm]
GO
/****** Object:  ForeignKey [FK_Policy_CmicPolicyStatus]    Script Date: 10/10/2009 15:46:26 ******/
ALTER TABLE [dbo].[Policy]  WITH CHECK ADD  CONSTRAINT [FK_Policy_CmicPolicyStatus] FOREIGN KEY([reqStatus])
REFERENCES [dbo].[CmicPolicyStatus] ([code])
GO
ALTER TABLE [dbo].[Policy] CHECK CONSTRAINT [FK_Policy_CmicPolicyStatus]
GO
/****** Object:  ForeignKey [FK_Rate_CmicOffer]    Script Date: 10/10/2009 15:46:29 ******/
ALTER TABLE [dbo].[Rate]  WITH CHECK ADD  CONSTRAINT [FK_Rate_CmicOffer] FOREIGN KEY([offerId])
REFERENCES [dbo].[CmicOffer] ([id])
GO
ALTER TABLE [dbo].[Rate] CHECK CONSTRAINT [FK_Rate_CmicOffer]
GO
/****** Object:  ForeignKey [FK_Rate_Policy]    Script Date: 10/10/2009 15:46:29 ******/
ALTER TABLE [dbo].[Rate]  WITH CHECK ADD  CONSTRAINT [FK_Rate_Policy] FOREIGN KEY([policyId])
REFERENCES [dbo].[Policy] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rate] CHECK CONSTRAINT [FK_Rate_Policy]
GO
/****** Object:  ForeignKey [FK_RateItem_Location]    Script Date: 10/10/2009 15:46:32 ******/
ALTER TABLE [dbo].[RateItem]  WITH CHECK ADD  CONSTRAINT [FK_RateItem_Location] FOREIGN KEY([locationId])
REFERENCES [dbo].[Location] ([id])
GO
ALTER TABLE [dbo].[RateItem] CHECK CONSTRAINT [FK_RateItem_Location]
GO
/****** Object:  ForeignKey [FK_RateItem_Rate]    Script Date: 10/10/2009 15:46:32 ******/
ALTER TABLE [dbo].[RateItem]  WITH CHECK ADD  CONSTRAINT [FK_RateItem_Rate] FOREIGN KEY([rateId])
REFERENCES [dbo].[Rate] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RateItem] CHECK CONSTRAINT [FK_RateItem_Rate]
GO
/****** Object:  ForeignKey [FK_RateSubItem_RateItem]    Script Date: 10/10/2009 15:46:34 ******/
ALTER TABLE [dbo].[RateSubItem]  WITH CHECK ADD  CONSTRAINT [FK_RateSubItem_RateItem] FOREIGN KEY([rateItemId])
REFERENCES [dbo].[RateItem] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RateSubItem] CHECK CONSTRAINT [FK_RateSubItem_RateItem]
GO
/****** Object:  ForeignKey [FK_Snowmobile_Policy]    Script Date: 10/10/2009 15:46:37 ******/
ALTER TABLE [dbo].[Snowmobile]  WITH CHECK ADD  CONSTRAINT [FK_Snowmobile_Policy] FOREIGN KEY([policyId])
REFERENCES [dbo].[Policy] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Snowmobile] CHECK CONSTRAINT [FK_Snowmobile_Policy]
GO
/****** Object:  ForeignKey [FK_StorageUnit_CmicConstructionType]    Script Date: 10/10/2009 15:46:41 ******/
ALTER TABLE [dbo].[StorageUnit]  WITH CHECK ADD  CONSTRAINT [FK_StorageUnit_CmicConstructionType] FOREIGN KEY([constructionTypeCode])
REFERENCES [dbo].[CmicConstructionType] ([code])
GO
ALTER TABLE [dbo].[StorageUnit] CHECK CONSTRAINT [FK_StorageUnit_CmicConstructionType]
GO
/****** Object:  ForeignKey [FK_StorageUnit_CmicProtectionClass]    Script Date: 10/10/2009 15:46:41 ******/
ALTER TABLE [dbo].[StorageUnit]  WITH CHECK ADD  CONSTRAINT [FK_StorageUnit_CmicProtectionClass] FOREIGN KEY([protectionClassCode])
REFERENCES [dbo].[CmicProtectionClass] ([code])
GO
ALTER TABLE [dbo].[StorageUnit] CHECK CONSTRAINT [FK_StorageUnit_CmicProtectionClass]
GO
/****** Object:  ForeignKey [FK_StorageUnit_Location]    Script Date: 10/10/2009 15:46:41 ******/
ALTER TABLE [dbo].[StorageUnit]  WITH CHECK ADD  CONSTRAINT [FK_StorageUnit_Location] FOREIGN KEY([locationId])
REFERENCES [dbo].[Location] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StorageUnit] CHECK CONSTRAINT [FK_StorageUnit_Location]
GO
/****** Object:  ForeignKey [FK_Dwelling_Location]    Script Date: 10/10/2009 15:47:00 ******/
ALTER TABLE [dbo].[Structure]  WITH CHECK ADD  CONSTRAINT [FK_Dwelling_Location] FOREIGN KEY([locationId])
REFERENCES [dbo].[Location] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Structure] CHECK CONSTRAINT [FK_Dwelling_Location]
GO
/****** Object:  ForeignKey [FK_Structure_CmicBurglarAlarm]    Script Date: 10/10/2009 15:47:00 ******/
ALTER TABLE [dbo].[Structure]  WITH CHECK ADD  CONSTRAINT [FK_Structure_CmicBurglarAlarm] FOREIGN KEY([burglarAlarmCode])
REFERENCES [dbo].[CmicBurglarAlarm] ([code])
GO
ALTER TABLE [dbo].[Structure] CHECK CONSTRAINT [FK_Structure_CmicBurglarAlarm]
GO
/****** Object:  ForeignKey [FK_Structure_CmicConstructionType]    Script Date: 10/10/2009 15:47:00 ******/
ALTER TABLE [dbo].[Structure]  WITH CHECK ADD  CONSTRAINT [FK_Structure_CmicConstructionType] FOREIGN KEY([constructionTypeCode])
REFERENCES [dbo].[CmicConstructionType] ([code])
GO
ALTER TABLE [dbo].[Structure] CHECK CONSTRAINT [FK_Structure_CmicConstructionType]
GO
/****** Object:  ForeignKey [FK_Structure_CmicFireAlarm]    Script Date: 10/10/2009 15:47:00 ******/
ALTER TABLE [dbo].[Structure]  WITH CHECK ADD  CONSTRAINT [FK_Structure_CmicFireAlarm] FOREIGN KEY([fireAlarmCode])
REFERENCES [dbo].[CmicFireAlarm] ([code])
GO
ALTER TABLE [dbo].[Structure] CHECK CONSTRAINT [FK_Structure_CmicFireAlarm]
GO
/****** Object:  ForeignKey [FK_Structure_CmicFoundation]    Script Date: 10/10/2009 15:47:00 ******/
ALTER TABLE [dbo].[Structure]  WITH CHECK ADD  CONSTRAINT [FK_Structure_CmicFoundation] FOREIGN KEY([foundationCode])
REFERENCES [dbo].[CmicFoundationType] ([code])
GO
ALTER TABLE [dbo].[Structure] CHECK CONSTRAINT [FK_Structure_CmicFoundation]
GO
/****** Object:  ForeignKey [FK_Structure_CmicHeatType]    Script Date: 10/10/2009 15:47:01 ******/
ALTER TABLE [dbo].[Structure]  WITH CHECK ADD  CONSTRAINT [FK_Structure_CmicHeatType] FOREIGN KEY([heatTypeCode])
REFERENCES [dbo].[CmicHeatType] ([code])
GO
ALTER TABLE [dbo].[Structure] CHECK CONSTRAINT [FK_Structure_CmicHeatType]
GO
/****** Object:  ForeignKey [FK_Structure_CmicLossSettlement]    Script Date: 10/10/2009 15:47:01 ******/
ALTER TABLE [dbo].[Structure]  WITH CHECK ADD  CONSTRAINT [FK_Structure_CmicLossSettlement] FOREIGN KEY([lossSettlementCode])
REFERENCES [dbo].[CmicLossSettlement] ([code])
GO
ALTER TABLE [dbo].[Structure] CHECK CONSTRAINT [FK_Structure_CmicLossSettlement]
GO
/****** Object:  ForeignKey [FK_Structure_CmicProtectionClass]    Script Date: 10/10/2009 15:47:01 ******/
ALTER TABLE [dbo].[Structure]  WITH CHECK ADD  CONSTRAINT [FK_Structure_CmicProtectionClass] FOREIGN KEY([protectionClassCode])
REFERENCES [dbo].[CmicProtectionClass] ([code])
GO
ALTER TABLE [dbo].[Structure] CHECK CONSTRAINT [FK_Structure_CmicProtectionClass]
GO
/****** Object:  ForeignKey [FK_Structure_CmicRoofType]    Script Date: 10/10/2009 15:47:01 ******/
ALTER TABLE [dbo].[Structure]  WITH CHECK ADD  CONSTRAINT [FK_Structure_CmicRoofType] FOREIGN KEY([roofTypeCode])
REFERENCES [dbo].[CmicRoofType] ([code])
GO
ALTER TABLE [dbo].[Structure] CHECK CONSTRAINT [FK_Structure_CmicRoofType]
GO
/****** Object:  ForeignKey [FK_Structure_CmicStructureType]    Script Date: 10/10/2009 15:47:01 ******/
ALTER TABLE [dbo].[Structure]  WITH CHECK ADD  CONSTRAINT [FK_Structure_CmicStructureType] FOREIGN KEY([structureTypeCode])
REFERENCES [dbo].[CmicStructureType] ([code])
GO
ALTER TABLE [dbo].[Structure] CHECK CONSTRAINT [FK_Structure_CmicStructureType]
GO
/****** Object:  ForeignKey [FK_Structure_CmicTheftType]    Script Date: 10/10/2009 15:47:01 ******/
ALTER TABLE [dbo].[Structure]  WITH CHECK ADD  CONSTRAINT [FK_Structure_CmicTheftType] FOREIGN KEY([theftTypeCode])
REFERENCES [dbo].[CmicTheftType] ([code])
GO
ALTER TABLE [dbo].[Structure] CHECK CONSTRAINT [FK_Structure_CmicTheftType]
GO
/****** Object:  ForeignKey [FK_Structure_CmicTieDown]    Script Date: 10/10/2009 15:47:02 ******/
ALTER TABLE [dbo].[Structure]  WITH CHECK ADD  CONSTRAINT [FK_Structure_CmicTieDown] FOREIGN KEY([tieDownCode])
REFERENCES [dbo].[CmicTieDown] ([code])
GO
ALTER TABLE [dbo].[Structure] CHECK CONSTRAINT [FK_Structure_CmicTieDown]
GO
/****** Object:  ForeignKey [FK_Underwriting_Policy]    Script Date: 10/10/2009 15:47:10 ******/
ALTER TABLE [dbo].[Underwriting]  WITH CHECK ADD  CONSTRAINT [FK_Underwriting_Policy] FOREIGN KEY([policyId])
REFERENCES [dbo].[Policy] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Underwriting] CHECK CONSTRAINT [FK_Underwriting_Policy]
GO
/****** Object:  ForeignKey [FK_UploadInfo_Policy]    Script Date: 10/10/2009 15:47:16 ******/
ALTER TABLE [dbo].[UploadInfo]  WITH CHECK ADD  CONSTRAINT [FK_UploadInfo_Policy] FOREIGN KEY([policyId])
REFERENCES [dbo].[Policy] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UploadInfo] CHECK CONSTRAINT [FK_UploadInfo_Policy]
GO
/****** Object:  ForeignKey [FK_Watercraft_CmicWatercraftType]    Script Date: 10/10/2009 15:47:19 ******/
ALTER TABLE [dbo].[Watercraft]  WITH CHECK ADD  CONSTRAINT [FK_Watercraft_CmicWatercraftType] FOREIGN KEY([watercraftTypeCode])
REFERENCES [dbo].[CmicWatercraftType] ([code])
GO
ALTER TABLE [dbo].[Watercraft] CHECK CONSTRAINT [FK_Watercraft_CmicWatercraftType]
GO
/****** Object:  ForeignKey [FK_Watercraft_Policy]    Script Date: 10/10/2009 15:47:20 ******/
ALTER TABLE [dbo].[Watercraft]  WITH CHECK ADD  CONSTRAINT [FK_Watercraft_Policy] FOREIGN KEY([policyId])
REFERENCES [dbo].[Policy] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Watercraft] CHECK CONSTRAINT [FK_Watercraft_Policy]
GO