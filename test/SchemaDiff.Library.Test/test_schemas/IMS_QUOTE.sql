
/****** Object:  Table [dbo].[cmicPolicyStatus]    Script Date: 01/29/2010 13:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicPolicyStatus](
	[PolicyStatusID] [int] IDENTITY(1,1) NOT NULL,
	[PolicyStatusCode] [char](1) NOT NULL,
	[StatusDescription] [varchar](30) NOT NULL,
 CONSTRAINT [PK_cmicPolicyStatus_1] PRIMARY KEY CLUSTERED 
(
	[PolicyStatusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmicUnderwritingQuestion]    Script Date: 01/29/2010 13:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicUnderwritingQuestion](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[Question] [varchar](500) NOT NULL,
	[EffectiveDate] [datetime] NOT NULL,
	[ExpirationDate] [datetime] NULL,
	[UnboundAnswer] [varchar](1) NULL,
 CONSTRAINT [PK_cmicUnderwritingQuestion] PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If null then question doesn''t affect the bound status other wise the value in field compared to the questions answer if the same will make the app unbound' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cmicUnderwritingQuestion', @level2type=N'COLUMN',@level2name=N'UnboundAnswer'
GO
/****** Object:  Table [dbo].[cmicCounty]    Script Date: 01/29/2010 13:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicCounty](
	[CountyID] [int] IDENTITY(1,1) NOT NULL,
	[StateCode] [char](2) NOT NULL,
	[CountyName] [varchar](20) NOT NULL,
	[CountyCode] [char](3) NOT NULL,
 CONSTRAINT [PK_cmicCounty] PRIMARY KEY CLUSTERED 
(
	[CountyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmicInsuredType]    Script Date: 01/29/2010 13:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicInsuredType](
	[InsuredTypeID] [int] IDENTITY(1,1) NOT NULL,
	[InsuredTypeDescription] [varchar](50) NOT NULL,
 CONSTRAINT [PK_cmicInsuredType] PRIMARY KEY CLUSTERED 
(
	[InsuredTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmicCoverageSubType]    Script Date: 01/29/2010 13:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicCoverageSubType](
	[CoverageSubTypeID] [int] IDENTITY(1,1) NOT NULL,
	[CoverageSubTypeCode] [varchar](30) NOT NULL,
	[CoverageSubTypeDescription] [varchar](500) NOT NULL,
	[ShortDescription] [varchar](60) NOT NULL,
	[PrintDescription] [varchar](60) NOT NULL,
 CONSTRAINT [PK_cmicCoverageSubType] PRIMARY KEY CLUSTERED 
(
	[CoverageSubTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmicProtectiveDevice]    Script Date: 01/29/2010 13:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicProtectiveDevice](
	[ProtectiveDeviceID] [int] IDENTITY(1,1) NOT NULL,
	[ProtectiveDeviceCode] [varchar](25) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_cmicProtectiveDevice] PRIMARY KEY CLUSTERED 
(
	[ProtectiveDeviceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmicZipCode]    Script Date: 01/29/2010 13:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicZipCode](
	[ZipCodeID] [int] IDENTITY(1,1) NOT NULL,
	[ZipCode] [varchar](5) NOT NULL,
 CONSTRAINT [PK_cmicZipCode] PRIMARY KEY CLUSTERED 
(
	[ZipCodeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmicInterestType]    Script Date: 01/29/2010 13:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicInterestType](
	[InterestTypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeCode] [varchar](1) NOT NULL,
	[Description] [varchar](20) NOT NULL,
 CONSTRAINT [PK_cmicInterestType] PRIMARY KEY CLUSTERED 
(
	[InterestTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmicRelationType]    Script Date: 01/29/2010 13:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicRelationType](
	[RelationTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](1) NOT NULL,
	[Description] [varchar](20) NOT NULL,
 CONSTRAINT [PK_cmicRelationType] PRIMARY KEY CLUSTERED 
(
	[RelationTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmicCoverageAspPage]    Script Date: 01/29/2010 13:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicCoverageAspPage](
	[AspPageID] [int] IDENTITY(1,1) NOT NULL,
	[AspPageName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_cmicCoverageAspPage] PRIMARY KEY CLUSTERED 
(
	[AspPageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmicCompany]    Script Date: 01/29/2010 13:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicCompany](
	[CompanyID] [int] NOT NULL,
	[CompanyName] [varchar](50) NOT NULL,
	[cmicAddressID] [int] NOT NULL,
 CONSTRAINT [PK_cmicCompany] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmicSystem]    Script Date: 01/29/2010 13:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicSystem](
	[SystemID] [int] IDENTITY(1,1) NOT NULL,
	[SystemCode] [varchar](5) NOT NULL,
	[SystemDescription] [varchar](50) NOT NULL,
 CONSTRAINT [PK_cmicSystem] PRIMARY KEY CLUSTERED 
(
	[SystemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmicEntityType]    Script Date: 01/29/2010 13:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicEntityType](
	[EntityTypeID] [int] IDENTITY(1,1) NOT NULL,
	[EntityCode] [varchar](2) NOT NULL,
	[EntityDescription] [varchar](40) NOT NULL,
 CONSTRAINT [PK_cmicEntityType] PRIMARY KEY CLUSTERED 
(
	[EntityTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmicLivestockType]    Script Date: 01/29/2010 13:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicLivestockType](
	[LivestockTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](30) NOT NULL,
 CONSTRAINT [PK_cmicLivestockType] PRIMARY KEY CLUSTERED 
(
	[LivestockTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[AddAgentPayment]    Script Date: 01/29/2010 13:11:48 ******/
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
GO
/****** Object:  StoredProcedure [dbo].[DeleteAgentPayment]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteAgentPayment]
	(
		@id int
	)

AS
EXEC AGENTBILLING.dbo.DeletePendingPayment @id

SELECT @@ROWCOUNT
GO
/****** Object:  Table [dbo].[Message]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Message](
	[MessageID] [int] IDENTITY(1,1) NOT NULL,
	[PolicyID] [int] NOT NULL,
	[AgencyMessage] [varchar](512) NULL,
	[AgentMessage] [varchar](512) NULL,
	[UnderwritingComment] [varchar](512) NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmicSubItemType]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicSubItemType](
	[SubItemTypeID] [int] IDENTITY(1,1) NOT NULL,
	[SubItemTypeDescription] [varchar](20) NOT NULL,
 CONSTRAINT [PK_cmicSubItemType] PRIMARY KEY CLUSTERED 
(
	[SubItemTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmicCoverageType_Program]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmicCoverageType_Program](
	[CoverageProgramID] [int] IDENTITY(1,1) NOT NULL,
	[CoverageTypeID] [int] NOT NULL,
	[ProgramID] [int] NOT NULL,
 CONSTRAINT [PK_cmicCoverageType_PolicyType] PRIMARY KEY CLUSTERED 
(
	[CoverageProgramID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmicBasisType]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicBasisType](
	[BasisTypeID] [int] IDENTITY(1,1) NOT NULL,
	[BasisTypeCode] [char](1) NOT NULL,
	[BasisTypeDescription] [varchar](30) NOT NULL,
 CONSTRAINT [PK_cmicBasisType_1] PRIMARY KEY CLUSTERED 
(
	[BasisTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmicMedicalLimit]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicMedicalLimit](
	[MedicalLimitID] [int] IDENTITY(1,1) NOT NULL,
	[Value] [smallint] NOT NULL,
	[Display] [varchar](50) NOT NULL,
 CONSTRAINT [PK_cmicMedicalLimit] PRIMARY KEY CLUSTERED 
(
	[MedicalLimitID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmicLiabilityLimit]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicLiabilityLimit](
	[LiabilityLimitID] [int] IDENTITY(1,1) NOT NULL,
	[Value] [int] NOT NULL,
	[Display] [varchar](50) NOT NULL,
 CONSTRAINT [PK_cmicLiabilityLimit] PRIMARY KEY CLUSTERED 
(
	[LiabilityLimitID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmicState]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicState](
	[StateCode] [char](2) NOT NULL,
	[StateName] [varchar](20) NOT NULL,
	[Branch] [varchar](2) NULL,
	[Sort] [tinyint] NOT NULL,
 CONSTRAINT [PK_cmicState] PRIMARY KEY CLUSTERED 
(
	[StateCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmicOffer]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicOffer](
	[OfferID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NOT NULL,
	[ProgramID] [int] NOT NULL,
	[Symbol] [varchar](5) NOT NULL,
	[MinimumPremium] [int] NOT NULL,
	[EffectiveDate] [datetime] NOT NULL,
	[ExpirationDate] [datetime] NULL,
 CONSTRAINT [PK_cmicOffer] PRIMARY KEY CLUSTERED 
(
	[OfferID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Batch]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Batch](
	[BatchID] [int] IDENTITY(1,1) NOT NULL,
	[ExtractDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Batch] PRIMARY KEY CLUSTERED 
(
	[BatchID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmicAdditionalCoverageOption]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicAdditionalCoverageOption](
	[AdditionalCoverageID] [int] IDENTITY(1,1) NOT NULL,
	[AdditionalCoverageCode] [varchar](25) NOT NULL,
	[OptionName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_cmicAdditionalCoverageOption_1] PRIMARY KEY CLUSTERED 
(
	[AdditionalCoverageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmicSupportingSymbol]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicSupportingSymbol](
	[SupportingSymbolID] [int] IDENTITY(1,1) NOT NULL,
	[Symbol] [varchar](4) NOT NULL,
 CONSTRAINT [PK_cmicSupportingSymbol] PRIMARY KEY CLUSTERED 
(
	[SupportingSymbolID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmicAddressType]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicAddressType](
	[AddressTypeID] [int] IDENTITY(1,1) NOT NULL,
	[AddressTypeCode] [char](1) NOT NULL,
	[AddressTypeDescription] [varchar](20) NOT NULL,
 CONSTRAINT [PK_cmicAddressType_1] PRIMARY KEY CLUSTERED 
(
	[AddressTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmicDeductible]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicDeductible](
	[DeductibleID] [int] IDENTITY(1,1) NOT NULL,
	[DeductibleValue] [smallint] NOT NULL,
	[DeductibleDisplay] [varchar](10) NOT NULL,
 CONSTRAINT [PK_cmicDeductible] PRIMARY KEY CLUSTERED 
(
	[DeductibleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Policy]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Policy](
	[PolicyID] [int] IDENTITY(1,1) NOT NULL,
	[ProgramID] [int] NOT NULL,
	[PolicyStatusID] [int] NOT NULL,
	[EffectiveDate] [datetime] NOT NULL,
	[DeductibleID] [int] NULL,
	[AgencyID] [int] NOT NULL,
	[AgentID] [int] NOT NULL,
	[SupportingSymbolID] [int] NULL,
	[SupportingPolicyNo] [varchar](10) NULL,
	[BatchID] [int] NULL,
	[LastDateUpdated] [datetime] NOT NULL,
	[isImport] [bit] NOT NULL,
	[isImportComplete] [bit] NULL,
	[TStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_Policy] PRIMARY KEY CLUSTERED 
(
	[PolicyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Underwriting]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Underwriting](
	[UnderwritingID] [int] IDENTITY(1,1) NOT NULL,
	[PolicyID] [int] NOT NULL,
	[QuestionID] [int] NOT NULL,
	[Answer] [varchar](1) NOT NULL,
	[Explanation] [varchar](8000) NULL,
 CONSTRAINT [PK_Underwriting] PRIMARY KEY CLUSTERED 
(
	[UnderwritingID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Address]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[PolicyID] [int] NOT NULL,
	[AddressTypeID] [int] NOT NULL,
	[AddressLine1] [varchar](30) NOT NULL,
	[AddressLine2] [varchar](30) NULL,
	[City] [varchar](30) NOT NULL,
	[StateCode] [char](2) NOT NULL,
	[ZipCode] [char](5) NOT NULL,
	[ZipCode4] [char](4) NULL,
	[CountyID] [int] NULL,
	[ScrubReturnCode] [varchar](3) NULL,
	[isScrubbed] [bit] NOT NULL,
	[isScrubOverrided] [bit] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Note]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Note](
	[NoteID] [int] IDENTITY(1,1) NOT NULL,
	[PolicyID] [int] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[InputDate] [datetime] NOT NULL,
	[NoteText] [varchar](512) NOT NULL,
 CONSTRAINT [PK_Note] PRIMARY KEY CLUSTERED 
(
	[NoteID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UploadInfo]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UploadInfo](
	[UploadInfoID] [int] IDENTITY(1,1) NOT NULL,
	[PolicyID] [int] NOT NULL,
	[UploadedBy] [varchar](100) NOT NULL,
	[PaymentID] [int] NULL,
	[PolicyPrefix] [varchar](4) NULL,
	[PolicyBranch] [varchar](2) NULL,
	[PolicyNumber] [varchar](10) NULL,
	[Bound] [bit] NOT NULL,
	[BoundDate] [datetime] NULL,
	[Producer] [int] NOT NULL,
	[RemittanceAmount] [money] NULL,
	[PaymentMethod] [varchar](3) NULL,
	[CheckNumber] [varchar](50) NULL,
	[AgencyMemo] [varchar](50) NULL,
	[UploadedDate] [datetime] NULL,
 CONSTRAINT [PK_UploadInfo] PRIMARY KEY CLUSTERED 
(
	[UploadInfoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Insured]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Insured](
	[InsuredID] [int] IDENTITY(1,1) NOT NULL,
	[PolicyID] [int] NOT NULL,
	[AddressID] [int] NULL,
	[InsuredTypeID] [int] NULL,
	[EntityTypeID] [int] NULL,
	[OtherEntityDescription] [varchar](20) NULL,
	[FirstName] [varchar](20) NULL,
	[MidName] [varchar](20) NULL,
	[LastName] [varchar](20) NULL,
	[NameSuffix] [varchar](5) NULL,
	[BusinessName] [varchar](65) NULL,
	[BusinessDescription] [varchar](55) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[SSN] [varchar](9) NULL,
	[FEIN] [varchar](20) NULL,
	[DOB] [datetime] NULL,
	[Occupation] [varchar](30) NULL,
	[Gender] [char](1) NULL,
	[RelationTypeID] [int] NULL,
	[LicenseNumber] [varchar](23) NULL,
	[LicenseStateCode] [char](2) NULL,
	[isDriver] [bit] NOT NULL,
	[isRapidRating] [bit] NOT NULL,
 CONSTRAINT [PK_Insured] PRIMARY KEY CLUSTERED 
(
	[InsuredID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rate]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rate](
	[RateID] [bigint] IDENTITY(1,1) NOT NULL,
	[PolicyID] [int] NOT NULL,
	[OfferID] [int] NOT NULL,
	[RateDate] [datetime] NOT NULL,
	[ExpireDate] [datetime] NOT NULL,
	[TotalPremium] [decimal](10, 2) NOT NULL,
	[MinimumPremiumAdj] [decimal](10, 2) NULL,
	[QuoteXmlChecksum] [binary](20) NOT NULL,
 CONSTRAINT [PK_Rate] PRIMARY KEY CLUSTERED 
(
	[RateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LossPayee]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LossPayee](
	[LossPayeeID] [int] IDENTITY(1,1) NOT NULL,
	[PolicyID] [int] NOT NULL,
	[Name1] [varchar](35) NOT NULL,
	[Name2] [varchar](35) NULL,
	[AddressID] [int] NOT NULL,
	[InterestTypeID] [int] NOT NULL,
	[LoanNumber] [varchar](20) NULL,
 CONSTRAINT [PK_LossPayee] PRIMARY KEY CLUSTERED 
(
	[LossPayeeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemDetail]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemDetail](
	[ItemDetailID] [bigint] IDENTITY(1,1) NOT NULL,
	[PolicyID] [int] NOT NULL,
	[CoverageBasisTypeID] [int] NOT NULL,
	[CoverageBasisSubTypeID] [int] NULL,
	[ItemDescription] [varchar](150) NULL,
	[ItemLimit] [int] NOT NULL,
	[DeductibleID] [int] NOT NULL,
	[ItemManufacturer] [varchar](20) NULL,
	[ItemPurchasePrice] [decimal](10, 2) NULL,
	[ItemDateOfPurchase] [datetime] NULL,
	[ItemModel] [varchar](20) NULL,
	[ItemSerialNumber] [varchar](20) NULL,
	[ItemCaliber] [varchar](15) NULL,
	[ItemOtherID] [varchar](20) NULL,
	[NoOfAnimal] [int] NULL,
	[ItemBreed] [varchar](20) NULL,
	[LivestockTypeID] [int] NULL,
	[ItemYear] [varchar](4) NULL,
	[ItemMake] [varchar](20) NULL,
	[ItemAge] [smallint] NULL,
	[ItemLength] [smallint] NULL,
	[LiabilityLimitID] [int] NULL,
	[MedicalLimitID] [int] NULL,
	[ItemLocation] [varchar](40) NULL,
	[BoatMPH] [smallint] NULL,
	[ProtectiveDeviceID] [int] NULL,
	[WatercraftHorsepower] [int] NULL,
	[isRapidRating] [bit] NOT NULL,
 CONSTRAINT [PK_ItemDetail] PRIMARY KEY CLUSTERED 
(
	[ItemDetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [_dta_index_ItemDetail_42_1287675635__K2] ON [dbo].[ItemDetail] 
(
	[PolicyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_ItemDetail_42_1287675635__K2_K3_1_4_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21_22_23_24_25_26_27_28] ON [dbo].[ItemDetail] 
(
	[PolicyID] ASC,
	[CoverageBasisTypeID] ASC
)
INCLUDE ( [ItemDetailID],
[CoverageBasisSubTypeID],
[ItemDescription],
[ItemLimit],
[DeductibleID],
[ItemManufacturer],
[ItemPurchasePrice],
[ItemDateOfPurchase],
[ItemModel],
[ItemSerialNumber],
[ItemCaliber],
[ItemOtherID],
[NoOfAnimal],
[ItemBreed],
[LivestockTypeID],
[ItemYear],
[ItemMake],
[ItemAge],
[ItemLength],
[LiabilityLimitID],
[MedicalLimitID],
[ItemLocation],
[BoatMPH],
[ProtectiveDeviceID],
[WatercraftHorsepower],
[isRapidRating]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmicCounty_ZipCode]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmicCounty_ZipCode](
	[CountyID] [int] NOT NULL,
	[ZipCodeID] [int] NOT NULL,
 CONSTRAINT [PK_cmicCounty_ZipCode] PRIMARY KEY CLUSTERED 
(
	[CountyID] ASC,
	[ZipCodeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmicUnderwriting_CoverageType]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmicUnderwriting_CoverageType](
	[CoverageFilterID] [int] IDENTITY(1,1) NOT NULL,
	[CoverageTypeID] [int] NOT NULL,
	[QuestionID] [int] NOT NULL,
 CONSTRAINT [PK_cmicUnderwriting_CoverageType] PRIMARY KEY CLUSTERED 
(
	[CoverageFilterID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmicBoat_Deductible]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmicBoat_Deductible](
	[BoatDeductibleID] [int] IDENTITY(1,1) NOT NULL,
	[CoverageTypeID] [int] NOT NULL,
	[DeductibleID] [int] NOT NULL,
 CONSTRAINT [PK_cmicBoat_Deductible] PRIMARY KEY CLUSTERED 
(
	[BoatDeductibleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmicCoverageType_BasisType]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmicCoverageType_BasisType](
	[CoverageBasisTypeID] [int] IDENTITY(1,1) NOT NULL,
	[CoverageTypeID] [int] NOT NULL,
	[BasisTypeID] [int] NOT NULL,
 CONSTRAINT [PK_cmicCoverageType_BasisType] PRIMARY KEY CLUSTERED 
(
	[CoverageBasisTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmicCoverageBasisType_CoverageSubType]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmicCoverageBasisType_CoverageSubType](
	[CoverageBasisSubTypeID] [int] IDENTITY(1,1) NOT NULL,
	[CoverageBasisTypeID] [int] NOT NULL,
	[CoverageSubTypeID] [int] NOT NULL,
 CONSTRAINT [PK_cmicCoverageBasisType_CoverageSubType] PRIMARY KEY CLUSTERED 
(
	[CoverageBasisSubTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmicCoverageType]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicCoverageType](
	[CoverageTypeID] [int] IDENTITY(1,1) NOT NULL,
	[CoverageTypeCode] [varchar](40) NOT NULL,
	[CoverageTypeName] [varchar](80) NOT NULL,
	[AspPageID] [int] NULL,
	[ProgramID] [int] NULL,
	[Sort] [tinyint] NOT NULL,
 CONSTRAINT [PK_cmicCoverageType_1] PRIMARY KEY CLUSTERED 
(
	[CoverageTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmicProgram]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicProgram](
	[ProgramID] [int] IDENTITY(1,1) NOT NULL,
	[ProgramCode] [varchar](4) NOT NULL,
	[ProgramDescription] [varchar](50) NOT NULL,
	[AlternateDescription] [varchar](50) NULL,
	[SystemID] [int] NOT NULL,
 CONSTRAINT [PK_cmicPolicyType_1] PRIMARY KEY CLUSTERED 
(
	[ProgramID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MVR]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MVR](
	[MVRID] [int] IDENTITY(1,1) NOT NULL,
	[InsuredID] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[StatusCode] [char](1) NULL,
	[ReturnCode] [int] NOT NULL,
	[MVRReturnCode] [int] NOT NULL,
	[ErrorMessage] [text] NULL,
	[Report] [text] NULL,
 CONSTRAINT [PK_MVR] PRIMARY KEY CLUSTERED 
(
	[MVRID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubItem]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubItem](
	[SubItemID] [int] IDENTITY(1,1) NOT NULL,
	[ItemDetailID] [bigint] NOT NULL,
	[SubItemTypeID] [int] NOT NULL,
	[Limit] [int] NOT NULL,
	[Year] [varchar](4) NULL,
	[Make] [varchar](20) NULL,
	[Model] [varchar](20) NULL,
	[Horsepower] [int] NULL,
	[SerialNumber] [varchar](20) NULL,
 CONSTRAINT [PK_SubItem] PRIMARY KEY CLUSTERED 
(
	[SubItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LossPayee_Item]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LossPayee_Item](
	[PayeeItemID] [int] IDENTITY(1,1) NOT NULL,
	[LossPayeeID] [int] NOT NULL,
	[ItemDetailID] [bigint] NOT NULL,
	[SubItemID] [int] NULL,
 CONSTRAINT [PK_LossPayee_Item] PRIMARY KEY CLUSTERED 
(
	[PayeeItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_AdditionalCoverage]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_AdditionalCoverage](
	[ItemAdditionalCoverageID] [int] IDENTITY(1,1) NOT NULL,
	[ItemDetailID] [bigint] NOT NULL,
	[AdditionalCoverageID] [int] NOT NULL,
 CONSTRAINT [PK_Item_AdditionalCoverage] PRIMARY KEY CLUSTERED 
(
	[ItemAdditionalCoverageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmicOffer_State]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicOffer_State](
	[OfferID] [int] NOT NULL,
	[StateCode] [char](2) NOT NULL,
 CONSTRAINT [PK_cmicOfferState] PRIMARY KEY CLUSTERED 
(
	[OfferID] ASC,
	[StateCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmicAddress]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmicAddress](
	[cmicAddressID] [int] NOT NULL,
	[AddressLine1] [varchar](30) NOT NULL,
	[AddressLine2] [varchar](30) NULL,
	[City] [varchar](30) NOT NULL,
	[StateCode] [char](2) NOT NULL,
	[ZipCode] [char](5) NOT NULL,
	[ZipCode4] [char](4) NULL,
 CONSTRAINT [PK_cmicAddress] PRIMARY KEY CLUSTERED 
(
	[cmicAddressID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RateItem]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RateItem](
	[RateItemID] [bigint] IDENTITY(1,1) NOT NULL,
	[RateID] [bigint] NOT NULL,
	[ItemDetailID] [bigint] NULL,
	[SubItemID] [int] NULL,
	[ClassCode] [varchar](5) NULL,
	[Description] [varchar](50) NOT NULL,
	[Premium] [decimal](10, 2) NOT NULL,
	[LiabilityCoverage] [varchar](1) NULL,
	[MedPay] [varchar](1) NULL,
 CONSTRAINT [PK_RateItem] PRIMARY KEY CLUSTERED 
(
	[RateItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [_dta_index_RateItem_42_1787153412__K2_1_3_4_5_6_7_8_9] ON [dbo].[RateItem] 
(
	[RateID] ASC
)
INCLUDE ( [RateItemID],
[ItemDetailID],
[SubItemID],
[ClassCode],
[Description],
[Premium],
[LiabilityCoverage],
[MedPay]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmicCoverageBasisType_AdditionalOption]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmicCoverageBasisType_AdditionalOption](
	[TypeOptionID] [int] IDENTITY(1,1) NOT NULL,
	[CoverageBasisTypeID] [int] NOT NULL,
	[AdditionalCoverageID] [int] NOT NULL,
 CONSTRAINT [PK_cmicCoverageBasisType_AdditionalOption] PRIMARY KEY CLUSTERED 
(
	[TypeOptionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmicCoverageSubType_AdditionalOption]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmicCoverageSubType_AdditionalOption](
	[SubTypeOptionID] [int] IDENTITY(1,1) NOT NULL,
	[CoverageBasisSubTypeID] [int] NOT NULL,
	[AdditionalCoverageID] [int] NOT NULL,
 CONSTRAINT [PK_cmicCoverageSubType_AdditionalOption] PRIMARY KEY CLUSTERED 
(
	[SubTypeOptionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmicProgram_SupportingSymbol]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmicProgram_SupportingSymbol](
	[ProgramID] [int] NOT NULL,
	[SupportingSymbolID] [int] NOT NULL,
 CONSTRAINT [PK_cmicProgram_SupportingSymbol] PRIMARY KEY CLUSTERED 
(
	[ProgramID] ASC,
	[SupportingSymbolID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmicDeductible_Program]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmicDeductible_Program](
	[DeductibleProgramID] [int] IDENTITY(1,1) NOT NULL,
	[DeductibleID] [int] NOT NULL,
	[ProgramID] [int] NOT NULL,
 CONSTRAINT [PK_cmicDeductible_Program] PRIMARY KEY CLUSTERED 
(
	[DeductibleProgramID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmicUnderwriting_Program]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmicUnderwriting_Program](
	[ProgramFilterID] [int] IDENTITY(1,1) NOT NULL,
	[ProgramID] [int] NOT NULL,
	[QuestionID] [int] NOT NULL,
 CONSTRAINT [PK_cmicUnderwriting_Program] PRIMARY KEY CLUSTERED 
(
	[ProgramFilterID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[GetLookupList]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetLookupList]
AS
/**********
First Column should be ID
Second Column should be Description
*/
--Get the list of States		(cmicState)
SELECT	StateCode,
		StateName,
		Branch,
		Sort
FROM	cmicState

--Get the list of Programs for this rater		(cmicProgram)
SELECT	ProgramID,
		AlternateDescription,
		ProgramDescription,
		ProgramCode
FROM	cmicProgram p JOIN cmicSystem s ON p.SystemID = s.SystemID
WHERE	SystemCode = 'IMS'

--Get the list of Deductibles along with the ProgramID		(cmicDeductible)
SELECT	d.DeductibleID,
		DeductibleDisplay,
		DeductibleValue,
		ProgramID
FROM	cmicDeductible d JOIN cmicDeductible_Program dp ON d.DeductibleID = dp.DeductibleID

--Get the list of Coverage Types		(cmicCoverageType)
SELECT	c.CoverageTypeID,
		CoverageTypeCode,
		CoverageTypeName,
		AspPageName,
		Sort,
		c.ProgramID AS DeductibleProgramID,
		p.ProgramID
FROM	cmicCoverageType c JOIN cmicCoverageType_Program p ON c.CoverageTypeID = p.CoverageTypeID
		JOIN cmicCoverageAspPage a ON c.AspPageID = a.AspPageID		

--Get the list of Basis Descriptions for each Coverage Type		(cmicCoverageBasis)
SELECT	CoverageBasisTypeID,
		BasisTypeDescription,
		cb.CoverageTypeID,
		cb.BasisTypeID
FROM	cmicCoverageType_BasisType cb JOIN cmicBasisType b ON cb.BasisTypeID = b.BasisTypeID

--Get the list of Counties  (cmicCounty)
SELECT	CountyID,
		CountyName,
		CountyCode,
		StateCode
FROM	cmicCounty		

--Get the list of Deductibles for Boats (cmicBoatDeductible)
SELECT	b.DeductibleID,
		DeductibleDisplay,
		DeductibleValue,
		CoverageTypeID
FROM	cmicBoat_Deductible b JOIN cmicDeductible d on b.DeductibleID = d.DeductibleID

--Get the list of Coverage Sub Types (cmicCoverageSubType)
SELECT	CoverageBasisSubTypeID,
		ShortDescription,
		PrintDescription,
		CoverageSubTypeDescription,
		cbts.CoverageBasisTypeID,
		CoverageTypeID
FROM	cmicCoverageSubType s JOIN cmicCoverageBasisType_CoverageSubType cbts ON s.CoverageSubTypeID = cbts.CoverageSubTypeID
		JOIN cmicCoverageType_BasisType ctbt ON cbts.CoverageBasisTypeID = ctbt.CoverageBasisTypeID
		
--Get the list of Optional Coverages for the SubTypes (cmicSubTypeOption)
SELECT	aco.AdditionalCoverageID,
		OptionName,
		CoverageBasisSubTypeID
FROM	cmicAdditionalCoverageOption aco JOIN cmicCoverageSubType_AdditionalOption s ON aco.AdditionalCoverageID = s.AdditionalCoverageID		

--Get the list of Optional Coverages for the selected basis (cmicOption)
SELECT	aco.AdditionalCoverageID,
		OptionName,
		CoverageBasisTypeID
FROM	cmicAdditionalCoverageOption aco JOIN cmicCoverageBasisType_AdditionalOption b ON aco.AdditionalCoverageID = b.AdditionalCoverageID
		
--Get the list of SubItem Types       (cmicSubItemType)
SELECT	SubItemTypeID,
		SubItemTypeDescription
FROM	cmicSubItemType		

--Get the list of Liablity Limits     (cmicLiabLimit)
SELECT	LiabilityLimitID,
		Display,
		Value
FROM	cmicLiabilityLimit
		
--Get the list of Medical Limits	  (cmicMedLimit)
SELECT	MedicalLimitID,
		Display,
		Value
FROM	cmicMedicalLimit		

--Get the list of Entity Types			(cmicEntityType)
SELECT	EntityTypeID,
		EntityDescription
FROM	cmicEntityType

--Get the list of Protective Devices	(cmicProtectiveDevice)
SELECT	ProtectiveDeviceID,
		Description
FROM	cmicProtectiveDevice	

--Get the list of Interest Types for Loss Payee screen (cmicInterestType)
SELECT	InterestTypeID,
		Description,
		TypeCode
FROM	cmicInterestType
		
--Get the list of Policy Statuses		(cmicPolicyStatus)
SELECT	PolicyStatusID,
		PolicyStatusCode,
		StatusDescription
FROM	cmicPolicyStatus

--Get the list of Underwriting Questions	(cmicQuestion)
SELECT	uq.QuestionID,
		Question,
		EffectiveDate,
		ExpirationDate,
		ProgramID,
		CoverageTypeID = NULL,
		UnboundAnswer
FROM	cmicUnderwritingQuestion uq	JOIN cmicUnderwriting_Program up ON uq.QuestionID = up.QuestionID
UNION
SELECT	uq.QuestionID,
		Question,
		EffectiveDate,
		ExpirationDate,
		ProgramID = NULL,
		CoverageTypeID,
		UnboundAnswer
FROM	cmicUnderwritingQuestion uq JOIN cmicUnderwriting_CoverageType uc ON uq.QuestionID = uc.QuestionID		

--Get watercraft relation type list		(cmicRelation)
SELECT	RelationTypeID,
		Description
FROM	cmicRelationType

--Get the livestock groupings			(cmicLivestockType)
SELECT	LivestockTypeID,
		Description
FROM	cmicLivestockType

--Get the list of supporting symbols
SELECT	pss.SupportingSymbolID,
		Symbol,
		ProgramID
FROM	cmicProgram_SupportingSymbol pss 
		JOIN cmicSupportingSymbol ss ON pss.SupportingSymbolID = ss.SupportingSymbolID
GO
/****** Object:  StoredProcedure [dbo].[GetQuoteInfoList]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	@sortBy varchar(50),
	@sortOrder varchar(4)
)
AS
IF @sortBy IS NULL BEGIN
	SET @sortBy = 'LastDateUpdated'
END
IF @sortOrder IS NULL BEGIN
	SET @sortOrder = 'DESC'
END

SELECT TOP 100
	p.PolicyID,
	p.BatchID,
	b.ExtractDate,
	p.EffectiveDate,	
	(ISNULL(i.BusinessName + ' ','') + ISNULL(i.FirstName,'') + ' ' + ISNULL(i.MidName,'') + ' ' + ISNULL(i.LastName,'')) as FullName,
	a.AddressLine1 as Address,
	a.City,
	u.PolicyPrefix + ' ' + PolicyBranch + REPLICATE('0', 8 - LEN(u.PolicyNumber)) + u.PolicyNumber AS PolicyNumber,	
	a.StateCode as State,
	a.ZipCode,
	p.AgencyID,
	p.AgentID
FROM Policy p 
	LEFT OUTER JOIN cmicPolicyStatus ps ON p.PolicyStatusID = ps.PolicyStatusID
	LEFT OUTER JOIN Insured i ON i.PolicyID = p.PolicyID AND i.InsuredTypeId = 1
	LEFT OUTER JOIN Address a ON a.AddressID = i.AddressID	
	LEFT OUTER JOIN UploadInfo u ON u.PolicyID = p.PolicyID
	LEFT OUTER JOIN Rate r ON r.PolicyID = p.PolicyID		
	LEFT OUTER JOIN Batch b ON b.BatchID = p.BatchID
WHERE
	((FirstName like '%' + @firstName + '%' OR BusinessName like '%' + @firstName + '%') OR @firstName is NULL)
	AND (LastName like @lastName + '%' OR @lastName is NULL)
	AND (City like @city + '%' OR @city is NULL)
	AND (StateCode = @state OR @state is NULL)
	AND (ZipCode = @zip OR @zip is NULL)
	AND (PolicyNumber like @polNumber OR @polNumber IS NULL)
	AND (AgencyID = @agencyId OR @agencyId = 0 OR @agencyId IS NULL)
	AND (AgentID = @agentId OR @agentId = 0 OR @agentId IS NULL)
	AND (p.PolicyID = @policyId OR @policyId IS NULL)
	AND (PolicyStatusCode = @reqStatus OR @reqStatus IS NULL)
	AND (bound = @bound OR @bound IS NULL)
ORDER BY
	CASE 
		WHEN @sortBy = 'batchId'  AND @sortOrder = 'ASC' THEN p.BatchID
	END ASC,
	CASE 
		WHEN @sortBy = 'batchId'  AND @sortOrder = 'DESC' THEN p.BatchID
	END DESC,
	CASE 
		WHEN @sortBy = 'batchId'  AND @sortOrder = 'ASC' THEN cast(p.BatchID as varchar(10))
		WHEN @sortBy = 'FirstName'  AND @sortOrder = 'ASC' THEN FirstName
		WHEN @sortBy = 'LastName'  AND @sortOrder = 'ASC' THEN LastName
		WHEN @sortBy = 'LastDateUpdated' AND @sortOrder = 'ASC' THEN convert(char(19), LastDateUpdated, 20) 
		WHEN @sortBy = 'ZipCode' AND @sortOrder = 'ASC' THEN ZipCode
		WHEN @sortBy = 'City' AND @sortOrder = 'ASC' THEN City
		WHEN @sortBy = 'State' AND @sortOrder = 'ASC' THEN StateCode
	END ASC,
	CASE 
		WHEN @sortBy = 'batchId'  AND @sortOrder = 'DESC' THEN cast(p.BatchID as varchar(10))
		WHEN @sortBy = 'FirstName'  AND @sortOrder = 'DESC' THEN FirstName
		WHEN @sortBy = 'LastName'  AND @sortOrder = 'DESC' THEN LastName
		WHEN @sortBy = 'LastDateUpdated' AND @sortOrder = 'DESC' THEN convert(char(19), LastDateUpdated, 20) 
		WHEN @sortBy = 'ZipCode' AND @sortOrder = 'DESC' THEN ZipCode
		WHEN @sortBy = 'City' AND @sortOrder = 'DESC' THEN City
		WHEN @sortBy = 'State' AND @sortOrder = 'DESC' THEN StateCode
	END DESC
GO
/****** Object:  StoredProcedure [dbo].[GetQuote]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetQuote]
	(
		@policyID int
	)
AS
--Policy Info
SELECT	PolicyID,
		ProgramID,
		Policy.PolicyStatusID,
		PolicyStatusCode,
		EffectiveDate,
		DeductibleID,
		AgencyID,
		AgentID,
		SupportingSymbolID,
		SupportingPolicyNo,
		BatchID,
		isImport,
		isImportComplete,
		TStamp 
FROM	Policy LEFT JOIN cmicPolicyStatus ps ON Policy.PolicyStatusID = ps.PolicyStatusID
WHERE	PolicyID = @policyID

--Addresses
SELECT  AddressID,
		PolicyID,
		AddressTypeID,
		AddressLine1,
		AddressLine2,
		City,
		StateCode,
		ZipCode,
		ZipCode4,
		CountyID,
		ScrubReturnCode,
		isScrubbed,
		isScrubOverrided
FROM	[Address]
WHERE	PolicyID = @policyID	

--Insureds
SELECT	InsuredID,
		PolicyID,
		AddressID,
		i.InsuredTypeID,
		InsuredTypeDescription,
		EntityTypeID,
		OtherEntityDescription,
		FirstName,
		MidName,
		LastName,
		NameSuffix,
		BusinessName,
		BusinessDescription,
		PhoneNumber,
		SSN,
		FEIN,
		DOB,
		Occupation,
		Gender,
		RelationTypeID,
		LicenseNumber,
		LicenseStateCode,
		isDriver,
		isRapidRating
FROM	Insured i LEFT JOIN cmicInsuredType c ON i.InsuredTypeID = c.InsuredTypeID
WHERE	PolicyID = @policyID

--Items
SELECT	[ItemDetailID],
		[PolicyID],
		it.[CoverageBasisTypeID],
		[CoverageBasisSubTypeID],
		[ItemDescription],
		[ItemLimit],
		[DeductibleID],
		[ItemManufacturer],
		[ItemPurchasePrice],
		[ItemDateOfPurchase],
		[ItemModel],
		[ItemSerialNumber],
		[ItemCaliber],
		[ItemOtherID],
		NoOfAnimal,
		[ItemBreed],
		[LivestockTypeID],
		[ItemYear],
		[ItemMake],
		[ItemAge],
		[ItemLength],
		[LiabilityLimitID],
		[MedicalLimitID],
		[ItemLocation],
		BoatMPH,
		ProtectiveDeviceID,
		WatercraftHorsepower,
		isRapidRating
FROM	[dbo].[ItemDetail] it 
		JOIN cmicCoverageType_BasisType cb ON it.CoverageBasisTypeID = cb.CoverageBasisTypeID
		JOIN cmicCoverageType ct ON cb.CoverageTypeID = ct.CoverageTypeID
WHERE	[PolicyID] = @policyID
ORDER BY	CoverageTypeName

--SubItems
SELECT	SubItemID,
		si.ItemDetailID,
		SubItemTypeID,
		Limit,
		[Year],
		Make,
		Model,
		Horsepower,
		SerialNumber
FROM	SubItem si JOIN ItemDetail it ON si.ItemDetailID = it.ItemDetailID
WHERE	PolicyID = @policyID
		
--Additional Coverages
SELECT	ItemAdditionalCoverageID,
		ia.ItemDetailID,
		AdditionalCoverageID
FROM	Item_AdditionalCoverage ia JOIN ItemDetail it ON ia.ItemDetailID = it.ItemDetailID
WHERE	PolicyID = @policyID		

--Loss Payee
SELECT	LossPayeeID,
		PolicyID,
		Name1,
		Name2,
		AddressID,
		InterestTypeID,
		LoanNumber
FROM	LossPayee
WHERE	PolicyID = @PolicyID	

--Loss Payee Items
SELECT	lpi.LossPayeeID,
		ItemDetailID,
		SubItemID
FROM	LossPayee_Item lpi JOIN LossPayee lp ON lpi.LossPayeeID = lp.LossPayeeID
WHERE	PolicyID = @PolicyID	

--Underwriting
SELECT	UnderwritingID,
		PolicyID,
		QuestionID,
		Answer,
		Explanation
FROM	Underwriting
WHERE	PolicyID = @policyID			

--Rate
SELECT	RateID,
		PolicyID,
		OfferID,
		RateDate,
		ExpireDate,
		TotalPremium,
		MinimumPremiumAdj,
		QuoteXmlChecksum
FROM	Rate
WHERE	PolicyID = @policyID

--RateItem
SELECT	RateItemID,
		ri.RateID,
		ItemDetailID,
		SubItemID,
		ClassCode,
		Description,
		Premium,
		LiabilityCoverage,
		MedPay
FROM	RateItem ri JOIN Rate r ON ri.RateID = r.RateID
WHERE	PolicyID = @policyID

--UploadInfo
SELECT	UploadInfoID,
		PolicyID,
		UploadedBy,
		PaymentID,
		PolicyPrefix,
		PolicyBranch,
		PolicyNumber,
		Bound,
		BoundDate,
		Producer,
		RemittanceAmount,
		PaymentMethod,
		CheckNumber,
		AgencyMemo
FROM	UploadInfo
WHERE	PolicyID = @policyID		

--Messages
SELECT	MessageID,
		PolicyID,
		AgencyMessage,
		AgentMessage,
		UnderwritingComment
FROM	[Message]
WHERE	PolicyID = @policyID	

--Notes
SELECT	NoteID,
		PolicyID,
		UserName,
		InputDate,
		NoteText
FROM	Note
WHERE	PolicyID = @policyID
GO
/****** Object:  StoredProcedure [dbo].[UpdatePolicy]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdatePolicy]
(
	@id int, 
	@ProgramID int, 
	@PolicyStatusID int, 
	@EffectiveDate datetime, 
	@DeductibleID int,
	@AgencyID int, 
	@AgentID int, 
	@SupportingSymbolID int,
	@SupportingPolicyNo varchar(10),
	@BatchID int, 
	@isImport bit,
	@isImportComplete bit,
	@TStamp timestamp,
	@TStampOut TIMESTAMP OUTPUT
)
AS

UPDATE [dbo].[Policy] SET
	[ProgramID] = @ProgramID,
	[PolicyStatusID] = @PolicyStatusID,
	[EffectiveDate] = @EffectiveDate,
	[DeductibleID] = @DeductibleID,
	[AgencyID] = @AgencyID,
	[AgentID] = @AgentID,
	SupportingSymbolID = @SupportingSymbolID,
	SupportingPolicyNo = @SupportingPolicyNo,
	[BatchID] = @BatchID,
	[LastDateUpdated] = GETDATE(),
	isImport = @isImport,
	isImportComplete = @isImportComplete
WHERE
	[PolicyID] = @id	
	AND [TStamp] = @TStamp
	
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT

-- get the new timestamp
SET @TStampOut = (SELECT TStamp FROM [dbo].[Policy] WHERE [PolicyID] = @id)

SELECT  @rowCountOut
GO
/****** Object:  StoredProcedure [dbo].[AddPolicy]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddPolicy]
(
	@ProgramID int,
	@PolicyStatusID int,
	@EffectiveDate datetime,
	@DeductibleID int,
	@AgencyID int,
	@AgentID int,
	@SupportingSymbolID int,
	@SupportingPolicyNo varchar(10),
	@BatchID int,
	@isImport bit,
	@isImportComplete bit,
	@id int OUTPUT,
	@TStamp timestamp OUTPUT
)	
AS

INSERT INTO [dbo].[Policy] (
	[ProgramID],
	[PolicyStatusID],
	[EffectiveDate],
	[DeductibleID],
	[AgencyID],
	[AgentID],
	SupportingSymbolID,
	SupportingPolicyNo,
	[BatchID],
	isImport,
	isImportComplete
) VALUES (
	@ProgramID,
	@PolicyStatusID,
	@EffectiveDate,
	@DeductibleID,
	@AgencyID,
	@AgentID,
	@SupportingSymbolID,
	@SupportingPolicyNo,
	@BatchID,
	@isImport,
	@isImportComplete
)
SET @id = @@IDENTITY
SELECT @TStamp = TStamp FROM [Policy] WHERE PolicyID = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[GetBatchForUpload]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetBatchForUpload]
	(
		@batchId int
	)

AS

-- Get Policy and Upload Information
SELECT	p.PolicyID,
		EffectiveDate,
		DeductibleValue AS 'DefaultDeductible',
		AgencyID,
		AgentID,
		UploadedBy,
		PolicyPrefix,
		PolicyBranch,
		PolicyNumber,
		Bound,
		BoundDate,
		Producer,
		RemittanceAmount,
		PaymentMethod
FROM	Policy p 
		JOIN cmicDeductible d ON p.DeductibleID = d.DeductibleID
		JOIN UploadInfo u ON p.PolicyID = u.PolicyID
WHERE	p.PolicyID IN
		(SELECT	PolicyID
		 FROM	Policy
		 WHERE	BatchID = @batchId
		)		

-- Get Primary Location
SELECT	AddressID,
		PolicyID,
		AddressLine1,
		AddressLine2,
		City,
		a.StateCode AS 'RatingState',
		ZipCode,
		ZipCode4,
		CountyCode,
		'Y' AS 'LocationEndVal'
FROM	Address a
		JOIN cmicCounty c ON a.CountyID = c.CountyID
		JOIN cmicAddressType t ON a.AddressTypeID = t.AddressTypeID
WHERE	AddressTypeCode = 'L' AND
		PolicyID IN
		(SELECT PolicyID
		 FROM	Policy
		 WHERE	BatchID = @batchId
		)

-- Get ALL Insureds and their Addresses
SELECT	InsuredID,
		i.PolicyID,
		InsuredTypeDescription,
		EntityCode,
		OtherEntityDescription,
		FirstName,
		MidName,
		LastName,
		NameSuffix,
		BusinessName,
		BusinessDescription,
		PhoneNumber,
		SSN,
		DOB,
		Gender,
		LicenseNumber,
		LicenseStateCode,
		i.AddressID,
		AddressLine1,
		AddressLine2,
		City,
		a.StateCode,
		ZipCode,
		ZipCode4,
		CountyCode,
		AddressTypeCode,
		'Y' AS 'InsuredEndVal'
FROM	Insured i
		JOIN cmicInsuredType it ON i.InsuredTypeID = it.InsuredTypeID
		LEFT JOIN Address a ON i.AddressID = a.AddressID
		LEFT JOIN cmicCounty c ON a.CountyID = c.CountyID
		LEFT JOIN cmicAddressType t ON a.AddressTypeID = t.AddressTypeID
		LEFT JOIN cmicEntityType e ON i.EntityTypeID = e.EntityTypeID
WHERE	i.PolicyID IN
		(SELECT PolicyID
		 FROM	Policy
		 WHERE	BatchID = @batchId
		)
		AND i.InsuredTypeID < 4 -- 1 & 2 are Applicant and Co-Applicant 3 = Named Insured

-- Get ALL Items
SELECT	i.ItemDetailID,
		i.PolicyID,
		ClassCode,
		ct.CoverageTypeCode,
		ItemDescription,
		ShortDescription,
		ItemLimit,
		DeductibleValue AS 'ItemDeductible',
		ItemManufacturer,
		ItemPurchasePrice,
		ItemDateOfPurchase,
		ItemModel,
		ItemSerialNumber,
		ItemCaliber,
		ItemOtherID,
		NoOfAnimal,
		ItemBreed,
		li.Description,
		ItemYear,
		ItemMake,
		ItemAge,
		ItemLength,
		l.Value AS 'LiabilityLimit',
		m.Value AS 'MedicalLimit',
		(SELECT ClassCode
		 FROM	RateItem ri
		 WHERE	LiabilityCoverage IS NOT NULL
				AND ri.ItemDetailID = i.ItemDetailID
		)	AS 'LiabilityClassCode',				
		ItemLocation,
		BoatMPH,
		ProtectiveDeviceCode,
		WatercraftHorsepower,
		(SELECT 'Y'
		 FROM	Item_AdditionalCoverage iac
				JOIN cmicAdditionalCoverageOption aco ON iac.AdditionalCoverageID = aco.AdditionalCoverageID
		 WHERE	OptionName LIKE '%Foreign Object%'
				AND iac.ItemDetailID = i.ItemDetailID
		)	AS 'ForeignObject'
FROM	ItemDetail i
		JOIN cmicCoverageType_BasisType ctbt ON ctbt.CoverageBasisTypeID = i.CoverageBasisTypeID
			JOIN cmicCoverageType ct ON ct.CoverageTypeID = ctbt.CoverageTypeID
			JOIN cmicBasisType bt ON bt.BasisTypeID = ctbt.BasisTypeID
		JOIN cmicDeductible d ON i.DeductibleID = d.DeductibleID
		LEFT JOIN RateItem ri ON i.ItemDetailID = ri.ItemDetailID AND ri.SubItemID IS NULL
		LEFT JOIN cmicCoverageBasisType_CoverageSubType cbst ON i.CoverageBasisSubTypeID = cbst.CoverageBasisSubTypeID
		LEFT JOIN cmicCoverageSubType cst ON cbst.CoverageSubTypeID = cst.CoverageSubTypeID
		LEFT JOIN cmicLiabilityLimit l ON i.LiabilityLimitID = l.LiabilityLimitID
		LEFT JOIN cmicMedicalLimit m ON i.MedicalLimitID = m.MedicalLimitID
		LEFT JOIN cmicProtectiveDevice p ON i.ProtectiveDeviceID = p.ProtectiveDeviceID
		LEFT JOIN cmicLivestockType li ON i.LivestockTypeID = li.LivestockTypeID
WHERE	LiabilityCoverage IS NULL AND
		MedPay IS NULL AND
		i.PolicyID IN
		(SELECT PolicyID
		 FROM	Policy
		 WHERE	BatchID = @batchId
		)
ORDER BY ct.CoverageTypeName

-- Get SubItems
SELECT	s.SubItemID,
		s.ItemDetailID,
		SubItemTypeDescription,
		Limit,
		[Year],
		Make,
		Model,
		Horsepower,
		SerialNumber,
		'Y' AS 'SubItemEndVal'
FROM	SubItem s
		JOIN ItemDetail i ON s.ItemDetailID = i.ItemDetailID
		JOIN cmicSubItemType t ON s.SubItemTypeID = t.SubItemTypeID
WHERE	i.PolicyID IN
		(SELECT PolicyID
		 FROM	Policy
		 WHERE	BatchID = @batchId
		)
		
-- Let the uploader know that it's the end of a item
SELECT	ItemDetailID,
		'Y' AS 'ItemEndVal'
FROM	ItemDetail
WHERE	PolicyID IN
		(SELECT PolicyID
		 FROM	Policy
		 WHERE	BatchID = @batchId
		)		
				
-- Get Loss Payee
SELECT	LossPayeeID,
		l.PolicyID,
		Name1,
		Name2,
		LoanNumber,
		TypeCode,
		l.AddressID,
		AddressLine1,
		AddressLine2,
		City,
		StateCode,
		ZipCode,
		ZipCode4,
		AddressTypeCode
FROM	LossPayee l
		JOIN cmicInterestType it ON l.InterestTypeID = it.InterestTypeID		
		JOIN Address a ON l.AddressID = a.AddressID
		LEFT JOIN cmicAddressType t ON a.AddressTypeID = t.AddressTypeID
WHERE	l.PolicyID IN
		(SELECT PolicyID
		 FROM	Policy
		 WHERE	BatchID = @batchId
		)		
		
-- Get Loss Payee Items
SELECT	LossPayeeID,
		li.ItemDetailID,
		ISNULL(i.PolicyID,s.PolicyID) AS PolicyID,
		ISNULL(ct.CoverageTypeCode,s.CoverageTypeCode) AS CoverageTypeCode,
		CoverageSubTypeCode,
		s.SubItemTypeDescription,
		ItemDescription,
		ItemManufacturer,
		ItemModel,
		ItemSerialNumber,
		ItemCaliber,
		ItemOtherID,
		ItemBreed,
		NoOfAnimal,
		l.Description,
		ItemYear,
		ItemMake,
		WatercraftHorsepower,
		[Year],
		Make,
		Model,
		Horsepower,
		SerialNumber,
		'Y' AS 'PayeeItemEndVal'
FROM	LossPayee_Item li
		LEFT JOIN ItemDetail i ON li.ItemDetailID = i.ItemDetailID AND li.SubItemID IS NULL
		LEFT JOIN cmicCoverageType_BasisType ctbt ON i.CoverageBasisTypeID = ctbt.CoverageBasisTypeID
		LEFT JOIN cmicCoverageType ct ON ctbt.CoverageTypeID = ct.CoverageTypeID
		LEFT JOIN cmicLivestockType l ON i.LivestockTypeID = l.LivestockTypeID
		LEFT JOIN (	SELECT	CoverageSubTypeCode,
							CoverageBasisSubTypeID
					FROM cmicCoverageBasisType_CoverageSubType cbtst 
					JOIN cmicCoverageSubType cst ON cbtst.CoverageSubTypeID = cst.CoverageSubTypeID
					WHERE	CoverageBasisTypeID = 1 --Only need to get the subtype code for boats owners coverage
				  ) AS cbtst ON i.CoverageBasisSubTypeID = cbtst.CoverageBasisSubTypeID		
		LEFT JOIN (	SELECT	i.PolicyID,
							s.SubItemID,
							[Year],
							Make,
							Model,
							Horsepower,
							SerialNumber,
							CoverageTypeCode,
							SubItemTypeDescription
					FROM ItemDetail i JOIN SubItem s ON i.ItemDetailID = s.ItemDetailID
					JOIN cmicSubItemType sit ON s.SubItemTypeID = sit.SubItemTypeID
					JOIN cmicCoverageType_BasisType ctbt ON i.CoverageBasisTypeID = ctbt.CoverageBasisTypeID
					JOIN cmicCoverageType ct ON ctbt.CoverageTypeID = ct.CoverageTypeID
					WHERE i.PolicyID IN (SELECT PolicyID
										 FROM	Policy
										 WHERE	BatchID = @batchId
										)
				  ) AS s ON li.SubItemID = s.SubItemID
WHERE	ISNULL(i.PolicyID,s.PolicyID) IN
		(SELECT PolicyID
		 FROM	Policy
		 WHERE	BatchID = @batchId
		)
		
-- Let the uploader know this is the end of a Loss Payee
SELECT	LossPayeeID,
		'Y' AS 'PayeeEndVal'
FROM	LossPayee
WHERE	PolicyID IN
		(SELECT PolicyID
		 FROM	Policy
		 WHERE	BatchID = @batchId
		)
GO
/****** Object:  StoredProcedure [dbo].[GetQuoteForRating]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetQuoteForRating]
	(
		@policyId int
	)

AS
SELECT	p.PolicyID,
		ProgramCode,
		EffectiveDate,
		StateCode
FROM	Policy p
		JOIN cmicProgram cp ON cp.ProgramID = p.ProgramID
		JOIN Address a ON a.PolicyID = p.PolicyID
			AND a.AddressTypeID = (SELECT	AddressTypeID
								   FROM		cmicAddressType
								   WHERE	AddressTypeCode = 'L'
								  )
WHERE	p.PolicyID = @policyId

SELECT	i.ItemDetailID,
		PolicyID,
		CoverageTypeCode,
		BasisTypeCode,
		CoverageSubTypeCode,
		ItemLimit,
		DeductibleValue,
		ItemAge,
		ItemLength,
		BoatMPH,
		WatercraftHorsepower,
		ll.Value AS 'LimitOfLiab',
		ml.Value AS 'IncMedPay',
		ProtectiveDeviceCode
FROM	ItemDetail i
		JOIN cmicCoverageType_BasisType ctbt ON ctbt.CoverageBasisTypeID = i.CoverageBasisTypeID
			JOIN cmicCoverageType ct ON ct.CoverageTypeID = ctbt.CoverageTypeID
			JOIN cmicBasisType bt ON bt.BasisTypeID = ctbt.BasisTypeID
		JOIN cmicDeductible d ON d.DeductibleID = i.DeductibleID
		LEFT OUTER JOIN cmicCoverageBasisType_CoverageSubType btct ON btct.CoverageBasisSubTypeID = i.CoverageBasisSubTypeID		
		LEFT OUTER JOIN cmicCoverageSubType cst ON cst.CoverageSubTypeID = btct.CoverageSubTypeID				
		LEFT OUTER JOIN cmicLiabilityLimit ll ON i.LiabilityLimitID = ll.LiabilityLimitID
		LEFT OUTER JOIN cmicMedicalLimit ml ON i.MedicalLimitID = ml.MedicalLimitID
		LEFT OUTER JOIN cmicProtectiveDevice pd ON i.ProtectiveDeviceID = pd.ProtectiveDeviceID
WHERE	PolicyID = @policyId
ORDER BY ct.CoverageTypeName --i.CoverageBasisTypeID

SELECT	si.ItemDetailID,
		Horsepower,
		Limit,
		SubItemID
FROM	SubItem si JOIN ItemDetail i ON si.ItemDetailID = i.ItemDetailID
WHERE	PolicyID = @policyId	

SELECT	i.ItemDetailID,
		AdditionalCoverageCode
FROM	ItemDetail i
		JOIN Item_AdditionalCoverage iac ON iac.ItemDetailID = i.ItemDetailID
		JOIN cmicAdditionalCoverageOption aco ON aco.AdditionalCoverageID = iac.AdditionalCoverageID
WHERE	PolicyID = @policyId				

SELECT	ItemDetailID,
		'End of Item' AS 'ItemEndVal'
FROM	ItemDetail
WHERE	PolicyID = @policyId
GO
/****** Object:  StoredProcedure [dbo].[GetBatch]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetBatch]
	(
		@id int
	)

AS
SELECT	BatchID,
		ExtractDate
FROM	Batch
WHERE	BatchID = @id

SELECT	PolicyID
FROM	Policy
WHERE	BatchID = @id
GO
/****** Object:  StoredProcedure [dbo].[DeletePolicy]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletePolicy]
	@id int
AS

DELETE FROM [dbo].[Policy]
WHERE	[PolicyID] = @id

SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[UpdateUnderwriting]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateUnderwriting]
	(
		@id int,
		@PolicyID int,
		@QuestionID int,
		@Answer varchar(1),
		@Explanation varchar(8000)
	)
AS
UPDATE	Underwriting
SET	PolicyID = @PolicyID,
	QuestionID = @QuestionID,
	Answer = @Answer,
	Explanation = @Explanation
WHERE	UnderwritingID = @id

SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[DeleteUnderwriting]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteUnderwriting]
	(
		@id int
	)

AS
--Delete all of the questions first then add them
--There is never an update always deleting and adding
DELETE FROM Underwriting
WHERE		UnderwritingID = @id
GO
/****** Object:  StoredProcedure [dbo].[AddUnderwriting]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddUnderwriting]
(
	@PolicyID int,
	@QuestionID int,
	@Answer varchar(1),
	@Explanation varchar(8000),
	@id int OUTPUT
)	
AS

INSERT INTO [dbo].[Underwriting] (
	[PolicyID],
	[QuestionID],
	[Answer],
	[Explanation]
) VALUES (
	@PolicyID,
	@QuestionID,
	@Answer,
	@Explanation
)

SET @id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[GetCmicCountyListByZipCode]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCmicCountyListByZipCode]
	(
		@zipCode varchar(5)
	)
AS
SELECT	c.CountyID,
		CountyName
FROM	cmicCounty c
		JOIN cmicCounty_ZipCode cz ON c.CountyID = cz.CountyID
WHERE	cz.ZipCodeID IN (SELECT	ZipCodeID
						 FROM	cmicZipCode
						 WHERE	ZipCode = @zipCode)	
ORDER BY CountyName
GO
/****** Object:  StoredProcedure [dbo].[AddAddress]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddAddress]
(
	@PolicyID int,
	@AddressTypeID int,
	@AddressLine1 varchar(30),
	@AddressLine2 varchar(30),
	@City varchar(30),
	@StateCode char(2),
	@ZipCode char(5),
	@ZipCode4 char(4),
	@CountyID int,
	@ScrubReturnCode varchar(3),
	@isScrubbed bit,
	@isScrubOverrided bit,
	@id int OUTPUT
)	
AS

INSERT INTO [dbo].[Address] (
	[PolicyID],
	[AddressTypeID],
	[AddressLine1],
	[AddressLine2],
	[City],
	[StateCode],
	[ZipCode],
	[ZipCode4],
	[CountyID],
	[ScrubReturnCode],
	[isScrubbed],
	[isScrubOverrided]
) VALUES (
	@PolicyID,
	@AddressTypeID,
	@AddressLine1,
	@AddressLine2,
	@City,
	@StateCode,
	@ZipCode,
	@ZipCode4,
	@CountyID,
	@ScrubReturnCode,
	@isScrubbed,
	@isScrubOverrided
)
SET @id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[DeleteAddress]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteAddress]
(
	@id int
)
AS

DELETE FROM [dbo].[Address]
WHERE
	[AddressID] = @id

SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[UpdateAddress]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateAddress]
(
	@id int, 
	@PolicyID int, 
	@AddressTypeID int, 
	@AddressLine1 varchar(30), 
	@AddressLine2 varchar(30), 
	@City varchar(30), 
	@StateCode char(2), 
	@ZipCode char(5), 
	@ZipCode4 char(4), 
	@CountyID int, 
	@ScrubReturnCode varchar(3), 
	@isScrubbed bit, 
	@isScrubOverrided bit 
)
AS

UPDATE [dbo].[Address] SET
	[PolicyID] = @PolicyID,
	[AddressTypeID] = @AddressTypeID,
	[AddressLine1] = @AddressLine1,
	[AddressLine2] = @AddressLine2,
	[City] = @City,
	[StateCode] = @StateCode,
	[ZipCode] = @ZipCode,
	[ZipCode4] = @ZipCode4,
	[CountyID] = @CountyID,
	[ScrubReturnCode] = @ScrubReturnCode,
	[isScrubbed] = @isScrubbed,
	[isScrubOverrided] = @isScrubOverrided
WHERE
	[AddressID] = @id	
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT


SELECT  @rowCountOut
GO
/****** Object:  StoredProcedure [dbo].[GetOffers]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetOffers]
	(
		@programID int = NULL,
		@effDate datetime = NULL,
		@stateCode char(2) = NULL
	)
AS
SELECT	DISTINCT
		OfferID,
		CompanyName,
		AddressLine1,
		City,
		StateCode,
		ZipCode,
		ZipCode4,
		ProgramDescription,
		Symbol,
		MinimumPremium,
		SystemCode
FROM	cmicOffer o
		JOIN cmicCompany c ON c.CompanyID = o.CompanyID
		JOIN cmicAddress a ON a.cmicAddressID = c.cmicAddressID
		JOIN cmicProgram p ON p.ProgramID = o.ProgramID
		JOIN cmicSystem s ON s.SystemID = p.SystemID
WHERE	@programID IS NULL OR p.ProgramID = @programID
		AND (@effDate IS NULL 
			OR (o.EffectiveDate <= @effDate
				AND	(o.ExpirationDate IS NULL OR o.ExpirationDate > @effDate)
			)
		)
		AND (@stateCode IS NULL
			OR @stateCode IN (
				SELECT	stateCode
				FROM	cmicOffer_State os
				WHERE 	os.OfferID = o.OfferID
			)
		)
GO
/****** Object:  StoredProcedure [dbo].[AddNote]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddNote]
	(
		@PolicyID int,
		@UserName varchar(50),
		@InputDate datetime,
		@NoteText varchar(512),
		@id int OUTPUT
	)
AS
INSERT INTO [dbo].[Note] (
	[PolicyID],
	[UserName],
	[InputDate],
	[NoteText]
) VALUES (
	@PolicyID,
	@UserName,
	@InputDate,
	@NoteText
)
SET @id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[DeleteUploadInfo]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteUploadInfo]
	(
		@policyId int
	)
AS

DELETE FROM [dbo].[UploadInfo]
WHERE
	PolicyID = @policyId

SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[UpdateUploadInfo]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateUploadInfo]
	(
		@id int, 
		@policyId int, 
		@uploadedBy varchar(100), 
		@paymentId int,	
		@policyPrefix varchar(4),
		@policyBranch varchar(2),
		@policyNumber varchar(10), 
		@bound bit, 
		@boundDate datetime, 
		@producer int, 
		@remittanceAmount money, 
		@paymentMethod char(3), 
		@checkNumber varchar(10), 
		@agencyMemo varchar(50),
		@uploadedDate datetime
	)
AS

UPDATE [dbo].[UploadInfo] SET
	[PolicyID] = @policyId,
	[UploadedBy] = @uploadedBy,
	[PaymentID] = @paymentId,	
	[PolicyPrefix] = @policyPrefix,
	PolicyBranch = @policyBranch,
	[PolicyNumber] = @policyNumber,
	[Bound] = @bound,
	[BoundDate] = @boundDate,
	[Producer] = @producer,
	[RemittanceAmount] = @remittanceAmount,
	[PaymentMethod] = @paymentMethod,
	[CheckNumber] = @checkNumber,
	[AgencyMemo] = @agencyMemo,
	UploadedDate = @uploadedDate
WHERE
	[UploadInfoID] = @id	

DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT

SELECT  @rowCountOut
GO
/****** Object:  StoredProcedure [dbo].[AddUploadInfo]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddUploadInfo]
	(
		@policyId int,
		@uploadedBy varchar(100),
		@paymentId int,	
		@policyPrefix varchar(4),
		@policyBranch varchar(2),
		@policyNumber varchar(10),
		@bound bit,
		@boundDate datetime,
		@producer int,
		@remittanceAmount money,
		@paymentMethod char(3),
		@checkNumber varchar(10),
		@agencyMemo varchar(50),	
		@uploadedDate datetime,
		@id int OUTPUT
	)

AS
INSERT INTO [dbo].[UploadInfo] (
	[PolicyID],
	[UploadedBy],
	[PaymentID],
	[PolicyPrefix],
	PolicyBranch,
	[PolicyNumber],
	[Bound],
	[BoundDate],
	[Producer],
	[RemittanceAmount],
	[PaymentMethod],
	[CheckNumber],
	[AgencyMemo],
	UploadedDate
) VALUES (
	@policyId,
	@uploadedBy,
	@paymentId,
	@policyPrefix,
	@policyBranch,
	@policyNumber,
	@bound,
	@boundDate,
	@producer,
	@remittanceAmount,
	@paymentMethod,
	@checkNumber,
	@agencyMemo,
	@uploadedDate
)
SET @id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[UpdateLossPayee]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateLossPayee]
(
	@id int, 
	@PolicyID int, 
	@Name1 varchar(35), 
	@Name2 varchar(35), 
	@AddressID int, 
	@InterestTypeID int, 
	@LoanNumber varchar(20) 
)
AS

BEGIN TRANSACTION

UPDATE [dbo].[LossPayee] SET
	[PolicyID] = @PolicyID,
	[Name1] = @Name1,
	[Name2] = @Name2,
	[AddressID] = @AddressID,
	[InterestTypeID] = @InterestTypeID,
	[LoanNumber] = @LoanNumber
WHERE
	[LossPayeeID] = @id	
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT

IF @rowCountOut > 0 BEGIN
	-- delete associated loss payee items
	DELETE FROM LossPayee_Item
	WHERE		LossPayeeID = @id
END

SELECT  @rowCountOut

COMMIT TRANSACTION
RETURN 0

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[AddLossPayeeItem]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddLossPayeeItem]
	(
		@losspayeeId int,
		@itemId bigint,
		@subitemId int
	)

AS
INSERT INTO	LossPayee_Item
(
	LossPayeeID,
	ItemDetailID,
	SubItemID
)
VALUES
(
	@losspayeeId,
	@itemId,
	@subitemId
)
GO
/****** Object:  StoredProcedure [dbo].[DeleteLossPayee]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteLossPayee]
(
	@id int
)
AS
BEGIN TRANSACTION
-- delete loss payee items before deleting the loss payee to prevent foreign key conflict
DELETE FROM	LossPayee_Item
WHERE	LossPayeeID = @id
IF @@ERROR <> 0 GOTO PROBLEM

DELETE FROM [dbo].[LossPayee]
WHERE
	[LossPayeeID] = @id
IF @@ERROR <> 0 GOTO PROBLEM

COMMIT TRANSACTION
SELECT @@ROWCOUNT
RETURN 0

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[DeleteInsured]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteInsured]
(
	@id int
)
AS

DELETE FROM [dbo].[Insured]
WHERE
	[InsuredID] = @id

SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[AddInsured]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddInsured]
(
	@PolicyID int,
	@AddressID int = NULL,
	@InsuredTypeID int,
	@EntityTypeID int = NULL,
	@OtherEntityDescription varchar(20),
	@FirstName varchar(20),
	@MidName varchar(20),
	@LastName varchar(20),
	@NameSuffix varchar(5),
	@BusinessName varchar(65),
	@BusinessDescription varchar(55),
	@PhoneNumber varchar(50),
	@SSN varchar(9),
	@FEIN varchar(20),
	@DOB datetime,
	@Occupation varchar(30),
	@Gender char(1),
	@RelationTypeID int,
	@LicenseNumber varchar(23),
	@LicenseStateCode char(2),
	@isDriver bit,
	@isRapidRating bit,
	@id int OUTPUT
)	
AS

INSERT INTO [dbo].[Insured] (
	[PolicyID],
	[AddressID],
	[InsuredTypeID],
	EntityTypeID,
	OtherEntityDescription,
	[FirstName],
	[MidName],
	[LastName],
	[NameSuffix],
	[BusinessName],
	BusinessDescription,
	[PhoneNumber],
	[SSN],
	FEIN,
	[DOB],
	Occupation,
	[Gender],
	[RelationTypeID],
	[LicenseNumber],
	[LicenseStateCode],
	[isDriver],
	[isRapidRating]
) VALUES (
	@PolicyID,
	@AddressID,
	@InsuredTypeID,
	@EntityTypeID,
	@OtherEntityDescription,
	@FirstName,
	@MidName,
	@LastName,
	@NameSuffix,
	@BusinessName,
	@BusinessDescription,
	@PhoneNumber,
	@SSN,
	@FEIN,
	@DOB,
	@Occupation,
	@Gender,
	@RelationTypeID,
	@LicenseNumber,
	@LicenseStateCode,
	@isDriver,
	@isRapidRating
)
SET @id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[UpdateInsured]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateInsured]
(
	@id int, 
	@PolicyID int, 
	@AddressID int = NULL, 
	@InsuredTypeID int, 
	@EntityTypeID int = NULL,
	@OtherEntityDescription varchar(20) = NULL,
	@FirstName varchar(20), 
	@MidName varchar(20), 
	@LastName varchar(20), 
	@NameSuffix varchar(5), 
	@BusinessName varchar(65), 
	@BusinessDescription varchar(55),
	@PhoneNumber varchar(50), 
	@SSN varchar(9), 
	@FEIN varchar(20),
	@DOB datetime, 
	@Occupation varchar(30),
	@Gender char(1), 
	@RelationTypeID int, 
	@LicenseNumber varchar(23), 
	@LicenseStateCode char(2), 
	@isDriver bit, 
	@isRapidRating bit 
)
AS

UPDATE [dbo].[Insured] SET
	[PolicyID] = @PolicyID,
	[AddressID] = @AddressID,
	[InsuredTypeID] = @InsuredTypeID,
	EntityTypeID = @EntityTypeID,
	OtherEntityDescription = @OtherEntityDescription,
	[FirstName] = @FirstName,
	[MidName] = @MidName,
	[LastName] = @LastName,
	[NameSuffix] = @NameSuffix,
	[BusinessName] = @BusinessName,
	BusinessDescription = @BusinessDescription,
	[PhoneNumber] = @PhoneNumber,
	[SSN] = @SSN,
	FEIN = @FEIN,
	[DOB] = @DOB,
	Occupation = @Occupation,
	[Gender] = @Gender,
	[RelationTypeID] = @RelationTypeID,
	[LicenseNumber] = @LicenseNumber,
	[LicenseStateCode] = @LicenseStateCode,
	[isDriver] = @isDriver,
	[isRapidRating] = @isRapidRating
WHERE
	[InsuredID] = @id	
	
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT


SELECT  @rowCountOut
GO
/****** Object:  StoredProcedure [dbo].[UpdateMessage]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateMessage]
	(
		@id int, 
		@policyId int, 
		@agencyMessage varchar(512), 
		@agentMessage varchar(512),
		@underwritingComment varchar(512)
	)
AS

UPDATE [dbo].[Message] SET
	[PolicyID] = @policyId,
	[AgencyMessage] = @agencyMessage,
	[AgentMessage] = @agentMessage,
	UnderwritingComment = @underwritingComment
WHERE
	[MessageID] = @id	

DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT

SELECT  @rowCountOut
GO
/****** Object:  StoredProcedure [dbo].[AddMessage]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddMessage]
	(
		@policyId int,
		@agencyMessage varchar(512),
		@agentMessage varchar(512),
		@underwritingComment varchar(512),
		@id int OUTPUT
	)

AS
INSERT INTO [dbo].[Message] (
	[PolicyID],
	[AgencyMessage],
	[AgentMessage],
	UnderwritingComment
) VALUES (
	@policyId,
	@agencyMessage,
	@agentMessage,
	@underwritingComment
)
SET @id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[DeleteMessage]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteMessage]
	(
		@id int
	)
AS
DELETE FROM [dbo].[Message]
WHERE
	[MessageID] = @id
	
SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[GetOfferedStatesForAgent]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetOfferedStatesForAgent]
	(
		@programID int,
		@effDate datetime
	)
AS
SELECT	s.StateCode,
		s.StateName
FROM	cmicOffer o JOIN cmicOffer_State os ON o.OfferID = os.OfferID
		JOIN cmicState s ON os.StateCode = s.StateCode
WHERE	o.ProgramID = @programID AND o.EffectiveDate < @effDate
ORDER BY s.StateName
GO
/****** Object:  StoredProcedure [dbo].[AddSubItem]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddSubItem]
	@ItemDetailID bigint,
	@SubItemTypeID int,
	@Limit int,
	@Year varchar(4),
	@Make varchar(20),
	@Model varchar(20),
	@Horsepower int,
	@SerialNumber varchar(20),
	@id int OUTPUT
	
AS

INSERT INTO [dbo].[SubItem] (
	[ItemDetailID],
	[SubItemTypeID],
	[Limit],
	[Year],
	[Make],
	[Model],
	[Horsepower],
	[SerialNumber]
) VALUES (
	@ItemDetailID,
	@SubItemTypeID,
	@Limit,
	@Year,
	@Make,
	@Model,
	@Horsepower,
	@SerialNumber
)
SET @id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[DeleteSubItem]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteSubItem]
	@id int
AS

DELETE FROM [dbo].[SubItem]
WHERE
	[SubItemID] = @id
SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[UpdateSubItem]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateSubItem]
	@id int, 
	@ItemDetailID bigint, 
	@SubItemTypeID int, 
	@Limit int, 
	@Year varchar(4), 
	@Make varchar(20), 
	@Model varchar(20), 
	@Horsepower int, 
	@SerialNumber varchar(20) 
AS

UPDATE [dbo].[SubItem] SET
	[ItemDetailID] = @ItemDetailID,
	[SubItemTypeID] = @SubItemTypeID,
	[Limit] = @Limit,
	[Year] = @Year,
	[Make] = @Make,
	[Model] = @Model,
	[Horsepower] = @Horsepower,
	[SerialNumber] = @SerialNumber
WHERE
	[SubItemID] = @id	
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT


SELECT  @rowCountOut
GO
/****** Object:  StoredProcedure [dbo].[AddItemDetail]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddItemDetail]
	@PolicyID int,
	@CoverageBasisTypeID int,
	@CoverageBasisSubTypeID int,
	@ItemDescription varchar(150),
	@ItemLimit int,
	@DeductibleID int,
	@ItemManufacturer varchar(20),
	@ItemPurchasePrice decimal(10, 2),
	@ItemDateOfPurchase datetime,
	@ItemModel varchar(20),
	@ItemSerialNumber varchar(20),
	@ItemCaliber varchar(15),
	@ItemOtherID varchar(20),
	@NoOfAnimal int,
	@ItemBreed varchar(20),
	@LivestockTypeID int,
	@ItemYear varchar(4),
	@ItemMake varchar(20),
	@ItemAge smallint,
	@ItemLength smallint,
	@LiabilityLimitID int,
	@MedicalLimitID int,
	@ItemLocation varchar(40),
	@BoatMPH smallint,
	@ProtectiveDeviceID int,
	@WatercraftHorsepower int,
	@isRapidRating bit,
	@id bigint OUTPUT
	
AS

INSERT INTO [dbo].[ItemDetail] (
	[PolicyID],
	[CoverageBasisTypeID],
	[CoverageBasisSubTypeID],
	[ItemDescription],
	[ItemLimit],
	[DeductibleID],
	[ItemManufacturer],
	[ItemPurchasePrice],
	[ItemDateOfPurchase],
	[ItemModel],
	[ItemSerialNumber],
	[ItemCaliber],
	[ItemOtherID],
	NoOfAnimal,
	[ItemBreed],
	[LivestockTypeID],
	[ItemYear],
	[ItemMake],
	[ItemAge],
	[ItemLength],
	[LiabilityLimitID],
	[MedicalLimitID],
	[ItemLocation],
	BoatMPH,
	ProtectiveDeviceID,
	WatercraftHorsepower,
	isRapidRating
) VALUES (
	@PolicyID,
	@CoverageBasisTypeID,
	@CoverageBasisSubTypeID,
	@ItemDescription,
	@ItemLimit,
	@DeductibleID,
	@ItemManufacturer,
	@ItemPurchasePrice,
	@ItemDateOfPurchase,
	@ItemModel,
	@ItemSerialNumber,
	@ItemCaliber,
	@ItemOtherID,
	@NoOfAnimal,
	@ItemBreed,
	@LivestockTypeID,
	@ItemYear,
	@ItemMake,
	@ItemAge,
	@ItemLength,
	@LiabilityLimitID,
	@MedicalLimitID,
	@ItemLocation,
	@BoatMPH,
	@ProtectiveDeviceID,
	@WatercraftHorsepower,
	@isRapidRating
)
SET @id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[UpdateItemDetail]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateItemDetail]
	@id bigint, 
	@PolicyID int, 
	@CoverageBasisTypeID int, 
	@CoverageBasisSubTypeID int, 
	@ItemDescription varchar(150), 
	@ItemLimit int, 
	@DeductibleID int, 
	@ItemManufacturer varchar(20), 
	@ItemPurchasePrice decimal(10, 2), 
	@ItemDateOfPurchase datetime, 
	@ItemModel varchar(20), 
	@ItemSerialNumber varchar(20), 
	@ItemCaliber varchar(15), 
	@ItemOtherID varchar(20), 
	@NoOfAnimal int,
	@ItemBreed varchar(20), 
	@LivestockTypeID int, 
	@ItemYear varchar(4), 
	@ItemMake varchar(20), 
	@ItemAge smallint, 
	@ItemLength smallint, 
	@LiabilityLimitID int, 
	@MedicalLimitID int, 
	@ItemLocation varchar(40),
	@BoatMPH smallint,
	@ProtectiveDeviceID int,
	@WatercraftHorsepower int,
	@isRapidRating bit
AS

UPDATE [dbo].[ItemDetail] SET
	[PolicyID] = @PolicyID,
	[CoverageBasisTypeID] = @CoverageBasisTypeID,
	[CoverageBasisSubTypeID] = @CoverageBasisSubTypeID,
	[ItemDescription] = @ItemDescription,
	[ItemLimit] = @ItemLimit,
	[DeductibleID] = @DeductibleID,
	[ItemManufacturer] = @ItemManufacturer,
	[ItemPurchasePrice] = @ItemPurchasePrice,
	[ItemDateOfPurchase] = @ItemDateOfPurchase,
	[ItemModel] = @ItemModel,
	[ItemSerialNumber] = @ItemSerialNumber,
	[ItemCaliber] = @ItemCaliber,
	[ItemOtherID] = @ItemOtherID,
	NoOfAnimal = @NoOfAnimal,
	[ItemBreed] = @ItemBreed,
	[LivestockTypeID] = @LivestockTypeID,
	[ItemYear] = @ItemYear,
	[ItemMake] = @ItemMake,
	[ItemAge] = @ItemAge,
	[ItemLength] = @ItemLength,
	[LiabilityLimitID] = @LiabilityLimitID,
	[MedicalLimitID] = @MedicalLimitID,
	[ItemLocation] = @ItemLocation,
	BoatMPH = @BoatMPH,
	ProtectiveDeviceID = @ProtectiveDeviceID,
	WatercraftHorsepower = @WatercraftHorsepower,
	isRapidRating = @isRapidRating
WHERE
	[ItemDetailID] = @id	
DECLARE @rowCountOut AS INT
SET @rowCountOut = @@ROWCOUNT


SELECT  @rowCountOut
GO
/****** Object:  StoredProcedure [dbo].[DeleteCoverage]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteCoverage]
	(
		@id int,
		@PolicyID int
	)
AS
DELETE	ItemDetail
WHERE	PolicyID = @PolicyID 
		AND CoverageBasisTypeID IN (SELECT	CoverageBasisTypeID
									FROM	cmicCoverageType_BasisType
									WHERE	CoverageTypeID = @id
									)
GO
/****** Object:  StoredProcedure [dbo].[DeleteItemDetail]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteItemDetail]
	@id bigint
AS

DELETE FROM [dbo].[ItemDetail]
WHERE
	[ItemDetailID] = @id

SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[AddLossPayee]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddLossPayee]
(
	@PolicyID int,
	@Name1 varchar(35),
	@Name2 varchar(35),
	@AddressID int,
	@InterestTypeID int,
	@LoanNumber varchar(20),
	@id int OUTPUT
)	
AS

INSERT INTO [dbo].[LossPayee] (
	[PolicyID],
	[Name1],
	[Name2],
	[AddressID],
	[InterestTypeID],
	[LoanNumber]
) VALUES (
	@PolicyID,
	@Name1,
	@Name2,
	@AddressID,
	@InterestTypeID,
	@LoanNumber
)
SET @id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[AddRate]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddRate]
	(
		@PolicyID int,
		@OfferID int,
		@ExpireDate datetime,
		@TotalPremium decimal(10,2),
		@MinimumPremiumAdj decimal(10,2),
		@QuoteXmlChecksum binary(20),
		@id int OUTPUT
	)

AS
BEGIN TRANSACTION

	DELETE FROM Rate WHERE PolicyID = @PolicyID
	IF @@ERROR <> 0 GOTO PROBLEM

	INSERT INTO Rate (
		PolicyID,
		OfferID,
		RateDate,
		ExpireDate,
		TotalPremium,
		MinimumPremiumAdj,
		QuoteXmlChecksum
	) VALUES (
		@PolicyID,
		@OfferID,
		GETDATE(),
		@ExpireDate,
		@TotalPremium,
		@MinimumPremiumAdj,
		@QuoteXmlChecksum
	)
	IF @@ERROR <> 0 GOTO PROBLEM

	SET @id = @@IDENTITY

COMMIT TRANSACTION
RETURN 0

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[AddBatch]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddBatch]
	(
		@id int OUTPUT
	)
AS

INSERT INTO Batch
 (ExtractDate) 
VALUES
 (GETDATE())
	
SET @id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[AddRateItem]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddRateItem]
	(
		@RateID int,
		@ItemID int,
		@SubItemID int,
		@ClassCode varchar(5),
		@Description varchar(50),
		@Premium decimal(10,2),
		@LiabilityCoverage varchar(1),
		@MedPay varchar(1),
		@id int OUTPUT
	)

AS

INSERT INTO [dbo].[RateItem] (
	[RateID],
	[ItemDetailID],
	SubItemID,
	ClassCode,
	[Description],
	[Premium],
	LiabilityCoverage,
	MedPay
) VALUES (
	@RateID,
	@ItemID,
	@SubItemID,
	@ClassCode,
	@Description,
	@Premium,
	@LiabilityCoverage,
	@MedPay
)
SET @id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[AddAdditionalCoverage]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddAdditionalCoverage]
	(
		@ItemDetailID bigint,
		@AdditionalCoverageID int,
		@id int OUTPUT
	)
AS
INSERT INTO	Item_AdditionalCoverage
	(
		ItemDetailID,
		AdditionalCoverageID
	)
VALUES
	(
		@ItemDetailID,
		@AdditionalCoverageID
	)
	
SET @id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[DeleteAdditionalCoverage]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteAdditionalCoverage]
	(
		@id int
	)
AS
DELETE FROM	Item_AdditionalCoverage
WHERE	ItemAdditionalCoverageID = @id

SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[UpdateMVR]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateMVR]
	(
		@id int, 
		@InsuredID int, 
		@OrderDate datetime, 
		@StatusCode char(1), 
		@ReturnCode int, 
		@MVRReturnCode int, 
		@ErrorMessage text, 
		@Report text 
	)
AS
UPDATE [dbo].[MVR] SET
	[InsuredID] = @InsuredID,
	[OrderDate] = @OrderDate,
	[StatusCode] = @StatusCode,
	[ReturnCode] = @ReturnCode,
	[MVRReturnCode] = @MVRReturnCode,
	[ErrorMessage] = @ErrorMessage,
	[Report] = @Report
WHERE
	[MVRID] = @id	

SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[GetMVR]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetMVR]
	(
		@InsuredID int
	)

AS
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[MVRID],
	[OrderDate],
	[StatusCode],
	[ReturnCode],
	[MVRReturnCode],
	[ErrorMessage],
	[Report]
FROM
	[dbo].[MVR]
WHERE
	[InsuredID] = @InsuredID
GO
/****** Object:  StoredProcedure [dbo].[DeleteMVR]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteMVR]
	(
		@id int
	)
AS

DELETE FROM [dbo].[MVR]
WHERE
	[MVRID] = @id
	
SELECT @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[AddMVR]    Script Date: 01/29/2010 13:11:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddMVR]
	(
		@InsuredID int,
		@OrderDate datetime,
		@StatusCode char(1),
		@ReturnCode int,
		@MVRReturnCode int,
		@ErrorMessage text,
		@Report text,
		@id int OUTPUT
	)

AS
INSERT INTO [dbo].[MVR]
 (
	[InsuredID],
	[OrderDate],
	[StatusCode],
	[ReturnCode],
	[MVRReturnCode],
	[ErrorMessage],
	[Report]
) 
VALUES 
(
	@InsuredID,
	@OrderDate,
	@StatusCode,
	@ReturnCode,
	@MVRReturnCode,
	@ErrorMessage,
	@Report
)
SET @id = @@IDENTITY
GO
/****** Object:  Default [DF_Policy_PolicyStatusID]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF_Policy_PolicyStatusID]  DEFAULT ((1)) FOR [PolicyStatusID]
GO
/****** Object:  Default [DF_Policy_LastDateUpdated]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF_Policy_LastDateUpdated]  DEFAULT (getdate()) FOR [LastDateUpdated]
GO
/****** Object:  Default [DF_Policy_isImport]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF_Policy_isImport]  DEFAULT ((0)) FOR [isImport]
GO
/****** Object:  Default [DF_Address_isScrubbed]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Address] ADD  CONSTRAINT [DF_Address_isScrubbed]  DEFAULT ((0)) FOR [isScrubbed]
GO
/****** Object:  Default [DF_Address_isScrubOverrided]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Address] ADD  CONSTRAINT [DF_Address_isScrubOverrided]  DEFAULT ((0)) FOR [isScrubOverrided]
GO
/****** Object:  Default [DF_Insured_isDriver]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Insured] ADD  CONSTRAINT [DF_Insured_isDriver]  DEFAULT ((0)) FOR [isDriver]
GO
/****** Object:  Default [DF_Insured_isRapidRating]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Insured] ADD  CONSTRAINT [DF_Insured_isRapidRating]  DEFAULT ((1)) FOR [isRapidRating]
GO
/****** Object:  Default [DF_RateItem_MedPay]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[RateItem] ADD  CONSTRAINT [DF_RateItem_MedPay]  DEFAULT ((0)) FOR [MedPay]
GO
/****** Object:  ForeignKey [FK_Policy_Batch]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Policy]  WITH CHECK ADD  CONSTRAINT [FK_Policy_Batch] FOREIGN KEY([BatchID])
REFERENCES [dbo].[Batch] ([BatchID])
GO
ALTER TABLE [dbo].[Policy] CHECK CONSTRAINT [FK_Policy_Batch]
GO
/****** Object:  ForeignKey [FK_Policy_cmicDeductible]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Policy]  WITH NOCHECK ADD  CONSTRAINT [FK_Policy_cmicDeductible] FOREIGN KEY([DeductibleID])
REFERENCES [dbo].[cmicDeductible] ([DeductibleID])
GO
ALTER TABLE [dbo].[Policy] NOCHECK CONSTRAINT [FK_Policy_cmicDeductible]
GO
/****** Object:  ForeignKey [FK_Policy_cmicPolicyStatus]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Policy]  WITH CHECK ADD  CONSTRAINT [FK_Policy_cmicPolicyStatus] FOREIGN KEY([PolicyStatusID])
REFERENCES [dbo].[cmicPolicyStatus] ([PolicyStatusID])
GO
ALTER TABLE [dbo].[Policy] CHECK CONSTRAINT [FK_Policy_cmicPolicyStatus]
GO
/****** Object:  ForeignKey [FK_Underwriting_cmicUnderwritingQuestion]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Underwriting]  WITH CHECK ADD  CONSTRAINT [FK_Underwriting_cmicUnderwritingQuestion] FOREIGN KEY([QuestionID])
REFERENCES [dbo].[cmicUnderwritingQuestion] ([QuestionID])
GO
ALTER TABLE [dbo].[Underwriting] CHECK CONSTRAINT [FK_Underwriting_cmicUnderwritingQuestion]
GO
/****** Object:  ForeignKey [FK_Underwriting_Policy]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Underwriting]  WITH CHECK ADD  CONSTRAINT [FK_Underwriting_Policy] FOREIGN KEY([PolicyID])
REFERENCES [dbo].[Policy] ([PolicyID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Underwriting] CHECK CONSTRAINT [FK_Underwriting_Policy]
GO
/****** Object:  ForeignKey [FK_Address_cmicAddressType]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_cmicAddressType] FOREIGN KEY([AddressTypeID])
REFERENCES [dbo].[cmicAddressType] ([AddressTypeID])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_cmicAddressType]
GO
/****** Object:  ForeignKey [FK_Address_cmicCounty]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_cmicCounty] FOREIGN KEY([CountyID])
REFERENCES [dbo].[cmicCounty] ([CountyID])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_cmicCounty]
GO
/****** Object:  ForeignKey [FK_Address_cmicState]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_cmicState] FOREIGN KEY([StateCode])
REFERENCES [dbo].[cmicState] ([StateCode])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_cmicState]
GO
/****** Object:  ForeignKey [FK_Address_Policy]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Policy] FOREIGN KEY([PolicyID])
REFERENCES [dbo].[Policy] ([PolicyID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Policy]
GO
/****** Object:  ForeignKey [FK_Note_Policy]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Note]  WITH CHECK ADD  CONSTRAINT [FK_Note_Policy] FOREIGN KEY([PolicyID])
REFERENCES [dbo].[Policy] ([PolicyID])
GO
ALTER TABLE [dbo].[Note] CHECK CONSTRAINT [FK_Note_Policy]
GO
/****** Object:  ForeignKey [FK_UploadInfo_Policy]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[UploadInfo]  WITH CHECK ADD  CONSTRAINT [FK_UploadInfo_Policy] FOREIGN KEY([PolicyID])
REFERENCES [dbo].[Policy] ([PolicyID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UploadInfo] CHECK CONSTRAINT [FK_UploadInfo_Policy]
GO
/****** Object:  ForeignKey [FK_Insured_Address]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Insured]  WITH CHECK ADD  CONSTRAINT [FK_Insured_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO
ALTER TABLE [dbo].[Insured] CHECK CONSTRAINT [FK_Insured_Address]
GO
/****** Object:  ForeignKey [FK_Insured_cmicEntityType]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Insured]  WITH CHECK ADD  CONSTRAINT [FK_Insured_cmicEntityType] FOREIGN KEY([EntityTypeID])
REFERENCES [dbo].[cmicEntityType] ([EntityTypeID])
GO
ALTER TABLE [dbo].[Insured] CHECK CONSTRAINT [FK_Insured_cmicEntityType]
GO
/****** Object:  ForeignKey [FK_Insured_cmicInsuredType]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Insured]  WITH CHECK ADD  CONSTRAINT [FK_Insured_cmicInsuredType] FOREIGN KEY([InsuredTypeID])
REFERENCES [dbo].[cmicInsuredType] ([InsuredTypeID])
GO
ALTER TABLE [dbo].[Insured] CHECK CONSTRAINT [FK_Insured_cmicInsuredType]
GO
/****** Object:  ForeignKey [FK_Insured_Policy]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Insured]  WITH CHECK ADD  CONSTRAINT [FK_Insured_Policy] FOREIGN KEY([PolicyID])
REFERENCES [dbo].[Policy] ([PolicyID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Insured] CHECK CONSTRAINT [FK_Insured_Policy]
GO
/****** Object:  ForeignKey [FK_Rate_cmicOffer]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Rate]  WITH CHECK ADD  CONSTRAINT [FK_Rate_cmicOffer] FOREIGN KEY([OfferID])
REFERENCES [dbo].[cmicOffer] ([OfferID])
GO
ALTER TABLE [dbo].[Rate] CHECK CONSTRAINT [FK_Rate_cmicOffer]
GO
/****** Object:  ForeignKey [FK_Rate_Policy]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Rate]  WITH CHECK ADD  CONSTRAINT [FK_Rate_Policy] FOREIGN KEY([PolicyID])
REFERENCES [dbo].[Policy] ([PolicyID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rate] CHECK CONSTRAINT [FK_Rate_Policy]
GO
/****** Object:  ForeignKey [FK_LossPayee_Address]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[LossPayee]  WITH CHECK ADD  CONSTRAINT [FK_LossPayee_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO
ALTER TABLE [dbo].[LossPayee] CHECK CONSTRAINT [FK_LossPayee_Address]
GO
/****** Object:  ForeignKey [FK_LossPayee_cmicInterestType]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[LossPayee]  WITH CHECK ADD  CONSTRAINT [FK_LossPayee_cmicInterestType] FOREIGN KEY([InterestTypeID])
REFERENCES [dbo].[cmicInterestType] ([InterestTypeID])
GO
ALTER TABLE [dbo].[LossPayee] CHECK CONSTRAINT [FK_LossPayee_cmicInterestType]
GO
/****** Object:  ForeignKey [FK_LossPayee_Policy]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[LossPayee]  WITH CHECK ADD  CONSTRAINT [FK_LossPayee_Policy] FOREIGN KEY([PolicyID])
REFERENCES [dbo].[Policy] ([PolicyID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LossPayee] CHECK CONSTRAINT [FK_LossPayee_Policy]
GO
/****** Object:  ForeignKey [FK_ItemDetail_cmicCoverageBasisType_CoverageSubType]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[ItemDetail]  WITH CHECK ADD  CONSTRAINT [FK_ItemDetail_cmicCoverageBasisType_CoverageSubType] FOREIGN KEY([CoverageBasisSubTypeID])
REFERENCES [dbo].[cmicCoverageBasisType_CoverageSubType] ([CoverageBasisSubTypeID])
GO
ALTER TABLE [dbo].[ItemDetail] CHECK CONSTRAINT [FK_ItemDetail_cmicCoverageBasisType_CoverageSubType]
GO
/****** Object:  ForeignKey [FK_ItemDetail_cmicCoverageType_BasisType]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[ItemDetail]  WITH CHECK ADD  CONSTRAINT [FK_ItemDetail_cmicCoverageType_BasisType] FOREIGN KEY([CoverageBasisTypeID])
REFERENCES [dbo].[cmicCoverageType_BasisType] ([CoverageBasisTypeID])
GO
ALTER TABLE [dbo].[ItemDetail] CHECK CONSTRAINT [FK_ItemDetail_cmicCoverageType_BasisType]
GO
/****** Object:  ForeignKey [FK_ItemDetail_cmicDeductible]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[ItemDetail]  WITH CHECK ADD  CONSTRAINT [FK_ItemDetail_cmicDeductible] FOREIGN KEY([DeductibleID])
REFERENCES [dbo].[cmicDeductible] ([DeductibleID])
GO
ALTER TABLE [dbo].[ItemDetail] CHECK CONSTRAINT [FK_ItemDetail_cmicDeductible]
GO
/****** Object:  ForeignKey [FK_ItemDetail_Policy]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[ItemDetail]  WITH CHECK ADD  CONSTRAINT [FK_ItemDetail_Policy] FOREIGN KEY([PolicyID])
REFERENCES [dbo].[Policy] ([PolicyID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ItemDetail] CHECK CONSTRAINT [FK_ItemDetail_Policy]
GO
/****** Object:  ForeignKey [FK_cmicCounty_ZipCode_cmicCounty]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicCounty_ZipCode]  WITH CHECK ADD  CONSTRAINT [FK_cmicCounty_ZipCode_cmicCounty] FOREIGN KEY([CountyID])
REFERENCES [dbo].[cmicCounty] ([CountyID])
GO
ALTER TABLE [dbo].[cmicCounty_ZipCode] CHECK CONSTRAINT [FK_cmicCounty_ZipCode_cmicCounty]
GO
/****** Object:  ForeignKey [FK_cmicCounty_ZipCode_cmicZipCode]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicCounty_ZipCode]  WITH CHECK ADD  CONSTRAINT [FK_cmicCounty_ZipCode_cmicZipCode] FOREIGN KEY([ZipCodeID])
REFERENCES [dbo].[cmicZipCode] ([ZipCodeID])
GO
ALTER TABLE [dbo].[cmicCounty_ZipCode] CHECK CONSTRAINT [FK_cmicCounty_ZipCode_cmicZipCode]
GO
/****** Object:  ForeignKey [FK_cmicUnderwriting_CoverageType_cmicUnderwriting_CoverageType]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicUnderwriting_CoverageType]  WITH CHECK ADD  CONSTRAINT [FK_cmicUnderwriting_CoverageType_cmicUnderwriting_CoverageType] FOREIGN KEY([CoverageTypeID])
REFERENCES [dbo].[cmicCoverageType] ([CoverageTypeID])
GO
ALTER TABLE [dbo].[cmicUnderwriting_CoverageType] CHECK CONSTRAINT [FK_cmicUnderwriting_CoverageType_cmicUnderwriting_CoverageType]
GO
/****** Object:  ForeignKey [FK_cmicBoat_Deductible_cmicCoverageType]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicBoat_Deductible]  WITH CHECK ADD  CONSTRAINT [FK_cmicBoat_Deductible_cmicCoverageType] FOREIGN KEY([CoverageTypeID])
REFERENCES [dbo].[cmicCoverageType] ([CoverageTypeID])
GO
ALTER TABLE [dbo].[cmicBoat_Deductible] CHECK CONSTRAINT [FK_cmicBoat_Deductible_cmicCoverageType]
GO
/****** Object:  ForeignKey [FK_cmicBoat_Deductible_cmicDeductible]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicBoat_Deductible]  WITH CHECK ADD  CONSTRAINT [FK_cmicBoat_Deductible_cmicDeductible] FOREIGN KEY([DeductibleID])
REFERENCES [dbo].[cmicDeductible] ([DeductibleID])
GO
ALTER TABLE [dbo].[cmicBoat_Deductible] CHECK CONSTRAINT [FK_cmicBoat_Deductible_cmicDeductible]
GO
/****** Object:  ForeignKey [FK_cmicCoverageType_BasisType_cmicBasisType]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicCoverageType_BasisType]  WITH CHECK ADD  CONSTRAINT [FK_cmicCoverageType_BasisType_cmicBasisType] FOREIGN KEY([BasisTypeID])
REFERENCES [dbo].[cmicBasisType] ([BasisTypeID])
GO
ALTER TABLE [dbo].[cmicCoverageType_BasisType] CHECK CONSTRAINT [FK_cmicCoverageType_BasisType_cmicBasisType]
GO
/****** Object:  ForeignKey [FK_cmicCoverageType_BasisType_cmicCoverageType]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicCoverageType_BasisType]  WITH CHECK ADD  CONSTRAINT [FK_cmicCoverageType_BasisType_cmicCoverageType] FOREIGN KEY([CoverageTypeID])
REFERENCES [dbo].[cmicCoverageType] ([CoverageTypeID])
GO
ALTER TABLE [dbo].[cmicCoverageType_BasisType] CHECK CONSTRAINT [FK_cmicCoverageType_BasisType_cmicCoverageType]
GO
/****** Object:  ForeignKey [FK_cmicCoverageBasisType_CoverageSubType_cmicCoverageSubType]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicCoverageBasisType_CoverageSubType]  WITH CHECK ADD  CONSTRAINT [FK_cmicCoverageBasisType_CoverageSubType_cmicCoverageSubType] FOREIGN KEY([CoverageSubTypeID])
REFERENCES [dbo].[cmicCoverageSubType] ([CoverageSubTypeID])
GO
ALTER TABLE [dbo].[cmicCoverageBasisType_CoverageSubType] CHECK CONSTRAINT [FK_cmicCoverageBasisType_CoverageSubType_cmicCoverageSubType]
GO
/****** Object:  ForeignKey [FK_cmicCoverageBasisType_CoverageSubType_cmicCoverageType_BasisType]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicCoverageBasisType_CoverageSubType]  WITH CHECK ADD  CONSTRAINT [FK_cmicCoverageBasisType_CoverageSubType_cmicCoverageType_BasisType] FOREIGN KEY([CoverageBasisTypeID])
REFERENCES [dbo].[cmicCoverageType_BasisType] ([CoverageBasisTypeID])
GO
ALTER TABLE [dbo].[cmicCoverageBasisType_CoverageSubType] CHECK CONSTRAINT [FK_cmicCoverageBasisType_CoverageSubType_cmicCoverageType_BasisType]
GO
/****** Object:  ForeignKey [FK_cmicCoverageType_cmicCoverageAspPage]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicCoverageType]  WITH CHECK ADD  CONSTRAINT [FK_cmicCoverageType_cmicCoverageAspPage] FOREIGN KEY([AspPageID])
REFERENCES [dbo].[cmicCoverageAspPage] ([AspPageID])
GO
ALTER TABLE [dbo].[cmicCoverageType] CHECK CONSTRAINT [FK_cmicCoverageType_cmicCoverageAspPage]
GO
/****** Object:  ForeignKey [FK_cmicCoverageType_cmicProgram]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicCoverageType]  WITH CHECK ADD  CONSTRAINT [FK_cmicCoverageType_cmicProgram] FOREIGN KEY([ProgramID])
REFERENCES [dbo].[cmicProgram] ([ProgramID])
GO
ALTER TABLE [dbo].[cmicCoverageType] CHECK CONSTRAINT [FK_cmicCoverageType_cmicProgram]
GO
/****** Object:  ForeignKey [FK_cmicSystem_cmicProgram]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicProgram]  WITH CHECK ADD  CONSTRAINT [FK_cmicSystem_cmicProgram] FOREIGN KEY([SystemID])
REFERENCES [dbo].[cmicSystem] ([SystemID])
GO
ALTER TABLE [dbo].[cmicProgram] CHECK CONSTRAINT [FK_cmicSystem_cmicProgram]
GO
/****** Object:  ForeignKey [FK_MVR_Insured]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[MVR]  WITH CHECK ADD  CONSTRAINT [FK_MVR_Insured] FOREIGN KEY([InsuredID])
REFERENCES [dbo].[Insured] ([InsuredID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MVR] CHECK CONSTRAINT [FK_MVR_Insured]
GO
/****** Object:  ForeignKey [FK_SubItem_cmicSubItemType]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[SubItem]  WITH CHECK ADD  CONSTRAINT [FK_SubItem_cmicSubItemType] FOREIGN KEY([SubItemTypeID])
REFERENCES [dbo].[cmicSubItemType] ([SubItemTypeID])
GO
ALTER TABLE [dbo].[SubItem] CHECK CONSTRAINT [FK_SubItem_cmicSubItemType]
GO
/****** Object:  ForeignKey [FK_SubItem_ItemDetail]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[SubItem]  WITH CHECK ADD  CONSTRAINT [FK_SubItem_ItemDetail] FOREIGN KEY([ItemDetailID])
REFERENCES [dbo].[ItemDetail] ([ItemDetailID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubItem] CHECK CONSTRAINT [FK_SubItem_ItemDetail]
GO
/****** Object:  ForeignKey [FK_LossPayee_Item_SubItem]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[LossPayee_Item]  WITH CHECK ADD  CONSTRAINT [FK_LossPayee_Item_SubItem] FOREIGN KEY([SubItemID])
REFERENCES [dbo].[SubItem] ([SubItemID])
GO
ALTER TABLE [dbo].[LossPayee_Item] CHECK CONSTRAINT [FK_LossPayee_Item_SubItem]
GO
/****** Object:  ForeignKey [FK_LossPayeeItem_ItemDetail]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[LossPayee_Item]  WITH CHECK ADD  CONSTRAINT [FK_LossPayeeItem_ItemDetail] FOREIGN KEY([ItemDetailID])
REFERENCES [dbo].[ItemDetail] ([ItemDetailID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LossPayee_Item] CHECK CONSTRAINT [FK_LossPayeeItem_ItemDetail]
GO
/****** Object:  ForeignKey [FK_LossPayeeItem_LossPayee]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[LossPayee_Item]  WITH CHECK ADD  CONSTRAINT [FK_LossPayeeItem_LossPayee] FOREIGN KEY([LossPayeeID])
REFERENCES [dbo].[LossPayee] ([LossPayeeID])
GO
ALTER TABLE [dbo].[LossPayee_Item] CHECK CONSTRAINT [FK_LossPayeeItem_LossPayee]
GO
/****** Object:  ForeignKey [FK_Item_AdditionalCoverage_cmicAdditionalCoverageOption]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Item_AdditionalCoverage]  WITH CHECK ADD  CONSTRAINT [FK_Item_AdditionalCoverage_cmicAdditionalCoverageOption] FOREIGN KEY([AdditionalCoverageID])
REFERENCES [dbo].[cmicAdditionalCoverageOption] ([AdditionalCoverageID])
GO
ALTER TABLE [dbo].[Item_AdditionalCoverage] CHECK CONSTRAINT [FK_Item_AdditionalCoverage_cmicAdditionalCoverageOption]
GO
/****** Object:  ForeignKey [FK_Item_AdditionalCoverage_ItemDetail]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[Item_AdditionalCoverage]  WITH CHECK ADD  CONSTRAINT [FK_Item_AdditionalCoverage_ItemDetail] FOREIGN KEY([ItemDetailID])
REFERENCES [dbo].[ItemDetail] ([ItemDetailID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Item_AdditionalCoverage] CHECK CONSTRAINT [FK_Item_AdditionalCoverage_ItemDetail]
GO
/****** Object:  ForeignKey [FK_cmicOfferState_cmicOffer]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicOffer_State]  WITH CHECK ADD  CONSTRAINT [FK_cmicOfferState_cmicOffer] FOREIGN KEY([OfferID])
REFERENCES [dbo].[cmicOffer] ([OfferID])
GO
ALTER TABLE [dbo].[cmicOffer_State] CHECK CONSTRAINT [FK_cmicOfferState_cmicOffer]
GO
/****** Object:  ForeignKey [FK_cmicOfferState_cmicState]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicOffer_State]  WITH CHECK ADD  CONSTRAINT [FK_cmicOfferState_cmicState] FOREIGN KEY([StateCode])
REFERENCES [dbo].[cmicState] ([StateCode])
GO
ALTER TABLE [dbo].[cmicOffer_State] CHECK CONSTRAINT [FK_cmicOfferState_cmicState]
GO
/****** Object:  ForeignKey [FK_cmicAddress_cmicState]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicAddress]  WITH CHECK ADD  CONSTRAINT [FK_cmicAddress_cmicState] FOREIGN KEY([StateCode])
REFERENCES [dbo].[cmicState] ([StateCode])
GO
ALTER TABLE [dbo].[cmicAddress] CHECK CONSTRAINT [FK_cmicAddress_cmicState]
GO
/****** Object:  ForeignKey [FK_RateItem_Rate]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[RateItem]  WITH CHECK ADD  CONSTRAINT [FK_RateItem_Rate] FOREIGN KEY([RateID])
REFERENCES [dbo].[Rate] ([RateID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RateItem] CHECK CONSTRAINT [FK_RateItem_Rate]
GO
/****** Object:  ForeignKey [FK_cmicCoverageBasisType_AdditionalOption_cmicAdditionalCoverageOption]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicCoverageBasisType_AdditionalOption]  WITH CHECK ADD  CONSTRAINT [FK_cmicCoverageBasisType_AdditionalOption_cmicAdditionalCoverageOption] FOREIGN KEY([AdditionalCoverageID])
REFERENCES [dbo].[cmicAdditionalCoverageOption] ([AdditionalCoverageID])
GO
ALTER TABLE [dbo].[cmicCoverageBasisType_AdditionalOption] CHECK CONSTRAINT [FK_cmicCoverageBasisType_AdditionalOption_cmicAdditionalCoverageOption]
GO
/****** Object:  ForeignKey [FK_cmicCoverageBasisType_AdditionalOption_cmicCoverageType_BasisType]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicCoverageBasisType_AdditionalOption]  WITH CHECK ADD  CONSTRAINT [FK_cmicCoverageBasisType_AdditionalOption_cmicCoverageType_BasisType] FOREIGN KEY([CoverageBasisTypeID])
REFERENCES [dbo].[cmicCoverageType_BasisType] ([CoverageBasisTypeID])
GO
ALTER TABLE [dbo].[cmicCoverageBasisType_AdditionalOption] CHECK CONSTRAINT [FK_cmicCoverageBasisType_AdditionalOption_cmicCoverageType_BasisType]
GO
/****** Object:  ForeignKey [FK_cmicCoverageSubType_AdditionalOption_cmicAdditionalCoverageOption]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicCoverageSubType_AdditionalOption]  WITH CHECK ADD  CONSTRAINT [FK_cmicCoverageSubType_AdditionalOption_cmicAdditionalCoverageOption] FOREIGN KEY([AdditionalCoverageID])
REFERENCES [dbo].[cmicAdditionalCoverageOption] ([AdditionalCoverageID])
GO
ALTER TABLE [dbo].[cmicCoverageSubType_AdditionalOption] CHECK CONSTRAINT [FK_cmicCoverageSubType_AdditionalOption_cmicAdditionalCoverageOption]
GO
/****** Object:  ForeignKey [FK_cmicCoverageSubType_AdditionalOption_cmicCoverageBasisType_CoverageSubType]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicCoverageSubType_AdditionalOption]  WITH CHECK ADD  CONSTRAINT [FK_cmicCoverageSubType_AdditionalOption_cmicCoverageBasisType_CoverageSubType] FOREIGN KEY([CoverageBasisSubTypeID])
REFERENCES [dbo].[cmicCoverageBasisType_CoverageSubType] ([CoverageBasisSubTypeID])
GO
ALTER TABLE [dbo].[cmicCoverageSubType_AdditionalOption] CHECK CONSTRAINT [FK_cmicCoverageSubType_AdditionalOption_cmicCoverageBasisType_CoverageSubType]
GO
/****** Object:  ForeignKey [FK_cmicProgram_SupportingSymbol_cmicProgram]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicProgram_SupportingSymbol]  WITH CHECK ADD  CONSTRAINT [FK_cmicProgram_SupportingSymbol_cmicProgram] FOREIGN KEY([ProgramID])
REFERENCES [dbo].[cmicProgram] ([ProgramID])
GO
ALTER TABLE [dbo].[cmicProgram_SupportingSymbol] CHECK CONSTRAINT [FK_cmicProgram_SupportingSymbol_cmicProgram]
GO
/****** Object:  ForeignKey [FK_cmicProgram_SupportingSymbol_cmicSupportingSymbol]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicProgram_SupportingSymbol]  WITH CHECK ADD  CONSTRAINT [FK_cmicProgram_SupportingSymbol_cmicSupportingSymbol] FOREIGN KEY([SupportingSymbolID])
REFERENCES [dbo].[cmicSupportingSymbol] ([SupportingSymbolID])
GO
ALTER TABLE [dbo].[cmicProgram_SupportingSymbol] CHECK CONSTRAINT [FK_cmicProgram_SupportingSymbol_cmicSupportingSymbol]
GO
/****** Object:  ForeignKey [FK_cmicDeductible_Program_cmicDeductible]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicDeductible_Program]  WITH CHECK ADD  CONSTRAINT [FK_cmicDeductible_Program_cmicDeductible] FOREIGN KEY([DeductibleID])
REFERENCES [dbo].[cmicDeductible] ([DeductibleID])
GO
ALTER TABLE [dbo].[cmicDeductible_Program] CHECK CONSTRAINT [FK_cmicDeductible_Program_cmicDeductible]
GO
/****** Object:  ForeignKey [FK_cmicDeductible_Program_cmicProgram]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicDeductible_Program]  WITH CHECK ADD  CONSTRAINT [FK_cmicDeductible_Program_cmicProgram] FOREIGN KEY([ProgramID])
REFERENCES [dbo].[cmicProgram] ([ProgramID])
GO
ALTER TABLE [dbo].[cmicDeductible_Program] CHECK CONSTRAINT [FK_cmicDeductible_Program_cmicProgram]
GO
/****** Object:  ForeignKey [FK_cmicUnderwriting_Program_cmicProgram]    Script Date: 01/29/2010 13:11:48 ******/
ALTER TABLE [dbo].[cmicUnderwriting_Program]  WITH CHECK ADD  CONSTRAINT [FK_cmicUnderwriting_Program_cmicProgram] FOREIGN KEY([ProgramID])
REFERENCES [dbo].[cmicProgram] ([ProgramID])
GO
ALTER TABLE [dbo].[cmicUnderwriting_Program] CHECK CONSTRAINT [FK_cmicUnderwriting_Program_cmicProgram]
GO