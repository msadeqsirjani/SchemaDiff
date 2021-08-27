/****** Object:  Table [dbo].[CmicCreditCardLimit]    Script Date: 10/10/2009 16:35:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CmicCreditCardLimit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[value] [int] NOT NULL,
 CONSTRAINT [PK_CmicCreditCardLimit_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CmicDeductible]    Script Date: 10/10/2009 16:35:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CmicDeductible](
	[id] [int] NOT NULL,
	[value] [int] NOT NULL,
 CONSTRAINT [PK_CmicDeductible] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CMICFields]    Script Date: 10/10/2009 16:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CMICFields](
	[FieldID] [int] IDENTITY(1,1) NOT NULL,
	[AsppageName] [varchar](50) NULL,
	[FieldDBName] [varchar](50) NULL,
	[FieldName] [varchar](50) NULL,
	[FieldLabel] [varchar](128) NULL,
	[FieldType] [varchar](2) NULL,
	[FieldSize] [varchar](4) NULL,
	[FieldMaxSize] [varchar](4) NULL,
	[FieldCSS] [varchar](50) NULL,
	[FieldValidate] [varchar](12) NULL,
	[FieldRequired] [bit] NULL,
	[FieldRateReq] [bit] NULL,
	[FieldHO2] [bit] NULL,
	[FieldHO3] [bit] NULL,
	[FieldHO4] [bit] NULL,
	[FieldHO6] [bit] NULL,
	[FieldSort] [int] NULL,
	[FieldText] [varchar](50) NULL,
	[FieldHelp] [varchar](50) NULL,
	[FieldEffDte] [varchar](8) NULL,
 CONSTRAINT [PK_CMICFields] PRIMARY KEY CLUSTERED 
(
	[FieldID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_CMICFields] ON [dbo].[CMICFields] 
(
	[FieldEffDte] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CMICFields_1] ON [dbo].[CMICFields] 
(
	[AsppageName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CMICFields_2] ON [dbo].[CMICFields] 
(
	[FieldDBName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CMICFields_3] ON [dbo].[CMICFields] 
(
	[FieldName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CMICValues]    Script Date: 10/10/2009 16:35:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CMICValues](
	[ValueID] [int] IDENTITY(1,1) NOT NULL,
	[FieldID] [int] NULL,
	[Selected] [bit] NULL,
	[RetValue] [varchar](50) NULL,
	[Label] [varchar](1024) NULL,
	[SortOrder] [int] NULL,
	[Field1] [char](1) NULL,
	[Field2] [char](1) NULL,
	[Field3] [char](1) NULL,
 CONSTRAINT [PK_CMICValues] PRIMARY KEY CLUSTERED 
(
	[ValueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_CMICValues] ON [dbo].[CMICValues] 
(
	[FieldID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExternalQuote]    Script Date: 10/10/2009 16:36:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExternalQuote](
	[RqUID] [varchar](40) NOT NULL,
	[HH_ID] [int] NOT NULL,
	[HH_AgencyID] [int] NOT NULL,
	[HH_AGTID] [int] NOT NULL,
	[requestTime] [datetime] NULL,
	[clientAppOrg] [varchar](40) NULL,
	[clientAppName] [varchar](40) NULL,
	[clientAppVersion] [varchar](12) NULL,
 CONSTRAINT [PK_ExternalQuotes] PRIMARY KEY CLUSTERED 
(
	[HH_ID] ASC,
	[RqUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Extract]    Script Date: 10/10/2009 16:36:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Extract](
	[BatID] [int] IDENTITY(1,1) NOT NULL,
	[Bat_Date] [datetime] NULL,
	[Bat_RTCD] [varchar](4) NULL,
 CONSTRAINT [PK_Extract] PRIMARY KEY CLUSTERED 
(
	[BatID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[LoadSnapshotPolicy]    Script Date: 10/10/2009 16:34:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Seth Reno
-- Create date: 2-28-2008
-- Description:	Imports the specified policy from the BHARQ_HOME_SNAPSHOT 
--              databse to the HOS_QUOTE database.
-- =============================================
CREATE PROCEDURE [dbo].[LoadSnapshotPolicy]
	@policyNumber VARCHAR(25),
	@changeDate DATETIME,
	@isAmendment BIT,
	@agentId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION

-- If we ever fix the columns lengths so that HOS & BHARQ_HOME_SNAPSHOT match
-- this will not be needed. But for now we need to ignore warnings.
SET ANSI_WARNINGS OFF 


/* ****************************************************************************
   ****************************** Household Section ***************************
   ***************************************************************************/
INSERT INTO dbo.Household (	
	HH_MFPolNumKey,
	HH_MFCorp,
	HH_MFComp,
	HH_MFPrefixA,
	HH_MFPrefixB,
	HH_MFPolNum,
	HH_MFDecNum,	
	HH_AgencyID,
	HH_AGTID,
	HH_FirstName,
	HH_MIdName,
	HH_LastName,
	HH_CoAppFirstName,
	HH_CoAppMidName,
	HH_CoAppLastName,
	HH_Addr1,
	HH_Addr2,
	HH_City,
	HH_State,
	HH_ZipCode,
	HH_ZipCodePlus4,

	HH_PhNum,
	HH_PolEffDate,
	HH_PolExpDate,
	HH_LastDateUpd,
	HH_AgcyBoundDate,
	HH_PolTerm,
	
	HH_PolNew,
	HH_OtherPolicy,

	HH_MultiPolPrefix,
	HH_MultiPolNum,
	
	HH_FormID,
	HH_PlanID,
	HH_CompID,
	HH_AgcySubmit,
	HH_AgntName,
	HH_AgcyMoney,
	HH_AgcyHowPay,
	HH_AgcyBound,
	HH_FrmAddr1,
	HH_FrmCity,
	HH_FrmState,
	HH_FrmZipCode,
	HH_FrmZipCodePlus4,
	HH_PIPolNum,
	HH_PICarrier,
	HH_ApDOB,
	HH_ApSSN,
	HH_ApOccupation,
	HH_CoApDOB,
	HH_CoApSSN,
	HH_CoApOccupation,
	HH_CLADte,
	HH_AppClueSCR,
	HH_Remarks
)
SELECT	
	-- get the policy number if this is an amendment
	CASE WHEN @isAmendment = 1 THEN @policyNumber ELSE NULL	END						AS HH_MFPolNumKey,
	CASE WHEN @isAmendment = 1 THEN SUBSTRING(@policyNumber, 1, 3) ELSE NULL END	AS HH_MFCorp,
	CASE WHEN @isAmendment = 1 THEN SUBSTRING(@policyNumber, 4, 3) ELSE NULL END	AS HH_MFComp,
	CASE WHEN @isAmendment = 1 THEN SUBSTRING(@policyNumber, 7, 4) ELSE NULL END	AS HH_MFPrefixA,
	CASE WHEN @isAmendment = 1 THEN SUBSTRING(@policyNumber, 11, 4) ELSE NULL END	AS HH_MFPrefixB,
	CASE WHEN @isAmendment = 1 THEN SUBSTRING(@policyNumber, 15, 10) ELSE NULL END	AS HH_MFPolNum,
	CASE WHEN @isAmendment = 1 THEN SUBSTRING(@policyNumber, 25, 1) ELSE NULL END	AS HH_MFDecNum,	
	CAST(SEG_10_AGENT_NUMBER AS INT)				AS 	HH_AgencyID,
	@agentId										AS	HH_AGTID,
	dbo.udf_ConvertString(SEG_16_INS1_FIRST_NAME)	AS	HH_FirstName,
	dbo.udf_ConvertString(SEG_16_INS1_MIDDLE_NAME)	AS	HH_MIdName,
	dbo.udf_ConvertString(SEG_16_INS1_LAST_NAME)	AS	HH_LastName,
	dbo.udf_ConvertString(SEG_16_INS2_FIRST_NAME)	AS	HH_CoAppFirstName,
	dbo.udf_ConvertString(SEG_16_INS2_MIDDLE_NAME)	AS	HH_CoAppMidName,
	dbo.udf_ConvertString(SEG_16_INS2_LAST_NAME)	AS	HH_CoAppLastName,
	dbo.udf_ConvertString(SEG_16_INS_STREET1)		AS	HH_Addr1,
	dbo.udf_ConvertString(SEG_16_INS_STREET2)		AS	HH_Addr2,
	dbo.udf_ConvertString(SEG_16_INS_CITY)			AS	HH_City,
	dbo.udf_ConvertString(SEG_16_INS_STATE)			AS	HH_State,
	dbo.udf_ConvertString(SEG_16_INS_ZIP_CODE_5)	AS	HH_ZipCode,
	dbo.udf_ConvertString(SEG_16_INS_ZIP_CODE_7)	AS	HH_ZipCodePlus4,	
	CASE 
		-- convert 000-000-0000 to NULL
		WHEN SEG_16_INS_HOME_AREA_CODE = 0 THEN NULL
		-- combine the phone # into one string
		ELSE dbo.udf_ConvertString(
				SEG_16_INS_HOME_AREA_CODE + 
				SEG_16_INS_HOME_PREFIX + 
				SEG_16_INS_HOME_NUMBER)
	END												AS	HH_PhNum,
	dbo.udf_ConvertDate(SEG_10_POLICY_EFF_DATE)		AS 	HH_PolEffDate,
	dbo.udf_ConvertDate(SEG_10_POLICY_EXP_DATE)		AS 	HH_PolExpDate,
	dbo.udf_ConvertDate(SEG_INDEX_DATE_LAST_CHANGED)AS 	HH_LastDateUpd,
	dbo.udf_ConvertDate(SEG_12_COVERAGE_BOUND_DATE)	AS 	HH_AgcyBoundDate,	
	CASE
		WHEN SEG_10_POLICY_TERM < 1 THEN NULL
		-- convert days to months
		ELSE CAST(SEG_10_POLICY_TERM AS INT) / 356 * 12
	END												AS	HH_PolTerm,	
	CASE SEG_10_NEW_RENEWAL_IND
		WHEN 'N' THEN 1
		WHEN 'R' THEN 0
		ELSE 1
	END													AS HH_PolNew,
	dbo.udf_ConvertYesNo(SEG_10_MULTI_POLICY_DISC_IND)	AS HH_OtherPolicy,

	-- only get the first instance of the policy for the multi policy discount
	-- we don't have any way to store more than one	in the Household table
	(SELECT TOP 1 
		dbo.udf_ConvertString(SEG_14_MULTI_POLICY_PREFIX)
		FROM BHARQ_HOME_SNAPSHOT.dbo.SEG14 s
		WHERE s.SEG_14_KEY = @policyNumber)					AS	HH_MultiPolPrefix,
	(SELECT TOP 1 
		dbo.udf_ConvertString(SEG_14_MULTI_POL_NUMBER)
		FROM BHARQ_HOME_SNAPSHOT.dbo.SEG14 s
		WHERE s.SEG_14_KEY = @policyNumber)					AS	HH_MultiPolNum,
	
	dbo.udf_ConvertString(SEG_18_FORM_NUMBER)				AS	HH_FormID,
	dbo.udf_ConvertString(SEG_10_PLAN_ID)					AS	HH_PlanID,
	dbo.udf_ConvertString(SEG_10_COMP)						AS	HH_CompID,
	CAST(SEG_10_AGENT_NUMBER AS INT)						AS	HH_AgcySubmit,
	dbo.udf_ConvertString(SEG_10_AGENT_NAME)				AS	HH_AgntName,
	dbo.udf_ConvertString(SEG_10_SUSPENSE_AMOUNT)			AS	HH_AgcyMoney,
	dbo.udf_ConvertString(SEG_10_BILL_PLAN)					AS	HH_AgcyHowPay,
	dbo.udf_ConvertYesNo(SEG_12_COVERAGE_BOUND)				AS	HH_AgcyBound,
	dbo.udf_ConvertString(SEG_12_FORMER_STREET1)			AS	HH_FrmAddr1,
	dbo.udf_ConvertString(SEG_12_FORMER_CITY)				AS	HH_FrmCity,
	dbo.udf_ConvertString(SEG_12_FORMER_STATE)				AS	HH_FrmState,
	dbo.udf_ConvertString(SEG_12_FORMER_ZIP_CODE5)			AS	HH_FrmZipCode,
	dbo.udf_ConvertString(SEG_12_FORMER_ZIP_CODE7)			AS	HH_FrmZipCodePlus4,
	dbo.udf_ConvertString(SEG_12_POLICY_NO)					AS	HH_PIPolNum,
	dbo.udf_ConvertString(SEG_12_PRES_INSURANCE)			AS	HH_PICarrier,
	dbo.udf_ConvertDate(SEG_24_APPL_BIRTH_DATE)				AS	HH_ApDOB,
	CASE
		WHEN SEG_24_APPL_SS_NUMBER = 0 THEN NULL
		ELSE dbo.udf_ConvertString(SEG_24_APPL_SS_NUMBER)
	END														AS	HH_ApSSN,
	dbo.udf_ConvertString(SEG_24_APPL_OCCUPATION)			AS	HH_ApOccupation,
	dbo.udf_ConvertDate(SEG_24_SPS_BIRTH_DATE)				AS	HH_CoApDOB,
	CASE
		WHEN SEG_24_SPS_SS_NUMBER = 0 THEN NULL
		ELSE dbo.udf_ConvertString(SEG_24_SPS_SS_NUMBER)
	END														AS	HH_CoApSSN,
	dbo.udf_ConvertString(SEG_24_SPS_OCCUPATION)			AS	HH_CoApOccupation,
	dbo.udf_ConvertDate(SEG_24_APPL_CURR_CRDT_DATE)			AS	HH_CLADte,
	dbo.udf_ConvertString(SEG_24_APPL_CURR_CRDT_SCORE)		AS	HH_AppClueSCR,
	dbo.udf_ConvertString(SEG_12_ADDL_HOME_REMARKS)			AS	HH_Remarks
FROM BHARQ_HOME_SNAPSHOT.dbo.IDX i
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG10 ON i.SEG_INDEX_KEY = SEG10.SEG_10_KEY
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG12 ON i.SEG_INDEX_KEY = SEG12.SEG_12_KEY	
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG16 ON i.SEG_INDEX_KEY = SEG16.SEG_16_KEY
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG18 ON i.SEG_INDEX_KEY = SEG18.SEG_18_KEY
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG24 ON i.SEG_INDEX_KEY = SEG24.SEG_24_KEY
WHERE i.SEG_INDEX_KEY = @policyNumber
IF @@ERROR <> 0 GOTO PROBLEM

-- get the HH_ID of the new Household record so we can use it in the rest of
-- the insert statements
DECLARE @HH_ID INT
SET @HH_ID = @@IDENTITY



/* ****************************************************************************
   ****************************** Premises Section ****************************
   ***************************************************************************/
INSERT INTO Premises (
	HH_ID,
	PM_Addr1,
	PM_Addr2,
	PM_City,
	PM_State,
	PM_ZipCode,
	PM_ZipCodePlus4,
	PM_LglDesc1,
	PM_LglDesc2,
	PM_DwellUse,
	PM_NumFamily,	
	
	PM_EmpResidence,
	PM_EmpNumber,
	PM_FarmOp,
	PM_FarmAcres,
	PM_Construction,	
	PM_ProtClass,	
	PM_YearBuilt,
	PM_ResType,
	PM_FireDivUnit,	
	PM_FireDeptSrvLmt,
	PM_FireDeptMi,
	PM_SmkDetector,
	PM_BrglrAlarm,
	PM_FireAlarm,
	PM_WoodStove,
	PM_UpdWireYr,
	PM_UpdHeatYr,
	PM_Business,
	
	PM_FireHydtPresent,
	PM_FireHydtFt,
	PM_InCityLimits,
	PM_FireDstrctName,
	PM_PriHeatType,
	PM_HeatSysAge,
	PM_RoofType,
	PM_RoofAge,	
	PM_MHManufacturer,
	PM_MHSerialNum,
	PM_MHModel,
	PM_MHLen,
	PM_MHWidth,
	PM_MHMovingSoon,
	PM_MHDamaged,
	PM_MHGotThermostat,
	PM_MHFoundation,
	PM_MHTieDowns,
	PM_Cvg100Percent,
	PM_CvgA,
	PM_CvgB,
	PM_CvgC,
	PM_CvgD,
	PM_CvgE,
	PM_CvgF,
	PM_CvgPerils,	
	PM_WindHail,
	
	PM_PurchaseDate,
	PM_PoolFenceHT,
	PM_PetBreed,
	PM_OccupiedDaily,
	PM_AccessAllTimes,
	PM_Pets,
	PM_Fireplace,
	PM_FireCleanAnnually,
	PM_Felony,
	PM_Bankruptcy,
	PM_Pool,
	PM_PoolinGround,
	PM_PoolFenced,
	PM_PoolDVBoard,
	PM_PoolSlide,
	PM_BuilderRisk,
	PM_Trampoline
)
SELECT
	@HH_ID,
	dbo.udf_ConvertString(SEG_20_PROP_STREET1)			AS	PM_Addr1,
	dbo.udf_ConvertString(SEG_20_PROP_STREET2)			AS	PM_Addr2,
	dbo.udf_ConvertString(SEG_20_PROP_CITY)				AS	PM_City,
	dbo.udf_ConvertString(SEG_20_PROP_STATE)			AS	PM_State,
	dbo.udf_ConvertString(SEG_20_PROP_ZIP_CODE_5)		AS	PM_ZipCode,
	dbo.udf_ConvertString(SEG_20_PROP_ZIP_CODE_7)		AS	PM_ZipCodePlus4,
	dbo.udf_ConvertString(SEG_20_PROP_LEGAL1)			AS	PM_LglDesc1,
	dbo.udf_ConvertString(SEG_20_PROP_LEGAL2)			AS	PM_LglDesc2,
	dbo.udf_ConvertString(SEG_20_DWELLING_USE)			AS	PM_DwellUse,
	CAST(SEG_20_FAMILIES AS INT)						AS	PM_NumFamily,	
	CASE 
		WHEN SEG_12_NUMBER_OF_RES_EMPL > 0 THEN 1
		ELSE 0
	END											AS	PM_EmpResidence,
	-- do not store EmpNumber unless it's greater than 0
	CASE 
		WHEN SEG_12_NUMBER_OF_RES_EMPL > 0 THEN CAST(SEG_12_NUMBER_OF_RES_EMPL AS INT)
		ELSE NULL
	END													AS	PM_EmpNumber,
	CASE
		-- treat NULLs as false
		WHEN dbo.udf_ConvertYesNo(SEG_12_FARMING_OPERATION) IS NULL THEN 0
		ELSE dbo.udf_ConvertYesNo(SEG_12_FARMING_OPERATION)	
	END													AS	PM_FarmOp,
	CAST(SEG_12_NUMBER_OF_ACRES AS INT)					AS	PM_FarmAcres,
	dbo.udf_ConvertString(SEG_20_CONSTRUCTION)			AS	PM_Construction,	
	CAST(SEG_20_PROTECTION_CLASS AS INT)				AS	PM_ProtClass,	
	dbo.udf_ConvertYear(SEG_20_YEAR_OF_CONSTRUCTION)	AS	PM_YearBuilt,
	dbo.udf_ConvertString(SEG_20_RESIDENCE_TYPE)		AS	PM_ResType,
	-- if SEG_20_NO_FIRE_DIVISIONS contains 0s treat it as null
	CASE
		WHEN SEG_20_NO_FIRE_DIVISIONS <= 0 THEN NULL
		ELSE SEG_20_NO_FIRE_DIVISIONS
	END													AS	PM_FireDivUnit,	
	CAST(SEG_20_FIRE_SERVICE_CHARGE AS INT)				AS	PM_FireDeptSrvLmt,
	CAST(SEG_20_MILES_FROM_FD AS INT)					AS	PM_FireDeptMi,
	CASE SEG_20_SMOKE_DETECTOR
		-- this might be a problem w/ the snapshot
		-- I think T is supposed to by Y, but we
		-- will code for it anyway
		WHEN 'T' THEN 1
		WHEN 'Y' THEN 1
		ELSE 0
	END													AS	PM_SmkDetector,
	CASE 
		-- treat NULLs as None
		WHEN dbo.udf_ConvertString(SEG_20_CENTRAL_BURGLAR_ALARM) IS NULL THEN 'N'
		ELSE dbo.udf_ConvertString(SEG_20_CENTRAL_BURGLAR_ALARM)
	END													AS	PM_BrglrAlarm,
	CASE 		
		-- treat NULLs as None
		WHEN dbo.udf_ConvertString(SEG_20_CENTRAL_FIRE_ALARM) IS NULL THEN 'N'
		-- treat whatever T is as Central
		WHEN dbo.udf_ConvertString(SEG_20_CENTRAL_FIRE_ALARM) = 'T' THEN 'C'
		ELSE dbo.udf_ConvertString(SEG_20_CENTRAL_FIRE_ALARM)
	END													AS	PM_FireAlarm,
	dbo.udf_ConvertYesNo(SEG_20_STOVE)					AS	PM_WoodStove,
	dbo.udf_ConvertYear(SEG_24_ELEC_YEAR_UPDATED)		AS	PM_UpdWireYr,
	dbo.udf_ConvertYear(SEG_24_HEAT_YEAR_UPDATED)		AS	PM_UpdHeatYr,
	-- if business on premises is not set default to 'No'
	CASE SEG_12_BUSINESS_IND
		WHEN 'Y' THEN 1
		ELSE 0
	END													AS	PM_Business,
	CASE 
		WHEN SEG_20_FT_FROM_HYDRANT > 0 THEN 1
		ELSE 0
	END													AS	PM_FireHydtPresent,
	CASE 
		WHEN SEG_20_FT_FROM_HYDRANT = 0 THEN NULL
		ELSE CAST(SEG_20_FT_FROM_HYDRANT AS INT)
	END													AS	PM_FireHydtFt,
	dbo.udf_ConvertYesNo(SEG_20_WITHIN_CITY)			AS	PM_InCityLimits,
	dbo.udf_ConvertString(SEG_20_FIRE_DIST_NAME)		AS	PM_FireDstrctName,
	-- if heat type is not set default to N (none)
	CASE
		WHEN dbo.udf_ConvertString(SEG_24_HEAT_TYPE) IS NULL THEN 'N'
		ELSE dbo.udf_ConvertString(SEG_24_HEAT_TYPE)
	END													AS	PM_PriHeatType,
	CASE
		WHEN CAST(SEG_24_HEAT_AGE AS INT) = 0 THEN NULL
		ELSE CAST(SEG_24_HEAT_AGE AS INT)
	END													AS	PM_HeatSysAge,
	dbo.udf_ConvertString(SEG_24_ROOF_TYPE)				AS	PM_RoofType,
	-- treat 0's as null for age of roof
	CASE
		WHEN CAST(SEG_24_ROOF_AGE AS INT) = 0 THEN NULL
		ELSE CAST(SEG_24_ROOF_AGE AS INT)
	END													AS	PM_RoofAge,
	dbo.udf_ConvertString(SEG_22_MH_MANUFACTURER)		AS	PM_MHManufacturer,
	dbo.udf_ConvertString(SEG_22_MH_SERIAL_NUMBER)		AS	PM_MHSerialNum,
	dbo.udf_ConvertString(SEG_22_MH_MODEL_NAME)			AS	PM_MHModel,
	CAST(SEG_22_MH_LENGTH AS INT)						AS	PM_MHLen,
	CAST(SEG_22_MH_WIDTH AS INT)						AS	PM_MHWidth,
	-- default moving soon to 'No' for mobile-homeowners and null for other plans
	CASE LTRIM(RTRIM(SEG_10_PLAN_ID))
		WHEN 'M' THEN	
			CASE SEG_22_MH_MOVE
				WHEN 'Y' THEN 1
				ELSE 0
			END
		ELSE NULL
	END													AS	PM_MHMovingSoon,
	dbo.udf_ConvertYesNo(SEG_22_MH_EXISTING_DAMAGE)		AS	PM_MHDamaged,
	dbo.udf_ConvertYesNo(SEG_22_MH_THERMO_HEAT)			AS	PM_MHGotThermostat,
	dbo.udf_ConvertString(SEG_22_MH_FOUNDATION)			AS	PM_MHFoundation,
	dbo.udf_ConvertString(SEG_22_MH_TIE_DOWNS)			AS	PM_MHTieDowns,
	CASE 
		WHEN LTRIM(RTRIM(SEG_INDEX_PREFB)) = 'PH' THEN 1
		WHEN LTRIM(RTRIM(SEG_INDEX_PREFB)) = 'M' THEN 0
		WHEN LTRIM(RTRIM(SEG_INDEX_PREFB)) = 'HS' THEN 0
		-- if SEG_INDEX_PREFB = H and the policy contains an
		-- HO289 endorsement then PM_Cvg100Percent = 1
		-- otherwise PM_Cvg100Percent = 0	
		WHEN LTRIM(RTRIM(SEG_INDEX_PREFB)) = 'H'
			AND (
					SELECT COUNT(*) 
					FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A						
					WHERE SEG_28A_KEY = @policyNumber						
						AND SEG_28A_RATED_ENDORSEMENT = 'HO289'						
				) > 0 THEN 1
		ELSE 0
	END													AS	PM_Cvg100Percent,
	CAST(SEG_18_COVERAGE_A_LIMIT AS INT)				AS	PM_CvgA,
	CAST(SEG_18_COVERAGE_B_LIMIT AS INT)				AS	PM_CvgB,
	CAST(SEG_18_COVERAGE_C_LIMIT AS INT)				AS	PM_CvgC,
	CAST(SEG_18_COVERAGE_D_LIMIT AS INT)				AS	PM_CvgD,
	-- set coverage E to 0 if dwelling use is E or S
	CASE SEG_20_DWELLING_USE
		WHEN 'E' THEN 0
		WHEN 'S' THEN 0
		ELSE CAST(SEG_18_COVERAGE_E_LIMIT AS INT)
	END													AS	PM_CvgE,
	-- set coverage F to 0 if dwelling use is E or S
	CASE SEG_20_DWELLING_USE
		WHEN 'E' THEN 0
		WHEN 'S' THEN 0
		ELSE CAST(SEG_18_COVERAGE_F_LIMIT AS INT)
	END													AS	PM_CvgF,
	CAST(SEG_18_ALL_PERILS_DED AS INT)					AS	PM_CvgPerils,
	-- if the wind hail deductible is 0 then set it to null
	CASE
		WHEN SEG_18_WIND_HAIL_DED > 0 THEN 
			CAST(SEG_18_WIND_HAIL_DED AS INT)
		ELSE
			NULL
	END													AS	PM_WindHail,
	-- if purchase date is not a valid date then
	-- use the original policy effective date
	CASE
		WHEN dbo.udf_ConvertDate(SEG_24_PURCHASE_YEAR + SEG_24_PURCHASE_MONTH + '01') IS NULL
			THEN dbo.udf_ConvertDate(SEG_10_ORIG_EFF_DATE)
		ELSE dbo.udf_ConvertDate(SEG_24_PURCHASE_YEAR + SEG_24_PURCHASE_MONTH + '01')
	END													AS	PM_PurchaseDate,
	CASE 
		WHEN SEG_12_FENCE_HEIGHT = 0 THEN NULL
		ELSE CAST(SEG_12_FENCE_HEIGHT AS INT)
	END													AS	PM_PoolFenceHT,
	dbo.udf_ConvertString(SEG_12_PETS_TYPE_BREED)		AS	PM_PetBreed,
	-- if occupied daily is not set default to Yes
	CASE SEG_20_DAYTIME_OCCUP_IND
		WHEN 'Y' THEN 1
		WHEN 'N' THEN 0
		ELSE 1
	END													AS	PM_OccupiedDaily,
	-- if accessable year round is not set default to Yes
	CASE SEG_12_ACCESS_YEAR_ROUND
		WHEN 'Y' THEN 1
		WHEN 'N' THEN 0
		ELSE 1
	END													AS	PM_AccessAllTimes,
	dbo.udf_ConvertYesNo(SEG_12_PETS)					AS	PM_Pets,
	
	CASE SEG_20_FIRE_PLACE
		WHEN 'Y' THEN 1
		ELSE
			-- if fireplace is empty default to no
			-- unless the plan is M then make them fill it out
			CASE LTRIM(RTRIM(SEG_10_PLAN_ID))
				WHEN 'M' THEN NULL
				ELSE 0
			END
	END													AS	PM_Fireplace,	
	CASE SEG_20_STOVE_CLEANED
		WHEN 'Y' THEN 1
		WHEN 'N' THEN 0
		ELSE
			-- if cleaned is empty and fireplace is yes default to No
			CASE SEG_20_FIRE_PLACE
				WHEN 'Y' THEN 0
				ELSE NULL
			END	
	END													AS	PM_FireCleanAnnually,
	-- if felony is not set default to No
	CASE SEG_12_FELONY_CONVICTED
		WHEN 'Y' THEN 1
		WHEN 'N' THEN 0
		ELSE 0
	END													AS	PM_Felony,
	-- if bankruptcy is not set default to No
	CASE SEG_12_BANKRUPTCY
		WHEN 'Y' THEN 1
		WHEN 'N' THEN 0
		ELSE 0
	END													AS PM_Bankruptcy,
	dbo.udf_ConvertYesNo(SEG_12_POOL)					AS	PM_Pool,
	dbo.udf_ConvertYesNo(SEG_12_POOL_IN_GROUND)			AS	PM_PoolinGround,
	dbo.udf_ConvertYesNo(SEG_12_FENCE)					AS	PM_PoolFenced,
	dbo.udf_ConvertYesNo(SEG_12_DIVE_BOARD)				AS	PM_PoolDVBoard,
	dbo.udf_ConvertYesNo(SEG_12_SLIDE)					AS	PM_PoolSlide,
	
	-- if the policy contains a F004 endorsment then set builders risk to true
	CASE 
		WHEN(	
			SELECT COUNT(*) 
			FROM BHARQ_HOME_SNAPSHOT.dbo.SEG26A
			WHERE 
				SEG_26A_KEY = @policyNumber
				AND SEG_26A_NON_RATE_ENDORSEMENT = 'F004'
		) > 0 THEN 1
		ELSE 0
	END													AS PM_BuilderRisk,
	-- trampoline is not stored in the snapshot
	-- default to No
	0													AS PM_Trampoline

FROM BHARQ_HOME_SNAPSHOT.dbo.IDX i
	LEFT OUTER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG10 ON i.SEG_INDEX_KEY = SEG10.SEG_10_KEY	
	LEFT OUTER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG12 ON i.SEG_INDEX_KEY = SEG12.SEG_12_KEY		
	LEFT OUTER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG18 ON i.SEG_INDEX_KEY = SEG18.SEG_18_KEY
	LEFT OUTER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG20 ON i.SEG_INDEX_KEY = SEG20.SEG_20_KEY
	LEFT OUTER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG22 ON i.SEG_INDEX_KEY = SEG22.SEG_22_KEY
	LEFT OUTER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG24 ON i.SEG_INDEX_KEY = SEG24.SEG_24_KEY
WHERE i.SEG_INDEX_KEY = @policyNumber
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************************************************************
   *************************** Lein_AddIns Section ****************************
   ***************************************************************************/
INSERT INTO Lein_AddIns (
	HH_ID,	
	LN_SendBill,
	LN_IntrCode,
	LN_FirstName,
	LN_LastName,
	LN_Addr1,
	LN_Addr2,
	LN_City,
	LN_State,
	LN_ZipCode,
	LN_ZipPlus4,
	LN_LoanNum,
	LN_SeqNum
)
SELECT
	@HH_ID,	
	-- if the SEG_10_PAYOR_IND = 'M' set LN_SendBill = 1 for the mortgagee 
	-- with the lowest sequence number.
	CASE SEG_10_PAYOR_IND
		WHEN 'M' THEN
		CASE
			WHEN LTRIM(RTRIM(SEG_36A_MORTGAGEE_NUM)) = (
				SELECT MIN(SEG_36A_MORTGAGEE_NUM) 
				FROM BHARQ_HOME_SNAPSHOT.dbo.SEG36A
				WHERE SEG_36A_KEY = @policyNumber
			) THEN 1
			ELSE 0
		END
		ELSE 0		
	END													AS LN_SendBill,
	dbo.udf_ConvertString(SEG_36A_MORT_INTEREST_CODE)	AS LN_IntrCode,
	dbo.udf_ConvertString(SEG_36A_MORT_NAME1)			AS LN_FirstName,
	dbo.udf_ConvertString(SEG_36A_MORT_NAME2)			AS LN_LastName,
	dbo.udf_ConvertString(SEG_36A_MORT_STREET1)			AS LN_Addr1,
	dbo.udf_ConvertString(SEG_36A_MORT_STREET2)			AS LN_Addr2,
	dbo.udf_ConvertString(SEG_36A_MORT_CITY)			AS LN_City,
	dbo.udf_ConvertString(SEG_36A_MORT_STATE)			AS LN_State,
	dbo.udf_ConvertString(SEG_36A_MORT_ZIP_CODE_5)		AS LN_ZipCode,
	dbo.udf_ConvertString(SEG_36A_MORT_ZIP_CODE_7)		AS LN_ZipPlus4,
	dbo.udf_ConvertString(SEG_36A_MORT_LOAN_NUMBER)		AS LN_LoanNum,
	dbo.udf_ConvertString(SEG_36A_MORTGAGEE_NUM)		AS LN_SeqNum
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG10
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG36A ON SEG_36A_KEY = SEG_10_KEY
WHERE SEG_10_KEY = @policyNumber
IF @@ERROR <> 0 GOTO PROBLEM



/* ****************************************************************************
   ****************************** Driver Section ******************************
   ***************************************************************************/
-- There can be up to 5 instances in a single SEG53 record. Use the UNION 
-- operator to combine the 5 different queries into a single result set.
INSERT INTO Driver (
	HH_ID,	
	DR_FirstName,
	DR_MidName,
	DR_LastName,
	DR_Sex,
	DR_Relation,
	DR_DOBDate,
	DR_LicNum,
	DR_LicState,
	DR_SeqNum
)
SELECT
	@HH_ID													AS HH_ID,	
	dbo.udf_ConvertString(SEG_53_WA_UND_DRVR_FIRST_NA1)		AS DR_FirstName,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRVR_MIDDLE_NA1)	AS DR_MidName,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRVR_LAST_NA1)		AS DR_LastName,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_SEX1)		AS DR_Sex,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_RELTN1)		AS DR_Relation,
	dbo.udf_ConvertDate(SEG_53_WA_UND_DRIVER_BRTH_DT1)		AS DR_DOBDate,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_LICNO1)		AS DR_LicNum,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_STATE1)		AS DR_LicState,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_NUMBER1)		AS DR_SeqNum
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG53
WHERE SEG_53_KEY = @policyNumber AND SEG_53_WA_UND_DRIVER_NUMBER1 > 0
UNION ALL
SELECT
	@HH_ID													AS HH_ID,	
	dbo.udf_ConvertString(SEG_53_WA_UND_DRVR_FIRST_NA2)		AS DR_FirstName,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRVR_MIDDLE_NA2)	AS DR_MidName,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRVR_LAST_NA2)		AS DR_LastName,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_SEX2)		AS DR_Sex,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_RELTN2)		AS DR_Relation,
	dbo.udf_ConvertDate(SEG_53_WA_UND_DRIVER_BRTH_DT2)		AS DR_DOBDate,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_LICNO2)		AS DR_LicNum,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_STATE2)		AS DR_LicState,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_NUMBER2)		AS DR_SeqNum
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG53
WHERE SEG_53_KEY = @policyNumber AND SEG_53_WA_UND_DRIVER_NUMBER2 > 0
UNION ALL
SELECT
	@HH_ID													AS HH_ID,	
	dbo.udf_ConvertString(SEG_53_WA_UND_DRVR_FIRST_NA3)		AS DR_FirstName,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRVR_MIDDLE_NA3)	AS DR_MidName,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRVR_LAST_NA3)		AS DR_LastName,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_SEX3)		AS DR_Sex,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_RELTN3)		AS DR_Relation,
	dbo.udf_ConvertDate(SEG_53_WA_UND_DRIVER_BRTH_DT3)		AS DR_DOBDate,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_LICNO3)		AS DR_LicNum,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_STATE3)		AS DR_LicState,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_NUMBER3)		AS DR_SeqNum
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG53
WHERE SEG_53_KEY = @policyNumber AND SEG_53_WA_UND_DRIVER_NUMBER3 > 0
UNION ALL
SELECT
	@HH_ID													AS HH_ID,	
	dbo.udf_ConvertString(SEG_53_WA_UND_DRVR_FIRST_NA4)		AS DR_FirstName,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRVR_MIDDLE_NA4)	AS DR_MidName,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRVR_LAST_NA4)		AS DR_LastName,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_SEX4)		AS DR_Sex,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_RELTN4)		AS DR_Relation,
	dbo.udf_ConvertDate(SEG_53_WA_UND_DRIVER_BRTH_DT4)		AS DR_DOBDate,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_LICNO4)		AS DR_LicNum,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_STATE4)		AS DR_LicState,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_NUMBER4)		AS DR_SeqNum
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG53
WHERE SEG_53_KEY = @policyNumber AND SEG_53_WA_UND_DRIVER_NUMBER4 > 0
UNION ALL
SELECT
	@HH_ID													AS HH_ID,	
	dbo.udf_ConvertString(SEG_53_WA_UND_DRVR_FIRST_NA5)		AS DR_FirstName,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRVR_MIDDLE_NA5)	AS DR_MidName,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRVR_LAST_NA5)		AS DR_LastName,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_SEX5)		AS DR_Sex,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_RELTN5)		AS DR_Relation,
	dbo.udf_ConvertDate(SEG_53_WA_UND_DRIVER_BRTH_DT5)		AS DR_DOBDate,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_LICNO5)		AS DR_LicNum,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_STATE5)		AS DR_LicState,
	dbo.udf_ConvertString(SEG_53_WA_UND_DRIVER_NUMBER5)		AS DR_SeqNum
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG53
WHERE SEG_53_KEY = @policyNumber AND SEG_53_WA_UND_DRIVER_NUMBER5 > 0
IF @@ERROR <> 0 GOTO PROBLEM



/* ****************************************************************************
   ****************************** AddEnd Section ******************************
   ***************************************************************************/

/* Endorsments from SEG26A that map to AddEnd in the following manner can be 
   inserted using this single statment:
		AddEnd.ED_Type				= SEG_26A_NON_RATE_ENDORSEMENT
		AddEnd.ED_PremiumBearing	= 0
*/	
INSERT INTO AddEnd (
	HH_ID,	
	ED_Type,
	ED_PremBearing,
	ED_SeqNum
)
SELECT
	@HH_ID										AS HH_ID,	
	LTRIM(RTRIM(SEG_26A_NON_RATE_ENDORSEMENT))	AS ED_Type,
	0											AS ED_PremBearing,
	SEG_26A_NON_RATED_SEQ_NUM					AS ED_SeqNum
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG26A	
WHERE 
	SEG_26A_KEY = @policyNumber
	AND SEG_26A_NON_RATE_ENDORSEMENT IN (
		'F004',    'HO0493',  'E111',    'F050',    'HO0124C', 'HO0496', 'HO2393',
		'IL2187C', 'IL2195',  'PC110',   'HO200',   'MH0401',  'HO0103', 'IL2199',
		'HO0103C', 'HO0482C', 'HO0114C', 'IL2184'
	)
IF @@ERROR <> 0 GOTO PROBLEM


/* Endorsments from SEG28A that map to AddEnd in the following manner can be 
   inserted using this single statment:
		AddEnd.ED_Type				= SEG_28A_RATED_ENDORSEMENT
		AddEnd.ED_PremiumBearing	= 1
		AddEnd.ED_CvrLmt			= SEG_28A_RATED_COVERAGE		
*/	
INSERT INTO AddEnd (
	HH_ID,	
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,	
	ED_CvrLmt
)
SELECT
	@HH_ID										AS HH_ID,	
	LTRIM(RTRIM(SEG_28A_RATED_ENDORSEMENT))		AS ED_Type,
	1											AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER					AS ED_SeqNum,	
	CASE
		WHEN SEG_28A_RATED_COVERAGE = 0 THEN NULL
		ELSE CAST(SEG_28A_RATED_COVERAGE AS INT)
	END											AS ED_CvrLmt
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A	
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT IN (
		'F070',    'HO0414', 'HO0480', 'HO0490', 'HO0491', 'HO0495', 'HO0498',
		'HO0528C', 'HO220',  'HO2413', 'HO2482', 'HO0416', 'HO0599C','HO1732',
		'HO1733',  'HO210',  'MH0402', 'MH0404', 'HO289',  'HO0495C'
	)
IF @@ERROR <> 0 GOTO PROBLEM


/* The rest of the endorsements have a unique mapping and must be inserted
   using thier own statement. */

/* ****************************** ADDLRES ************************************/
-- There can be up to four instances in a single SEG45 record. Use the UNION 
-- operator to combine the 4 different queries into a single result set.
INSERT INTO AddEnd (
	HH_ID,	
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,
	ED_Addr1,
	ED_Addr2,
	ED_City,
	ED_State,
	ED_ZipCode,
	ED_ZipPlus4,
	ED_NumFamily
)
SELECT
	@HH_ID											AS HH_ID,	
	'ADDLRES'										AS ED_Type,
	0												AS ED_PremBearing,
	SEG_45_SEQ_NUM									AS ED_SeqNum,
	dbo.udf_ConvertString(SEG_45_ADDL_STREET11)		AS ED_Addr1,
	dbo.udf_ConvertString(SEG_45_ADDL_STREET21)		AS ED_Addr2,
	dbo.udf_ConvertString(SEG_45_ADDL_CITY1)		AS ED_City,
	dbo.udf_ConvertString(SEG_45_ADDL_STATE1)		AS ED_State,
	dbo.udf_ConvertString(SEG_45_ADDL_ZIP_CODE_51)	AS ED_ZipCode,
	dbo.udf_ConvertString(SEG_45_ADDL_ZIP_CODE_71)	AS ED_ZipPlus4,
	CAST(SEG_45_ADDL_NO_OF_FMLY1 AS INT)			AS ED_NumFamily
FROM
	BHARQ_HOME_SNAPSHOT.dbo.SEG45
WHERE 
	SEG_45_KEY = @policyNumber
	AND NOT dbo.udf_ConvertString(SEG_45_ADDL_STREET11) IS NULL
UNION ALL SELECT
	@HH_ID											AS HH_ID,	
	'ADDLRES'										AS ED_Type,
	0												AS ED_PremBearing,
	SEG_45_SEQ_NUM									AS ED_SeqNum,
	dbo.udf_ConvertString(SEG_45_ADDL_STREET12)		AS ED_Addr1,
	dbo.udf_ConvertString(SEG_45_ADDL_STREET22)		AS ED_Addr2,
	dbo.udf_ConvertString(SEG_45_ADDL_CITY2)		AS ED_City,
	dbo.udf_ConvertString(SEG_45_ADDL_STATE2)		AS ED_State,
	dbo.udf_ConvertString(SEG_45_ADDL_ZIP_CODE_52)	AS ED_ZipCode,
	dbo.udf_ConvertString(SEG_45_ADDL_ZIP_CODE_72)	AS ED_ZipPlus4,
	CAST(SEG_45_ADDL_NO_OF_FMLY2 AS INT)			AS ED_NumFamily
FROM
	BHARQ_HOME_SNAPSHOT.dbo.SEG45
WHERE 
	SEG_45_KEY = @policyNumber
	AND NOT dbo.udf_ConvertString(SEG_45_ADDL_STREET12) IS NULL
UNION ALL SELECT
	@HH_ID											AS HH_ID,	
	'ADDLRES'										AS ED_Type,
	0												AS ED_PremBearing,
	SEG_45_SEQ_NUM									AS ED_SeqNum,
	dbo.udf_ConvertString(SEG_45_ADDL_STREET13)		AS ED_Addr1,
	dbo.udf_ConvertString(SEG_45_ADDL_STREET23)		AS ED_Addr2,
	dbo.udf_ConvertString(SEG_45_ADDL_CITY3)		AS ED_City,
	dbo.udf_ConvertString(SEG_45_ADDL_STATE3)		AS ED_State,
	dbo.udf_ConvertString(SEG_45_ADDL_ZIP_CODE_53)	AS ED_ZipCode,
	dbo.udf_ConvertString(SEG_45_ADDL_ZIP_CODE_73)	AS ED_ZipPlus4,
	CAST(SEG_45_ADDL_NO_OF_FMLY3 AS INT)			AS ED_NumFamily
FROM
	BHARQ_HOME_SNAPSHOT.dbo.SEG45
WHERE 
	SEG_45_KEY = @policyNumber
	AND NOT dbo.udf_ConvertString(SEG_45_ADDL_STREET13) IS NULL
UNION ALL SELECT
	@HH_ID											AS HH_ID,	
	'ADDLRES'										AS ED_Type,
	0												AS ED_PremBearing,
	SEG_45_SEQ_NUM									AS ED_SeqNum,
	dbo.udf_ConvertString(SEG_45_ADDL_STREET14)		AS ED_Addr1,
	dbo.udf_ConvertString(SEG_45_ADDL_STREET24)		AS ED_Addr2,
	dbo.udf_ConvertString(SEG_45_ADDL_CITY4)		AS ED_City,
	dbo.udf_ConvertString(SEG_45_ADDL_STATE4)		AS ED_State,
	dbo.udf_ConvertString(SEG_45_ADDL_ZIP_CODE_54)	AS ED_ZipCode,
	dbo.udf_ConvertString(SEG_45_ADDL_ZIP_CODE_74)	AS ED_ZipPlus4,
	CAST(SEG_45_ADDL_NO_OF_FMLY4 AS INT)			AS ED_NumFamily
FROM
	BHARQ_HOME_SNAPSHOT.dbo.SEG45
WHERE 
	SEG_45_KEY = @policyNumber
	AND NOT dbo.udf_ConvertString(SEG_45_ADDL_STREET14) IS NULL
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** HO0410 ************************************/
INSERT INTO AddEnd (
	HH_ID,	
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,
	ED_Name1,
	ED_Name2,
	ED_Addr1,
	ED_Addr2,
	ED_City,
	ED_State,
	ED_ZipCode,
	ED_ZipPlus4,
	ED_Description1,
	ED_Loc2Name1,
	ED_Loc2Name2,
	ED_Loc2Addr1,
	ED_Loc2Addr2,
	ED_Loc2City,
	ED_Loc2State,
	ED_Loc2ZipCode,
	ED_Loc2ZipPlus4,
	ED_Description2
)
SELECT
	@HH_ID												AS HH_ID,	
	'HO0410'											AS ED_Type,
	0													AS ED_PremBearing,
	SEG_26A_NON_RATED_SEQ_NUM							AS ED_SeqNum,
	dbo.udf_ConvertString(SEG_47_A_INT_NAME11)			AS ED_Name1,
	dbo.udf_ConvertString(SEG_47_A_INT_NAME21)			AS ED_Name2,
	dbo.udf_ConvertString(SEG_47_A_INT_STREET11)		AS ED_Addr1,
	dbo.udf_ConvertString(SEG_47_A_INT_STREET21)		AS ED_Addr2,
	dbo.udf_ConvertString(SEG_47_A_INT_CITY1)			AS ED_City,
	dbo.udf_ConvertString(SEG_47_A_INT_STATE1)			AS ED_State,
	dbo.udf_ConvertString(SEG_47_A_INT_ZIP_CODE_51)		AS ED_ZipCode,
	dbo.udf_ConvertString(SEG_47_A_INT_ZIP_CODE_71)		AS ED_ZipPlus4,
	dbo.udf_ConvertString(SEG_47_A_INT_DESCRIPTION1)	AS ED_Description1,
	dbo.udf_ConvertString(SEG_47_A_INT_NAME12)			AS ED_Loc2Name1,
	dbo.udf_ConvertString(SEG_47_A_INT_NAME22)			AS ED_Loc2Name2,
	dbo.udf_ConvertString(SEG_47_A_INT_STREET12)		AS ED_Loc2Addr1,
	dbo.udf_ConvertString(SEG_47_A_INT_STREET22)		AS ED_Loc2Addr2,
	dbo.udf_ConvertString(SEG_47_A_INT_CITY2)			AS ED_Loc2City,
	dbo.udf_ConvertString(SEG_47_A_INT_STATE2)			AS ED_Loc2State,
	dbo.udf_ConvertString(SEG_47_A_INT_ZIP_CODE_52)		AS ED_Loc2ZipCode,
	dbo.udf_ConvertString(SEG_47_A_INT_ZIP_CODE_72)		AS ED_Loc2ZipPlus4,
	dbo.udf_ConvertString(SEG_47_A_INT_DESCRIPTION2)	AS ED_Description2
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG26A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG47 ON SEG_47_KEY = SEG_26A_KEY
WHERE 
	SEG_26A_KEY = @policyNumber
	AND SEG_26A_NON_RATE_ENDORSEMENT = 'HO0410'
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** HO0412 ************************************/
INSERT INTO AddEnd (
	HH_ID,	
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,	
	ED_LiabLmt	
)
SELECT
	@HH_ID										AS HH_ID,	
	'HO0412'									AS ED_Type,	
	1											AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER					AS ED_SeqNum,	
	-- subtract 2,500 from coverage
	CAST(SEG_28A_RATED_COVERAGE AS INT) - 2500	AS ED_LiabLmt
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A	
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO0412'
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** HO0435 ************************************/
INSERT INTO AddEnd (
	HH_ID,	
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,	
	ED_435LiabLmtPremises,
	
	ED_LiabLmt,	
	ED_Addr1,
	ED_Addr2,
	ED_City,
	ED_State,
	ED_ZipCode,
	ED_ZipPlus4,
	
	ED_Loc2LiabLmt,	
	ED_Loc2Addr1,
	ED_Loc2Addr2,
	ED_Loc2City,
	ED_Loc2State,
	ED_Loc2ZipCode,
	ED_Loc2ZipPlus4
)
SELECT
	@HH_ID												AS HH_ID,	
	'HO0435'											AS ED_Type,
	1													AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER							AS ED_SeqNum,	
	CAST(SEG_37_LOSS_A_RESID_LIMIT AS INT)				AS ED_435LiabLmtPremises,
	CASE
		WHEN SEG_37_LOSS_A_LIMIT1 = 0 THEN NULL
		ELSE CAST(SEG_37_LOSS_A_LIMIT1 AS INT)
	END													AS ED_LiabLmt,	
	dbo.udf_ConvertString(SEG_37_LOSS_A_STREET11)		AS ED_Addr1,
	dbo.udf_ConvertString(SEG_37_LOSS_A_STREET21)		AS ED_Addr2,
	dbo.udf_ConvertString(SEG_37_LOSS_A_CITY1)			AS ED_City,
	dbo.udf_ConvertString(SEG_37_LOSS_A_STATE1)			AS ED_State,
	dbo.udf_ConvertString(SEG_37_LOSS_A_ZIP_CODE_51)	AS ED_ZipCode,
	dbo.udf_ConvertString(SEG_37_LOSS_A_ZIP_CODE_71)	AS ED_ZipPlus4,
	CASE
		WHEN SEG_37_LOSS_A_LIMIT2 = 0 THEN NULL
		ELSE CAST(SEG_37_LOSS_A_LIMIT2 AS INT)
	END													AS ED_Loc2LiabLmt,	
	dbo.udf_ConvertString(SEG_37_LOSS_A_STREET12)		AS ED_Loc2Addr1,
	dbo.udf_ConvertString(SEG_37_LOSS_A_STREET22)		AS ED_Loc2Addr2,
	dbo.udf_ConvertString(SEG_37_LOSS_A_CITY2)			AS ED_Loc2City,
	dbo.udf_ConvertString(SEG_37_LOSS_A_STATE2)			AS ED_Loc2State,
	dbo.udf_ConvertString(SEG_37_LOSS_A_ZIP_CODE_52)	AS ED_Loc2ZipCode,
	dbo.udf_ConvertString(SEG_37_LOSS_A_ZIP_CODE_72)	AS ED_Loc2ZipPlus4
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG37 ON SEG_37_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO0435'
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** HO0440 ************************************/
INSERT INTO AddEnd (
	HH_ID,	
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,	
	ED_LiabLmt,
	ED_Description1
)
SELECT
	@HH_ID											AS HH_ID,	
	'HO0440'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,		
	CAST(SEG_44_OSOR_LIMIT AS INT)					AS ED_LiabLmt,
	dbo.udf_ConvertString(SEG_44_OSOR_STRUCTURE_ID)	AS ED_Description1

FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG44 ON SEG_44_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO0440'
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** HO0441 ************************************/
INSERT INTO AddEnd (
	HH_ID,	
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,
	ED_Name1,
	ED_Name2,
	ED_Addr1,
	ED_Addr2,
	ED_City,
	ED_State,
	ED_ZipCode,
	ED_ZipPlus4,	
	ED_Description1	
)
SELECT
	@HH_ID											AS HH_ID,	
	'HO0441'										AS ED_Type,
	0												AS ED_PremBearing,
	SEG_26A_NON_RATED_SEQ_NUM						AS ED_SeqNum,
	dbo.udf_ConvertString(SEG_40_AI_NAME1)			AS ED_Name1,
	dbo.udf_ConvertString(SEG_40_AI_NAME2)			AS ED_Name2,
	dbo.udf_ConvertString(SEG_40_AI_STREET1)		AS ED_Addr1,
	dbo.udf_ConvertString(SEG_40_AI_STREET2)		AS ED_Addr2,
	dbo.udf_ConvertString(SEG_40_AI_CITY)			AS ED_City,
	dbo.udf_ConvertString(SEG_40_AI_STATE)			AS ED_State,
	dbo.udf_ConvertString(SEG_40_AI_ZIP_CODE_5)		AS ED_ZipCode,
	dbo.udf_ConvertString(SEG_40_AI_ZIP_CODE_7)		AS ED_ZipPlus4,
	dbo.udf_ConvertString(SEG_40_AI_INTEREST_TYPE)	AS ED_Description1
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG26A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG40 ON SEG_40_KEY = SEG_26A_KEY
WHERE 
	SEG_26A_KEY = @policyNumber
	AND SEG_26A_NON_RATE_ENDORSEMENT = 'HO0441'
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** HO0442 ************************************/
INSERT INTO AddEnd (
	HH_ID,	
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,	
	ED_BusinessOnPremises,
	ED_CvrLmt,
	ED_Description1,
	ED_Description2
)
SELECT
	@HH_ID												AS HH_ID,	
	'HO0442'											AS ED_Type,
	1													AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER							AS ED_SeqNum,	
	CASE SEG_56_IO_OTHER_STRUCT_IND	
		WHEN 'D' THEN 1
		ELSE 0
	END													AS ED_BusinessOnPremises,
	CASE 
		WHEN SEG_56_IO_LIMIT = 0 THEN NULL
		ELSE CAST(SEG_56_IO_LIMIT AS INT)
	END													AS ED_CvrLmt,
	dbo.udf_ConvertString(SEG_56_IO_TYPE_OF_OFFICE)		AS ED_Description1,
	dbo.udf_ConvertString(SEG_56_IO_OTHER_STRUCT_DESCR)	AS ED_Description2
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG56 ON SEG_56_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO0442'
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** HO0448 ************************************/
INSERT INTO AddEnd (
	HH_ID,	
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,	
	ED_LiabLmt,
	ED_Description1
)
SELECT
	@HH_ID											AS HH_ID,	
	'HO0448'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,	
	CAST(SEG_42_OS_LIMIT AS INT)					AS ED_LiabLmt,
	dbo.udf_ConvertString(SEG_42_OS_STRUCTURE_ID)	AS ED_Description1
	
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG42 ON SEG_42_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO0448'
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** HO0449 ************************************/
INSERT INTO AddEnd (
	HH_ID,	
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,	
	ED_LiabLmt,
	ED_Addr1,
	ED_Addr2,
	ED_City,
	ED_State,
	ED_ZipCode,
	ED_ZipPlus4,
	
	ED_Loc2LiabLmt,
	ED_Loc2Addr1,
	ED_Loc2Addr2,
	ED_Loc2City,
	ED_Loc2State,
	ED_Loc2ZipCode,
	ED_Loc2ZipPlus4	
)
SELECT
	@HH_ID											AS HH_ID,	
	'HO0449'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,	
	CASE
		WHEN SEG_35_BA_ALT_LIMIT1 = 0 THEN NULL
		ELSE CAST(SEG_35_BA_ALT_LIMIT1 AS INT)
	END												AS ED_LiabLmt,
	dbo.udf_ConvertString(SEG_35_BA_ALT_STREET11)	AS ED_Addr1,
	dbo.udf_ConvertString(SEG_35_BA_ALT_STREET21)	AS ED_Addr2,
	dbo.udf_ConvertString(SEG_35_BA_ALT_CITY1)		AS ED_City,
	dbo.udf_ConvertString(SEG_35_BA_ALT_STATE1)		AS ED_State,
	dbo.udf_ConvertString(SEG_35_BA_ALT_ZIP_CODE51)	AS ED_ZipCode,
	dbo.udf_ConvertString(SEG_35_BA_ALT_ZIP_CODE71)	AS ED_ZipPlus4,
	CASE
		WHEN SEG_35_BA_ALT_LIMIT2 = 0 THEN NULL
		ELSE CAST(SEG_35_BA_ALT_LIMIT2 AS INT)
	END												AS ED_Loc2LiabLmt,
	dbo.udf_ConvertString(SEG_35_BA_ALT_STREET12)	AS ED_Loc2Addr1,
	dbo.udf_ConvertString(SEG_35_BA_ALT_STREET22)	AS ED_Loc2Addr2,
	dbo.udf_ConvertString(SEG_35_BA_ALT_CITY2)		AS ED_Loc2City,
	dbo.udf_ConvertString(SEG_35_BA_ALT_STATE2)		AS ED_Loc2State,
	dbo.udf_ConvertString(SEG_35_BA_ZIP_CODE52)		AS ED_Loc2ZipCode,
	dbo.udf_ConvertString(SEG_35_BA_ZIP_CODE72)		AS ED_Loc2ZipPlus4
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG35 ON SEG_35_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO0449'
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** HO0450 ************************************/
-- There can be up to two instances in a single SEG31 record. Use the UNION 
-- operator to combine the 2 different queries into a single result set.

-- get SEG_18_COVERAGE_C_LIMIT / 10 so we can determine ED_LiabLmt
DECLARE @oneTenthOfCoverageCLimit INT
SET @oneTenthOfCoverageCLimit = (
			SELECT CAST(CAST(SEG_18_COVERAGE_C_LIMIT AS INT) * .1 AS INT)
			FROM BHARQ_HOME_SNAPSHOT.dbo.SEG18
			WHERE SEG_18_KEY = @policyNumber
		)

INSERT INTO AddEnd (
	HH_ID,	
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,	
	ED_LiabLmt,
	ED_Addr1,
	ED_Addr2,
	ED_City,
	ED_State,
	ED_ZipCode,
	ED_ZipPlus4
)
SELECT
	@HH_ID											AS HH_ID,	
	'HO0450'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,	
	CASE 
		WHEN SEG_31_PROP_O_LIMIT1 > 0 THEN
		CASE
			-- if COVERAGE_C_LIMIT / 10 > 1000 then
			-- ED_LiabLmt = PROP_O_LIMIT1 - (COVERAGE_C_LIMIT / 10)
			-- if COVERAGE_C_LIMIT / 10 <= 1000 then
			-- ED_LiabLmt = PROP_O_LIMIT1 - 1000
			WHEN @oneTenthOfCoverageCLimit > 1000 THEN
				CAST(SEG_31_PROP_O_LIMIT1 AS INT) -	@oneTenthOfCoverageCLimit
			ELSE CAST(SEG_31_PROP_O_LIMIT1 AS INT) - 1000
		END
		ELSE NULL
	END													AS ED_LiabLmt,
	dbo.udf_ConvertString(SEG_31_PROP_O_STREET11)		AS ED_Addr1,
	dbo.udf_ConvertString(SEG_31_PROP_O_STREET21)		AS ED_Addr2,
	dbo.udf_ConvertString(SEG_31_PROP_O_CITY1)			AS ED_City,
	dbo.udf_ConvertString(SEG_31_PROP_O_STATE1)			AS ED_State,
	dbo.udf_ConvertString(SEG_31_PROP_O_ZIP_CODE_51)	AS ED_ZipCode,
	dbo.udf_ConvertString(SEG_31_PROP_O_ZIP_CODE_71)	AS ED_ZipPlus4
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG31 ON SEG_31_KEY = SEG_28A_KEY	
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO0450'
	AND SEG_31_PROP_O_LIMIT1 > 0 
UNION ALL SELECT
	@HH_ID											AS HH_ID,	
	'HO0450'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,	
	CASE 
		WHEN SEG_31_PROP_O_LIMIT2 > 0 THEN
		CASE
			-- if COVERAGE_C_LIMIT / 10 > 1000 then
			-- ED_LiabLmt = PROP_O_LIMIT2 - (COVERAGE_C_LIMIT / 10)
			-- if COVERAGE_C_LIMIT / 10 <= 1000 then
			-- ED_LiabLmt = PROP_O_LIMIT2 - 1000
			WHEN @oneTenthOfCoverageCLimit > 1000 THEN
				CAST(SEG_31_PROP_O_LIMIT2 AS INT) -	@oneTenthOfCoverageCLimit
			ELSE CAST(SEG_31_PROP_O_LIMIT2 AS INT) - 1000
		END
		ELSE NULL
	END													AS ED_LiabLmt,
	dbo.udf_ConvertString(SEG_31_PROP_O_STREET12)		AS ED_Addr1,
	dbo.udf_ConvertString(SEG_31_PROP_O_STREET22)		AS ED_Addr2,
	dbo.udf_ConvertString(SEG_31_PROP_O_CITY2)			AS ED_City,
	dbo.udf_ConvertString(SEG_31_PROP_O_STATE2)			AS ED_State,
	dbo.udf_ConvertString(SEG_31_PROP_O_ZIP_CODE_52)	AS ED_ZipCode,
	dbo.udf_ConvertString(SEG_31_PROP_O_ZIP_CODE_72)	AS ED_ZipPlus4	
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG31 ON SEG_31_KEY = SEG_28A_KEY	
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO0450'
	AND SEG_31_PROP_O_LIMIT2 > 0
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** HO0451 ************************************/
INSERT INTO AddEnd (
	HH_ID,	
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,	
	ED_LiabLmt	
)
SELECT
	@HH_ID								AS HH_ID,	
	'HO0451'							AS ED_Type,
	1									AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER			AS ED_SeqNum,	
	CAST(SEG_28A_RATED_COVERAGE AS INT)	AS ED_LiabLmt
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A	
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO0451'
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** HO0453 ************************************/
INSERT INTO AddEnd (
	HH_ID,	
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,	
	ED_LiabLmt	
)
SELECT
	@HH_ID								AS HH_ID,	
	'HO0453'							AS ED_Type,
	1									AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER			AS ED_SeqNum,	
	CAST(SEG_28A_RATED_COVERAGE AS INT)	AS ED_LiabLmt
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A	
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO0453'
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** HO0454 ************************************/
INSERT INTO AddEnd (
	HH_ID,	
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,	
	ED_DedPercent,
	ED_VeneerExclude
)
SELECT
	@HH_ID											AS HH_ID,	
	'HO0454'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,	
	CAST(SEG_30_EARTHQ_DEDUCTIBLE AS INT)			AS ED_DedPercent,
	dbo.udf_ConvertYesNo(SEG_30_EARTHQ_VENEER_EXCL)	AS ED_VeneerExclude	
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG30 ON SEG_30_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO0454'
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** HO0456 ************************************/
INSERT INTO AddEnd (
	HH_ID,	
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,	
	ED_DedPercent	
)
SELECT
	@HH_ID								AS HH_ID,	
	'HO0456'							AS ED_Type,
	1									AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER			AS ED_SeqNum,	
	CAST(SEG_28A_RATED_COVERAGE AS INT)	AS ED_DedPercent
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A	
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO0456'
IF @@ERROR <> 0 GOTO PROBLEM	


/* ****************************** HO0461 ************************************/
-- HO0461 is contained in multiple tables depending on the Property Type.
-- Use the UNION clause to combine them into one result set.
-- J : Jewelry		: SEG74
-- F : Furs			: SEG76
-- C : Cameras		: SEG78
-- M : Music Items	: SEG82
-- P : Pro Music	: SEG84
-- S : Silverware	: SEG86
-- G : Golf			: SEG88
-- A : Fine Art		: SEG90

/* ****************************** Jewelry ************************************/
INSERT INTO AddEnd (
	HH_ID,	
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,	
	ED_PPropType,
	ED_CvrLmt,
	ED_0461AppraisalDate,
	ED_Description1
)
SELECT
	@HH_ID											AS HH_ID,	
	'HO0461'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,	
	'J'												AS ED_PPropType,
	CAST(SEG_74_JEW_ITEM_LIMIT AS INT)				AS ED_CvrLmt,
	dbo.udf_ConvertDate(SEG_74_JEW_APPRSL_DATE)		AS ED_0461AppraisalDate,
	-- combine DESCR_LINE1 - 10, starting at line 2 if a line is not null
	-- append a space to the beginning
	(
		ISNULL(dbo.udf_ConvertString(SEG_74A_DESCR_LINE1), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_74A_DESCR_LINE2), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_74A_DESCR_LINE3), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_74A_DESCR_LINE4), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_74A_DESCR_LINE5), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_74A_DESCR_LINE6), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_74A_DESCR_LINE7), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_74A_DESCR_LINE8), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_74A_DESCR_LINE9), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_74A_DESCR_LINE10), '')		
	)																	AS ED_Description1
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	-- SEG_NUM '000' contains the total for all other items do not insert it into AddEnd
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG74 ON SEG_74_KEY = SEG_28A_KEY AND NOT SEG_74_SEQ_NUM = '000'
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG74A ON SEG_74A_KEY = SEG_74_KEY AND SEG_74A_SEQ_NUM = SEG_74_SEQ_NUM
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO0461'
/* ****************************** Furs ************************************/
UNION ALL SELECT
	@HH_ID											AS HH_ID,	
	'HO0461'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,	
	'F'												AS ED_PPropType,
	CAST(SEG_76_FURS_ITEM_LIMIT AS INT)				AS ED_CvrLmt,
	dbo.udf_ConvertDate(SEG_76_FURS_APPRSL_DATE)	AS ED_0461AppraisalDate,
	-- combine DESCR_LINE1 - 10, starting at line 2 if a line is not null
	-- append a space to the beginning
	(
		ISNULL(dbo.udf_ConvertString(SEG_76A_DESCR_LINE1), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_76A_DESCR_LINE2), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_76A_DESCR_LINE3), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_76A_DESCR_LINE4), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_76A_DESCR_LINE5), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_76A_DESCR_LINE6), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_76A_DESCR_LINE7), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_76A_DESCR_LINE8), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_76A_DESCR_LINE9), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_76A_DESCR_LINE10), '')		
	)																	AS ED_Description1
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG76 ON SEG_76_KEY = SEG_28A_KEY AND NOT SEG_76_SEQ_NUM = '000'
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG76A ON SEG_76A_KEY = SEG_76_KEY AND SEG_76A_SEQ_NUM = SEG_76_SEQ_NUM
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO0461'
/* ****************************** Cameras ************************************/
UNION ALL SELECT
	@HH_ID											AS HH_ID,	
	'HO0461'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,	
	'C'												AS ED_PPropType,
	CAST(SEG_78_CAMERA_ITEM_LIMIT AS INT)				AS ED_CvrLmt,
	dbo.udf_ConvertDate(SEG_78_CAMERA_APPRSL_DATE)	AS ED_0461AppraisalDate,
	-- combine DESCR_LINE1 - 10, starting at line 2 if a line is not null
	-- append a space to the beginning
	(
		ISNULL(dbo.udf_ConvertString(SEG_78A_DESCR_LINE1), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_78A_DESCR_LINE2), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_78A_DESCR_LINE3), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_78A_DESCR_LINE4), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_78A_DESCR_LINE5), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_78A_DESCR_LINE6), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_78A_DESCR_LINE7), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_78A_DESCR_LINE8), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_78A_DESCR_LINE9), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_78A_DESCR_LINE10), '')		
	)																	AS ED_Description1
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG78 ON SEG_78_KEY = SEG_28A_KEY AND NOT SEG_78_SEQ_NUM = '000'
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG78A ON SEG_78A_KEY = SEG_78_KEY AND SEG_78A_SEQ_NUM = SEG_78_SEQ_NUM
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO0461'
/* ****************************** Music Items ************************************/
UNION ALL SELECT
	@HH_ID											AS HH_ID,	
	'HO0461'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,	
	'M'												AS ED_PPropType,
	CAST(SEG_82_MUSICAL_ITEM_LIMIT AS INT)			AS ED_CvrLmt,
	dbo.udf_ConvertDate(SEG_82_MUSICAL_APPRSL_DATE)	AS ED_0461AppraisalDate,
	-- combine DESCR_LINE1 - 10, starting at line 2 if a line is not null
	-- append a space to the beginning
	(
		ISNULL(dbo.udf_ConvertString(SEG_82A_DESCR_LINE1), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_82A_DESCR_LINE2), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_82A_DESCR_LINE3), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_82A_DESCR_LINE4), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_82A_DESCR_LINE5), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_82A_DESCR_LINE6), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_82A_DESCR_LINE7), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_82A_DESCR_LINE8), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_82A_DESCR_LINE9), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_82A_DESCR_LINE10), '')		
	)																	AS ED_Description1
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG82 ON SEG_82_KEY = SEG_28A_KEY AND NOT SEG_82_SEQ_NUM = '000'
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG82A ON SEG_82A_KEY = SEG_82_KEY AND SEG_82A_SEQ_NUM = SEG_82_SEQ_NUM
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO0461'
/* ****************************** Pro Music ************************************/
UNION ALL SELECT
	@HH_ID											AS HH_ID,	
	'HO0461'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,	
	'P'												AS ED_PPropType,
	CAST(SEG_84_PRO_MUSIC_ITEM_LIMIT AS INT)			AS ED_CvrLmt,
	dbo.udf_ConvertDate(SEG_84_PRO_MUSIC_APPRSL_DATE)	AS ED_0461AppraisalDate,
	-- combine DESCR_LINE1 - 10, starting at line 2 if a line is not null
	-- append a space to the beginning
	(
		ISNULL(dbo.udf_ConvertString(SEG_84A_DESCR_LINE1), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_84A_DESCR_LINE2), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_84A_DESCR_LINE3), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_84A_DESCR_LINE4), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_84A_DESCR_LINE5), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_84A_DESCR_LINE6), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_84A_DESCR_LINE7), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_84A_DESCR_LINE8), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_84A_DESCR_LINE9), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_84A_DESCR_LINE10), '')		
	)																	AS ED_Description1
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG84 ON SEG_84_KEY = SEG_28A_KEY AND NOT SEG_84_SEQ_NUM = '000'
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG84A ON SEG_84A_KEY = SEG_84_KEY AND SEG_84A_SEQ_NUM = SEG_84_SEQ_NUM
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO0461'
/* ****************************** Silverware ************************************/
UNION ALL SELECT
	@HH_ID											AS HH_ID,
	'HO0461'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,
	'S'												AS ED_PPropType,
	CAST(SEG_86_SLVRWARE_LIMIT AS INT)				AS ED_CvrLmt,
	dbo.udf_ConvertDate(SEG_86_SLVRWARE_APPRSL_DATE)	AS ED_0461AppraisalDate,
	-- combine DESCR_LINE1 - 10, starting at line 2 if a line is not null
	-- append a space to the beginning
	(
		ISNULL(dbo.udf_ConvertString(SEG_86A_DESCR_LINE1), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_86A_DESCR_LINE2), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_86A_DESCR_LINE3), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_86A_DESCR_LINE4), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_86A_DESCR_LINE5), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_86A_DESCR_LINE6), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_86A_DESCR_LINE7), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_86A_DESCR_LINE8), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_86A_DESCR_LINE9), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_86A_DESCR_LINE10), '')		
	)																	AS ED_Description1
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG86 ON SEG_86_KEY = SEG_28A_KEY AND NOT SEG_86_SEQ_NUM = '000'
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG86A ON SEG_86A_KEY = SEG_86_KEY AND SEG_86A_SEQ_NUM = SEG_86_SEQ_NUM
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO0461'
/* ****************************** Golf ************************************/
UNION ALL SELECT
	@HH_ID											AS HH_ID,
	'HO0461'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,
	'G'												AS ED_PPropType,
	CAST(SEG_88_GOLF_ITEM_LIMIT AS INT)				AS ED_CvrLmt,
	dbo.udf_ConvertDate(SEG_88_GOLF_APPRSL_DATE)	AS ED_0461AppraisalDate,
	-- combine DESCR_LINE1 - 10, starting at line 2 if a line is not null
	-- append a space to the beginning
	(
		ISNULL(dbo.udf_ConvertString(SEG_88A_DESCR_LINE1), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_88A_DESCR_LINE2), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_88A_DESCR_LINE3), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_88A_DESCR_LINE4), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_88A_DESCR_LINE5), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_88A_DESCR_LINE6), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_88A_DESCR_LINE7), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_88A_DESCR_LINE8), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_88A_DESCR_LINE9), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_88A_DESCR_LINE10), '')		
	)																	AS ED_Description1
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG88 ON SEG_88_KEY = SEG_28A_KEY AND NOT SEG_88_SEQ_NUM = '000'
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG88A ON SEG_88A_KEY = SEG_88_KEY AND SEG_88A_SEQ_NUM = SEG_88_SEQ_NUM
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO0461'
/* ****************************** Fine Art ************************************/
UNION ALL SELECT
	@HH_ID											AS HH_ID,
	'HO0461'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,
	'A'												AS ED_PPropType,
	CAST(SEG_90_FINEART_ITEM_LIMIT AS INT)			AS ED_CvrLmt,
	dbo.udf_ConvertDate(SEG_90_FINEART_APPRSL_DATE)	AS ED_0461AppraisalDate,
	-- combine DESCR_LINE1 - 10, starting at line 2 if a line is not null
	-- append a space to the beginning
	(
		ISNULL(dbo.udf_ConvertString(SEG_90A_DESCR_LINE1), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_90A_DESCR_LINE2), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_90A_DESCR_LINE3), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_90A_DESCR_LINE4), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_90A_DESCR_LINE5), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_90A_DESCR_LINE6), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_90A_DESCR_LINE7), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_90A_DESCR_LINE8), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_90A_DESCR_LINE9), '') +
		ISNULL(' ' + dbo.udf_ConvertString(SEG_90A_DESCR_LINE10), '')		
	)																	AS ED_Description1
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG90 ON SEG_90_KEY = SEG_28A_KEY AND NOT SEG_90_SEQ_NUM = '000'
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG90A ON SEG_90A_KEY = SEG_90_KEY AND SEG_90A_SEQ_NUM = SEG_90_SEQ_NUM
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO0461'
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** HO0465 ************************************/
INSERT INTO AddEnd (
	HH_ID,
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,
	ED_465Money,
	ED_465Securities,
	ED_465Jewelery,
	ED_465FireArms,
	ED_465Silverware,
	ED_465ElectIn,
	ED_465electOut	
)
SELECT
	@HH_ID								AS HH_ID,
	'HO0465'							AS ED_Type,
	1									AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER			AS ED_SeqNum,
	CAST(SEG_66_UPP_COVERAGE1 AS INT)	AS ED_465Money,
	CAST(SEG_66_UPP_COVERAGE2 AS INT)	AS ED_465Securities,
	CAST(SEG_66_UPP_COVERAGE3 AS INT)	AS ED_465Jewelery,
	CAST(SEG_66_UPP_COVERAGE4 AS INT)	AS ED_465FireArms,
	CAST(SEG_66_UPP_COVERAGE5 AS INT)	AS ED_465Silverware,
	CAST(SEG_66_UPP_COVERAGE6 AS INT)	AS ED_465ElectIn,
	CAST(SEG_66_UPP_COVERAGE7 AS INT)	AS ED_465electOut
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A	
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG66 ON SEG_66_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO0465'	
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** HO0492 ************************************/
INSERT INTO AddEnd (
	HH_ID,
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,
	ED_LiabLmt,
	ED_Description1,
	ED_Addr1,
	ED_Addr2,
	ED_City,
	ED_State,
	ED_ZipCode,
	ED_ZipPlus4
)
SELECT
	@HH_ID											AS HH_ID,
	'HO0492'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,
	CAST(SEG_39_SPEC_S_LIMIT AS INT)				AS ED_LiabLmt,
	dbo.udf_ConvertString(SEG_39_SPEC_S_DESCP)		AS ED_Description1,
	dbo.udf_ConvertString(SEG_39_SPEC_S_STREET1)	AS ED_Addr1,
	dbo.udf_ConvertString(SEG_39_SPEC_S_STREET2)	AS ED_Addr2,
	dbo.udf_ConvertString(SEG_39_SPEC_S_CITY)		AS ED_City,
	dbo.udf_ConvertString(SEG_39_SPEC_S_STATE)		AS ED_State,
	dbo.udf_ConvertString(SEG_39_SPEC_S_ZIP_CODE_5)	AS ED_ZipCode,
	dbo.udf_ConvertString(SEG_39_SPEC_S_ZIP_CODE_7)	AS ED_ZipPlus4
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A	
	LEFT OUTER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG39 ON SEG_39_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO0492'
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** HO2443 ************************************/
INSERT INTO AddEnd (
	HH_ID,
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,
	ED_Addr1,
	ED_Addr2,
	ED_City,
	ED_State,
	ED_ZipCode,
	ED_ZipPlus4,
	ED_Description1
)
SELECT
	@HH_ID												AS HH_ID,
	'HO2443'											AS ED_Type,
	1													AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER							AS ED_SeqNum,
	dbo.udf_ConvertString(SEG_58_IOOP_STREET1)			AS ED_Addr1,
	dbo.udf_ConvertString(SEG_58_IOOP_STREET2)			AS ED_Addr2,
	dbo.udf_ConvertString(SEG_58_IOOP_CITY)				AS ED_City,
	dbo.udf_ConvertString(SEG_58_IOOP_STATE)			AS ED_State,
	dbo.udf_ConvertString(SEG_58_IOOP_ZIP_CODE_5)		AS ED_ZipCode,
	dbo.udf_ConvertString(SEG_58_IOOP_ZIP_CODE_7)		AS ED_ZipPlus4,
	dbo.udf_ConvertString(SEG_58_IOOP_TYPE_OF_OFFICE)	AS ED_Description1
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG58 ON SEG_58_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO2443'	
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** HO2464 ************************************/
-- There can be up to 3 instances in a single SEG50 record. Use the UNION 
-- operator to combine the 3 different queries into a single result set.
INSERT INTO AddEnd (
	HH_ID,
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,
	ED_Description1,
	ED_Description2
)
SELECT
	@HH_ID											AS HH_ID,
	'HO2464'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,
	dbo.udf_ConvertString(SEG_50_SN_VEHICLE_MODEL1)	AS ED_Description1,
	dbo.udf_ConvertString(SEG_50_SN_SERIAL_NUMBER1)	AS ED_Description2	
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG50 ON SEG_50_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO2464'
UNION ALL 
SELECT
	@HH_ID											AS HH_ID,
	'HO2464'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,
	dbo.udf_ConvertString(SEG_50_SN_VEHICLE_MODEL2)	AS ED_Description1,
	dbo.udf_ConvertString(SEG_50_SN_SERIAL_NUMBER2)	AS ED_Description2	
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG50 ON SEG_50_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO2464'
	AND NOT dbo.udf_ConvertString(SEG_50_SN_VEHICLE_MODEL2) IS NULL
UNION ALL 
SELECT
	@HH_ID											AS HH_ID,
	'HO2464'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,
	dbo.udf_ConvertString(SEG_50_SN_VEHICLE_MODEL3)	AS ED_Description1,
	dbo.udf_ConvertString(SEG_50_SN_SERIAL_NUMBER3)	AS ED_Description2	
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG50 ON SEG_50_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO2464'
	AND NOT dbo.udf_ConvertString(SEG_50_SN_VEHICLE_MODEL3) IS NULL
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** HO2470 ************************************/
-- There can be up to 6 instances in a single SEG46 record. Use the UNION 
-- operator to combine the 6 different queries into a single result set.
INSERT INTO AddEnd (
	HH_ID,
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,
	ED_NumFamily,
	ED_Addr1,
	ED_Addr2,
	ED_City,
	ED_State,
	ED_ZipCode,
	ED_ZipPlus4	
)
SELECT
	@HH_ID											AS HH_ID,
	'HO2470'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,
	CAST(SEG_46_AL_NUMBER_FAM1 AS INT)				AS ED_NumFamily,
	dbo.udf_ConvertString(SEG_46_AL_STREET11)		AS ED_Addr1,
	dbo.udf_ConvertString(SEG_46_AL_STREET21)		AS ED_Addr2,
	dbo.udf_ConvertString(SEG_46_AL_CITY1)			AS ED_City,
	dbo.udf_ConvertString(SEG_46_AL_STATE1)			AS ED_State,
	dbo.udf_ConvertString(SEG_46_AL_ZIP_CODE_51)	AS ED_ZipCode,
	dbo.udf_ConvertString(SEG_46_AL_ZIP_CODE_71)	AS ED_ZipPlus4
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG46 ON SEG_46_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO2470'
	AND SEG_46_AL_NUMBER_FAM1 > 0
UNION ALL
SELECT
	@HH_ID											AS HH_ID,
	'HO2470'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,
	CAST(SEG_46_AL_NUMBER_FAM2 AS INT)				AS ED_NumFamily,
	dbo.udf_ConvertString(SEG_46_AL_STREET12)		AS ED_Addr1,
	dbo.udf_ConvertString(SEG_46_AL_STREET22)		AS ED_Addr2,
	dbo.udf_ConvertString(SEG_46_AL_CITY2)			AS ED_City,
	dbo.udf_ConvertString(SEG_46_AL_STATE2)			AS ED_State,
	dbo.udf_ConvertString(SEG_46_AL_ZIP_CODE_52)	AS ED_ZipCode,
	dbo.udf_ConvertString(SEG_46_AL_ZIP_CODE_72)	AS ED_ZipPlus4
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG46 ON SEG_46_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO2470'
	AND SEG_46_AL_NUMBER_FAM2 > 0
UNION ALL
SELECT
	@HH_ID											AS HH_ID,
	'HO2470'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,
	CAST(SEG_46_AL_NUMBER_FAM3 AS INT)				AS ED_NumFamily,
	dbo.udf_ConvertString(SEG_46_AL_STREET13)		AS ED_Addr1,
	dbo.udf_ConvertString(SEG_46_AL_STREET23)		AS ED_Addr2,
	dbo.udf_ConvertString(SEG_46_AL_CITY3)			AS ED_City,
	dbo.udf_ConvertString(SEG_46_AL_STATE3)			AS ED_State,
	dbo.udf_ConvertString(SEG_46_AL_ZIP_CODE_53)	AS ED_ZipCode,
	dbo.udf_ConvertString(SEG_46_AL_ZIP_CODE_73)	AS ED_ZipPlus4
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG46 ON SEG_46_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO2470'
	AND SEG_46_AL_NUMBER_FAM3 > 0
UNION ALL
SELECT
	@HH_ID											AS HH_ID,
	'HO2470'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,
	CAST(SEG_46_AL_NUMBER_FAM4 AS INT)				AS ED_NumFamily,
	dbo.udf_ConvertString(SEG_46_AL_STREET14)		AS ED_Addr1,
	dbo.udf_ConvertString(SEG_46_AL_STREET24)		AS ED_Addr2,
	dbo.udf_ConvertString(SEG_46_AL_CITY4)			AS ED_City,
	dbo.udf_ConvertString(SEG_46_AL_STATE4)			AS ED_State,
	dbo.udf_ConvertString(SEG_46_AL_ZIP_CODE_54)	AS ED_ZipCode,
	dbo.udf_ConvertString(SEG_46_AL_ZIP_CODE_74)	AS ED_ZipPlus4
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG46 ON SEG_46_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO2470'
	AND SEG_46_AL_NUMBER_FAM4 > 0
UNION ALL
SELECT
	@HH_ID											AS HH_ID,
	'HO2470'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,
	CAST(SEG_46_AL_NUMBER_FAM5 AS INT)				AS ED_NumFamily,
	dbo.udf_ConvertString(SEG_46_AL_STREET15)		AS ED_Addr1,
	dbo.udf_ConvertString(SEG_46_AL_STREET25)		AS ED_Addr2,
	dbo.udf_ConvertString(SEG_46_AL_CITY5)			AS ED_City,
	dbo.udf_ConvertString(SEG_46_AL_STATE5)			AS ED_State,
	dbo.udf_ConvertString(SEG_46_AL_ZIP_CODE_55)	AS ED_ZipCode,
	dbo.udf_ConvertString(SEG_46_AL_ZIP_CODE_75)	AS ED_ZipPlus4
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG46 ON SEG_46_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO2470'
	AND SEG_46_AL_NUMBER_FAM5 > 0
UNION ALL
SELECT
	@HH_ID											AS HH_ID,
	'HO2470'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,
	CAST(SEG_46_AL_NUMBER_FAM6 AS INT)				AS ED_NumFamily,
	dbo.udf_ConvertString(SEG_46_AL_STREET16)		AS ED_Addr1,
	dbo.udf_ConvertString(SEG_46_AL_STREET26)		AS ED_Addr2,
	dbo.udf_ConvertString(SEG_46_AL_CITY6)			AS ED_City,
	dbo.udf_ConvertString(SEG_46_AL_STATE6)			AS ED_State,
	dbo.udf_ConvertString(SEG_46_AL_ZIP_CODE_56)	AS ED_ZipCode,
	dbo.udf_ConvertString(SEG_46_AL_ZIP_CODE_76)	AS ED_ZipPlus4
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG46 ON SEG_46_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO2470'
	AND SEG_46_AL_NUMBER_FAM6 > 0
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** HO2471 ************************************/
-- There can be up to four instances in a single SEG60 record. Use the UNION 
-- operator to combine the 4 different queries into a single result set.
INSERT INTO AddEnd (
	HH_ID,
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,
	ED_BusinessType,
	ED_IncLiability,
	ED_Name1	
)
SELECT
	@HH_ID											AS HH_ID,
	'HO2471'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,
	CAST(SEG_60_BP_BUSINESS_CODE1 AS INT)			AS ED_BusinessType,
	dbo.udf_ConvertYesNo(SEG_60_BP_CORP_PUNISH1)	AS ED_IncLiability,
	dbo.udf_ConvertString(SEG_60_BP_NAME1)			AS ED_Name1	
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG60 ON SEG_60_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO2471'
	AND SEG_60_BP_BUSINESS_CODE1 > 0
UNION ALL SELECT
	@HH_ID											AS HH_ID,
	'HO2471'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,
	CAST(SEG_60_BP_BUSINESS_CODE2 AS INT)			AS ED_BusinessType,
	dbo.udf_ConvertYesNo(SEG_60_BP_CORP_PUNISH2)	AS ED_IncLiability,
	dbo.udf_ConvertString(SEG_60_BP_NAME2)			AS ED_Name1	
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG60 ON SEG_60_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO2471'
	AND SEG_60_BP_BUSINESS_CODE2 > 0
UNION ALL SELECT
	@HH_ID											AS HH_ID,
	'HO2471'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,
	CAST(SEG_60_BP_BUSINESS_CODE3 AS INT)			AS ED_BusinessType,
	dbo.udf_ConvertYesNo(SEG_60_BP_CORP_PUNISH3)	AS ED_IncLiability,
	dbo.udf_ConvertString(SEG_60_BP_NAME3)			AS ED_Name1	
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG60 ON SEG_60_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO2471'
	AND SEG_60_BP_BUSINESS_CODE3 > 0
UNION ALL SELECT
	@HH_ID											AS HH_ID,
	'HO2471'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,
	CAST(SEG_60_BP_BUSINESS_CODE4 AS INT)			AS ED_BusinessType,
	dbo.udf_ConvertYesNo(SEG_60_BP_CORP_PUNISH4)	AS ED_IncLiability,
	dbo.udf_ConvertString(SEG_60_BP_NAME4)			AS ED_Name1	
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG60 ON SEG_60_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO2471'
	AND SEG_60_BP_BUSINESS_CODE4 > 0
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** HO2472 ************************************/
-- There can be up to 3 instances in a single SEG72 record. Use the UNION 
-- operator to combine the 3 different queries into a single result set.
INSERT INTO AddEnd (
	HH_ID,
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,
	ED_FarmOpOnPremises,
	ED_Description1,
	ED_Addr1,
	ED_Addr2,
	ED_City,
	ED_State,	
	ED_ZipCode,
	ED_ZipPlus4
)
SELECT
	@HH_ID										AS HH_ID,
	'HO2472'									AS ED_Type,
	1											AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER					AS ED_SeqNum,
	CASE SEG_72_FM_PREMISE1
		WHEN 'Y' THEN 1
		ELSE 0
	END											AS ED_FarmOpOnPremises,
	dbo.udf_ConvertString(SEG_72_FM_DESCR11)	AS ED_Description1,
	dbo.udf_ConvertString(SEG_72_FM_LOC_DESC11)	AS ED_Addr1,
	dbo.udf_ConvertString(SEG_72_FM_LOC_DESC12)	AS ED_Addr2,
	dbo.udf_ConvertString(SEG_72_FM_LOC_CITY1)	AS ED_City,
	dbo.udf_ConvertString(SEG_72_FM_LOC_STATE1)	AS ED_State,	
	dbo.udf_ConvertString(SEG_72_FM_LOC_ZIP_51)	AS ED_ZipCode,
	dbo.udf_ConvertString(SEG_72_FM_LOC_ZIP_41)	AS ED_ZipPlus4
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG72 ON SEG_72_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO2472'
UNION ALL
SELECT
	@HH_ID										AS HH_ID,
	'HO2472'									AS ED_Type,
	1											AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER					AS ED_SeqNum,
	CASE SEG_72_FM_PREMISE2
		WHEN 'Y' THEN 1
		ELSE 0
	END											AS ED_FarmOpOnPremises,
	dbo.udf_ConvertString(SEG_72_FM_DESCR21)	AS ED_Description1,
	dbo.udf_ConvertString(SEG_72_FM_LOC_DESC21)	AS ED_Addr1,
	dbo.udf_ConvertString(SEG_72_FM_LOC_DESC22)	AS ED_Addr2,
	dbo.udf_ConvertString(SEG_72_FM_LOC_CITY2)	AS ED_City,
	dbo.udf_ConvertString(SEG_72_FM_LOC_STATE2)	AS ED_State,	
	dbo.udf_ConvertString(SEG_72_FM_LOC_ZIP_52)	AS ED_ZipCode,
	dbo.udf_ConvertString(SEG_72_FM_LOC_ZIP_42)	AS ED_ZipPlus4
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG72 ON SEG_72_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO2472'
	AND (SEG_72_FM_PREMISE2 = 'Y' OR SEG_72_FM_OTHERPRM2 = 'Y')
UNION ALL
SELECT
	@HH_ID										AS HH_ID,
	'HO2472'									AS ED_Type,
	1											AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER					AS ED_SeqNum,
	CASE SEG_72_FM_PREMISE3
		WHEN 'Y' THEN 1
		ELSE 0
	END											AS ED_FarmOpOnPremises,
	dbo.udf_ConvertString(SEG_72_FM_DESCR31)	AS ED_Description1,
	dbo.udf_ConvertString(SEG_72_FM_LOC_DESC31)	AS ED_Addr1,
	dbo.udf_ConvertString(SEG_72_FM_LOC_DESC32)	AS ED_Addr2,
	dbo.udf_ConvertString(SEG_72_FM_LOC_CITY3)	AS ED_City,
	dbo.udf_ConvertString(SEG_72_FM_LOC_STATE3)	AS ED_State,	
	dbo.udf_ConvertString(SEG_72_FM_LOC_ZIP_53)	AS ED_ZipCode,
	dbo.udf_ConvertString(SEG_72_FM_LOC_ZIP_43)	AS ED_ZipPlus4
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG72 ON SEG_72_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO2472'
	AND (SEG_72_FM_PREMISE3 = 'Y' OR SEG_72_FM_OTHERPRM3 = 'Y')
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** HO2475 ************************************/
-- There can be up to 4 instances in a single SEG51 record. Use the UNION 
-- operator to combine the 4 different queries into a single result set.
INSERT INTO AddEnd (
	HH_ID,
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,
	ED_2475WCType,

	ED_2475WCYear,
	ED_2475WCLength,
	ED_2475WCMAHP,
	ED_2475WCMake,
	ED_2475WCModel,
	ED_2475WCSerial,

	ED_2475WCMAYear,
	ED_2475WCMAMake,
	ED_2475WCMAModel,
	ED_2475WCMASerial,

	ED_2475WCMBYear,
	ED_2475WCMBMake,
	ED_2475WCMBModel,
	ED_2475WCMBSerial
)
SELECT	
	@HH_ID											AS HH_ID,
	'HO2475'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,
	dbo.udf_ConvertString(SEG_51_WA_LB_CLASS1)		AS ED_2475WCType,
	CASE 
		WHEN SEG_51_WA_LB_MODEL_YEAR1_ = 0 THEN NULL
		ELSE SEG_51_WA_LB_MODEL_YEAR1_
	END												AS ED_2475WCYear,
	CAST(SEG_51_WA_LB_LENGTH1 AS INT)				AS ED_2475WCLength,
	CAST(SEG_51_WA_LB_BOAT_HP1 AS INT)				AS ED_2475WCMAHP,
	dbo.udf_ConvertString(SEG_51_WA_LB_MAKE1)		AS ED_2475WCMake,
	dbo.udf_ConvertString(SEG_51_WA_LB_MODEL1)		AS ED_2475WCModel,
	dbo.udf_ConvertString(SEG_51_BOAT_SERIAL_NO1)	AS ED_2475WCSerial,
	CASE
		WHEN SEG_51_MOTOR_YEAR11 = 0 THEN NULL
		ELSE SEG_51_MOTOR_YEAR11
	END												AS ED_2475WCMAYear,
	dbo.udf_ConvertString(SEG_51_MOTOR_MAKE11)		AS ED_2475WCMAMake,
	dbo.udf_ConvertString(SEG_51_MOTOR_MODEL11)		AS ED_2475WCMAModel,
	dbo.udf_ConvertString(SEG_51_MOTOR_SERIAL_NO11)	AS ED_2475WCMASerial,
	CASE
		WHEN SEG_51_MOTOR_YEAR21 = 0 THEN NULL
		ELSE SEG_51_MOTOR_YEAR21
	END												AS ED_2475WCMBYear,
	dbo.udf_ConvertString(SEG_51_MOTOR_MAKE21)		AS ED_2475WCMBMake,
	dbo.udf_ConvertString(SEG_51_MOTOR_MODEL21)		AS ED_2475WCMBModel,
	dbo.udf_ConvertString(SEG_51_MOTOR_SERIAL_NO21)	AS ED_2475WCMBSerial	
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG51 ON SEG_51_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO2475'
UNION ALL 
SELECT	
	@HH_ID											AS HH_ID,
	'HO2475'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,
	dbo.udf_ConvertString(SEG_51_WA_LB_CLASS2)		AS ED_2475WCType,
	CASE 
		WHEN SEG_51_WA_LB_MODEL_YEAR2 = 0 THEN NULL
		ELSE SEG_51_WA_LB_MODEL_YEAR2
	END												AS ED_2475WCYear,
	CAST(SEG_51_WA_LB_LENGTH2 AS INT)				AS ED_2475WCLength,
	CAST(SEG_51_WA_LB_BOAT_HP2 AS INT)				AS ED_2475WCMAHP,
	dbo.udf_ConvertString(SEG_51_WA_LB_MAKE2)		AS ED_2475WCMake,
	dbo.udf_ConvertString(SEG_51_WA_LB_MODEL2)		AS ED_2475WCModel,
	dbo.udf_ConvertString(SEG_51_WA_BOAT_SERIAL_NO2)	AS ED_2475WCSerial,
	CASE
		WHEN SEG_51_WA_MOTOR_YEAR12 = 0 THEN NULL
		ELSE SEG_51_WA_MOTOR_YEAR12
	END												AS ED_2475WCMAYear,
	dbo.udf_ConvertString(SEG_51_WA_MOTOR_MAKE_12)		AS ED_2475WCMAMake,
	dbo.udf_ConvertString(SEG_51_WA_MOTOR_MODEL12)		AS ED_2475WCMAModel,
	dbo.udf_ConvertString(SEG_51_WA_MOTOR_SERIAL_NO12)	AS ED_2475WCMASerial,
	CASE
		WHEN SEG_51_WA_MOTOR_YEAR22 = 0 THEN NULL
		ELSE SEG_51_WA_MOTOR_YEAR22
	END												AS ED_2475WCMBYear,
	dbo.udf_ConvertString(SEG_51_WA_MOTOR_MAKE22)		AS ED_2475WCMBMake,
	dbo.udf_ConvertString(SEG_51_WA_MOTOR_MODEL22)		AS ED_2475WCMBModel,
	dbo.udf_ConvertString(SEG_51_WA_MOTOR_SERIAL_NO22)	AS ED_2475WCMBSerial	
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG51 ON SEG_51_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO2475'
	AND NOT dbo.udf_ConvertString(SEG_51_WA_LB_CLASS2) IS NULL
UNION ALL 
SELECT	
	@HH_ID											AS HH_ID,
	'HO2475'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,
	dbo.udf_ConvertString(SEG_51_WA_LB_CLASS3)		AS ED_2475WCType,
	CASE 
		WHEN SEG_51_WA_LB_MODEL_YEAR3 = 0 THEN NULL
		ELSE SEG_51_WA_LB_MODEL_YEAR3
	END												AS ED_2475WCYear,
	CAST(SEG_51_WA_LB_LENGTH3 AS INT)				AS ED_2475WCLength,
	CAST(SEG_51_WA_LB_BOAT_HP3 AS INT)				AS ED_2475WCMAHP,
	dbo.udf_ConvertString(SEG_51_WA_LB_MAKE3)		AS ED_2475WCMake,
	dbo.udf_ConvertString(SEG_51_WA_LB_MODEL3)		AS ED_2475WCModel,
	dbo.udf_ConvertString(SEG_51_WA_BOAT_SERIAL_NO3)	AS ED_2475WCSerial,
	CASE
		WHEN SEG_51_WA_MOTOR_YEAR13 = 0 THEN NULL
		ELSE SEG_51_WA_MOTOR_YEAR13
	END												AS ED_2475WCMAYear,
	dbo.udf_ConvertString(SEG_51_WA_MOTOR_MAKE13)		AS ED_2475WCMAMake,
	dbo.udf_ConvertString(SEG_51_WA_MOTOR_MODEL13)		AS ED_2475WCMAModel,
	dbo.udf_ConvertString(SEG_51_WA_MOTOR_SERIAL_NO13)	AS ED_2475WCMASerial,
	CASE
		WHEN SEG_51_WA_MOTOR_YEAR23 = 0 THEN NULL
		ELSE SEG_51_WA_MOTOR_YEAR23
	END												AS ED_2475WCMBYear,
	dbo.udf_ConvertString(SEG_51_WA_MOTOR_MAKE23)		AS ED_2475WCMBMake,
	dbo.udf_ConvertString(SEG_51_WA_MOTOR_MODEL23)		AS ED_2475WCMBModel,
	dbo.udf_ConvertString(SEG_51_WA_MOTOR_SERIAL_NO23)	AS ED_2475WCMBSerial	
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG51 ON SEG_51_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO2475'
	AND NOT dbo.udf_ConvertString(SEG_51_WA_LB_CLASS3) IS NULL
UNION ALL 
SELECT	
	@HH_ID											AS HH_ID,
	'HO2475'										AS ED_Type,
	1												AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER						AS ED_SeqNum,
	dbo.udf_ConvertString(SEG_51_WA_LB_CLASS4)		AS ED_2475WCType,
	CASE 
		WHEN SEG_51_WA_LB_MODEL_YEAR4 = 0 THEN NULL
		ELSE SEG_51_WA_LB_MODEL_YEAR4
	END												AS ED_2475WCYear,
	CAST(SEG_51_WA_LB_LENGTH4 AS INT)				AS ED_2475WCLength,
	CAST(SEG_51_WA_LB_BOAT_HP4 AS INT)				AS ED_2475WCMAHP,
	dbo.udf_ConvertString(SEG_51_WA_LB_MAKE4)		AS ED_2475WCMake,
	dbo.udf_ConvertString(SEG_51_WA_LB_MODEL4)		AS ED_2475WCModel,
	dbo.udf_ConvertString(SEG_51_WA_BOAT_SERIAL_NO4)	AS ED_2475WCSerial,
	CASE
		WHEN SEG_51_WA_MOTOR_YEAR14 = 0 THEN NULL
		ELSE SEG_51_WA_MOTOR_YEAR14
	END												AS ED_2475WCMAYear,
	dbo.udf_ConvertString(SEG_51_WA_MOTOR_MAKE14)		AS ED_2475WCMAMake,
	dbo.udf_ConvertString(SEG_51_WA_MOTOR_MODEL14)		AS ED_2475WCMAModel,
	dbo.udf_ConvertString(SEG_51_WA_MOTOR_SERIAL_NO14)	AS ED_2475WCMASerial,
	CASE
		WHEN SEG_51_WA_MOTOR_YEAR24 = 0 THEN NULL
		ELSE SEG_51_WA_MOTOR_YEAR24
	END												AS ED_2475WCMBYear,
	dbo.udf_ConvertString(SEG_51_WA_MOTOR_MAKE24)		AS ED_2475WCMBMake,
	dbo.udf_ConvertString(SEG_51_WA_MOTOR_MODEL24)		AS ED_2475WCMBModel,
	dbo.udf_ConvertString(SEG_51_WA_MOTOR_SERIAL_NO24)	AS ED_2475WCMBSerial	
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG51 ON SEG_51_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'HO2475'
	AND NOT dbo.udf_ConvertString(SEG_51_WA_LB_CLASS4) IS NULL
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** MH0403 ************************************/
INSERT INTO AddEnd (
	HH_ID,
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,
	ED_DedAmt,
	ED_EffDate
)
SELECT
	@HH_ID										AS HH_ID,
	'MH0403'									AS ED_Type,
	1											AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER					AS ED_SeqNum,
	CAST(SEG_69_COLL_MH_DED AS INT)				AS ED_DedAmt,
	dbo.udf_ConvertDate(SEG_69_COLL_MH_DATE)	AS ED_EffDate	
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A
	INNER JOIN BHARQ_HOME_SNAPSHOT.dbo.SEG69 ON SEG_69_KEY = SEG_28A_KEY
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'MH0403'
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** MH0406 ************************************/
INSERT INTO AddEnd (
	HH_ID,
	ED_Type,
	ED_PremBearing,
	ED_SeqNum,
	ED_LiabLmt	
)
SELECT
	@HH_ID								AS HH_ID,
	'MH0406'							AS ED_Type,
	1									AS ED_PremBearing,
	SEG_28A_ENDORSE_SEQ_NUMBER			AS ED_SeqNum,
	CAST(SEG_28A_RATED_COVERAGE AS INT)	AS ED_LiabLmt
FROM BHARQ_HOME_SNAPSHOT.dbo.SEG28A	
WHERE 
	SEG_28A_KEY = @policyNumber
	AND SEG_28A_RATED_ENDORSEMENT = 'MH0406'
IF @@ERROR <> 0 GOTO PROBLEM


/* ****************************** END ************************************/
-- this is the end of the insert statements, commit the transaction and
-- return the new HH_ID as a scalar value
SET ANSI_WARNINGS ON
COMMIT TRANSACTION
SELECT @HH_ID
RETURN


/* ****************************** PROBLEM ************************************/
-- an error occurred in one of the insert statements. rollback the transaction
-- and throw an exception
PROBLEM:
	ROLLBACK TRANSACTION
	SET ANSI_WARNINGS ON
	RAISERROR('Load Snapshot Failed', 11, 1)	
	RETURN
END
GO
/****** Object:  Table [dbo].[Profile]    Script Date: 10/10/2009 16:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profile](
	[PF_ID] [int] IDENTITY(1,1) NOT NULL,
	[PF_Key] [int] NULL,
	[PF_AGTID] [int] NULL,
	[PF_AgencyID] [int] NULL,
	[PF_System] [bit] NULL,
	[PF_Private] [bit] NULL,
	[PF_Table] [varchar](1) NULL,
	[PF_Default] [bit] NULL,
	[PF_NTLogon] [varchar](50) NULL,
	[PF_Name] [varchar](50) NULL,
	[PF_Desc] [varchar](128) NULL,
	[PF_DateAdded] [datetime] NULL,
 CONSTRAINT [PK_Profile] PRIMARY KEY CLUSTERED 
(
	[PF_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_Profile] ON [dbo].[Profile] 
(
	[PF_AGTID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Profile_1] ON [dbo].[Profile] 
(
	[PF_AgencyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Profile_2] ON [dbo].[Profile] 
(
	[PF_NTLogon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[udf_ConvertDate]    Script Date: 10/10/2009 16:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[udf_ConvertDate](
	@dateIn VARCHAR(8)
)  
RETURNS DATETIME AS  
BEGIN
DECLARE @dateOut DATETIME

IF @dateIn >= '17530101' AND @dateIn <= '99991231' BEGIN
	SET @dateOut = CONVERT(DATETIME, @dateIn, 112)
END ELSE BEGIN
	SET @dateOut = NULL
END

RETURN @dateOut

END
GO
/****** Object:  UserDefinedFunction [dbo].[udf_ConvertString]    Script Date: 10/10/2009 16:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[udf_ConvertString](
	@valueIn VARCHAR(512)
)  
RETURNS VARCHAR(512) AS  
BEGIN
DECLARE @valueOut VARCHAR(512)

SET @valueOut = LTRIM(RTRIM(@valueIn))

IF LEN(@valueOut) = 0 BEGIN
	SET @valueOut = NULL
END

RETURN @valueOut

END
GO
/****** Object:  UserDefinedFunction [dbo].[udf_ConvertYear]    Script Date: 10/10/2009 16:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[udf_ConvertYear](
	@valueIn CHAR(4)
)  
RETURNS INT AS  
BEGIN
DECLARE @valueOut CHAR(4)

IF @valueIn > 1700 BEGIN
	SET @valueOut = @valueIn
END ELSE BEGIN
	SET @valueOut = NULL
END

RETURN @valueOut

END
GO
/****** Object:  UserDefinedFunction [dbo].[udf_ConvertYesNo]    Script Date: 10/10/2009 16:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[udf_ConvertYesNo](
	@valueIn CHAR(1)
)  
RETURNS BIT AS  
BEGIN
DECLARE @valueOut BIT

IF @valueIn = 'Y' BEGIN
	SET @valueOut = 1
END ELSE IF @valueIn = 'N' BEGIN
	SET @valueOut = 0
END ELSE BEGIN
	SET @valueOut = NULL
END

RETURN @valueOut

END
GO
/****** Object:  Table [dbo].[Territory]    Script Date: 10/10/2009 16:37:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Territory](
	[Terr_ID] [int] IDENTITY(1,1) NOT NULL,
	[Terr_CmpNumber] [varchar](3) NULL,
	[Terr_ZipCode] [varchar](5) NULL,
	[Terr_CountyName] [varchar](50) NULL,
	[Terr_CityName] [varchar](50) NULL,
	[Terr_State] [char](2) NULL,
	[Terr_Code] [varchar](3) NULL,
	[Terr_CountyCode] [varchar](3) NULL,
	[Terr_EQRT_Zone] [varchar](2) NULL,
	[Terr_EffDate] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Territory] PRIMARY KEY CLUSTERED 
(
	[Terr_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_Territory] ON [dbo].[Territory] 
(
	[Terr_CmpNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Territory_1] ON [dbo].[Territory] 
(
	[Terr_ZipCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Territory_2] ON [dbo].[Territory] 
(
	[Terr_EffDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CmicCreditCardLimitCoverageType]    Script Date: 10/10/2009 16:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicCreditCardLimitCoverageType](
	[creditCardLimitId] [int] NOT NULL,
	[coverageTypeCode] [varchar](2) NOT NULL,
 CONSTRAINT [PK_CmicCreditCardLimitCoverageType] PRIMARY KEY CLUSTERED 
(
	[creditCardLimitId] ASC,
	[coverageTypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmicDeductibleDefault]    Script Date: 10/10/2009 16:35:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CmicDeductibleDefault](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[deductibleId] [int] NOT NULL,
	[effDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_CmicDeductibleDefault] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CmicDeductibleState]    Script Date: 10/10/2009 16:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmicDeductibleState](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[deductibleId] [int] NOT NULL,
	[stateCode] [char](2) NOT NULL,
	[effDate] [smalldatetime] NOT NULL,
	[expDate] [smalldatetime] NULL,
 CONSTRAINT [PK_CmicDeductibleState_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Driver]    Script Date: 10/10/2009 16:36:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Driver](
	[DR_ID] [int] IDENTITY(1,1) NOT NULL,
	[HH_ID] [int] NOT NULL,
	[DR_FirstName] [varchar](20) NULL,
	[DR_MidName] [varchar](10) NULL,
	[DR_LastName] [varchar](20) NULL,
	[DR_SufName] [varchar](10) NULL,
	[DR_Sex] [char](1) NULL,
	[DR_Relation] [char](1) NULL,
	[DR_DOBDate] [datetime] NULL,
	[DR_LicNum] [varchar](23) NULL,
	[DR_LicState] [varchar](2) NULL,
	[DR_SSN] [varchar](9) NULL,
	[DR_SeqNum] [varchar](3) NULL,
	[DR_MVRStatusCode] [char](1) NULL,
	[DR_SDIPComplete] [bit] NULL CONSTRAINT [DF_Driver_DR_SDIPComplete]  DEFAULT ((0)),
	[DR_SDIPDate] [datetime] NULL,
	[DR_SDIPMsgs] [varchar](1024) NULL,
	[DR_TStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_Driver] PRIMARY KEY CLUSTERED 
(
	[DR_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_Driver] ON [dbo].[Driver] 
(
	[HH_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Audit]    Script Date: 10/10/2009 16:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Audit](
	[HH_ID] [int] NOT NULL,
	[Secondary_Key] [int] NULL,
	[TableName] [varchar](128) NULL,
	[FieldName] [varchar](128) NULL,
	[OldValue] [varchar](512) NULL,
	[NewValue] [varchar](512) NULL,
	[ChangeDate] [datetime] NULL CONSTRAINT [DF_Audit_ChangeDate]  DEFAULT (getdate())
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_Audit] ON [dbo].[Audit] 
(
	[HH_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Audit_1] ON [dbo].[Audit] 
(
	[TableName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lein_AddIns]    Script Date: 10/10/2009 16:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lein_AddIns](
	[LN_ID] [int] IDENTITY(1,1) NOT NULL,
	[HH_ID] [int] NOT NULL,
	[LN_IntrCode] [char](1) NULL,
	[LN_FirstName] [varchar](30) NULL,
	[LN_LastName] [varchar](30) NULL,
	[LN_Addr1] [varchar](30) NULL,
	[LN_Addr2] [varchar](30) NULL,
	[LN_City] [varchar](30) NULL,
	[LN_State] [varchar](30) NULL,
	[LN_ZipCode] [char](5) NULL,
	[LN_ZipPlus4] [char](4) NULL,
	[LN_LoanNum] [varchar](20) NULL,
	[LN_SendBill] [bit] NULL,
	[LN_SeqNum] [varchar](3) NULL,
	[LN_TStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_Lein_AddIns] PRIMARY KEY CLUSTERED 
(
	[LN_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_Lein_AddIns] ON [dbo].[Lein_AddIns] 
(
	[HH_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primary Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lein_AddIns', @level2type=N'COLUMN',@level2name=N'LN_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Household ID Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lein_AddIns', @level2type=N'COLUMN',@level2name=N'HH_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Additional Insurred or Loss Payee' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lein_AddIns', @level2type=N'COLUMN',@level2name=N'LN_IntrCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lien holder First Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lein_AddIns', @level2type=N'COLUMN',@level2name=N'LN_FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lien holder Street Address 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lein_AddIns', @level2type=N'COLUMN',@level2name=N'LN_Addr1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lien Holder Address Line 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lein_AddIns', @level2type=N'COLUMN',@level2name=N'LN_Addr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lien Holder City' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lein_AddIns', @level2type=N'COLUMN',@level2name=N'LN_City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lien Holder State' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lein_AddIns', @level2type=N'COLUMN',@level2name=N'LN_State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lien Holder State' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lein_AddIns', @level2type=N'COLUMN',@level2name=N'LN_ZipCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lien Holder ZipCode Plus4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lein_AddIns', @level2type=N'COLUMN',@level2name=N'LN_ZipPlus4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lien Loan Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lein_AddIns', @level2type=N'COLUMN',@level2name=N'LN_LoanNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LienHolder Sequence Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lein_AddIns', @level2type=N'COLUMN',@level2name=N'LN_SeqNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Time Stamp' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lein_AddIns', @level2type=N'COLUMN',@level2name=N'LN_TStamp'
GO
/****** Object:  Table [dbo].[POS]    Script Date: 10/10/2009 16:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POS](
	[POS_ID] [int] IDENTITY(1,1) NOT NULL,
	[HH_ID] [int] NOT NULL,
	[POS_AltKey] [int] NOT NULL,
	[POS_AltKeyType] [char](1) NULL,
	[POS_Type] [char](3) NULL,
	[POS_JRecEnabled] [bit] NULL CONSTRAINT [DF_POS_POS_JRecEnabled]  DEFAULT ((0)),
	[POS_NTID] [varchar](50) NULL,
	[POS_Date] [datetime] NULL,
	[POS_Data] [text] NULL,
 CONSTRAINT [PK_POS] PRIMARY KEY CLUSTERED 
(
	[POS_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_POS] ON [dbo].[POS] 
(
	[HH_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rate]    Script Date: 10/10/2009 16:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rate](
	[RT_ID] [int] IDENTITY(1,1) NOT NULL,
	[HH_ID] [int] NOT NULL,
	[RT_Company] [varchar](3) NULL,
	[RT_Plan] [varchar](4) NULL,
	[RT_FormName] [varchar](6) NULL,
	[RT_Terr] [varchar](3) NULL,
	[RT_County] [varchar](3) NULL,
	[RT_CountyName] [varchar](50) NULL,
	[RT_EqZone] [varchar](3) NULL,
	[RT_CvgA] [varchar](9) NULL,
	[RT_CvgB] [varchar](9) NULL,
	[RT_CvgC] [varchar](9) NULL,
	[RT_CvgD] [varchar](9) NULL,
	[RT_CvgE] [varchar](9) NULL,
	[RT_CvgF] [varchar](9) NULL,
	[RT_CvgPerils] [varchar](9) NULL,
	[RT_CvgWindHail] [varchar](9) NULL,
	[RT_CvgARnd] [bit] NULL CONSTRAINT [DF_Rate_RT_CvgARnd]  DEFAULT ((0)),
	[RT_CvgBRnd] [bit] NULL CONSTRAINT [DF_Rate_RT_CvgBRnd]  DEFAULT ((0)),
	[RT_CvgCRnd] [bit] NULL CONSTRAINT [DF_Rate_RT_CvgCRnd]  DEFAULT ((0)),
	[RT_CvgDRnd] [bit] NULL CONSTRAINT [DF_Rate_RT_CvgDRnd]  DEFAULT ((0)),
	[RT_CvgERnd] [bit] NULL CONSTRAINT [DF_Rate_RT_CvgERnd]  DEFAULT ((0)),
	[RT_CvgFRnd] [bit] NULL CONSTRAINT [DF_Rate_RT_CvgFRnd]  DEFAULT ((0)),
	[RT_CvgPerilsRnd] [bit] NULL CONSTRAINT [DF_Rate_RT_CvgPerilsRnd]  DEFAULT ((0)),
	[RT_CvgACost] [money] NULL CONSTRAINT [DF_Rate_RT_CvgACost]  DEFAULT ((0)),
	[RT_CvgCCost] [money] NULL CONSTRAINT [DF_Rate_RT_CvgCCost]  DEFAULT ((0)),
	[RT_CvgDCost] [money] NULL CONSTRAINT [DF_Rate_RT_CvgDCost]  DEFAULT ((0)),
	[RT_CvgECost] [money] NULL CONSTRAINT [DF_Rate_RT_CvgECost]  DEFAULT ((0)),
	[RT_CvgFCost] [money] NULL CONSTRAINT [DF_Rate_RT_CvgFCost]  DEFAULT ((0)),
	[RT_CvgPerilsCost] [money] NULL CONSTRAINT [DF_Rate_RT_CvgPerilsCost]  DEFAULT ((0)),
	[RT_EmpResCost] [money] NULL CONSTRAINT [DF_Rate_RT_EmpResCost]  DEFAULT ((0)),
	[RT_AddlResCost] [money] NULL CONSTRAINT [DF_Rate_RT_AddlResCost]  DEFAULT ((0)),
	[RT_WoodStoveChg] [money] NULL CONSTRAINT [DF_Rate_RT_WoodStoveChg]  DEFAULT ((0)),
	[RT_FireDeptChg] [money] NULL CONSTRAINT [DF_Rate_RT_FireDeptChg]  DEFAULT ((0)),
	[RT_NewHomeCrdt] [money] NULL CONSTRAINT [DF_Rate_RT_NewHomeCrdt]  DEFAULT ((0)),
	[RT_SecondaryCrdt] [money] NULL CONSTRAINT [DF_Rate_RT_SecondaryCrdt]  DEFAULT ((0)),
	[RT_FAlarmCrdt] [money] NULL CONSTRAINT [DF_Rate_RT_FAlarmCrdt]  DEFAULT ((0)),
	[RT_UpdWireCrdt] [money] NULL CONSTRAINT [DF_Rate_RT_UpdWireCrdt]  DEFAULT ((0)),
	[RT_UpdHeatCrdt] [money] NULL CONSTRAINT [DF_Rate_RT_UpdHeatCrdt]  DEFAULT ((0)),
	[RT_BaseCost] [money] NULL CONSTRAINT [DF_Rate_RT_BaseCost]  DEFAULT ((0)),
	[RT_AllEndCost] [money] NULL CONSTRAINT [DF_Rate_RT_AllEndCOst]  DEFAULT ((0)),
	[RT_TotPremium] [money] NULL CONSTRAINT [DF_Rate_RT_TotPremium]  DEFAULT ((0)),
	[RT_OffExpires] [datetime] NULL,
	[RT_DateRated] [datetime] NULL,
	[RT_TStamp] [timestamp] NOT NULL,
	[RT_TierFactor] [decimal](9, 2) NULL,
	[RT_Tier] [int] NULL,
	[RT_DiffDeductible3] [int] NULL,
	[RT_DiffDeductible4] [int] NULL,
	[RT_DiffPremium3] [money] NULL,
	[RT_DiffPremium4] [money] NULL,
 CONSTRAINT [PK_Rate] PRIMARY KEY CLUSTERED 
(
	[RT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_Rate] ON [dbo].[Rate] 
(
	[HH_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Rate', @level2type=N'COLUMN',@level2name=N'RT_CvgCCost'
GO
/****** Object:  Table [dbo].[Note]    Script Date: 10/10/2009 16:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Note](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[HH_ID] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Premises]    Script Date: 10/10/2009 16:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Premises](
	[PM_ID] [int] IDENTITY(1,1) NOT NULL,
	[HH_ID] [int] NOT NULL,
	[PM_HouseNum] [varchar](10) NULL,
	[PM_AptNum] [varchar](10) NULL,
	[PM_Addr1] [varchar](30) NULL,
	[PM_Addr2] [varchar](30) NULL,
	[PM_City] [varchar](30) NULL,
	[PM_State] [varchar](2) NULL,
	[PM_ZipCode] [varchar](5) NULL,
	[PM_ZipCodePlus4] [varchar](4) NULL,
	[PM_LglDesc1] [varchar](30) NULL,
	[PM_LglDesc2] [varchar](30) NULL,
	[PM_DwellUse] [char](1) NULL,
	[PM_NumFamily] [char](1) NULL,
	[PM_EmpResidence] [bit] NULL,
	[PM_EmpNumber] [varchar](2) NULL,
	[PM_FarmOp] [bit] NULL,
	[PM_FarmAcres] [varchar](3) NULL,
	[PM_Construction] [char](1) NULL,
	[PM_ProtClass] [varchar](2) NULL,
	[PM_YearBuilt] [varchar](4) NULL,
	[PM_ResType] [char](1) NULL,
	[PM_FireDivUnit] [varchar](3) NULL,
	[PM_FireDeptSrvLmt] [varchar](4) NULL,
	[PM_FireDeptMi] [varchar](4) NULL,
	[PM_FireHydtPresent] [bit] NULL,
	[PM_SmkDetector] [bit] NULL,
	[PM_BrglrAlarm] [char](1) NULL,
	[PM_FireAlarm] [char](1) NULL,
	[PM_WoodStove] [bit] NULL,
	[PM_BuilderRisk] [bit] NULL,
	[PM_UpdWireYr] [varchar](4) NULL,
	[PM_UpdHeatYr] [varchar](4) NULL,
	[PM_Business] [bit] NULL,
	[PM_BusinessDesc] [varchar](69) NULL,
	[PM_FireHydtFt] [varchar](9) NULL,
	[PM_InCityLimits] [bit] NULL,
	[PM_FireDstrctName] [varchar](15) NULL,
	[PM_PriHeatType] [char](1) NULL,
	[PM_HeatSysAge] [varchar](2) NULL,
	[PM_RoofType] [varchar](15) NULL,
	[PM_RoofAge] [varchar](2) NULL,
	[PM_RoofCond] [bit] NULL,
	[PM_MHManufacturer] [varchar](30) NULL,
	[PM_MHSerialNum] [varchar](15) NULL,
	[PM_MHModel] [varchar](30) NULL,
	[PM_MHLen] [varchar](3) NULL,
	[PM_MHWidth] [varchar](3) NULL,
	[PM_MHMovingSoon] [bit] NULL,
	[PM_MHDamaged] [bit] NULL,
	[PM_MHGotThermostat] [bit] NULL,
	[PM_MHFoundation] [char](1) NULL,
	[PM_MHTieDowns] [char](1) NULL,
	[PM_Comments] [varchar](69) NULL,
	[PM_UWComments] [varchar](69) NULL,
	[PM_CvgVisited] [bit] NOT NULL CONSTRAINT [DF_Premises_PM_CvgVisited]  DEFAULT ((0)),
	[PM_UWVisited] [bit] NOT NULL CONSTRAINT [DF_Premises_PM_UWVisited]  DEFAULT ((0)),
	[PM_Cvg100Percent] [bit] NULL,
	[PM_CvgA] [varchar](9) NULL,
	[PM_CvgB] [varchar](9) NULL,
	[PM_CvgC] [varchar](9) NULL,
	[PM_CvgD] [varchar](9) NULL,
	[PM_CvgE] [varchar](9) NULL,
	[PM_CvgF] [varchar](9) NULL,
	[PM_CvgPerils] [varchar](9) NULL,
	[PM_WindHail] [varchar](9) NULL,
	[PM_PurchaseDate] [datetime] NULL,
	[PM_PoolFenceHT] [varchar](2) NULL,
	[PM_PetBreed] [varchar](20) NULL,
	[PM_OccupiedDaily] [bit] NULL,
	[PM_AccessAllTimes] [bit] NULL,
	[PM_Pets] [bit] NULL,
	[PM_Fireplace] [bit] NULL,
	[PM_FireCleanAnnually] [bit] NULL,
	[PM_Felony] [bit] NULL,
	[PM_Bankruptcy] [bit] NULL,
	[PM_Pool] [bit] NULL,
	[PM_PoolinGround] [bit] NULL,
	[PM_PoolFenced] [bit] NULL,
	[PM_PoolDVBoard] [bit] NULL,
	[PM_PoolSlide] [bit] NULL,
	[PM_Trampoline] [bit] NULL,
	[PM_TrampolineNet] [bit] NULL,
	[PM_TotFireLoss] [bit] NULL,
	[PM_WaterLoss] [bit] NULL,
	[PM_TStamp] [timestamp] NOT NULL,
	[PM_LogHome] [bit] NULL,
	[PM_RolledRoof] [bit] NULL,
	[PM_ShakeSiding] [bit] NULL,
	[PM_Foundation] [bit] NULL,
	[PM_AllWeatherRoad] [bit] NULL,
	[PM_ForSale] [bit] NULL,
	[PM_AnimalBreeding] [bit] NULL,
	[PM_NonWeatherLoss] [bit] NULL,
 CONSTRAINT [PK_Premises] PRIMARY KEY CLUSTERED 
(
	[PM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_Premises] ON [dbo].[Premises] 
(
	[HH_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Premises ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Premises', @level2type=N'COLUMN',@level2name=N'PM_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Quote Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Premises', @level2type=N'COLUMN',@level2name=N'HH_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Premises State' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Premises', @level2type=N'COLUMN',@level2name=N'PM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Builder Risk Yes/No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Premises', @level2type=N'COLUMN',@level2name=N'PM_BuilderRisk'
GO
/****** Object:  Table [dbo].[AddEnd]    Script Date: 10/10/2009 16:35:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AddEnd](
	[ED_ID] [int] IDENTITY(1,1) NOT NULL,
	[HH_ID] [int] NOT NULL,
	[ED_Type] [varchar](10) NULL,
	[ED_PlanID] [varchar](3) NULL,
	[ED_FormId] [varchar](6) NULL,
	[ED_PremBearing] [bit] NOT NULL CONSTRAINT [DF_AddEnd_ED_PremBearing]  DEFAULT ((1)),
	[ED_Rnd] [bit] NOT NULL CONSTRAINT [DF_AddEnd_ED_Rnd]  DEFAULT ((0)),
	[ED_Cost] [money] NULL CONSTRAINT [DF_AddEnd_ED_Cost]  DEFAULT ((0)),
	[ED_Description1] [varchar](512) NULL,
	[ED_Description2] [varchar](255) NULL,
	[ED_Description3] [varchar](255) NULL,
	[ED_Name1] [varchar](30) NULL,
	[ED_Name2] [varchar](30) NULL,
	[ED_Addr1] [varchar](30) NULL,
	[ED_Addr2] [varchar](30) NULL,
	[ED_City] [varchar](30) NULL,
	[ED_State] [varchar](2) NULL,
	[ED_ZipCode] [varchar](5) NULL,
	[ED_ZipPlus4] [varchar](4) NULL,
	[ED_LiabLmt] [varchar](10) NULL,
	[ED_CvrLmt] [varchar](10) NULL,
	[ED_NumFamily] [char](1) NULL,
	[ED_BusinessType] [char](1) NULL,
	[ED_FarmOponPremises] [bit] NULL,
	[ED_BusinessonPremises] [bit] NULL,
	[ED_VeneerExclude] [bit] NULL,
	[ED_IncLiability] [bit] NULL,
	[ED_PPropType] [char](1) NULL,
	[ED_Loc2Name1] [varchar](30) NULL,
	[ED_Loc2Name2] [varchar](30) NULL,
	[ED_Loc2Addr1] [varchar](30) NULL,
	[ED_Loc2Addr2] [varchar](30) NULL,
	[ED_Loc2City] [varchar](30) NULL,
	[ED_Loc2State] [varchar](2) NULL,
	[ED_Loc2ZipCode] [varchar](5) NULL,
	[ED_Loc2ZipPlus4] [varchar](4) NULL,
	[ED_Loc2LiabLmt] [varchar](10) NULL,
	[ED_465Money] [varchar](5) NULL,
	[ED_465Securities] [varchar](5) NULL,
	[ED_465Jewelery] [varchar](5) NULL,
	[ED_465Firearms] [varchar](5) NULL,
	[ED_465Silverware] [varchar](5) NULL,
	[ED_465ElectIn] [varchar](5) NULL,
	[ED_465ElectOut] [varchar](5) NULL,
	[ED_435LiabLmtPremises] [varchar](10) NULL,
	[ED_DedPercent] [varchar](4) NULL,
	[ED_DedAmt] [varchar](5) NULL,
	[ED_EffDate] [datetime] NULL,
	[ED_456ReplValPercent] [varchar](2) NULL,
	[ED_2475WCType] [char](1) NULL,
	[ED_2475WCYear] [varchar](4) NULL,
	[ED_2475WCMake] [varchar](20) NULL,
	[ED_2475WCModel] [varchar](12) NULL,
	[ED_2475WCLength] [varchar](3) NULL,
	[ED_2475WCSerial] [varchar](20) NULL,
	[ED_2475WCMAYear] [varchar](4) NULL,
	[ED_2475WCMAMake] [varchar](20) NULL,
	[ED_2475WCMAModel] [varchar](12) NULL,
	[ED_2475WCMAHP] [varchar](3) NULL,
	[ED_2475WCMASerial] [varchar](20) NULL,
	[ED_2475WCMBYear] [varchar](4) NULL,
	[ED_2475WCMBMake] [varchar](20) NULL,
	[ED_2475WCMBModel] [varchar](12) NULL,
	[ED_2475WCMBHP] [varchar](3) NULL,
	[ED_2475WCMBSerial] [varchar](20) NULL,
	[ED_SeqNum] [varchar](3) NULL,
	[ED_TStamp] [timestamp] NOT NULL,
	[ED_0461AppraisalDate] [datetime] NULL,
	[ED_DOB] [datetime] NULL,
	[ED_SSN] [char](9) NULL,
 CONSTRAINT [PK_AddEnd] PRIMARY KEY CLUSTERED 
(
	[ED_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_AddEnd] ON [dbo].[AddEnd] 
(
	[ED_Type] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_AddEnd_1] ON [dbo].[AddEnd] 
(
	[HH_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Household]    Script Date: 10/10/2009 16:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Household](
	[HH_ID] [int] IDENTITY(1,1) NOT NULL,
	[HH_BatID] [int] NULL,
	[HH_ProfID] [int] NULL,
	[HH_AgencyID] [int] NULL,
	[HH_AGTID] [int] NULL,
	[HH_FirstName] [varchar](20) NULL,
	[HH_MidName] [varchar](10) NULL,
	[HH_LastName] [varchar](20) NULL,
	[HH_SufName] [varchar](5) NULL,
	[HH_CoAppFirstName] [varchar](20) NULL,
	[HH_CoAppMidName] [varchar](10) NULL,
	[HH_CoAppLastName] [varchar](20) NULL,
	[HH_CoAppSufName] [varchar](5) NULL,
	[HH_HouseNum] [varchar](10) NULL,
	[HH_AptNum] [varchar](10) NULL,
	[HH_Addr1] [varchar](30) NULL,
	[HH_Addr2] [varchar](30) NULL,
	[HH_City] [varchar](30) NULL,
	[HH_State] [char](2) NULL,
	[HH_ZipCode] [char](5) NULL,
	[HH_ZipCodePlus4] [char](4) NULL,
	[HH_PhNum] [varchar](15) NULL,
	[HH_PolEffDate] [datetime] NULL,
	[HH_PolExpDate] [datetime] NULL,
	[HH_LastDateUpd] [datetime] NULL,
	[HH_HOPrtDate] [datetime] NULL,
	[HH_ReqDate] [datetime] NULL,
	[HH_AgcyBoundDate] [datetime] NULL,
	[HH_PolTerm] [char](2) NULL CONSTRAINT [DF_Household_HH_PolTerm]  DEFAULT ('06'),
	[HH_PolNew] [bit] NULL CONSTRAINT [DF_Household_HH_PolNew]  DEFAULT ((1)),
	[HH_OtherPolicy] [bit] NULL,
	[HH_MultiPolPrefix] [varchar](4) NULL,
	[HH_MultiPolNum] [varchar](10) NULL,
	[HH_ReqStatus] [char](1) NULL CONSTRAINT [DF_Household_HH_ReqStatus]  DEFAULT ((0)),
	[HH_LockPlan] [bit] NOT NULL CONSTRAINT [DF_Household_HH_LockPlan]  DEFAULT ((0)),
	[HH_FormID] [varchar](6) NULL,
	[HH_PlanID] [varchar](3) NULL,
	[HH_CompID] [varchar](3) NULL,
	[HH_AgcySubmit] [int] NULL,
	[HH_AgntName] [varchar](30) NULL,
	[HH_AgcyMoney] [varchar](11) NULL CONSTRAINT [DF_Household_HH_AgcyMoney]  DEFAULT ((0)),
	[HH_AgcyHowPay] [varchar](3) NULL,
	[HH_AgcyChkNum] [varchar](10) NULL,
	[HH_AgcyMemo] [varchar](50) NULL,
	[HH_AgcyBound] [bit] NULL,
	[HH_MortBill] [bit] NULL,
	[HH_MFPolNumKey] [varchar](25) NULL,
	[HH_MFCorp] [varchar](3) NULL,
	[HH_MFComp] [varchar](3) NULL,
	[HH_MFPrefixA] [varchar](4) NULL,
	[HH_MFPrefixB] [varchar](4) NULL,
	[HH_MFPolNum] [varchar](10) NULL,
	[HH_MFDecNum] [varchar](1) NULL,
	[HH_MFPolNew] [bit] NULL CONSTRAINT [DF_Household_HH_MFPolNew]  DEFAULT ((0)),
	[HH_EFT] [bit] NULL,
	[HH_FrmHouseNum] [varchar](10) NULL,
	[HH_FrmAptNum] [varchar](10) NULL,
	[HH_FrmAddr1] [varchar](30) NULL,
	[HH_FrmCity] [varchar](30) NULL,
	[HH_FrmState] [varchar](2) NULL,
	[HH_FrmZipCode] [varchar](5) NULL,
	[HH_FrmZipCodePlus4] [varchar](4) NULL,
	[HH_PIPolNum] [varchar](20) NULL,
	[HH_PICarrier] [varchar](30) NULL,
	[HH_PIPolType] [char](1) NULL,
	[HH_ApDOB] [datetime] NULL,
	[HH_ApSSN] [varchar](9) NULL,
	[HH_ApOccupation] [varchar](30) NULL,
	[HH_ApGender] [char](1) NULL,
	[HH_CoApDOB] [datetime] NULL,
	[HH_CoApSSN] [varchar](9) NULL,
	[HH_CoApOccupation] [varchar](30) NULL,
	[HH_CoApGender] [char](1) NULL,
	[HH_MVRDte] [datetime] NULL,
	[HH_CLUDte] [datetime] NULL,
	[HH_E2ValDte] [datetime] NULL,
	[HH_CLADte] [datetime] NULL,
	[HH_CLALstOrdDte] [datetime] NULL,
	[HH_CLAStatus] [char](1) NULL,
	[HH_AppClueSCR] [varchar](3) NULL,
	[HH_ScrubOverride] [bit] NULL,
	[HH_ScrubReturnCode] [varchar](3) NULL,
	[HH_Remarks] [varchar](69) NULL,
	[HH_AGTMSG] [varchar](512) NULL,
	[HH_AGCYMSG] [varchar](512) NULL,
	[HH_TStamp] [timestamp] NOT NULL,
	[HH_ClueRefNum] [varchar](20) NULL,
	[HH_NcfRefNum] [varchar](20) NULL,
	[HH_UploadedBy] [varchar](100) NULL,
 CONSTRAINT [PK_Household] PRIMARY KEY CLUSTERED 
(
	[HH_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_Household] ON [dbo].[Household] 
(
	[HH_AgencyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Household_1] ON [dbo].[Household] 
(
	[HH_AGTID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Household_2] ON [dbo].[Household] 
(
	[HH_FirstName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Household_3] ON [dbo].[Household] 
(
	[HH_LastName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Household_4] ON [dbo].[Household] 
(
	[HH_ZipCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Household_5] ON [dbo].[Household] 
(
	[HH_City] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Household_6] ON [dbo].[Household] 
(
	[HH_ZipCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Household_7] ON [dbo].[Household] 
(
	[HH_BatID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Household_8] ON [dbo].[Household] 
(
	[HH_ReqStatus] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Household_9] ON [dbo].[Household] 
(
	[HH_LastDateUpd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Household ID NUmber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Batch Extracted In' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_BatID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Profile ID If it''s part of a profile' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_ProfID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Agency ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_AgencyID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Household Agent Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_AGTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Household Billing Address 1st Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Applicant Middle Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_MidName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Household Billing Address Last Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_LastName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Applicant Suffix Name (jr or sr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_SufName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CoApplicant First Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_CoAppFirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CoApplicant Middle Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_CoAppMidName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CoApplicant Last Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_CoAppLastName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CoApplicant Suffix Name (jr or sr)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_CoAppSufName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'House Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_HouseNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Apartment Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_AptNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Household Billing Address Line 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_Addr1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HouseHold Billing Address Line 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_Addr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Household Billing Address City' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Household Billing Address State' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Household Billing Address ZipCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_ZipCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Household Billing Address ZipCode + 4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_ZipCodePlus4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Policy Effective Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_PolEffDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Policy Expiration Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_PolExpDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last Date Updated' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_LastDateUpd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'date/time ho print function' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_HOPrtDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'date/time coverage requested' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_ReqDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AGENT BOUND DATE/TIME' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_AgcyBoundDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Policy Term Length' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_PolTerm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is Policy New or Renewal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_PolNew'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Household Other Policy w/Cameron' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_OtherPolicy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Status of Quote (0=wip/F=frozen/R=rejected/P=Printed)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_ReqStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Form ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_FormID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Plan Selected to request coverage' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_PlanID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Company Selected to Request Coverage' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_CompID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Agency Business is Written Under' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_AgcySubmit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Agent Name Submitting Business' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_AgntName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Money Agency Collects for New Business' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_AgcyMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Payment Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_AgcyHowPay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Check Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_AgcyChkNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Memo Field for Payment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_AgcyMemo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Business Bound or Unbound' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_AgcyBound'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Bill Mortgagee?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_MortBill'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MainFrame Policy Number Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_MFPolNumKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MainFrame Corporation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_MFCorp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MainFrame Company' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_MFComp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MainFrame PrefixA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_MFPrefixA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MainFrame Prefix B' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_MFPrefixB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MainFrame Policy Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_MFPolNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MainFrame Dec Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_MFDecNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is Policy New? (1=Yes)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_MFPolNew'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Do we have an EFT Transaction? (1=yes)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_EFT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Former Address House Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_FrmHouseNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Former Address Apartment Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_FrmAptNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Household Former Address Line 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_FrmAddr1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Household Former Address City' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_FrmCity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Household Former Address City' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_FrmState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Household Former Address ZipCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_FrmZipCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Household Former Address ZipCode + 4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_FrmZipCodePlus4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Prior Policy Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_PIPolType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Clue W/Attract Order Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_CLADte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Clue W/Attract Last Order Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_CLALstOrdDte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Clue W/Attract Status Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_CLAStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Household Remarks' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Agent Message used on Quote Print' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_AGTMSG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Agency Message used for Quote Print' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_AGCYMSG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Generic Time Stamp to see if record changed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Household', @level2type=N'COLUMN',@level2name=N'HH_TStamp'
GO
/****** Object:  StoredProcedure [dbo].[GetTheQuote]    Script Date: 10/10/2009 16:34:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTheQuote]
/*  GET THE QUOTE FOR PRINT */
	(
		@HH_ID INT,
		@RT_Plan VARCHAR(4),
		@EffDate VARCHAR(8)
	)
AS
DECLARE @State VARCHAR(2)
DECLARE @RT_FormName VARCHAR(6)
DECLARE @WSPlanState VARCHAR(6) 

SELECT     
	@State = Premises.PM_State, 
	@RT_Plan = Rate.RT_Plan, 
	@RT_FormName = Rate.RT_FormName
FROM Premises INNER JOIN Rate ON Premises.HH_ID = Rate.HH_ID WHERE (Premises.HH_ID = @HH_ID)
SET @WSPlanState = @RT_Plan + @State

/* GET THE HOUSEHOLD INFORMATION */
SELECT Household.*, 
	RTRIM(ISNULL(RTRIM(HH_FirstName), '') + SPACE(1) + ISNULL(RTRIM(HH_MidName), '') + SPACE(1) + ISNULL(RTRIM(HH_LastName), '') + ' ' + ISNULL(RTRIM(HH_SufName), '')) AS HH_AppName, 
	RTRIM(ISNULL(RTRIM(HH_CoAppFirstName), '') + SPACE(1) + ISNULL(RTRIM(HH_CoAppMidName), '') + SPACE(1) + ISNULL(RTRIM(HH_CoAppLastName), '') + ' ' + ISNULL(RTRIM(HH_CoAppSufName), '')) AS HH_CoAppName
FROM Household WHERE (HH_ID = @HH_ID)

/* GET PREMISES INFORMATION */
SELECT Premises.* FROM Premises WHERE (HH_ID = @HH_ID)

/* GET RATE INFORMATION */
SELECT Rate.* FROM Rate WHERE (HH_ID = @HH_ID) AND (RT_Plan = @RT_Plan)

IF @RT_FormName = 'HO0002' BEGIN
	SELECT  AddEnd.*,CMICFields.FieldLabel AS ED_Name 
	FROM AddEnd INNER JOIN CMICFields ON AddEnd.ED_Type = CMICFields.FieldDBName
		WHERE (AddEnd.HH_ID = @HH_ID) AND 
		(CMICFields.AsppageName = 'endorsement') AND (CMICFields.FieldName = 'ALL' OR CMICFields.FieldName = @RT_Plan OR CMICFields.FieldName = @WSPlanState) AND (CMICFields.FieldHO2 = 1) AND (CMICFields.FieldEffDte = @EffDate) AND (CMICFields.FieldText IS NOT NULL)
	ORDER BY AddEnd.ED_Type, AddEnd.ED_ID
END

IF @RT_FormName = 'HO0003' BEGIN
	SELECT  AddEnd.*, CMICFields.FieldLabel AS ED_Name  
	FROM AddEnd INNER JOIN CMICFields ON AddEnd.ED_Type = CMICFields.FieldDBName
		WHERE (AddEnd.HH_ID = @HH_ID) AND 
		(CMICFields.AsppageName = 'endorsement') AND (CMICFields.FieldName = 'ALL' OR CMICFields.FieldName = @RT_Plan OR CMICFields.FieldName = @WSPlanState) AND (CMICFields.FieldHO3 = 1) AND (CMICFields.FieldEffDte = @EffDate) AND (CMICFields.FieldText IS NOT NULL)
	ORDER BY AddEnd.ED_Type, AddEnd.ED_ID
END

IF @RT_FormName = 'HO0004' BEGIN
	SELECT  AddEnd.*, CMICFields.FieldLabel AS ED_Name  
	FROM AddEnd INNER JOIN CMICFields ON AddEnd.ED_Type = CMICFields.FieldDBName
		WHERE (AddEnd.HH_ID = @HH_ID) AND 
		(CMICFields.AsppageName = 'endorsement') AND (CMICFields.FieldName = 'ALL' OR CMICFields.FieldName = @RT_Plan OR CMICFields.FieldName = @WSPlanState) AND (CMICFields.FieldHO4 = 1) AND (CMICFields.FieldEffDte = @EffDate) AND (CMICFields.FieldText IS NOT NULL)
	ORDER BY AddEnd.ED_Type, AddEnd.ED_ID
END

IF @RT_FormName = 'HO0006' BEGIN
	SELECT  AddEnd.*, CMICFields.FieldLabel AS ED_Name 
	FROM AddEnd INNER JOIN CMICFields ON AddEnd.ED_Type = CMICFields.FieldDBName
		WHERE (AddEnd.HH_ID = @HH_ID) AND 
		(CMICFields.AsppageName = 'endorsement') AND (CMICFields.FieldName = 'ALL' OR CMICFields.FieldName = @RT_Plan OR CMICFields.FieldName = @WSPlanState) AND (CMICFields.FieldHO6 = 1) AND (CMICFields.FieldEffDte = @EffDate) AND (CMICFields.FieldText IS NOT NULL)
	ORDER BY AddEnd.ED_Type, AddEnd.ED_ID
END
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetTheEndorsements]    Script Date: 10/10/2009 16:34:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTheEndorsements]
/*  GRAB JUST THE ENDORSMENT INFORMATION A DERIVITIVE OF GETTHEQUOTE */
	(
		@HH_ID INT,
		@RT_Plan VARCHAR(4),
		@RT_FormName VARCHAR(6),
		@EffDate VARCHAR(8)
	)
AS
DECLARE @State VARCHAR(2)
DECLARE @WSPlanState VARCHAR(6) 
SELECT     
	@State = Premises.PM_State 
FROM Premises WHERE (Premises.HH_ID = @HH_ID)
SET @WSPlanState = @RT_Plan + @State

IF @RT_FormName = 'HO0002' BEGIN
	SELECT  AddEnd.*,CMICFields.FieldLabel AS ED_Name 
	FROM AddEnd INNER JOIN CMICFields ON AddEnd.ED_Type = CMICFields.FieldDBName
		WHERE (AddEnd.HH_ID = @HH_ID) AND 
		(CMICFields.AsppageName = 'endorsement') AND (CMICFields.FieldName = 'ALL' OR CMICFields.FieldName = @RT_Plan OR CMICFields.FieldName = @WSPlanState) AND (CMICFields.FieldHO2 = 1) AND (CMICFields.FieldEffDte = @EffDate) AND (CMICFields.FieldText IS NOT NULL)
	ORDER BY AddEnd.ED_Type
END

IF @RT_FormName = 'HO0003' BEGIN
	SELECT  AddEnd.*, CMICFields.FieldLabel AS ED_Name  
	FROM AddEnd INNER JOIN CMICFields ON AddEnd.ED_Type = CMICFields.FieldDBName
		WHERE (AddEnd.HH_ID = @HH_ID) AND 
		(CMICFields.AsppageName = 'endorsement') AND (CMICFields.FieldName = 'ALL' OR CMICFields.FieldName = @RT_Plan OR CMICFields.FieldName = @WSPlanState) AND (CMICFields.FieldHO3 = 1) AND (CMICFields.FieldEffDte = @EffDate) AND (CMICFields.FieldText IS NOT NULL)
	ORDER BY AddEnd.ED_Type
END

IF @RT_FormName = 'HO0004' BEGIN
	SELECT  AddEnd.*, CMICFields.FieldLabel AS ED_Name  
	FROM AddEnd INNER JOIN CMICFields ON AddEnd.ED_Type = CMICFields.FieldDBName
		WHERE (AddEnd.HH_ID = @HH_ID) AND 
		(CMICFields.AsppageName = 'endorsement') AND (CMICFields.FieldName = 'ALL' OR CMICFields.FieldName = @RT_Plan OR CMICFields.FieldName = @WSPlanState) AND (CMICFields.FieldHO4 = 1) AND (CMICFields.FieldEffDte = @EffDate) AND (CMICFields.FieldText IS NOT NULL)
	ORDER BY AddEnd.ED_Type
END

IF @RT_FormName = 'HO0006' BEGIN
	SELECT  AddEnd.*, CMICFields.FieldLabel AS ED_Name 
	FROM AddEnd INNER JOIN CMICFields ON AddEnd.ED_Type = CMICFields.FieldDBName
		WHERE (AddEnd.HH_ID = @HH_ID) AND 
		(CMICFields.AsppageName = 'endorsement') AND (CMICFields.FieldName = 'ALL' OR CMICFields.FieldName = @RT_Plan OR CMICFields.FieldName = @WSPlanState) AND (CMICFields.FieldHO6 = 1) AND (CMICFields.FieldEffDte = @EffDate) AND (CMICFields.FieldText IS NOT NULL)
	ORDER BY AddEnd.ED_Type
END
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetQuoteInfo]    Script Date: 10/10/2009 16:34:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetQuoteInfo]
/*  GET INFO FOR QUOTES.ASPX SCREEN */
	(
		@HH_ID INT,
		@RT_Plan VARCHAR(4)
	)
AS
SELECT     
	HH_PolEffDate, 
	HH_PolExpDate, 
	HH_PolTerm
FROM         Household
WHERE     (HH_ID = @HH_ID)

SELECT     CMICFields.FieldName, CMICFields.FieldRequired, CMICFields.FieldEffDte, CMICValues.RetValue, CMICValues.Label
FROM         CMICFields INNER JOIN
                      CMICValues ON CMICFields.FieldID = CMICValues.FieldID
WHERE     (CMICFields.AsppageName = 'COMPANY_INFO') AND (CMICValues.Label = 'compname') AND (CMICFields.FieldName = @RT_Plan) OR
                      (CMICValues.Label = 'info1') AND (CMICFields.FieldName = @RT_Plan)
ORDER BY CMICFields.FieldSort, CMICValues.SortOrder

SELECT     
	RT_Plan, 
	RT_TotPremium, 
	RT_OffExpires, 
	RT_DateRated,
	RT_DiffDeductible3,
	RT_DiffDeductible4,
	RT_DiffPremium3,
	RT_DiffPremium4
FROM         Rate
WHERE     (HH_ID = @HH_ID)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[GettheOptAddlEnd]    Script Date: 10/10/2009 16:34:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GettheOptAddlEnd]
/*  GET THE LOCATION/ADDITIONAL ENDORMSENTS CROSSREFERENCE */
	(
		@HH_ID INT,
		@EffDate VARCHAR(8)

	)
AS
DECLARE @State VARCHAR(2)
DECLARE @RT_Plan VARCHAR(4)
DECLARE @RT_FormName VARCHAR(6)
DECLARE @WSPlanState VARCHAR(6) 

SELECT     
	@State = Premises.PM_State, 
	@RT_Plan = Rate.RT_Plan, 
	@RT_FormName = Rate.RT_FormName
FROM Premises INNER JOIN Rate ON Premises.HH_ID = Rate.HH_ID WHERE (Premises.HH_ID = @HH_ID)
SET @WSPlanState = @RT_Plan + @State

IF @RT_FormName = 'HO0002' BEGIN
	SELECT  AddEnd.ED_Type, SUM(AddEnd.ED_Cost) AS ED_Cost, CMICFields.FieldLabel AS ED_Name 
	FROM AddEnd INNER JOIN CMICFields ON AddEnd.ED_Type = CMICFields.FieldDBName
		WHERE (AddEnd.HH_ID = @HH_ID) AND 
		(CMICFields.AsppageName = 'endorsement') AND (CMICFields.FieldName = 'ALL' OR CMICFields.FieldName = @RT_Plan OR CMICFields.FieldName = @WSPlanState) AND (CMICFields.FieldHO2 = 1) AND (CMICFields.FieldEffDte = @EffDate) AND (CMICFields.FieldText IS NOT NULL)
	GROUP BY AddEnd.ED_Type,CMICFields.FieldLabel
	ORDER BY AddEnd.ED_Type
END

IF @RT_FormName = 'HO0003' BEGIN
	SELECT  AddEnd.ED_Type, SUM(AddEnd.ED_Cost) AS ED_Cost, CMICFields.FieldLabel AS ED_Name  
	FROM AddEnd INNER JOIN CMICFields ON AddEnd.ED_Type = CMICFields.FieldDBName
		WHERE (AddEnd.HH_ID = @HH_ID) AND 
		(CMICFields.AsppageName = 'endorsement') AND (CMICFields.FieldName = 'ALL' OR CMICFields.FieldName = @RT_Plan OR CMICFields.FieldName = @WSPlanState) AND (CMICFields.FieldHO3 = 1) AND (CMICFields.FieldEffDte = @EffDate) AND (CMICFields.FieldText IS NOT NULL)
	GROUP BY AddEnd.ED_Type,CMICFields.FieldLabel
	ORDER BY AddEnd.ED_Type
END

IF @RT_FormName = 'HO0004' BEGIN
	SELECT  AddEnd.ED_Type, SUM(AddEnd.ED_Cost) AS ED_Cost, CMICFields.FieldLabel AS ED_Name  
	FROM AddEnd INNER JOIN CMICFields ON AddEnd.ED_Type = CMICFields.FieldDBName
		WHERE (AddEnd.HH_ID = @HH_ID) AND 
		(CMICFields.AsppageName = 'endorsement') AND (CMICFields.FieldName = 'ALL' OR CMICFields.FieldName = @RT_Plan OR CMICFields.FieldName = @WSPlanState) AND (CMICFields.FieldHO4 = 1) AND (CMICFields.FieldEffDte = @EffDate) AND (CMICFields.FieldText IS NOT NULL)
	GROUP BY AddEnd.ED_Type,CMICFields.FieldLabel
	ORDER BY AddEnd.ED_Type
END

IF @RT_FormName = 'HO0006' BEGIN
	SELECT  AddEnd.ED_Type, SUM(AddEnd.ED_Cost) AS ED_Cost, CMICFields.FieldLabel AS ED_Name 
	FROM AddEnd INNER JOIN CMICFields ON AddEnd.ED_Type = CMICFields.FieldDBName
		WHERE (AddEnd.HH_ID = @HH_ID) AND 
		(CMICFields.AsppageName = 'endorsement') AND (CMICFields.FieldName = 'ALL' OR CMICFields.FieldName = @RT_Plan OR CMICFields.FieldName = @WSPlanState) AND (CMICFields.FieldHO6 = 1) AND (CMICFields.FieldEffDte = @EffDate) AND (CMICFields.FieldText IS NOT NULL)
	GROUP BY AddEnd.ED_Type,CMICFields.FieldLabel
	ORDER BY AddEnd.ED_Type
END
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetRateDetail]    Script Date: 10/10/2009 16:34:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRateDetail]
/*  GET THE RATES TO SHOW DETAILS FROM RATING */
	(
		@HH_ID INT,
		@RT_Plan VARCHAR(4),
		@EffDate VARCHAR(8)

	)
AS
DECLARE @State VARCHAR(2)
DECLARE @RT_FormName VARCHAR(6)
DECLARE @WSPlanState VARCHAR(6) 
SET @WSPlanState = @RT_Plan + @State


SELECT     
	Rate.RT_ID, 
	Rate.RT_Plan, 
	Rate.RT_FormName, 
	Rate.RT_Terr, 
	Rate.RT_County, 
	Rate.RT_CountyName, 
	Rate.RT_EqZone,
	Rate.RT_Tier,
	Rate.RT_TierFactor, 
	Rate.RT_CvgA, 
    Rate.RT_CvgARnd, 
    Rate.RT_CvgACost, 
    Rate.RT_CvgB, 
    Rate.RT_CvgBRnd, 
    Rate.RT_CvgC, 
    Rate.RT_CvgCRnd, 
    Rate.RT_CvgCCost, 
    Rate.RT_CvgD, 
    Rate.RT_CvgDRnd, 
    Rate.RT_CvgDCost, 
    Rate.RT_CvgE, 
    Rate.RT_CvgERnd, 
    Rate.RT_CvgECost, 
    Rate.RT_CvgF, 
    Rate.RT_CvgFRnd, 
    Rate.RT_CvgFCost, 
    Rate.RT_CvgPerils, 
    Rate.RT_CvgPerilsRnd, 
    Rate.RT_CvgPerilsCost,
    Rate.RT_EmpResCost, 
    Rate.RT_AddlResCost, 
    Rate.RT_WoodStoveChg, 
    Rate.RT_FireDeptChg, 
    Rate.RT_NewHomeCrdt, 
    Rate.RT_SecondaryCrdt, 
    Rate.RT_FAlarmCrdt, 
    Rate.RT_UpdWireCrdt, 
    Rate.RT_UpdHeatCrdt, 
    Rate.RT_BaseCost, 
    Rate.RT_AllEndCost, 
    Rate.RT_TotPremium, 
    Premises.PM_FireDeptSrvLmt,
    Premises.PM_WindHail
FROM         Rate LEFT OUTER JOIN Premises ON Rate.HH_ID = Premises.HH_ID
WHERE (Rate.HH_ID=@HH_ID) AND (Rate.RT_Plan = @RT_Plan)

SELECT     
	@State = Premises.PM_State, 
	@RT_FormName = Rate.RT_FormName
FROM Premises INNER JOIN Rate ON Premises.HH_ID = Rate.HH_ID WHERE (Premises.HH_ID = @HH_ID)

IF @RT_FormName = 'HO0002' BEGIN
	SELECT     AddEnd.ED_Type, SUM(AddEnd.ED_Cost) AS ED_Cost
	FROM AddEnd INNER JOIN CMICFields ON AddEnd.ED_Type = CMICFields.FieldDBName
	WHERE (AddEnd.HH_ID = @HH_ID) AND (AddEnd.ED_PremBearing = 1) AND 
	  (CMICFields.AsppageName = 'endorsement') AND (CMICFields.FieldName = 'ALL' OR CMICFields.FieldName = @RT_Plan OR CMICFields.FieldName = @WSPlanState) AND (CMICFields.FieldHO2 = 1) AND (CMICFields.FieldEffDte = @EffDate) AND (CMICFields.FieldText IS NOT NULL)
	GROUP BY AddEnd.ED_Type
	ORDER BY AddEnd.ED_Type
END

IF @RT_FormName = 'HO0003' BEGIN
	SELECT     AddEnd.ED_Type, SUM(AddEnd.ED_Cost) AS ED_Cost
	FROM         AddEnd INNER JOIN CMICFields ON AddEnd.ED_Type = CMICFields.FieldDBName
	WHERE     (AddEnd.HH_ID = @HH_ID) AND (AddEnd.ED_PremBearing = 1) AND 
	  (CMICFields.AsppageName = 'endorsement') AND (CMICFields.FieldName = 'ALL' OR	CMICFields.FieldName = @RT_Plan OR CMICFields.FieldName = @WSPlanState) AND (CMICFields.FieldHO3 = 1) AND (CMICFields.FieldEffDte = @EffDate) AND (CMICFields.FieldText IS NOT NULL)
	GROUP BY AddEnd.ED_Type
	ORDER BY AddEnd.ED_Type
END

IF @RT_FormName = 'HO0004' BEGIN
	SELECT     AddEnd.ED_Type, SUM(AddEnd.ED_Cost) AS ED_Cost
	FROM         AddEnd INNER JOIN CMICFields ON AddEnd.ED_Type = CMICFields.FieldDBName
	WHERE     (AddEnd.HH_ID = @HH_ID) AND (AddEnd.ED_PremBearing = 1) AND 
		(CMICFields.AsppageName = 'endorsement') AND (CMICFields.FieldName = 'ALL' OR CMICFields.FieldName = @RT_Plan OR CMICFields.FieldName = @WSPlanState) AND (CMICFields.FieldHO4 = 1) AND (CMICFields.FieldEffDte = @EffDate) AND (CMICFields.FieldText IS NOT NULL)
	GROUP BY AddEnd.ED_Type
	ORDER BY AddEnd.ED_Type
END

IF @RT_FormName = 'HO0006' BEGIN
	SELECT     AddEnd.ED_Type, SUM(AddEnd.ED_Cost) AS ED_Cost
	FROM         AddEnd INNER JOIN CMICFields ON AddEnd.ED_Type = CMICFields.FieldDBName
	WHERE     (AddEnd.HH_ID = @HH_ID) AND (AddEnd.ED_PremBearing = 1) AND 
		(CMICFields.AsppageName = 'endorsement') AND (CMICFields.FieldName = 'ALL' OR CMICFields.FieldName = @RT_Plan OR CMICFields.FieldName = @WSPlanState) AND (CMICFields.FieldHO6 = 1) AND (CMICFields.FieldEffDte = @EffDate) AND (CMICFields.FieldText IS NOT NULL)
	GROUP BY AddEnd.ED_Type
	ORDER BY AddEnd.ED_Type
END

RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetCreditScoreEffDate]    Script Date: 10/10/2009 16:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCreditScoreEffDate]
/*  GET COVERAGE EFFECTIVE DATE */
	(
		@plan varchar(50)		
	)
AS
SELECT DISTINCT FieldEffDte
FROM         CMICFields
WHERE     (AsppageName = 'CREDIT_SCORE') AND (FieldDBName = 'CREDIT_SCORE') AND (FieldName = @plan)
ORDER BY FieldEffDte DESC
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetEligibleEndorsements]    Script Date: 10/10/2009 16:34:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEligibleEndorsements]
/*  GET ENDORSEMENT LIST OF FORMS WHICH CAN BE ROLLED ON */
	(
		@HH_ID INT,
		@PlanId VARCHAR(4),
		@State VARCHAR(2),
		@Form VARCHAR(6),
		@EffDate VARCHAR(8),
		@ShowAll BIT
	)

AS
DECLARE @WSPlanState VARCHAR(6) 
SET @WSPlanState = @PlanId + @State

IF @ShowAll = 1 BEGIN
	IF @Form = 'HO0002' BEGIN
			SELECT
				'1' as DB_Ind, 
				FieldDBName, 
				FieldLabel, 
				FieldText,
				FieldRequired, 
				FieldSort 
			FROM CMICFields
			WHERE (AsppageName = 'endorsement') AND (FieldName = 'ALL' OR FieldName = @PlanId OR FieldName = @WSPlanState) AND (FieldHO2 = 1) AND (FieldEffDte = @EffDate) AND (FieldText IS NOT NULL) 
				AND FieldDBName IN (SELECT DISTINCT ED_Type FROM AddEnd WHERE (HH_ID = @HH_ID)) 
			UNION ALL 
				SELECT 
					'0' as DB_Ind,
					FieldDBName, 
					FieldLabel, 
					FieldText, 
					FieldRequired, 
					FieldSort
				FROM CMICFields
				WHERE (AsppageName = 'endorsement') AND (FieldName = 'ALL' OR FieldName = @PlanId OR FieldName = @WSPlanState) AND (FieldHO2 = 1) AND (FieldEffDte = @EffDate) AND (FieldText IS NOT NULL) 
					AND FieldDBName NOT IN (SELECT DISTINCT ED_Type FROM AddEnd WHERE (HH_ID = @HH_ID)) 
			ORDER BY FieldSort
			RETURN 
	END

	IF @Form = 'HO0003' BEGIN
			SELECT
				'1' as DB_Ind, 
				FieldDBName, 
				FieldLabel, 
				FieldText,
				FieldRequired, 
				FieldSort 
			FROM CMICFields
			WHERE (AsppageName = 'endorsement') AND (FieldName = 'ALL' OR FieldName = @PlanId OR FieldName = @WSPlanState) AND (FieldHO3 = 1) AND (FieldEffDte = @EffDate) AND (FieldText IS NOT NULL) 
				AND FieldDBName IN (SELECT DISTINCT ED_Type FROM AddEnd WHERE (HH_ID = @HH_ID)) 
		UNION ALL 
			SELECT 
				'0' as DB_Ind,
				FieldDBName, 
				FieldLabel, 
				FieldText,
				FieldRequired, 
				FieldSort
			FROM CMICFields
			WHERE (AsppageName = 'endorsement') AND (FieldName = 'ALL' OR FieldName = @PlanId OR FieldName = @WSPlanState) AND (FieldHO3 = 1) AND (FieldEffDte = @EffDate) AND (FieldText IS NOT NULL) 
				AND FieldDBName NOT IN (SELECT DISTINCT ED_Type FROM AddEnd WHERE (HH_ID = @HH_ID)) 
		ORDER BY FieldSort
		RETURN
	END

	IF @Form = 'HO0004' BEGIN
			SELECT
				'1' as DB_Ind, 
				FieldDBName, 
				FieldLabel, 
				FieldText,
				FieldRequired, 
				FieldSort 
			FROM CMICFields
			WHERE (AsppageName = 'endorsement') AND (FieldName = 'ALL' OR FieldName = @PlanId OR FieldName = @WSPlanState) AND (FieldHO4 = 1) AND (FieldEffDte = @EffDate) AND (FieldText IS NOT NULL) 
				AND FieldDBName IN (SELECT DISTINCT ED_Type FROM AddEnd WHERE (HH_ID = @HH_ID)) 
		UNION ALL 
			SELECT 
				'0' as DB_Ind,
				FieldDBName, 
				FieldLabel, 
				FieldText,
				FieldRequired, 
				FieldSort
			FROM CMICFields
			WHERE (AsppageName = 'endorsement') AND (FieldName = 'ALL' OR FieldName = @PlanId OR FieldName = @WSPlanState) AND (FieldHO4 = 1) AND (FieldEffDte = @EffDate) AND (FieldText IS NOT NULL) 
				AND FieldDBName NOT IN (SELECT DISTINCT ED_Type FROM AddEnd WHERE (HH_ID = @HH_ID)) 
		ORDER BY FieldSort
		RETURN
	END

	IF @Form = 'HO0006' BEGIN
			SELECT
				'1' as DB_Ind, 
				FieldDBName, 
				FieldLabel, 
				FieldText,
				FieldRequired, 
				FieldSort 
			FROM CMICFields
			WHERE (AsppageName = 'endorsement') AND (FieldName = 'ALL' OR FieldName = @PlanId OR FieldName = @WSPlanState) AND (FieldHO6 = 1) AND (FieldEffDte = @EffDate) AND (FieldText IS NOT NULL) 
				AND FieldDBName IN (SELECT DISTINCT ED_Type FROM AddEnd WHERE (HH_ID = @HH_ID)) 
		UNION ALL 
			SELECT 
				'0' as DB_Ind,
				FieldDBName, 
				FieldLabel, 
				FieldText,
				FieldRequired, 
				FieldSort
			FROM CMICFields
			WHERE (AsppageName = 'endorsement') AND (FieldName = 'ALL' OR FieldName = @PlanId OR FieldName = @WSPlanState) AND (FieldHO6 = 1) AND (FieldEffDte = @EffDate) AND (FieldText IS NOT NULL) 
				AND FieldDBName NOT IN (SELECT DISTINCT ED_Type FROM AddEnd WHERE (HH_ID = @HH_ID)) 
		ORDER BY FieldSort
		RETURN
	END

END ELSE BEGIN
	IF @Form = 'HO0002' BEGIN
			SELECT
				'1' as DB_Ind, 
				FieldDBName, 
				FieldLabel, 
				FieldText,
				FieldRequired, 
				FieldSort 
			FROM CMICFields
			WHERE (AsppageName = 'endorsement') AND (FieldName = 'ALL' OR FieldName = @PlanId OR FieldName = @WSPlanState) AND (FieldHO2 = 1) AND (FieldEffDte = @EffDate) AND (FieldText IS NOT NULL) 
				AND FieldDBName IN (SELECT DISTINCT ED_Type FROM AddEnd WHERE (HH_ID = @HH_ID)) 
			ORDER BY FieldSort
			RETURN 
	END

	IF @Form = 'HO0003' BEGIN
			SELECT
				'1' as DB_Ind, 
				FieldDBName, 
				FieldLabel, 
				FieldText,
				FieldRequired, 
				FieldSort 
			FROM CMICFields
			WHERE (AsppageName = 'endorsement') AND (FieldName = 'ALL' OR FieldName = @PlanId OR FieldName = @WSPlanState) AND (FieldHO3 = 1) AND (FieldEffDte = @EffDate) AND (FieldText IS NOT NULL) 
				AND FieldDBName IN (SELECT DISTINCT ED_Type FROM AddEnd WHERE (HH_ID = @HH_ID)) 
		ORDER BY FieldSort
		RETURN
	END

	IF @Form = 'HO0004' BEGIN
			SELECT
				'1' as DB_Ind, 
				FieldDBName, 
				FieldLabel, 
				FieldText,
				FieldRequired, 
				FieldSort 
			FROM CMICFields
			WHERE (AsppageName = 'endorsement') AND (FieldName = 'ALL' OR FieldName = @PlanId OR FieldName = @WSPlanState) AND (FieldHO4 = 1) AND (FieldEffDte = @EffDate) AND (FieldText IS NOT NULL) 
				AND FieldDBName IN (SELECT DISTINCT ED_Type FROM AddEnd WHERE (HH_ID = @HH_ID)) 
		ORDER BY FieldSort
		RETURN
	END

	IF @Form = 'HO0006' BEGIN
			SELECT
				'1' as DB_Ind, 
				FieldDBName, 
				FieldLabel, 
				FieldText,
				FieldRequired, 
				FieldSort 
			FROM CMICFields
			WHERE (AsppageName = 'endorsement') AND (FieldName = 'ALL' OR FieldName = @PlanId OR FieldName = @WSPlanState) AND (FieldHO6 = 1) AND (FieldEffDte = @EffDate) AND (FieldText IS NOT NULL) 
				AND FieldDBName IN (SELECT DISTINCT ED_Type FROM AddEnd WHERE (HH_ID = @HH_ID)) 
		ORDER BY FieldSort
		RETURN
	END
END
GO
/****** Object:  StoredProcedure [dbo].[GetEndEffDate]    Script Date: 10/10/2009 16:34:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEndEffDate]
/*  GET ENDORSEMENT EFFECTIVE DATE */

AS
SELECT DISTINCT FieldEffDte
FROM         CMICFields
WHERE     (AsppageName = 'endorsement')
ORDER BY FieldEffDte DESC
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetEndEligibleCount]    Script Date: 10/10/2009 16:34:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEndEligibleCount]
/*  GET A COUNT IF ENDORSMENT OF A CERTAIN TYPE IS APPLICABLE TO THIS FORM AND PLAN */
	(
		@RT_Plan VARCHAR(4),
		@State VARCHAR(2),
		@Form VARCHAR(6),
		@EffDate VARCHAR(8),
		@EndType VARCHAR(10)
	)
AS
DECLARE @WSPlanState VARCHAR(6) 
DECLARE @ED_Cnt INT
SET @WSPlanState = @RT_Plan + @State

IF @Form = 'HO0002' BEGIN
	SELECT    @ED_Cnt = Count(FieldDBName)
	FROM         CMICFields
	WHERE     (FieldDBName = @EndType) AND ((AsppageName = 'endorsement') AND (FieldName = 'ALL' OR FieldName = @RT_Plan OR FieldName = @WSPlanState) AND (FieldHO2 = 1) AND (FieldEffDte = @EffDate) AND (FieldText IS NOT NULL))
END

IF @Form = 'HO0003' BEGIN
	SELECT    @ED_Cnt = Count(FieldDBName)
	FROM         CMICFields
	WHERE     (FieldDBName = @EndType) AND ((AsppageName = 'endorsement') AND (FieldName = 'ALL' OR FieldName = @RT_Plan OR FieldName = @WSPlanState) AND (FieldHO3 = 1) AND (FieldEffDte = @EffDate) AND (FieldText IS NOT NULL))
END

IF @Form = 'HO0004' BEGIN
	SELECT    @ED_Cnt = Count(FieldDBName)
	FROM         CMICFields
	WHERE     (FieldDBName = @EndType) AND ((AsppageName = 'endorsement') AND (FieldName = 'ALL' OR FieldName = @RT_Plan OR FieldName = @WSPlanState) AND (FieldHO4 = 1) AND (FieldEffDte = @EffDate) AND (FieldText IS NOT NULL))
END

IF @Form = 'HO0006' BEGIN
	SELECT    @ED_Cnt = Count(FieldDBName)
	FROM         CMICFields
	WHERE     (FieldDBName = @EndType) AND ((AsppageName = 'endorsement') AND (FieldName = 'ALL' OR FieldName = @RT_Plan OR FieldName = @WSPlanState) AND (FieldHO6 = 1) AND (FieldEffDte = @EffDate) AND (FieldText IS NOT NULL))
END
RETURN @ED_Cnt
GO
/****** Object:  StoredProcedure [dbo].[GetEndList]    Script Date: 10/10/2009 16:34:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEndList]
	(
		@HH_ID INT,
		@PlanId VARCHAR(4),
		@State VARCHAR(2),
		@Form VARCHAR(6),
		@EffDate VARCHAR(8)
	)
AS
DECLARE @WSPlanState VARCHAR(6) 
SET @WSPlanState = @PlanId + @State

	SELECT
		'1' as DB_Ind, 
		FieldDBName, 
		FieldLabel, 
		FieldText, 
		FieldSort 
	FROM CMICFields
	WHERE (AsppageName = 'endorsement') AND (FieldName = 'ALL' OR FieldName = @PlanId OR FieldName = @WSPlanState) AND (FieldHO2 = 1) AND (FieldEffDte = @EffDate) AND (FieldText IS NOT NULL) 
		AND FieldDBName IN (SELECT DISTINCT ED_Type FROM AddEnd WHERE (HH_ID = @HH_ID)) 
UNION ALL 
	SELECT 
		'0' as DB_Ind,
		FieldDBName, 
		FieldLabel, 
		FieldText, 
		FieldSort
	FROM CMICFields
	WHERE (AsppageName = 'endorsement') AND (FieldName = 'ALL' OR FieldName = @PlanId OR FieldName = @WSPlanState) AND (FieldHO2 = 1) AND (FieldEffDte = @EffDate) AND (FieldText IS NOT NULL) 
		AND FieldDBName NOT IN (SELECT DISTINCT ED_Type FROM AddEnd WHERE (HH_ID = @HH_ID)) 
ORDER BY FieldSort
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetAddEndNotValid]    Script Date: 10/10/2009 16:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAddEndNotValid]
/*  GET THE ENDORSEMENTS WHICH ARE NOT VALID FOR THE CURRENT PLAN THIS QUOTE IS RATED UNDER AND DELETE THEM */
	(
		@HH_ID INT,
		@EffDate VARCHAR(8)
	)
AS
DECLARE @State VARCHAR(2)
DECLARE @RT_Plan VARCHAR(4)
DECLARE @RT_FormName VARCHAR(6)
DECLARE @WSPlanState VARCHAR(6) 
SELECT     
	@State = Premises.PM_State, 
	@RT_Plan = Rate.RT_Plan, 
	@RT_FormName = Rate.RT_FormName
FROM Premises INNER JOIN Rate ON Premises.HH_ID = Rate.HH_ID WHERE (Premises.HH_ID = @HH_ID)
SET @WSPlanState = @RT_Plan + @State

IF @RT_FormName = 'HO0002' BEGIN
	SELECT     ED_ID, ED_Type
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND ED_Type NOT IN (SELECT DISTINCT FieldDBName FROM CMICFields
				WHERE (AsppageName = 'endorsement') AND (FieldName = 'ALL' OR FieldName = @RT_Plan OR FieldName = @WSPlanState) AND (FieldHO2 = 1) AND (FieldEffDte = @EffDate) AND (FieldText IS NOT NULL)) 
	ORDER BY ED_Type 
	RETURN
END

IF @RT_FormName = 'HO0003' BEGIN
	SELECT     ED_ID, ED_Type
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND ED_Type NOT IN (SELECT DISTINCT FieldDBName FROM CMICFields
				WHERE (AsppageName = 'endorsement') AND (FieldName = 'ALL' OR FieldName = @RT_Plan OR FieldName = @WSPlanState) AND (FieldHO3 = 1) AND (FieldEffDte = @EffDate) AND (FieldText IS NOT NULL)) 
	ORDER BY ED_Type 
	RETURN
END

IF @RT_FormName = 'HO0004' BEGIN
	SELECT     ED_ID, ED_Type
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND ED_Type NOT IN (SELECT DISTINCT FieldDBName FROM CMICFields
				WHERE (AsppageName = 'endorsement') AND (FieldName = 'ALL' OR FieldName = @RT_Plan OR FieldName = @WSPlanState) AND (FieldHO4 = 1) AND (FieldEffDte = @EffDate) AND (FieldText IS NOT NULL)) 
	ORDER BY ED_Type 
	RETURN
END

IF @RT_FormName = 'HO0006' BEGIN
	SELECT     ED_ID, ED_Type
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND ED_Type NOT IN (SELECT DISTINCT FieldDBName FROM CMICFields
				WHERE (AsppageName = 'endorsement') AND (FieldName = 'ALL' OR FieldName = @RT_Plan OR FieldName = @WSPlanState) AND (FieldHO6 = 1) AND (FieldEffDte = @EffDate) AND (FieldText IS NOT NULL)) 
	ORDER BY ED_Type 
	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[GetClueScoreEffDate]    Script Date: 10/10/2009 16:34:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetClueScoreEffDate]
/*  GET COVERAGE EFFECTIVE DATE */
	(
		@plan varchar(50)		
	)
AS
SELECT DISTINCT FieldEffDte
FROM         CMICFields
WHERE     (AsppageName = 'TIER_RATING') AND (FieldDBName = 'CREDIT_SCORE') AND (FieldName = @plan)
ORDER BY FieldEffDte DESC
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetPosReports]    Script Date: 10/10/2009 16:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPosReports]
/*  GET ALL POS REPORTS FOR THE APPLICATION */
	(
		@HH_ID INT
	)
AS
SELECT  POS.POS_Date, 
		POS.POS_Type, 
		POS.POS_AltKeyType, 
		POS.POS_AltKey, 
		Household.HH_FirstName, 
		Household.HH_LastName,
		Driver.DR_FirstName, 
		Driver.DR_LastName,
		POS.POS_Data
FROM         Driver RIGHT OUTER JOIN POS ON Driver.DR_ID = POS.POS_AltKey FULL OUTER JOIN Household ON POS.HH_ID = Household.HH_ID
WHERE     (POS.HH_ID = @HH_ID)
ORDER BY POS.POS_AltKey 

	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetRemainderofQuote]    Script Date: 10/10/2009 16:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRemainderofQuote]
/* GET ALL FIELDS FOR MISCELLENOUS RECORDS IN A POLICY  */
	(
		@HH_ID int
	)
AS
	
/* *** GET NONDRIVER INFORMATION */	
SELECT     
	Driver.*, 
	RTRIM(ISNULL(RTRIM(DR_FirstName), '') + SPACE(1) + ISNULL(RTRIM(DR_MidName), '') + SPACE(1) + ISNULL(RTRIM(DR_LastName), '') + SPACE(1) + ISNULL(RTRIM(DR_SufName), '')) AS DR_Name
FROM         Driver
WHERE     (HH_ID = @HH_ID)
ORDER BY DR_ID

/* *** GET ADDITIONAL DRIVER INFORMATION */	
SELECT     Lein_AddIns.*
FROM         Lein_AddIns
WHERE (HH_ID = @HH_ID)
ORDER BY LN_ID
GO
/****** Object:  StoredProcedure [dbo].[GetThisDRVName]    Script Date: 10/10/2009 16:34:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetThisDRVName]
	(
		@DR_ID int,
		@DR_Name VARCHAR(65) OUTPUT
	)
AS
SELECT TOP 1 @DR_Name = RTRIM(ISNULL(RTRIM(DR_FirstName), '') + SPACE(1) + ISNULL(RTRIM(DR_MidName), '') + SPACE(1) + ISNULL(RTRIM(DR_LastName), '') + ' ' + ISNULL(RTRIM(DR_SufName), ''))
FROM         Driver
WHERE     (DR_ID = @DR_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[UpdDriver]    Script Date: 10/10/2009 16:34:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdDriver]
/* UPDATE FIELDS FROM DRIVER SCREEN */
(
	@HH_ID INT,
	@DR_ID int,
	@DR_FirstName varchar(20),
	@DR_MidName varchar(10),
	@DR_LastName varchar(20),
	@DR_SufName varchar(10),
	@DR_SSN VARCHAR(9),
	@DR_Sex char(1),
	@DR_Relation char(1),
	@DR_DOBDate DATETIME,
	@DR_LicNum varchar(23),
	@DR_LicState char(2),
	@DR_TStamp Timestamp
)
AS
DECLARE @RowsUpdated INT
	SET NOCOUNT OFF;

BEGIN TRANSACTION

/*  UPDATE REQUIRED FIELDS ON DRIVER SCREEN */
UPDATE Driver SET 
	DR_FirstName = @DR_FirstName,
	DR_MidName = @DR_MidName, 
	DR_LastName = @DR_LastName, 
	DR_SufName = @DR_SufName, 
	DR_SSN = @DR_SSN,
	DR_Sex = @DR_Sex, 
	DR_Relation = @DR_Relation, 
	DR_DOBDate = @DR_DOBDate, 
	DR_LicNum = @DR_LicNum, 
	DR_LicState = @DR_LicState
	WHERE (DR_ID = @DR_ID AND DR_TStamp = @DR_TStamp)
Set @RowsUpdated = @@rowcount 
IF @@Error <> 0 goto PROBLEM

IF @RowsUpdated > 0 
	BEGIN
		/* UPDATE DRIVER COMMENTS IN THE HOUSEHOLD RECORD */
		UPDATE    Household SET HH_LastDateUpd = Getdate() WHERE     (HH_ID = @HH_ID)
		IF @@Error <> 0 goto PROBLEM
		/* CLEAR MVR INDICATOR IF THEY'VE UPDATED A MVR FIELD SO IT WILL BE REORDERED */
		UPDATE Driver SET 
			DR_MVRStatusCode = NULL,
			DR_SDIPComplete = NULL,
			DR_SDIPDate = NULL,
			DR_SDIPMsgs = NULL
			Where (DR_ID = @DR_ID)
	END

COMMIT TRANSACTION
RETURN @RowsUpdated

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[UPDDriverSDIP]    Script Date: 10/10/2009 16:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UPDDriverSDIP]
/*  UPDATE DRIVER SDIP INIDCATOR */
	(
		@DR_ID INT,
		@ClearInfo bit,
		@DR_SDIPComplete bit,
		@DR_SDIPDate DATETIME,
		@DR_MVRStatusCode CHAR(1),
		@DR_SDIPMsgs VARCHAR(1024)
	)

AS
SET ANSI_WARNINGS OFF
IF @ClearInfo = 1 BEGIN
	UPDATE Driver SET
		DR_SDIPComplete = NULL,
		DR_SDIPDate = NULL,
		DR_MVRStatusCode = @DR_MVRStatusCode,
		DR_SDIPMsgs = @DR_SDIPMsgs
	WHERE (DR_ID = @DR_ID)
	/* REMOVE THIS PERSON'S MVR IF ON FILE */
	DELETE FROM POS
		WHERE (POS_AltKey = @DR_ID) AND (POS_Type = 'MVR')
END
ELSE BEGIN
	UPDATE    Driver
	SET
		DR_SDIPComplete = @DR_SDIPComplete, 
		DR_SDIPDate = @DR_SDIPDate,
		DR_MVRStatusCode = @DR_MVRStatusCode,
		DR_SDIPMsgs = @DR_SDIPMsgs
	WHERE     (DR_ID = @DR_ID)
END
RETURN
GO
/****** Object:  StoredProcedure [dbo].[XtractDriver]    Script Date: 10/10/2009 16:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XtractDriver]
/*  EXTRACT RATE RECORDS FOR A BATCH TO BE UPLOADED TO MAINFRAME */
	(
		@BatID INT
	)
AS
SELECT     Driver.* FROM Driver WHERE (HH_ID = @BatID)
ORDER BY DR_ID
RETURN
GO
/****** Object:  StoredProcedure [dbo].[AddDriver]    Script Date: 10/10/2009 16:33:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddDriver]
(
	@HH_ID int,
	@DR_ID int OUTPUT,
	@DR_FirstName varchar(20),
	@DR_MidName varchar(10),
	@DR_LastName varchar(20),
	@DR_SufName varchar(10),
	@DR_SSN VARCHAR(9),
	@DR_Sex char(1),
	@DR_Relation char(1),
	@DR_DOBDate DATETIME,
	@DR_LicNum varchar(23),
	@DR_LicState char(2)
)
AS
DECLARE @RowsUpdated INT
	SET NOCOUNT OFF;

BEGIN TRANSACTION


INSERT INTO Driver(
	HH_ID, 
	DR_FirstName, 
	DR_MidName, 
	DR_LastName, 
	DR_SufName,
	DR_SSN, 
	DR_Sex, 
	DR_Relation, 
	DR_DOBDate,
	DR_LicNum, 
	DR_LicState
	) VALUES (
	@HH_ID, 
	@DR_FirstName, 
	@DR_MidName, 
	@DR_LastName, 
	@DR_SufName,
	@DR_SSN, 
	@DR_Sex, 
	@DR_Relation, 
	@DR_DOBDate,
	@DR_LicNum, 
	@DR_LicState
	)
IF @@Error <> 0 goto PROBLEM

SET @DR_ID = @@IDENTITY

/* UPDATE DRIVER COMMENTS IN THE HOUSEHOLD RECORD */
UPDATE Household SET HH_LastDateUpd  = Getdate() WHERE (HH_ID = @HH_ID)
IF @@Error <> 0 goto PROBLEM

COMMIT TRANSACTION
RETURN @RowsUpdated

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[DelAddEnd]    Script Date: 10/10/2009 16:34:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DelAddEnd]
/* PHYSICAL DELETE OF AN INDIVIDUAL DRIVER RECORD  */
	(
		@HH_ID INT,
		@ED_ID INT
	)
AS
DECLARE @RowsUpdated INT
DECLARE @ED_Type VARCHAR(10)
DECLARE @ED_Cnt INT
DECLARE @DR_Cnt INT
SET @ED_Cnt = 0
SET @DR_Cnt = 0
SET NOCOUNT OFF;

SELECT @ED_Type = ED_Type FROM AddEnd WHERE (ED_ID = @ED_ID) 
IF @ED_Type = 'HO2475' BEGIN
	SELECT @DR_Cnt = COUNT(*) FROM Driver WHERE (HH_ID = @HH_ID)
	SELECT @ED_Cnt = COUNT(*) FROM AddEnd WHERE (HH_ID = @HH_ID) AND (ED_Type = 'HO2475')
END

BEGIN TRANSACTION
DELETE FROM AddEnd
WHERE     (ED_ID = @ED_ID)
Set @RowsUpdated = @@rowcount 
IF @@Error <> 0 goto PROBLEM

/* IF LAST BOAT AND DRIVERS > 0 QUIETLY REMOVE ALL DRIVERS */
IF @RowsUpdated > 0 AND @ED_Type = 'HO2475' AND @ED_Cnt = 1 AND @DR_Cnt > 0 BEGIN
	DELETE FROM Driver WHERE (HH_ID = @HH_ID)
	IF @@Error <> 0 goto PROBLEM
END

/* UPDATE  HOUSEHOLD RECORD */
UPDATE    Household SET HH_LastDateUpd = Getdate() WHERE (HH_ID = @HH_ID)
IF @@Error <> 0 goto PROBLEM

/* REMOVE ALL RATE RECORDS IF WE ARE UPDATING THE HOUSEHOLD RECORD */
EXECUTE DelAllRates @HH_ID
IF @@Error <> 0 goto PROBLEM

COMMIT TRANSACTION
RETURN @RowsUpdated

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[DelDriver]    Script Date: 10/10/2009 16:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DelDriver]
/* PHYSICAL DELETE OF AN INDIVIDUAL DRIVER RECORD  */
	(
		@HH_ID INT,
		@DR_ID int
	)

AS
DELETE FROM Driver WHERE (DR_ID = @DR_ID)

/*  REMOVE THAT DRIVERS MVR REPORT IF ON FILE */
/*
DELETE FROM POS
WHERE     (HH_ID = @HH_ID) AND (POS_AltKey = @DR_ID) AND (POS_Type = 'MVR') */
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetDriverbyDRID]    Script Date: 10/10/2009 16:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDriverbyDRID]
/*  GET DRIVER INFORMATION FOR UPDATE/VIEW SCREEN */
	(
		@DR_ID INT,
		@HH_ID INT
	)
AS

SELECT  
	DR_DOBDate, 
	DR_ID,   
	DR_FirstName, 
	DR_MidName, 
	DR_LastName, 
	DR_SufName,
	DR_SSN,	
	DR_Sex, 
	DR_Relation, 
	DR_LicNum, 
	DR_LicState, 
	DR_TStamp
		FROM Driver WHERE (DR_ID = @DR_ID)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetDriverCount]    Script Date: 10/10/2009 16:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDriverCount]
/*	GET THE NUMBER OF DRIVERS ON THE POLICY */
	(
		@HH_ID INT,
		@Drivers INT OUTPUT
	)
AS
SELECT     
             @Drivers = COUNT(*)
FROM         Driver
WHERE     (HH_ID = @HH_ID)
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetDriverGridData]    Script Date: 10/10/2009 16:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDriverGridData]
/*  GET DRIVER INFORMATION FOR DRIVER DATAGRID */
	(
		@HH_ID INT
	)
AS
SELECT     
	DR_ID, 
	DR_SSN,
	DR_LicNum, 
	DR_LicState, 
	DR_DOBDate, 
	RTRIM(ISNULL(RTRIM(DR_FirstName), '') + SPACE(1) + ISNULL(RTRIM(DR_MidName), '') + SPACE(1) + ISNULL(RTRIM(DR_LastName), '') + ' ' + ISNULL(RTRIM(DR_SufName), '')) AS DR_Name
FROM         Driver
WHERE     (HH_ID = @HH_ID)
ORDER BY DR_ID
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetDRVNames]    Script Date: 10/10/2009 16:34:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDRVNames]
	(
		@HH_ID int
	)
AS

SELECT     
	Driver.DR_ID AS ID, 
	RTRIM(ISNULL(RTRIM(Driver.DR_FirstName), '') + SPACE(1) + ISNULL(RTRIM(Driver.DR_MidName), '') + SPACE(1) + ISNULL(RTRIM(Driver.DR_LastName), '') + ' ' + ISNULL(RTRIM(Driver.DR_SufName), '')) AS Name
FROM Driver RIGHT OUTER JOIN POS ON Driver.DR_ID = POS.POS_AltKey
WHERE     (Driver.HH_ID = @HH_ID) AND (POS.POS_Type = 'MVR')
ORDER BY Driver.DR_ID
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetAllDriverInfo]    Script Date: 10/10/2009 16:34:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllDriverInfo]
/* GETS ALL FIELDS OF DRIVER INFO FOR A POLICY */
	(
		@HH_ID INT
	)

AS
SELECT     Driver.*,
		RTRIM(ISNULL(RTRIM(DR_FirstName), '') + SPACE(1) + ISNULL(RTRIM(DR_MidName), '') + SPACE(1) + ISNULL(RTRIM(DR_LastName), '') + ' ' + ISNULL(RTRIM(DR_SufName), '')) AS DR_Name
FROM         Driver
WHERE     (HH_ID = @HH_ID)
ORDER BY DR_ID
RETURN
GO
/****** Object:  StoredProcedure [dbo].[DelAllDrivers]    Script Date: 10/10/2009 16:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DelAllDrivers]
/*  REMOVE ALL DRIVERS */
	(
		@HH_ID INT
	)
AS
DELETE FROM Driver WHERE (HH_ID = @HH_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[AddExternalQuote]    Script Date: 10/10/2009 16:33:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddExternalQuote]	
	@RqUID VARCHAR(40),
	@HH_ID INT,
	@HH_AgencyID INT,
	@HH_AGTID INT,
	@clientAppOrg VARCHAR(40) = null,
	@clientAppName VARCHAR(40) = null,
	@clientAppVersion VARCHAR(12) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- delete any "work in progress" quotes w/ the same agencyId & rquid
	delete from Household 
	where HH_AgencyID = @HH_AgencyID
		AND HH_ReqStatus = '0'
		AND HH_ID IN (
			select HH_ID from ExternalQuote
			where RqUID = @RqUID
		)

    insert into ExternalQuote (
		RqUID,
		HH_ID,
		HH_AgencyID,
		HH_AGTID,
		requestTime,
		clientAppOrg,
		clientAppName,
		clientAppVersion
	) VALUES (
		@RqUID,
		@HH_ID,
		@HH_AgencyID,
		@HH_AGTID,
		GETDATE(),
		@clientAppOrg,
		@clientAppName,
		@clientAppVersion
	)
END
GO
/****** Object:  StoredProcedure [dbo].[AddBatch]    Script Date: 10/10/2009 16:33:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddBatch]
/*  ADDS A BATCH RECORD AND RETURNS THE BATID IDENTITY KEY */
	(
		@BatID INT OUTPUT
	)
AS
INSERT INTO Extract
                      (Bat_Date)
VALUES     (GETDATE())
SET @BatID = @@IDENTITY
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetBatchList]    Script Date: 10/10/2009 16:34:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetBatchList]
AS
SELECT     TOP 25 
	[Extract].BatID, 
	[Extract].Bat_Date, 
	Household.HH_ID, 
	Household.HH_MFPolNumKey
FROM [Extract] LEFT OUTER JOIN Household ON [Extract].BatID = Household.HH_BatID
ORDER BY [Extract].Bat_Date DESC
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetClueInfo]    Script Date: 10/10/2009 16:34:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetClueInfo]
/*  GET INFORMATION FOR ORDERING OF CLUE PROPERTY */
	(
	@HH_ID INT
	)
AS
SELECT     
	Household.HH_FirstName, 
	Household.HH_MidName, 
	Household.HH_LastName, 
	Household.HH_SufName, 
	Household.HH_CoAppFirstName, 
    Household.HH_CoAppMidName, 
    Household.HH_CoAppLastName, 
    Household.HH_CoAppSufName, 
    Household.HH_HouseNum, 
    Household.HH_AptNum, 
    Household.HH_Addr1, 
    Household.HH_City, 
    Household.HH_State, 
    Household.HH_ZipCode, 
    Household.HH_ZipCodePlus4, 
    Premises.PM_HouseNum, 
    Premises.PM_AptNum, 
    Premises.PM_Addr1, 
    Premises.PM_City, 
    Premises.PM_State, 
    Premises.PM_ZipCode, 
    Premises.PM_ZipCodePlus4, 
    Household.HH_FrmHouseNum, 
    Household.HH_FrmAptNum, 
    Household.HH_FrmAddr1, 
    Household.HH_FrmCity, 
    Household.HH_FrmState, 
    Household.HH_FrmZipCode, 
    Household.HH_FrmZipCodePlus4, 
    Household.HH_PIPolNum, 
    Household.HH_PICarrier, 
    Household.HH_PIPolType, 
    Household.HH_ApDOB, 
    Household.HH_ApSSN, 
    Household.HH_ApGender, 
    Household.HH_CoApDOB, 
    Household.HH_CoApSSN, 
    Household.HH_CoApGender,
    Premises.PM_NonWeatherLoss,
    Premises.PM_ID
FROM         Household LEFT JOIN Premises ON Household.HH_ID = Premises.HH_ID
WHERE     (Household.HH_ID = @HH_ID)
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetApplicantName]    Script Date: 10/10/2009 16:34:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetApplicantName]
/*  GET'S THE APPLICANT AND COAPPLICANT NAMES FOR ADDING DRIVERS */
	(
		@HH_ID INT
	)
AS
SELECT     
	HH_FirstName, 
	HH_MidName, 
	HH_LastName, 
	HH_SufName, 
	HH_CoAppFirstName, 
	HH_CoAppMidName, 
	HH_CoAppLastName, 
	HH_CoAppSufName, 
    HH_AgcySubmit, 
    HH_HouseNum, 
    HH_AptNum, 
    HH_Addr1, 
    HH_Addr2, 
    HH_City,
    HH_State, 
    HH_ZipCode, 
    HH_ZipCodePlus4, 
    HH_PolEffDate, 
    HH_AgcyMoney, 
    HH_AgcyHowPay, 
    HH_AgcyChkNum, 
    HH_MFPolNumKey, 
    HH_EFT, 
    HH_AgcyBound, 
    HH_AgcyBoundDate
FROM         Household WHERE     (HH_ID = @HH_ID)

SELECT     
	LN_FirstName, 
	LN_LastName, 
	LN_Addr1, 
	LN_Addr2, 
	LN_City, 
	LN_State, 
	LN_ZipCode, 
	LN_ZipPlus4, 
	LN_SendBill
FROM Lein_AddIns WHERE (LN_IntrCode = 'M') AND (HH_ID = @HH_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetAgentMessages]    Script Date: 10/10/2009 16:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAgentMessages]
/*  GET INFO NEEDED TO PRINT AGENT MESSAGES */
	(
		@HH_ID INT
	)
AS

SELECT     	HH_AGTMSG, 
            HH_AGCYMSG

FROM         Household
WHERE     (HH_ID = @HH_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetApplicantNameforLife]    Script Date: 10/10/2009 16:34:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetApplicantNameforLife]
/*  THIS PROCEDURE CHECKS FOR ALTERNATE GARAGING PRESENT IF IT IS TRUE IS RETURNED TO CALLER */
	(
		@HH_ID INT,
		@ApplicantName VARCHAR(65) OUTPUT
	)

AS
SELECT @ApplicantName =	RTRIM(ISNULL(RTRIM(HH_FirstName), '') + SPACE(1) + ISNULL(RTRIM(HH_MidName), '') + SPACE(1) + ISNULL(RTRIM(HH_LastName), '') + ' ' + ISNULL(RTRIM(HH_SufName), ''))
FROM   Household WHERE (HH_ID = @HH_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetCoverage]    Script Date: 10/10/2009 16:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCoverage]
/*  GET COVERAGE INFORMATION FROM THE PREMISES SCREEN */
	(
		@HH_ID INT
	)
AS
SELECT     
	RTRIM(ISNULL(RTRIM(Premises.PM_HouseNum), '') + SPACE(1) + ISNULL(RTRIM(Premises.PM_AptNum), '') + SPACE(1) + ISNULL(RTRIM(Premises.PM_Addr1), '')) AS PM_Name, 
	Premises.PM_ID,
	Premises.PM_State, 
	Premises.PM_ZipCode,
 	Premises.PM_DwellUse, 
 	Premises.PM_NumFamily, 
 	Premises.PM_Construction, 
 	Premises.PM_ResType, 
 	Premises.PM_ProtClass, 
 	Premises.PM_YearBuilt, 
    Premises.PM_FireDeptMi,
	Premises.PM_CvgVisited, 
    Premises.PM_Cvg100Percent, 
    Premises.PM_CvgA, 
    Premises.PM_CvgB, 
    Premises.PM_CvgC, 
    Premises.PM_CvgD, 
    Premises.PM_CvgE, 
    Premises.PM_CvgF, 
    Premises.PM_CvgPerils,
    Premises.PM_WindHail, 
    Premises.PM_TStamp, 
    Household.HH_PolEffDate
FROM         Premises INNER JOIN
                      Household ON Premises.HH_ID = Household.HH_ID
WHERE     (Premises.HH_ID = @HH_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[DelQuote]    Script Date: 10/10/2009 16:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DelQuote]
/*  REMOVE A QUOTE FROM THE DATABASE BY HHID KEY */
	(
		@HH_ID INT
	)
AS
DELETE FROM Household
WHERE     (HH_ID = @HH_ID)
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[DelOldQuotes]    Script Date: 10/10/2009 16:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[DelOldQuotes]
	/*  REMOVE OBSOLETE QUOTES */
	(
	@ReturnMsg varchar(1000) output
	)
AS
DELETE FROM Household
WHERE     (HH_ReqStatus = '0') AND (HH_LastDateUpd <= DATEADD(yy, - 3, GETDATE())) AND (HH_ProfID is null)

set @ReturnMsg = 'Deleted ' + cast(@@RowCount as varchar(100)) + ' rows from HOS_QUOTE.'
RETURN
GO
/****** Object:  StoredProcedure [dbo].[DelProfile]    Script Date: 10/10/2009 16:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DelProfile]
/*  REMOVE A PROFILE FROM EXISTANCE */
	(
		@PF_ID INT
	)
AS
DECLARE @HH_ID INT

SELECT TOP 1    @HH_ID = PF_Key
FROM         Profile
WHERE     (PF_ID = @PF_ID)

DELETE Household 
	WHERE (HH_ID = @HH_ID)
DELETE Profile
	WHERE (PF_ID = @PF_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetDRHHforHousehold]    Script Date: 10/10/2009 16:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDRHHforHousehold]
	(
		@HH_ID int
	)
AS
SELECT	HH_AgencyID, 
		HH_AGTID, 
		HH_FirstName, 
		HH_MidName, 
		HH_LastName, 
		HH_SufName, 
		HH_CoAppFirstName, 
		HH_CoAppMidName, 
        HH_CoAppLastName, 
        HH_CoAppSufName, 
        HH_HouseNum, 
        HH_AptNum, 
        HH_Addr1, 
        HH_Addr2, 
        HH_City, 
        HH_State, 
        HH_ZipCode, 
        HH_ZipCodePlus4, 
        HH_PhNum,
        HH_PolEffDate, 
        HH_PolTerm, 
        HH_PolNew, 
        HH_OtherPolicy, 
        HH_MultiPolPrefix, 
        HH_MultiPolNum, 
        HH_FormID,
        HH_PlanID,
        HH_Remarks,
        HH_ScrubOverride, 
        HH_ScrubReturnCode,
        HH_TStamp
FROM         Household
WHERE     (HH_ID = @HH_ID)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetForExtract]    Script Date: 10/10/2009 16:34:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetForExtract]
/*  GET A LIST OF AMENDMENTS READY FOR THE EXTRACT PROCESS */
AS
	SELECT     HH_ID, 
			   HH_AgencyID, 
			   HH_AGTID, 
				RTRIM(ISNULL(RTRIM(HH_FirstName), '') + SPACE(1) + ISNULL(RTRIM(HH_MidName), '') + SPACE(1) + ISNULL(RTRIM(HH_LastName), '') + ' ' + ISNULL(RTRIM(HH_SufName), '')) AS Name, 
				HH_PlanID, 
				HH_CompID, 
				HH_AgcySubmit, 
				HH_AgcyBound, 
	            HH_AgcyBoundDate, 
				HH_ReqStatus, 
				HH_MFPolNumKey
	FROM         Household
	WHERE     (HH_ReqStatus = 'F') 
	ORDER BY HH_AgcyBound DESC, HH_ID
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetHHQuoteSubmit]    Script Date: 10/10/2009 16:34:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetHHQuoteSubmit]
/*  GET INFO NEEDED TO SUBMIT AMENDMENT */
	(
		@HH_ID INT
	)
AS
	
/*  GET STATE */
SELECT PM_State, PM_TotFireLoss, PM_CvgA, PM_CvgE
FROM   Premises WHERE (HH_ID = @HH_ID)
	
/*  GET HOUSEHOLD INFO   */	
SELECT     
	Household.HH_AgcySubmit, 
	Household.HH_AgntName, 
	Household.HH_AgcyBoundDate, 
	Household.HH_AGTMSG, 
	Household.HH_AGCYMSG, 
    Household.HH_AgencyID, 
    Household.HH_AGTID, 
    Household.HH_AgcyMoney, 
    Household.HH_AgcyHowPay, 
    Household.HH_AgcyChkNum, 
    Household.HH_AgcyMemo, 
    Household.HH_AgcyBound,
    Household.HH_MortBill,
    Rate.RT_TotPremium
FROM Household INNER JOIN Rate ON Household.HH_ID = Rate.HH_ID
WHERE     (Household.HH_ID = @HH_ID)

SELECT     COUNT(*) AS MortBillCNT
FROM         Lein_AddIns
WHERE     (HH_ID = @HH_ID) AND (LN_SendBill = 1) AND (LN_IntrCode = 'M')
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetMailAddress]    Script Date: 10/10/2009 16:34:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetMailAddress]
/*  GET MAILING ADDRESS FROM HOUSEHOLD SCREEN FOR PREMISES SCREEN */
	(
		@HH_ID INT
	)
AS
SELECT
	HH_HouseNum, 
	HH_AptNum,
	HH_Addr1, 
	HH_Addr2, 
	HH_City, 
	HH_State, 
	HH_ZipCode, 
	HH_ZipCodePlus4,
	HH_ScrubOverride,
	HH_ScrubReturnCode
FROM Household WHERE (HH_ID = @HH_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetHHInfo]    Script Date: 10/10/2009 16:34:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetHHInfo]
/* GET HH INFO TO POPULATE THE SOBJ OBJECT IN THE QUOTE_GETLIST SCREEN */
	(
		@HH_ID INT
	)
AS
SELECT     
	Household.HH_PolEffDate, 
	Household.HH_PolTerm, 
	Household.HH_PolNew, 
	Household.HH_ReqStatus, 
	Household.HH_MFPolNumKey, 
    Household.HH_MFPolNum, 
    Household.HH_EFT, 
    Household.HH_LockPlan, 
    Household.HH_FormID, 
    Household.HH_PlanID, 
    Household.HH_CompID, 
    Household.HH_AgencyID, 
    Household.HH_AGTID, 
    Premises.PM_State
FROM Household LEFT OUTER JOIN Premises ON Household.HH_ID = Premises.HH_ID
WHERE     (Household.HH_ID = @HH_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetIRPMInfo]    Script Date: 10/10/2009 16:34:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetIRPMInfo]
/*  GET INFO FOR IRPM LIKE DISPLAY */
	(
		@HH_ID INT
	)
AS
SELECT 
	HH_CLADte, 
	HH_CLALstOrdDte, 
	HH_CLAStatus, 
	HH_AppClueSCR, 
	HH_PolEffDate, 
	HH_PlanID,
	HH_TStamp
FROM  Household WHERE (HH_ID = @HH_ID)
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetPlanParms]    Script Date: 10/10/2009 16:34:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPlanParms]
/*  GET ALL FIELDS THAT DETERMINE THE PLAN */
	(
		@HH_ID INT
	)
AS
SELECT     
	Household.HH_FormID, 
	Household.HH_PlanID, 
	Household.HH_LockPlan, 
	Premises.PM_DwellUse, 
	Premises.PM_NumFamily, 
	Premises.PM_ProtClass, 
	Premises.PM_ResType, 
    Premises.PM_FireDivUnit, 
    Premises.PM_PriHeatType, 
    Premises.PM_FireDeptMi, 
    Premises.PM_SmkDetector, 
    Premises.PM_Cvg100Percent,
    Premises.PM_CvgA,
    Premises.PM_State
FROM         Household INNER JOIN Premises ON Household.HH_ID = Premises.HH_ID
WHERE     (Household.HH_ID = @HH_ID)
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetClueOrderInfo]    Script Date: 10/10/2009 16:34:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetClueOrderInfo]
/*  GET INFORMATION TO AUTOMATICALLY ORDER CLUE */
	(
		@HH_ID INT
	)

AS
SELECT
	HH_CLADte, 
    HH_CLALstOrdDte, 
    HH_CLAStatus, 
    HH_AppClueSCR
FROM    Household WHERE  (HH_ID = @HH_ID)

SELECT  
	HH_FirstName, 
	HH_MidName, 
	HH_LastName, 
	HH_SufName, 
	HH_HouseNum, 
	HH_AptNum, 
	HH_Addr1, 
	HH_Addr2, 
	HH_City, 
	HH_State, 
    HH_ZipCode, 
    HH_ZipCodePlus4, 
    HH_FrmHouseNum, 
    HH_FrmAptNum, 
    HH_FrmAddr1, 
    HH_FrmState, 
    HH_FrmCity, 
    HH_FrmZipCode, 
    HH_FrmZipCodePlus4, 
    HH_PIPolNum, 
    HH_PICarrier, 
    HH_PIPolType, 
    HH_ApDOB, 
    HH_ApSSN, 
    HH_ApOccupation, 
    HH_ApGender
FROM    Household WHERE  (HH_ID = @HH_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[AddRate]    Script Date: 10/10/2009 16:34:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddRate]
/*  SAVE RATE RECORD */
	(
		@HH_ID INT, 
		@RT_ID INT OUTPUT,
		@RT_Company VARCHAR(3), 
		@RT_Plan VARCHAR(4), 
		@RT_FormName VARCHAR(6), 
		@RT_Terr VARCHAR(3), 
		@RT_County VARCHAR(3), 
		@RT_CountyName VARCHAR(50), 
		@RT_EqZone VARCHAR(3), 
		@RT_CvgA VARCHAR(9), 
		@RT_CvgB VARCHAR(9), 
		@RT_CvgC VARCHAR(9), 
		@RT_CvgD VARCHAR(9), 
		@RT_CvgE VARCHAR(9), 
		@RT_CvgF VARCHAR(9), 
		@RT_CvgPerils VARCHAR(9), 
		@RT_CvgWindHail VARCHAR(9), 
		@RT_CvgARnd BIT, 
		@RT_CvgBRnd BIT, 
		@RT_CvgCRnd BIT, 
		@RT_CvgDRnd BIT, 
		@RT_CvgERnd BIT, 
		@RT_CvgFRnd BIT, 
		@RT_CvgPerilsRnd BIT, 
		@RT_CvgACost MONEY, 
		@RT_CvgCCost MONEY, 
		@RT_CvgDCost MONEY, 
		@RT_CvgECost MONEY, 
		@RT_CvgFCost MONEY, 
		@RT_CvgPerilsCost MONEY, 
		@RT_EmpResCost MONEY, 
		@RT_AddlResCost MONEY, 
		@RT_WoodStoveChg MONEY, 
		@RT_FireDeptChg MONEY, 
		@RT_NewHomeCrdt MONEY, 
		@RT_SecondaryCrdt MONEY, 
		@RT_FAlarmCrdt MONEY, 
		@RT_UpdWireCrdt MONEY, 
		@RT_UpdHeatCrdt MONEY, 
		@RT_BaseCost MONEY, 
		@RT_AllEndCost MONEY, 
		@RT_TotPremium MONEY, 
		@RT_OffExpires DATETIME, 
		@RT_DateRated DATETIME,
		@RT_DiffDeductible3 INT,
		@RT_DiffDeductible4	INT,
		@RT_DiffPremium3 MONEY,
		@RT_DiffPremium4 MONEY
	)
AS
INSERT INTO Rate(
	HH_ID, 
	RT_Company, 
	RT_Plan, 
	RT_FormName, 
	RT_Terr, 
	RT_County, 
	RT_CountyName, 
	RT_EqZone, 
	RT_CvgA, 
	RT_CvgB, 
	RT_CvgC, 
	RT_CvgD, 
    RT_CvgE, 
    RT_CvgF, 
    RT_CvgPerils, 
	RT_CvgWindHail,
    RT_CvgARnd, 
    RT_CvgBRnd, 
    RT_CvgCRnd, 
    RT_CvgDRnd, 
    RT_CvgERnd, 
    RT_CvgFRnd, 
    RT_CvgPerilsRnd, 
    RT_CvgACost, 
    RT_CvgCCost, 
    RT_CvgDCost, 
    RT_CvgECost, 
    RT_CvgFCost, 
    RT_CvgPerilsCost,
    RT_EmpResCost, 
    RT_AddlResCost, 
    RT_WoodStoveChg, 
    RT_FireDeptChg, 
    RT_NewHomeCrdt, 
    RT_SecondaryCrdt, 
    RT_FAlarmCrdt, 
    RT_UpdWireCrdt, 
    RT_UpdHeatCrdt, 
    RT_BaseCost, 
    RT_AllEndCost, 
    RT_TotPremium, 
    RT_OffExpires, 
    RT_DateRated,
    RT_DiffDeductible3,
    RT_DiffDeductible4,
    RT_DiffPremium3,
    RT_DiffPremium4
)VALUES(
    @HH_ID, 
    @RT_Company, 
    @RT_Plan, 
    @RT_FormName, 
    @RT_Terr, 
    @RT_County, 
    @RT_CountyName, 
    @RT_EqZone, 
    @RT_CvgA, 
    @RT_CvgB, 
    @RT_CvgC, 
    @RT_CvgD, 
    @RT_CvgE, 
    @RT_CvgF, 
    @RT_CvgPerils, 
    @RT_CvgWindHail,
    @RT_CvgARnd, 
    @RT_CvgBRnd, 
    @RT_CvgCRnd, 
    @RT_CvgDRnd, 
    @RT_CvgERnd, 
    @RT_CvgFRnd, 
    @RT_CvgPerilsRnd, 
    @RT_CvgACost, 
    @RT_CvgCCost, 
    @RT_CvgDCost, 
    @RT_CvgECost, 
    @RT_CvgFCost,
    @RT_CvgPerilsCost, 
    @RT_EmpResCost, 
    @RT_AddlResCost, 
    @RT_WoodStoveChg, 
    @RT_FireDeptChg, 
    @RT_NewHomeCrdt, 
    @RT_SecondaryCrdt, 
    @RT_FAlarmCrdt, 
    @RT_UpdWireCrdt, 
    @RT_UpdHeatCrdt, 
    @RT_BaseCost, 
    @RT_AllEndCost, 
    @RT_TotPremium, 
    @RT_OffExpires, 
    @RT_DateRated,
    @RT_DiffDeductible3,
    @RT_DiffDeductible4,
    @RT_DiffPremium3,
    @RT_DiffPremium4
)
SET @RT_ID = @@IDENTITY
UPDATE Household SET HH_LastDateUpd  = Getdate() WHERE (HH_ID = @HH_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[AddPremises]    Script Date: 10/10/2009 16:34:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddPremises]
/*  ADD A PREMISES RECORD TO THE DATABASE */
	(
		@HH_ID INT,
		@HH_PlanID VARCHAR(3),
		@PM_HouseNum VARCHAR(10), 
		@PM_AptNum VARCHAR(10), 
		@PM_Addr1 VARCHAR(30), 
		@PM_Addr2 VARCHAR(30), 
		@PM_City VARCHAR(30), 
		@PM_State VARCHAR(2), 
		@PM_ZipCode VARCHAR(5), 
		@PM_ZipCodePlus4 VARCHAR(4), 
		@PM_LglDesc1 VARCHAR(30), 
		@PM_LglDesc2 VARCHAR(30), 
        @PM_DwellUse CHAR(1), 
        @PM_NumFamily CHAR(1), 
        @PM_EmpResidence BIT, 
        @PM_EmpNumber VARCHAR(2), 
        @PM_FarmOp BIT, 
        @PM_FarmAcres VARCHAR(3), 
        @PM_Construction CHAR(1), 
        @PM_ProtClass VARCHAR(2), 
        @PM_YearBuilt VARCHAR(4), 
        @PM_ResType CHAR(1), 
        @PM_FireDivUnit VARCHAR(3), 
        @PM_FireDeptSrvLmt VARCHAR(4), 
        @PM_FireDeptMi VARCHAR(4), 
        @PM_FireHydtPresent BIT, 
        @PM_SmkDetector BIT, 
        @PM_BrglrAlarm CHAR(1), 
        @PM_FireAlarm CHAR(1), 
        @PM_WoodStove BIT, 
        @PM_BuilderRisk BIT, 
        @PM_UpdWireYr VARCHAR(4), 
        @PM_UpdHeatYr VARCHAR(4), 
        @PM_Business BIT, 
        @PM_BusinessDesc VARCHAR(69), 
        @PM_FireHydtFt VARCHAR(9), 
        @PM_InCityLimits BIT, 
        @PM_FireDstrctName VARCHAR(15), 
        @PM_PriHeatType CHAR(1), 
        @PM_HeatSysAge VARCHAR(2), 
        @PM_RoofType VARCHAR(15), 
        @PM_RoofAge VARCHAR(2), 
        @PM_RoofCond BIT, 
        @PM_MHManufacturer VARCHAR(30), 
        @PM_MHSerialNum VARCHAR(15), 
        @PM_MHModel VARCHAR(30), 
        @PM_MHLen VARCHAR(3), 
        @PM_MHWidth VARCHAR(3), 
        @PM_MHMovingSoon BIT, 
        @PM_MHDamaged BIT, 
        @PM_MHGotThermostat BIT, 
        @PM_MHFoundation CHAR(1), 
        @PM_MHTieDowns CHAR(1), 
        @PM_Comments VARCHAR(69),
        @PM_LogHome BIT,
        @PM_RolledRoof BIT,
        @PM_ShakeSiding BIT,
        @PM_Foundation BIT
	)
AS

Declare @ident INT
SET NOCOUNT OFF;

BEGIN TRANSACTION

	INSERT INTO Premises(
			HH_ID, 
			PM_HouseNum,
			PM_AptNum,
			PM_Addr1, 
			PM_Addr2, 
			PM_City, 
			PM_State, 
			PM_ZipCode, 
			PM_ZipCodePlus4, 
			PM_LglDesc1, 
			PM_LglDesc2, 
			PM_DwellUse, 
			PM_NumFamily, 
			PM_EmpResidence, 
			PM_EmpNumber, 
			PM_FarmOp, 
			PM_FarmAcres, 
			PM_Construction, 
			PM_ProtClass, 
			PM_YearBuilt, 
			PM_ResType, 
			PM_FireDivUnit, 
			PM_FireDeptSrvLmt, 
			PM_FireDeptMi, 
			PM_FireHydtPresent,
			PM_SmkDetector, 
			PM_BrglrAlarm, 
			PM_FireAlarm, 
			PM_WoodStove, 
			PM_BuilderRisk,
			PM_UpdWireYr, 
			PM_UpdHeatYr, 
			PM_Business, 
			PM_BusinessDesc, 
			PM_FireHydtFt, 
			PM_InCityLimits, 
			PM_FireDstrctName,
			PM_PriHeatType, 
			PM_HeatSysAge, 
			PM_RoofType, 
			PM_RoofAge, 
			PM_RoofCond, 
			PM_MHManufacturer, 
			PM_MHSerialNum, 
			PM_MHModel, 
			PM_MHLen, 
			PM_MHWidth, 
			PM_MHMovingSoon, 
			PM_MHDamaged, 
			PM_MHGotThermostat, 
			PM_MHFoundation, 
			PM_MHTieDowns, 
			PM_Comments,
			PM_LogHome,
			PM_RolledRoof,
			PM_ShakeSiding,
			PM_Foundation
		)VALUES(
			@HH_ID, 
			@PM_HouseNum,
			@PM_AptNum,
			@PM_Addr1, 
			@PM_Addr2, 
			@PM_City, 
			@PM_State, 
			@PM_ZipCode, 
			@PM_ZipCodePlus4, 
			@PM_LglDesc1, 
			@PM_LglDesc2, 
			@PM_DwellUse, 
			@PM_NumFamily, 
			@PM_EmpResidence, 
			@PM_EmpNumber, 
			@PM_FarmOp, 
			@PM_FarmAcres, 
			@PM_Construction, 
			@PM_ProtClass, 
			@PM_YearBuilt, 
			@PM_ResType, 
			@PM_FireDivUnit, 
			@PM_FireDeptSrvLmt, 
			@PM_FireDeptMi, 
			@PM_FireHydtPresent, 
			@PM_SmkDetector, 
			@PM_BrglrAlarm, 
			@PM_FireAlarm, 
			@PM_WoodStove,
			@PM_BuilderRisk,
			@PM_UpdWireYr, 
			@PM_UpdHeatYr, 
			@PM_Business, 
			@PM_BusinessDesc, 
			@PM_FireHydtFt, 
			@PM_InCityLimits, 
			@PM_FireDstrctName, 
			@PM_PriHeatType, 
			@PM_HeatSysAge, 
			@PM_RoofType, 
			@PM_RoofAge, 
			@PM_RoofCond, 
			@PM_MHManufacturer, 
			@PM_MHSerialNum, 
			@PM_MHModel, 
			@PM_MHLen, 
			@PM_MHWidth, 
			@PM_MHMovingSoon, 
			@PM_MHDamaged, 
			@PM_MHGotThermostat, 
			@PM_MHFoundation, 
			@PM_MHTieDowns, 
			@PM_Comments,
			@PM_LogHome,
			@PM_RolledRoof,
			@PM_ShakeSiding,
			@PM_Foundation
		)
	IF @@Error <> 0 goto PROBLEM
	Set @ident=@@IDENTITY
	
	UPDATE    Household SET	
		HH_PlanID = @HH_PlanID,
		HH_LastDateUpd  = Getdate() WHERE (HH_ID = @HH_ID)
	IF @@Error <> 0 goto PROBLEM
	
	/* REMOVE ALL RATE RECORDS IF WE ARE UPDATING THE HOUSEHOLD RECORD */
	EXECUTE DelAllRates @HH_ID
	IF @@Error <> 0 goto PROBLEM
	
COMMIT TRANSACTION
RETURN @ident

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[AddUpdPremises]    Script Date: 10/10/2009 16:34:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddUpdPremises]
/*  ADD OR UPDATE PREMISES INFORMATION */
(
		@HH_ID INT,
		@HH_PlanID VARCHAR(3), 
		@PM_ID INT,
		@PM_HouseNum VARCHAR(10),
		@PM_AptNum VARCHAR(10),
		@PM_Addr1 VARCHAR(30), 
		@PM_Addr2 VARCHAR(30), 
		@PM_City VARCHAR(30), 
		@PM_State VARCHAR(2), 
		@PM_ZipCode VARCHAR(5), 
		@PM_ZipCodePlus4 VARCHAR(4), 
		@PM_LglDesc1 VARCHAR(30), 
		@PM_LglDesc2 VARCHAR(30), 
        @PM_DwellUse CHAR(1), 
        @PM_NumFamily CHAR(1), 
        @PM_EmpResidence BIT, 
        @PM_EmpNumber VARCHAR(2), 
        @PM_FarmOp BIT, 
        @PM_FarmAcres VARCHAR(3), 
        @PM_Construction CHAR(1), 
        @PM_ProtClass VARCHAR(2), 
        @PM_YearBuilt VARCHAR(4), 
        @PM_ResType CHAR(1), 
        @PM_FireDivUnit VARCHAR(3), 
        @PM_FireDeptSrvLmt VARCHAR(4), 
        @PM_FireDeptMi VARCHAR(4), 
        @PM_FireHydtPresent BIT, 
        @PM_SmkDetector BIT, 
        @PM_BrglrAlarm CHAR(1), 
        @PM_FireAlarm CHAR(1), 
        @PM_WoodStove BIT, 
        @PM_BuilderRisk BIT, 
        @PM_UpdWireYr VARCHAR(4), 
        @PM_UpdHeatYr VARCHAR(4), 
        @PM_Business BIT, 
        @PM_BusinessDesc VARCHAR(69), 
        @PM_FireHydtFt VARCHAR(9), 
        @PM_InCityLimits BIT, 
        @PM_FireDstrctName VARCHAR(15), 
        @PM_PriHeatType CHAR(1), 
        @PM_HeatSysAge VARCHAR(2), 
        @PM_RoofType VARCHAR(15), 
        @PM_RoofAge VARCHAR(2), 
        @PM_RoofCond BIT, 
        @PM_MHManufacturer VARCHAR(30), 
        @PM_MHSerialNum VARCHAR(15), 
        @PM_MHModel VARCHAR(30), 
        @PM_MHLen VARCHAR(3), 
        @PM_MHWidth VARCHAR(3), 
        @PM_MHMovingSoon BIT, 
        @PM_MHDamaged BIT, 
        @PM_MHGotThermostat BIT, 
        @PM_MHFoundation CHAR(1), 
        @PM_MHTieDowns CHAR(1), 
        @PM_Comments VARCHAR(69),
        @PM_TStamp TIMESTAMP,
        @Upd_Optional BIT,
		@Upd_Required BIT,
		@PM_LogHome BIT,
		@PM_RolledRoof BIT,
		@PM_ShakeSiding BIT,
		@PM_Foundation BIT,
		@PM_NonWeatherLoss BIT
	)
AS
DECLARE @RowsUpdated INT
DECLARE @PremisesCount INT
SET NOCOUNT OFF;
SELECT @PremisesCount = COUNT(*) FROM Premises WHERE(HH_ID = @HH_ID)

BEGIN TRANSACTION
IF @PremisesCount>0 BEGIN
	/* NO PREMISES ID IT'S A LOGIC ERROR OF CONCURRENT ADD/UPDATE BY 2 USERS */
	IF @PM_ID = 0 GOTO PROBLEM
	
/* WE ARE UPDATING THE RECORD */
	IF @Upd_Required = 1 BEGIN
		IF @PM_NonWeatherLoss IS NOT NULL BEGIN
			UPDATE Premises
			SET PM_NonWeatherLoss = @PM_NonWeatherLoss
			WHERE (PM_ID = @PM_ID)
			GOTO FINISH
		END

		UPDATE    Premises SET	  
			PM_HouseNum = @PM_HouseNum,
			PM_AptNum = @PM_AptNum,
			PM_Addr1 = @PM_Addr1, 
			PM_Addr2 = @PM_Addr2, 
			PM_City = @PM_City, 
			PM_State = @PM_State, 
			PM_ZipCode = @PM_ZipCode, 
			PM_ZipCodePlus4 = @PM_ZipCodePlus4, 
			PM_LglDesc1 = @PM_LglDesc1, 
			PM_LglDesc2 = @PM_LglDesc2, 
			PM_DwellUse = @PM_DwellUse, 
			PM_NumFamily = @PM_NumFamily, 
			PM_EmpResidence = @PM_EmpResidence, 
			PM_EmpNumber = @PM_EmpNumber, 
			PM_FarmOp = @PM_FarmOp, 
			PM_FarmAcres = @PM_FarmAcres, 
			PM_Construction = @PM_Construction, 
			PM_ProtClass = @PM_ProtClass, 
			PM_YearBuilt = @PM_YearBuilt, 
			PM_ResType = @PM_ResType, 
			PM_FireDivUnit = @PM_FireDivUnit, 
			PM_FireDeptSrvLmt = @PM_FireDeptSrvLmt, 
			PM_FireDeptMi = @PM_FireDeptMi, 
			PM_SmkDetector = @PM_SmkDetector, 
			PM_BrglrAlarm = @PM_BrglrAlarm, 
			PM_FireAlarm = @PM_FireAlarm, 
			PM_WoodStove = @PM_WoodStove, 
			PM_BuilderRisk = @PM_BuilderRisk,
			PM_UpdWireYr = @PM_UpdWireYr, 
			PM_UpdHeatYr = @PM_UpdHeatYr, 
			PM_PriHeatType = @PM_PriHeatType,
			PM_Business = @PM_Business, 
			PM_BusinessDesc = @PM_BusinessDesc, 
 			PM_Comments = @PM_Comments,
 			PM_LogHome = @PM_LogHome,
 			PM_RolledRoof = @PM_RolledRoof,
 			PM_ShakeSiding = @PM_ShakeSiding,
 			PM_Foundation = @PM_Foundation
		WHERE     (PM_ID = @PM_ID) AND (PM_TStamp = @PM_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
		IF @RowsUpdated<>1 goto PROBLEM


		IF @RowsUpdated > 0 BEGIN
			EXECUTE DelAllRates @HH_ID
			IF @@Error <> 0 goto PROBLEM

			/* REMOVE BUILDER RISK ENDORSMENTS IF BUILDER RISK IS DECLINED */
			IF @PM_BuilderRisk = 0 BEGIN
				DELETE FROM AddEnd WHERE (HH_ID = @HH_ID) AND ((ED_Type = 'F004') OR (ED_Type = 'F070'))
				IF @@Error <> 0 goto PROBLEM
			END

			/*  UPDATE OPTIONAL FIELDS ON PREMISES SCREEN */
			IF @Upd_Optional = 1 BEGIN	
				UPDATE    Premises SET	             
					PM_FireHydtPresent = @PM_FireHydtPresent, 
					PM_FireHydtFt = @PM_FireHydtFt, 
					PM_InCityLimits = @PM_InCityLimits, 
					PM_FireDstrctName = @PM_FireDstrctName, 
					PM_HeatSysAge = @PM_HeatSysAge, 
					PM_RoofType = @PM_RoofType, 
					PM_RoofAge = @PM_RoofAge, 
					PM_RoofCond = @PM_RoofCond, 
					PM_MHManufacturer = @PM_MHManufacturer, 
					PM_MHSerialNum = @PM_MHSerialNum, 
					PM_MHModel = @PM_MHModel, 
					PM_MHLen = @PM_MHLen, 
					PM_MHWidth = @PM_MHWidth, 
					PM_MHMovingSoon = @PM_MHMovingSoon, 
					PM_MHDamaged = @PM_MHDamaged, 
					PM_MHGotThermostat = @PM_MHGotThermostat, 
					PM_MHFoundation = @PM_MHFoundation, 
					PM_MHTieDowns = @PM_MHTieDowns
					WHERE (PM_ID = @PM_ID)	
			END
		END
	END
END 
ELSE BEGIN
/* WE ARE ADDING THE RECORD */
	INSERT INTO Premises(
			HH_ID, 
			PM_HouseNum,
			PM_AptNum,
			PM_Addr1, 
			PM_Addr2, 
			PM_City, 
			PM_State, 
			PM_ZipCode, 
			PM_ZipCodePlus4, 
			PM_LglDesc1, 
			PM_LglDesc2, 
			PM_DwellUse, 
			PM_NumFamily, 
			PM_EmpResidence, 
			PM_EmpNumber, 
			PM_FarmOp, 
			PM_FarmAcres, 
			PM_Construction, 
			PM_ProtClass, 
			PM_YearBuilt, 
			PM_ResType, 
			PM_FireDivUnit, 
			PM_FireDeptSrvLmt, 
			PM_FireDeptMi, 
			PM_FireHydtPresent,
			PM_SmkDetector, 
			PM_BrglrAlarm, 
			PM_FireAlarm, 
			PM_WoodStove, 
			PM_BuilderRisk,
			PM_UpdWireYr, 
			PM_UpdHeatYr, 
			PM_Business, 
			PM_BusinessDesc, 
			PM_FireHydtFt, 
			PM_InCityLimits, 
			PM_FireDstrctName,
			PM_PriHeatType, 
			PM_HeatSysAge, 
			PM_RoofType, 
			PM_RoofAge, 
			PM_RoofCond, 
			PM_MHManufacturer, 
			PM_MHSerialNum, 
			PM_MHModel, 
			PM_MHLen, 
			PM_MHWidth, 
			PM_MHMovingSoon, 
			PM_MHDamaged, 
			PM_MHGotThermostat, 
			PM_MHFoundation, 
			PM_MHTieDowns, 
			PM_Comments,
			PM_LogHome,
			PM_RolledRoof,
			PM_ShakeSiding,
			PM_Foundation,
			PM_NonWeatherLoss
		)VALUES(
			@HH_ID, 
			@PM_HouseNum,
			@PM_AptNum,
			@PM_Addr1, 
			@PM_Addr2, 
			@PM_City, 
			@PM_State, 
			@PM_ZipCode, 
			@PM_ZipCodePlus4, 
			@PM_LglDesc1, 
			@PM_LglDesc2, 
			@PM_DwellUse, 
			@PM_NumFamily, 
			@PM_EmpResidence, 
			@PM_EmpNumber, 
			@PM_FarmOp, 
			@PM_FarmAcres, 
			@PM_Construction, 
			@PM_ProtClass, 
			@PM_YearBuilt, 
			@PM_ResType, 
			@PM_FireDivUnit, 
			@PM_FireDeptSrvLmt, 
			@PM_FireDeptMi, 
			@PM_FireHydtPresent, 
			@PM_SmkDetector, 
			@PM_BrglrAlarm, 
			@PM_FireAlarm, 
			@PM_WoodStove,
			@PM_BuilderRisk,
			@PM_UpdWireYr, 
			@PM_UpdHeatYr, 
			@PM_Business, 
			@PM_BusinessDesc, 
			@PM_FireHydtFt, 
			@PM_InCityLimits, 
			@PM_FireDstrctName, 
			@PM_PriHeatType, 
			@PM_HeatSysAge, 
			@PM_RoofType, 
			@PM_RoofAge, 
			@PM_RoofCond, 
			@PM_MHManufacturer, 
			@PM_MHSerialNum, 
			@PM_MHModel, 
			@PM_MHLen, 
			@PM_MHWidth, 
			@PM_MHMovingSoon, 
			@PM_MHDamaged, 
			@PM_MHGotThermostat, 
			@PM_MHFoundation, 
			@PM_MHTieDowns, 
			@PM_Comments,
			@PM_LogHome,
			@PM_RolledRoof,
			@PM_ShakeSiding,
			@PM_Foundation,
			@PM_NonWeatherLoss
		)
	IF @@Error <> 0 goto PROBLEM
	Set @RowsUpdated=@@IDENTITY
END

/* UPDATE THE HOUSEHOLD RECORD */
UPDATE    Household SET HH_PlanID = @HH_PlanID, HH_LastDateUpd = Getdate() WHERE (HH_ID = @HH_ID)
IF @@Error <> 0 goto PROBLEM	

FINISH:
COMMIT TRANSACTION
RETURN @RowsUpdated

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN  -1
GO
/****** Object:  StoredProcedure [dbo].[AddEndNoScreen]    Script Date: 10/10/2009 16:33:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddEndNoScreen]
/*  ADD ENDORSEMENTS WHICH HAVE NO SCREENS ATTACHED */
	(
		@HH_ID INT,
		@ED_Type VARCHAR(10),
		@ED_PlanID VARCHAR(3),
		@ED_FormId VARCHAR(6),
		@ED_PremBearing BIT
		
	)
AS
Declare @ident int

INSERT INTO AddEnd(
	HH_ID, 
	ED_Type, 
	ED_PlanID, 
	ED_FormId,
	ED_PremBearing
)VALUES(
	@HH_ID, 
	@ED_Type, 
	@ED_PlanID, 
	@ED_FormId,
	@ED_PremBearing
)
IF @@Error <> 0 goto PROBLEM
Set @ident=@@IDENTITY

UPDATE    Household SET	HH_LastDateUpd  = Getdate() WHERE (HH_ID = @HH_ID)
IF @@Error <> 0 goto PROBLEM
/* REMOVE ALL RATE RECORDS IF WE ARE UPDATING THE HOUSEHOLD RECORD */
EXECUTE DelAllRates @HH_ID
IF @@Error <> 0 goto PROBLEM

RETURN @ident

PROBLEM:
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[AddHousehold]    Script Date: 10/10/2009 16:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddHousehold]
/*  ADD A NEW HOUSEHOLD RECORD */

	(
	@HH_FirstName VARCHAR(20),
	@HH_MidName VARCHAR(10),
	@HH_LastName VARCHAR(20),
	@HH_SufName VARCHAR(5), 
	@HH_CoAppFirstName VARCHAR(20), 
	@HH_CoAppMidName VARCHAR(10), 
	@HH_CoAppLastName VARCHAR(20),
	@HH_CoAppSufName VARCHAR(5),
	@HH_HouseNum VARCHAR(10), 
	@HH_AptNum VARCHAR(10), 
	@HH_Addr1 VARCHAR(30), 
	@HH_Addr2 VARCHAR(30), 
	@HH_City VARCHAR(30), 
	@HH_State CHAR(2), 
	@HH_ZipCode CHAR(5), 
	@HH_ZipCodePlus4 CHAR(4), 
	@HH_PhNum VARCHAR(15),
    @HH_PolEffDate DATETIME, 
	@HH_PolTerm CHAR(2), 
	@HH_PolNew BIT, 
	@HH_AgencyID INT, 
	@HH_AGTID INT,
	@HH_OtherPolicy BIT,
	@HH_MultiPolPrefix VARCHAR(4),
	@HH_MultiPolNum VARCHAR(10),
	@HH_PlanID VARCHAR(3),
	@HH_FormID VARCHAR(6),
	@HH_Remarks VARCHAR(69)
	)
AS

Declare @ident int

INSERT INTO Household(
	HH_FirstName, 
	HH_MidName, 
	HH_LastName, 
	HH_SufName, 
	HH_CoAppFirstName, 
	HH_CoAppMidName, 
	HH_CoAppLastName, 
	HH_CoAppSufName, 
    HH_HouseNum, 
	HH_AptNum, 
	HH_Addr1, 
	HH_Addr2, 
	HH_City, 
	HH_State, 
	HH_ZipCode, 
	HH_ZipCodePlus4,
	HH_PhNum,
	HH_PolEffDate, 
	HH_PolTerm, 
	HH_PolNew, 
    HH_AgencyID, 
	HH_AGTID,
	HH_OtherPolicy, 
	HH_MultiPolPrefix, 
	HH_MultiPolNum, 
	HH_FormID,
	HH_PlanID,
	HH_Remarks,
	HH_LastDateUpd)
VALUES (
	@HH_FirstName, 
	@HH_MidName, 
	@HH_LastName, 
	@HH_SufName, 
	@HH_CoAppFirstName, 
	@HH_CoAppMidName, 
	@HH_CoAppLastName, 
    @HH_CoAppSufName, 
	@HH_HouseNum, 
	@HH_AptNum, 
	@HH_Addr1, 
	@HH_Addr2, 
	@HH_City, 
	@HH_State, 
	@HH_ZipCode, 
	@HH_ZipCodePlus4, 
	@HH_PhNum,
    @HH_PolEffDate, 
	@HH_PolTerm, 
	@HH_PolNew, 
	@HH_AgencyID, 
	@HH_AGTID,
	@HH_OtherPolicy, 
	@HH_MultiPolPrefix, 
	@HH_MultiPolNum, 
	@HH_FormID,
	@HH_PlanID,
	@HH_Remarks,
	Getdate())
Set @ident=@@IDENTITY
RETURN @ident
GO
/****** Object:  Trigger [Household_UpdTrigger]    Script Date: 10/10/2009 16:37:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Household_UpdTrigger]
ON [dbo].[Household]
FOR  UPDATE 
AS

declare @bit int ,
	@field int ,
	@char int ,
	@fieldname varchar(128) ,
	@TableName varchar(128) ,
	@PKCols varchar(1000) ,
	@sql varchar(2000)
 
 select @TableName = 'Household'
 
 select * into #ins from inserted
 select * into #del from deleted
 
 -- Get primary key columns for full outer join
 select @PKCols = coalesce(@PKCols + ' and', ' on') + ' i.' + c.COLUMN_NAME + ' = d.' + c.COLUMN_NAME
 from INFORMATION_SCHEMA.TABLE_CONSTRAINTS pk ,
  INFORMATION_SCHEMA.KEY_COLUMN_USAGE c
 where  pk.TABLE_NAME = @TableName
 and CONSTRAINT_TYPE = 'PRIMARY KEY'
 and c.TABLE_NAME = pk.TABLE_NAME
 and c.CONSTRAINT_NAME = pk.CONSTRAINT_NAME
 
 if @PKCols is null
 begin
  raiserror('no PK on table %s', 16, -1, @TableName)
  return
 end
 
 select @field = 0
 while @field < (select max(colid) from syscolumns where id = (object_id('Household')))
 begin
  select @field = @field + 1
  select @bit = (@field - 1 )% 8 + 1
  select @bit = power(2,@bit - 1)
  select @char = ((@field - 1) / 8) + 1
  if substring(COLUMNS_UPDATED(),@char, 1) & @bit > 0
  begin
   select @fieldname = name from syscolumns where colid = @field and id = object_id('Household')
   select @sql =   'insert Audit (TableName, FieldName, OldValue, NewValue, HH_ID)'
   select @sql = @sql +  ' select ''' + @TableName + ''''
   select @sql = @sql +  ',''' + @fieldname + ''''
   select @sql = @sql +  ',convert(varchar(1000),d.' + @fieldname + ')'
   select @sql = @sql +  ',convert(varchar(1000),i.' + @fieldname + ') , i.HH_ID'
   select @sql = @sql +  ' from #ins i full outer join #del d'
   select @sql = @sql +  @PKCols
   select @sql = @sql +  ' where i.' + @fieldname + ' <> d.' + @fieldname 
   select @sql = @sql +  ' or (i.' + @fieldname + ' is null and  d.' + @fieldname + ' is not null)' 
   select @sql = @sql +  ' or (i.' + @fieldname + ' is not null and  d.' + @fieldname + ' is null)'
   
   exec (@sql)
  end
 end
GO
/****** Object:  StoredProcedure [dbo].[AddHouseholdfromProfile]    Script Date: 10/10/2009 16:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddHouseholdfromProfile]
/*  USED TO COPY A PROFILE TO A NEW PROFILE */
( 
	@PFID INT,
	@PFHHID INT,
	@AGTID  INT,
	@AGENCY INT 
)
AS
DECLARE @ident INT
SET NOCOUNT ON
INSERT INTO dbo.Household (
	   HH_BatID          ,
       HH_ProfID         ,
       HH_AgencyID       ,
       HH_AGTID          ,
       HH_FirstName      ,
       HH_MidName        ,
       HH_LastName       ,
       HH_SufName        ,
       HH_CoAppFirstName ,
       HH_CoAppMidName   ,
       HH_CoAppLastName  ,
       HH_CoAppSufName   ,
       HH_HouseNum       ,
       HH_AptNum         ,
       HH_Addr1          ,
       HH_Addr2          ,
       HH_City           ,
       HH_State          ,
       HH_ZipCode        ,
       HH_ZipCodePlus4   ,
       HH_PhNum          ,
       HH_PolEffDate     ,
       HH_PolExpDate     ,
       HH_LastDateUpd    ,
       HH_HOPrtDate      ,
       HH_ReqDate        ,
       HH_AgcyBoundDate  ,
       HH_PolTerm        ,
       HH_PolNew         ,
       HH_OtherPolicy    ,
       HH_MultiPolPrefix ,
       HH_MultiPolNum    ,
       HH_ReqStatus      ,
       HH_LockPlan       ,
       HH_FormID         ,
       HH_PlanID         ,
       HH_CompID         ,
       HH_AgcySubmit     ,
       HH_AgntName       ,
       HH_AgcyMoney      ,
       HH_AgcyHowPay     ,
       HH_AgcyChkNum     ,
       HH_AgcyMemo       ,
       HH_AgcyBound      ,
       HH_MortBill       ,
       HH_MFPolNumKey    ,
       HH_MFCorp         ,
       HH_MFComp         ,
       HH_MFPrefixA      ,
       HH_MFPrefixB      ,
       HH_MFPolNum       ,
       HH_MFDecNum       ,
       HH_MFPolNew       ,
       HH_EFT            ,
       HH_FrmHouseNum    ,
       HH_FrmAptNum      ,
       HH_FrmAddr1       ,
       HH_FrmCity        ,
       HH_FrmState       ,
       HH_FrmZipCode     ,
       HH_FrmZipCodePlus4,
       HH_PIPolNum       ,
       HH_PICarrier      ,
       HH_PIPolType      ,
       HH_ApDOB          ,
       HH_ApSSN          ,
       HH_ApOccupation   ,
       HH_ApGender       ,
       HH_CoApDOB        ,
       HH_CoApSSN        ,
       HH_CoApOccupation ,
       HH_CoApGender     ,
       HH_MVRDte         ,
       HH_CLUDte         ,
       HH_E2ValDte       ,
       HH_CLADte         ,
       HH_CLALstOrdDte   ,
       HH_CLAStatus      ,
       HH_AppClueSCR     ,
       HH_ScrubOverride  ,
       HH_ScrubReturnCode,
       HH_Remarks        ,
       HH_AGTMSG         ,
       HH_AGCYMSG                       
)
SELECT HH_BatID          ,
       HH_ProfID         ,
       HH_AgencyID       ,
       HH_AGTID          ,
       HH_FirstName      ,
       HH_MidName        ,
       HH_LastName       ,
       HH_SufName        ,
       HH_CoAppFirstName ,
       HH_CoAppMidName   ,
       HH_CoAppLastName  ,
       HH_CoAppSufName   ,
       HH_HouseNum       ,
       HH_AptNum         ,
       HH_Addr1          ,
       HH_Addr2          ,
       HH_City           ,
       HH_State          ,
       HH_ZipCode        ,
       HH_ZipCodePlus4   ,
       HH_PhNum          ,
       HH_PolEffDate     ,
       HH_PolExpDate     ,
       HH_LastDateUpd    ,
       HH_HOPrtDate      ,
       HH_ReqDate        ,
       HH_AgcyBoundDate  ,
       HH_PolTerm        ,
       HH_PolNew         ,
       HH_OtherPolicy    ,
       HH_MultiPolPrefix ,
       HH_MultiPolNum    ,
       HH_ReqStatus      ,
       HH_LockPlan       ,
       HH_FormID         ,
       HH_PlanID         ,
       HH_CompID         ,
       HH_AgcySubmit     ,
       HH_AgntName       ,
       HH_AgcyMoney      ,
       HH_AgcyHowPay     ,
       HH_AgcyChkNum     ,
       HH_AgcyMemo       ,
       HH_AgcyBound      ,
       HH_MortBill       ,
       HH_MFPolNumKey    ,
       HH_MFCorp         ,
       HH_MFComp         ,
       HH_MFPrefixA      ,
       HH_MFPrefixB      ,
       HH_MFPolNum       ,
       HH_MFDecNum       ,
       HH_MFPolNew       ,
       HH_EFT            ,
       HH_FrmHouseNum    ,
       HH_FrmAptNum      ,
       HH_FrmAddr1       ,
       HH_FrmCity        ,
       HH_FrmState       ,
       HH_FrmZipCode     ,
       HH_FrmZipCodePlus4,
       HH_PIPolNum       ,
       HH_PICarrier      ,
       HH_PIPolType      ,
       HH_ApDOB          ,
       HH_ApSSN          ,
       HH_ApOccupation   ,
       HH_ApGender       ,
       HH_CoApDOB        ,
       HH_CoApSSN        ,
       HH_CoApOccupation ,
       HH_CoApGender     ,
       HH_MVRDte         ,
       HH_CLUDte         ,
       HH_E2ValDte       ,
       HH_CLADte         ,
       HH_CLALstOrdDte   ,
       HH_CLAStatus      ,
       HH_AppClueSCR     ,
       HH_ScrubOverride  ,
       HH_ScrubReturnCode,
       HH_Remarks        ,
       HH_AGTMSG         ,
       HH_AGCYMSG
FROM   Household
WHERE  HH_ID = @PFHHID
    
SET @ident=@@IDENTITY

UPDATE dbo.Household
SET    HH_AGTID    = @AGTID ,
       HH_AgencyID = @AGENCY,
       HH_ProfID   = @PFID
WHERE  HH_ID       = @ident
RETURN @ident
GO
/****** Object:  StoredProcedure [dbo].[AddHouseholdProfile]    Script Date: 10/10/2009 16:34:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddHouseholdProfile]
/*  ADD A BLANK HOUSEHOLD FOR PROFILE ADDITION */
	(
		@HH_ID INT OUTPUT,
		@HH_AgencyID INT,
		@HH_AGTID INT,
		@HH_ProfID INT
	)
AS
INSERT INTO Household
                      (HH_AgencyID, HH_AGTID, HH_ProfID)
VALUES     (@HH_AgencyID, @HH_AGTID, @HH_ProfID)
SET @HH_ID = @@IDENTITY
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[AddLien]    Script Date: 10/10/2009 16:34:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddLien]
/* ADD LIEN HOLDER ADDITIONAL INSURED RECORDS */
(
	@LN_ID int OUTPUT,
	@HH_ID int,
	@LN_IntrCode char(1),
	@LN_FirstName varchar(30),
	@LN_LastName varchar(30),
	@LN_Addr1 varchar(30),
	@LN_Addr2 varchar(30),
	@LN_City varchar(30),
	@LN_State varchar(2),
	@LN_ZipCode char(5),
	@LN_ZipPlus4 char(4),
	@LN_LoanNum varchar(20),
	@LN_SeqNum varchar(3),
	@LN_SendBill BIT
	
)
AS
DECLARE @RowsUpdated INT
	SET NOCOUNT OFF;
BEGIN TRANSACTION

INSERT INTO Lein_AddIns(
		HH_ID, 
		LN_IntrCode, 
		LN_FirstName, 
		LN_LastName, 
		LN_Addr1, 
		LN_Addr2, 
		LN_City, 
		LN_State, 
		LN_ZipCode, 
		LN_ZipPlus4, 
		LN_LoanNum, 
		LN_SeqNum,
		LN_SendBill
	) VALUES (
		@HH_ID, 
		@LN_IntrCode, 
		@LN_FirstName,
		@LN_LastName, 
 		@LN_Addr1, 
		@LN_Addr2, 
		@LN_City, 
		@LN_State, 
		@LN_ZipCode, 
		@LN_ZipPlus4, 
		@LN_LoanNum, 
		@LN_SeqNum,
		@LN_SendBill

	)
IF @@Error <> 0 goto PROBLEM

SET @LN_ID = @@IDENTITY

/* UPDATE LATE DATE UPDATED */
UPDATE Household SET HH_LastDateUpd  = Getdate() WHERE (HH_ID = @HH_ID)
IF @@Error <> 0 goto PROBLEM

	/* REMOVE ALL RATE RECORDS IF WE ARE UPDATING THE HOUSEHOLD RECORD */
	EXECUTE DelAllRates @HH_ID
IF @@Error <> 0 goto PROBLEM

COMMIT TRANSACTION
RETURN

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[XtractHHIDfromBatchID]    Script Date: 10/10/2009 16:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XtractHHIDfromBatchID]
/*  GET A LIST OF HHID'S IN A PARTICULAR BATCH */
	(
		@BatID INT
	)
AS
SELECT     HH_ID
FROM         Household
WHERE     (HH_BatID = @BatID)
ORDER BY HH_ID
RETURN
GO
/****** Object:  StoredProcedure [dbo].[XtractHousehold]    Script Date: 10/10/2009 16:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XtractHousehold]
/*  EXTRACT HOUSEHOLD RECORDS FOR A BATCH TO BE UPLOADED TO MAINFRAME */
	(
		@BatID INT
	)
AS
SELECT     Household.*
FROM         Household
WHERE     (HH_ID = @BatID)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[AddAddEnd]    Script Date: 10/10/2009 16:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddAddEnd]
/*  ADD OPTIONAL ENDORSEMENT RECORD */
	(
		@HH_ID INT,
		@ED_Type VARCHAR(10),
		@ED_PlanID VARCHAR(3),
		@ED_FormId VARCHAR(6),
		@ED_Description1 VARCHAR(512),
		@ED_Description2 VARCHAR(255),
		@ED_Description3 VARCHAR(255),
		@ED_Name1 VARCHAR(30),
		@ED_Name2 VARCHAR(30),
		@ED_Addr1 VARCHAR(30),
		@ED_Addr2 VARCHAR(30),
		@ED_City VARCHAR(30),
		@ED_State VARCHAR(2),
		@ED_ZipCode VARCHAR(5),
		@ED_ZipPlus4 VARCHAR(4),
		@ED_LiabLmt VARCHAR(10),
		@ED_CvrLmt VARCHAR(10),
		@ED_NumFamily CHAR(1),
		@ED_BusinessType CHAR(1),
		@ED_FarmOponPremises BIT,
		@ED_VeneerExclude BIT,
		@ED_BusinessonPremises BIT,
		@ED_IncLiability BIT,
		@ED_PPropType CHAR(1),
		@ED_Loc2Name1 VARCHAR(30),
		@ED_Loc2Name2 VARCHAR(30),
		@ED_Loc2Addr1 VARCHAR(30),
		@ED_Loc2Addr2 VARCHAR(30),
		@ED_Loc2City VARCHAR(30),
		@ED_Loc2State VARCHAR(2),
		@ED_Loc2ZipCode VARCHAR(5),
		@ED_Loc2ZipPlus4 VARCHAR(4),
		@ED_Loc2LiabLmt VARCHAR(10),
		@ED_465Money VARCHAR(5),
		@ED_465Securities VARCHAR(5),
		@ED_465Jewelery VARCHAR(5),
		@ED_465Firearms VARCHAR(5),
		@ED_465Silverware VARCHAR(5),
		@ED_465ElectIn VARCHAR(5),
		@ED_465ElectOut VARCHAR(5),
		@ED_435LiabLmtPremises VARCHAR(10),
		@ED_DedPercent VARCHAR(4),
		@ED_DedAmt VARCHAR(5),
		@ED_EffDate DATETIME,
		@ED_456ReplValPercent VARCHAR(2),
		@ED_2475WCType CHAR(1),
		@ED_2475WCYear VARCHAR(4),
		@ED_2475WCMake VARCHAR(20),
		@ED_2475WCModel VARCHAR(12),
		@ED_2475WCLength VARCHAR(3),
		@ED_2475WCSerial VARCHAR(20),
		@ED_2475WCMAYear VARCHAR(4),
		@ED_2475WCMAMake VARCHAR(20),
		@ED_2475WCMAModel VARCHAR(12),
		@ED_2475WCMAHP VARCHAR(3),
		@ED_2475WCMASerial VARCHAR(20),
		@ED_2475WCMBYear VARCHAR(4),
		@ED_2475WCMBMake VARCHAR(20),
		@ED_2475WCMBModel VARCHAR(12),
		@ED_2475WCMBHP VARCHAR(3),
		@ED_2475WCMBSerial VARCHAR(20),
		@ED_0461AppraisalDate DATETIME,
		@ED_SeqNum VARCHAR(3),
		@ED_Cost MONEY,
		@ED_SSN CHAR(9) = NULL,
		@ED_DOB DATETIME = NULL
	)
AS
Declare @ident int

SET NOCOUNT OFF;

BEGIN TRANSACTION

	IF @ED_Type = 'F070' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId, 
			ED_CvrLmt
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_CvrLmt
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END


	IF @ED_Type = 'HO0461' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId, 
			ED_Description1, 
			ED_CvrLmt, 
			ED_PPropType,
			ED_0461AppraisalDate
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_Description1, 
			@ED_CvrLmt, 
			@ED_PPropType,
			@ED_0461AppraisalDate
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END

	IF @ED_Type = 'MH0403' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId, 
			ED_EffDate, 
			ED_DedAmt 
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_EffDate, 
			@ED_DedAmt 
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END

	IF @ED_Type = 'MH0406' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId, 
			ED_LiabLmt
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_LiabLmt
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END

	IF @ED_Type = 'HO0412' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId, 
			ED_LiabLmt
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_LiabLmt
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END

	IF @ED_Type = 'HO0435' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId, 
			ED_435LiabLmtPremises,
			ED_Addr1,
			ED_Addr2,
			ED_City,
			ED_State,
			ED_ZipCode,
			ED_ZipPlus4,
			ED_LiabLmt,
			ED_Loc2Addr1,
			ED_Loc2Addr2,
			ED_Loc2City,
			ED_Loc2State,
			ED_Loc2ZipCode,
			ED_Loc2ZipPlus4,
			ED_Loc2LiabLmt
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_435LiabLmtPremises,
			@ED_Addr1,
			@ED_Addr2,
			@ED_City,
			@ED_State,
			@ED_ZipCode,
			@ED_ZipPlus4,
			@ED_LiabLmt,
			@ED_Loc2Addr1,
			@ED_Loc2Addr2,
			@ED_Loc2City,
			@ED_Loc2State,
			@ED_Loc2ZipCode,
			@ED_Loc2ZipPlus4,
			@ED_Loc2LiabLmt	
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END
	
	IF @ED_Type = 'HO0441' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId, 
			ED_Name1,
			ED_Name2,
			ED_Addr1,
			ED_Addr2,
			ED_City,
			ED_State,
			ED_ZipCode,
			ED_ZipPlus4,
			ED_Description1,			
			ED_SSN,
			ED_DOB,
			ED_PremBearing
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_Name1,
			@ED_Name2,
			@ED_Addr1,
			@ED_Addr2,
			@ED_City,
			@ED_State,
			@ED_ZipCode,
			@ED_ZipPlus4,
			@ED_Description1,
			@ED_SSN,
			@ED_DOB,
			0
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END

	IF @ED_Type = 'HO0442' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId, 
			ED_BusinessonPremises,
			ED_Description1,
			ED_Description2,
			ED_CvrLmt
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_BusinessonPremises,
			@ED_Description1,
			@ED_Description2,
			@ED_CvrLmt
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END	

	IF @ED_Type = 'HO0449' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId, 
			ED_Addr1,
			ED_Addr2,
			ED_City,
			ED_State,
			ED_ZipCode,
			ED_ZipPlus4,
			ED_LiabLmt,
			ED_Loc2Addr1,
			ED_Loc2Addr2,
			ED_Loc2City,
			ED_Loc2State,
			ED_Loc2ZipCode,
			ED_Loc2ZipPlus4,
			ED_Loc2LiabLmt
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_Addr1,
			@ED_Addr2,
			@ED_City,
			@ED_State,
			@ED_ZipCode,
			@ED_ZipPlus4,
			@ED_LiabLmt,
			@ED_Loc2Addr1,
			@ED_Loc2Addr2,
			@ED_Loc2City,
			@ED_Loc2State,
			@ED_Loc2ZipCode,
			@ED_Loc2ZipPlus4,
			@ED_Loc2LiabLmt	
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END
	
	IF @ED_Type = 'HO0451' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId, 
			ED_LiabLmt
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_LiabLmt
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END
	
	IF @ED_Type = 'HO0453' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId, 
			ED_LiabLmt
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_LiabLmt
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END	
	
	IF @ED_Type = 'HO0454' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId, 
			ED_DedPercent,
			ED_VeneerExclude
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_DedPercent,
			@ED_VeneerExclude
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END		
	
	IF @ED_Type = 'HO0456' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId, 
			ED_DedPercent
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_DedPercent
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END			
	
	IF @ED_Type = 'HO0465' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId, 
			ED_465Money,
			ED_465Securities,
			ED_465Jewelery,
			ED_465Firearms,
			ED_465Silverware,
			ED_465ElectIn,
			ED_465ElectOut
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_465Money,
			@ED_465Securities,
			@ED_465Jewelery,
			@ED_465Firearms,
			@ED_465Silverware,
			@ED_465ElectIn,
			@ED_465ElectOut
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END	
	
	IF @ED_Type = 'HO2413' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId, 
			ED_CvrLmt
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_CvrLmt
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END		
	
	IF @ED_Type = 'HO2443' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId, 
			ED_Addr1,
			ED_Addr2,
			ED_City,
			ED_State,
			ED_ZipCode,
			ED_ZipPlus4,
			ED_Description1
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_Addr1,
			@ED_Addr2,
			@ED_City,
			@ED_State,
			@ED_ZipCode,
			@ED_ZipPlus4,
			@ED_Description1
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END

	IF @ED_Type = 'HO2471' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId, 
			ED_Name1,
			ED_BusinessType,
			ED_IncLiability
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_Name1,
			@ED_BusinessType,
			@ED_IncLiability
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END

	IF @ED_Type = 'ADDLRES' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId, 
			ED_Addr1,
			ED_Addr2,
			ED_City,
			ED_State,
			ED_ZipCode,
			ED_ZipPlus4,
			ED_NumFamily,
			ED_PremBearing
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_Addr1,
			@ED_Addr2,
			@ED_City,
			@ED_State,
			@ED_ZipCode,
			@ED_ZipPlus4,
			@ED_NumFamily,
			0
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END

	IF @ED_Type = 'HO0528C' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId, 
			ED_CvrLmt
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_CvrLmt			
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END
	
	IF @ED_Type = 'HO0440' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_Description1, 
			ED_LiabLmt
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_Description1, 
			@ED_LiabLmt
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END

	IF @ED_Type = 'HO0448' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_Description1, 
			ED_LiabLmt
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_Description1, 
			@ED_LiabLmt
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END

	IF @ED_Type = 'HO0450' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId, 
			ED_Addr1,
			ED_Addr2,
			ED_City,
			ED_State,
			ED_ZipCode,
			ED_ZipPlus4,
			ED_LiabLmt
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_Addr1,
			@ED_Addr2,
			@ED_City,
			@ED_State,
			@ED_ZipCode,
			@ED_ZipPlus4,
			@ED_LiabLmt
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END
	
	IF @ED_Type = 'HO0492' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId,
			ED_Description1, 
			ED_Addr1,
			ED_Addr2,
			ED_City,
			ED_State,
			ED_ZipCode,
			ED_ZipPlus4,
			ED_LiabLmt
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_Description1,
			@ED_Addr1,
			@ED_Addr2,
			@ED_City,
			@ED_State,
			@ED_ZipCode,
			@ED_ZipPlus4,
			@ED_LiabLmt
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END
	
	IF @ED_Type = 'HO2464' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId,
			ED_Description1,
			ED_Description2 
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_Description1,
			@ED_Description2 
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END
	
	IF @ED_Type = 'HO2470' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId,
			ED_Addr1,
			ED_Addr2,
			ED_City,
			ED_State,
			ED_ZipCode,
			ED_ZipPlus4,
			ED_NumFamily
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_Addr1,
			@ED_Addr2,
			@ED_City,
			@ED_State,
			@ED_ZipCode,
			@ED_ZipPlus4,
			@ED_NumFamily
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END	
	
	IF @ED_Type = 'HO2472' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId,
			ED_Description1, 
			ED_Addr1,
			ED_Addr2,
			ED_City,
			ED_State,
			ED_ZipCode,
			ED_ZipPlus4,
			ED_FarmOponPremises
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_Description1,
			@ED_Addr1,
			@ED_Addr2,
			@ED_City,
			@ED_State,
			@ED_ZipCode,
			@ED_ZipPlus4,
			@ED_FarmOponPremises
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END
	
	IF @ED_Type = 'HO2475' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId,
			ED_2475WCType,
			ED_2475WCYear,
			ED_2475WCMake,
			ED_2475WCModel,
			ED_2475WCLength,
			ED_2475WCSerial,
			ED_2475WCMAYear,
			ED_2475WCMAMake,
			ED_2475WCMAModel,
			ED_2475WCMAHP,
			ED_2475WCMASerial,
			ED_2475WCMBYear,
			ED_2475WCMBMake,
			ED_2475WCMBModel,
			ED_2475WCMBHP,
			ED_2475WCMBSerial
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId,
			@ED_2475WCType,
			@ED_2475WCYear,
			@ED_2475WCMake,
			@ED_2475WCModel,
			@ED_2475WCLength,
			@ED_2475WCSerial,
			@ED_2475WCMAYear,
			@ED_2475WCMAMake,
			@ED_2475WCMAModel,
			@ED_2475WCMAHP,
			@ED_2475WCMASerial,
			@ED_2475WCMBYear,
			@ED_2475WCMBMake,
			@ED_2475WCMBModel,
			@ED_2475WCMBHP,
			@ED_2475WCMBSerial 

		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END	
	
	IF @ED_Type = 'HO0410' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId, 
			ED_Name1,
			ED_Name2,
			ED_Description1,
			ED_Description2,
			ED_Addr1,
			ED_Addr2,
			ED_City,
			ED_State,
			ED_ZipCode,
			ED_ZipPlus4,
			ED_Loc2Name1,
			ED_Loc2Name2,
			ED_Loc2Addr1,
			ED_Loc2Addr2,
			ED_Loc2City,
			ED_Loc2State,
			ED_Loc2ZipCode,
			ED_Loc2ZipPlus4,
			ED_PremBearing
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId,
			@ED_Name1,
			@ED_Name2,
			@ED_Description1,
			@ED_Description2,
			@ED_Addr1,
			@ED_Addr2,
			@ED_City,
			@ED_State,
			@ED_ZipCode,
			@ED_ZipPlus4,
			@ED_Loc2Name1,
			@ED_Loc2Name2,
			@ED_Loc2Addr1,
			@ED_Loc2Addr2,
			@ED_Loc2City,
			@ED_Loc2State,
			@ED_Loc2ZipCode,
			@ED_Loc2ZipPlus4,
			0
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END	
	
		IF @ED_Type = 'HO0416' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId, 
			ED_Cost,
			ED_PremBearing
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_Cost,
			0
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
	END
		
	
	UPDATE    Household SET	HH_LastDateUpd  = Getdate() WHERE (HH_ID = @HH_ID)
	IF @@Error <> 0 goto PROBLEM

	/* REMOVE ALL RATE RECORDS IF WE ARE UPDATING THE HOUSEHOLD RECORD */
	EXECUTE DelAllRates @HH_ID
	IF @@Error <> 0 goto PROBLEM
	
COMMIT TRANSACTION
RETURN @ident

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[UpdE2Value]    Script Date: 10/10/2009 16:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdE2Value]
/*  UPDATE E2 VALUE INDICATOR */
	(
		@HH_ID INT
	)
AS
UPDATE Household SET HH_E2ValDte  = Getdate() WHERE (HH_ID = @HH_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[UpdPriorAddress]    Script Date: 10/10/2009 16:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdPriorAddress]
/*  UPDATE PRIOR ADDRESS FROM CLUE SCREEN */
	(
		@HH_ID INT,
		@HH_PICarrier VARCHAR(30),
		@HH_PIPolNum VARCHAR(20),
		@HH_PIPolType CHAR(1),
		@HH_FrmHouseNum VARCHAR(10),
		@HH_FrmAptNum VARCHAR(10),
		@HH_FrmAddr1 VARCHAR(30),
		@HH_FrmCity VARCHAR(30),
		@HH_FrmState VARCHAR(2),
		@HH_FrmZipCode VARCHAR(5),
		@HH_FrmZipCodePlus4 VARCHAR(4),
		@HH_ApGender CHAR(1),
		@HH_ApSSN VARCHAR(9),
		@HH_ApDOB DATETIME
	)
AS
UPDATE  Household
SET       
	HH_PICarrier = @HH_PICarrier, 
	HH_PIPolNum = @HH_PIPolNum, 
	HH_PIPolType = @HH_PIPolType, 
	HH_FrmHouseNum = @HH_FrmHouseNum, 
	HH_FrmAptNum = @HH_FrmAptNum, 
	HH_FrmAddr1 = @HH_FrmAddr1, 
    HH_FrmCity = @HH_FrmCity, 
    HH_FrmState = @HH_FrmState, 
    HH_FrmZipCode = @HH_FrmZipCode, 
    HH_FrmZipCodePlus4 = @HH_FrmZipCodePlus4, 
    HH_ApGender = @HH_ApGender, 
    HH_ApSSN = @HH_ApSSN,
    HH_ApDOB = @HH_ApDOB 
WHERE  (HH_ID = @HH_ID)
GO
/****** Object:  StoredProcedure [dbo].[UpdRateCostsHH]    Script Date: 10/10/2009 16:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdRateCostsHH]
/*  UPDATE APPLICANT INFO AFTER MQSERIES RATING */
	(
		@HH_ID INT,
		@HH_PolExpDate DATETIME
	)

AS
UPDATE  Household
	SET
		HH_PolExpDate = @HH_PolExpDate,
		HH_LastDateUpd = GETDATE()
WHERE     (HH_ID = @HH_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[UpdStampQuote]    Script Date: 10/10/2009 16:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdStampQuote]
/* UPDATE THE AMENDMENT WITH A BATCHID AND UPDATE THE STATUS TO 'P' FOR PRINTED */
(
	@HH_ID int, 
	@batid int
)
AS
UPDATE dbo.Household
SET 
	HH_BatID = @batid,
	HH_ReqStatus = 'P',
	HH_HOPrtDate = GETDATE()
WHERE HH_ID = @HH_ID
RETURN
GO
/****** Object:  StoredProcedure [dbo].[UpdUnderWriterInfo]    Script Date: 10/10/2009 16:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdUnderWriterInfo]
/*  UPDATE UNDERWRITER INFORMATION IN PREMISES TABLE */
	(
		@HH_ID INT,
		@HH_PlanID VARCHAR(3), 
		@PM_ID INT,
		@PM_UWComments VARCHAR(69), 
		@PM_PurchaseDate DATETIME,
		@PM_PoolFenceHT VARCHAR(2), 
		@PM_PetBreed VARCHAR(20), 
		@PM_OccupiedDaily BIT, 
		@PM_AccessAllTimes BIT, 
		@PM_Pets BIT, 
		@PM_Fireplace BIT, 
		@PM_FireCleanAnnually BIT, 
		@PM_Felony BIT, 
		@PM_Bankruptcy BIT, 
		@PM_Pool BIT, 
		@PM_PoolinGround BIT, 
		@PM_PoolFenced BIT, 
		@PM_PoolDVBoard BIT, 
		@PM_PoolSlide BIT, 
		@PM_Trampoline BIT, 
		@PM_TrampolineNet BIT,
		@PM_TotFireLoss BIT,
		@PM_WaterLoss BIT,
        @PM_TStamp TIMESTAMP,
        @HH_ApDOB DATETIME, 
		@HH_ApSSN VARCHAR(9), 
		@HH_ApOccupation VARCHAR(30), 
		@HH_CoApDOB DATETIME, 
		@HH_CoApSSN VARCHAR(9), 
		@HH_CoApOccupation VARCHAR(30), 
        @Upd_Optional BIT,
		@Upd_Required BIT,
		@PM_AllWeatherRoad BIT,
		@PM_ForSale BIT,
		@PM_AnimalBreeding BIT
	)

AS
DECLARE @RowsUpdated INT
SET NOCOUNT OFF;
BEGIN TRANSACTION

/*  UPDATE REQUIRED FIELDS */
IF @Upd_Required = 1 BEGIN
	UPDATE Premises SET
		PM_UWComments = @PM_UWComments,
		PM_PurchaseDate = @PM_PurchaseDate, 
		PM_PoolFenceHT = @PM_PoolFenceHT, 
		PM_PetBreed = @PM_PetBreed, 
		PM_OccupiedDaily = @PM_OccupiedDaily, 
		PM_AccessAllTimes = @PM_AccessAllTimes, 
		PM_Pets = @PM_Pets, 
		PM_Fireplace = @PM_Fireplace, 
		PM_FireCleanAnnually = @PM_FireCleanAnnually, 
		PM_Felony = @PM_Felony, 
		PM_Bankruptcy = @PM_Bankruptcy, 
		PM_Pool = @PM_Pool, 
		PM_PoolinGround = @PM_PoolinGround, 
		PM_PoolFenced = @PM_PoolFenced, 
		PM_PoolDVBoard = @PM_PoolDVBoard, 
		PM_PoolSlide = @PM_PoolSlide, 
		PM_Trampoline = @PM_Trampoline, 
		PM_TrampolineNet = @PM_TrampolineNet,
		PM_TotFireLoss = @PM_TotFireLoss,
		PM_WaterLoss = @PM_WaterLoss,
		PM_UWVisited = 1,
		PM_AllWeatherRoad = @PM_AllWeatherRoad,
		PM_ForSale = @PM_ForSale,
		PM_AnimalBreeding = @PM_AnimalBreeding
	WHERE     (PM_ID = @PM_ID) AND (PM_TStamp = @PM_TStamp)
END
Set @RowsUpdated = @@rowcount 
IF @@Error <> 0 goto PROBLEM

 IF @RowsUpdated > 0 BEGIN
/*	EXECUTE DelAllRates @HH_ID
	IF @@Error <> 0 goto PROBLEM */

	/* UPDATE DRIVER COMMENTS IN THE HOUSEHOLD RECORD */
	UPDATE    Household SET
		HH_PlanID = @HH_PlanID,
		HH_LastDateUpd = Getdate(),
		HH_ApDOB = @HH_ApDOB, 
		HH_ApSSN = @HH_ApSSN, 
		HH_ApOccupation = @HH_ApOccupation, 
		HH_CoApDOB = @HH_CoApDOB, 
		HH_CoApSSN = @HH_CoApSSN, 
		HH_CoApOccupation = @HH_CoApOccupation 
		WHERE     (HH_ID = @HH_ID)
	IF @@Error <> 0 goto PROBLEM
END

COMMIT TRANSACTION
RETURN @RowsUpdated

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[UpdUnFreezeQuote]    Script Date: 10/10/2009 16:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdUnFreezeQuote]
/* THIS PROCEDURE IS USED TO UNFREEZE AN AMENDMENT SO MORE CHANGES CAN BE MADE */
	(
		@HH_ID INT
	)

AS
UPDATE    Household
SET		HH_LastDateUpd = GETDATE(), 
		HH_AgcySubmit = NULL, 
        HH_AgntName = NULL, 
        HH_AgcyBound = NULL, 
        HH_AgcyBoundDate = NULL, 
        HH_ReqStatus = '0', 
        HH_ReqDate = NULL, 
        HH_EFT = NULL,
        HH_MortBill = NULL
WHERE     (HH_ID = @HH_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[UpdLien]    Script Date: 10/10/2009 16:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdLien]
/* UPDATE LIEN HOLDER ADDITIONAL INSURED RECORDS */
(
	@LN_ID int,
	@HH_ID INT,
	@LN_IntrCode char(1),
	@LN_FirstName varchar(30),
	@LN_LastName varchar(30),
	@LN_Addr1 varchar(30),
	@LN_Addr2 varchar(30),
	@LN_City varchar(30),
	@LN_State varchar(2),
	@LN_ZipCode char(5),
	@LN_ZipPlus4 char(4),
	@LN_LoanNum varchar(20),
	@LN_SendBill BIT
)
AS
DECLARE @RowsUpdated INT

SET NOCOUNT OFF;
UPDATE    Lein_AddIns
SET   			LN_IntrCode = @LN_IntrCode, 
				LN_FirstName = @LN_FirstName, 
				LN_LastName = @LN_LastName, 
				LN_Addr1 = @LN_Addr1, 
                LN_Addr2 = @LN_Addr2,
                LN_City = @LN_City, 
                LN_State = @LN_State, 
                LN_ZipCode = @LN_ZipCode, 
                LN_ZipPlus4 = @LN_ZipPlus4, 
                LN_LoanNum = @LN_LoanNum,
                LN_SendBill = @LN_SendBill 
WHERE     (LN_ID = @LN_ID)
Set @RowsUpdated = @@rowcount 

/* UPDATE LATE DATE UPDATED */
UPDATE Household SET HH_LastDateUpd  = Getdate() WHERE (HH_ID = @HH_ID)
RETURN @RowsUpdated
GO
/****** Object:  StoredProcedure [dbo].[UpdMailAddress]    Script Date: 10/10/2009 16:34:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdMailAddress]
/*  UPDATE THE HOUSEHOLD TABLE FROM THE HOUSEHOLD SCREEN */
	(
	@HH_ID INT,
	@HH_HouseNum VARCHAR(10), 
	@HH_AptNum VARCHAR(10), 
	@HH_Addr1 VARCHAR(30), 
	@HH_City VARCHAR(30), 
	@HH_State CHAR(2), 
	@HH_ZipCode CHAR(5), 
	@HH_ZipCodePlus4 CHAR(4),
	@HH_ScrubOverride BIT,
	@HH_ScrubReturnCode VARCHAR(3)
	)
AS
DECLARE @RowsUpdated INT
SET NOCOUNT OFF;
UPDATE    Household
	SET     HH_HouseNum = @HH_HouseNum, 
			HH_AptNum = @HH_AptNum, 
			HH_Addr1 = @HH_Addr1, 
			HH_City = @HH_City, 
			HH_State = @HH_State, 
			HH_ZipCode = @HH_ZipCode, 
			HH_ZipCodePlus4 = @HH_ZipCodePlus4,
			HH_ScrubOverride = @HH_ScrubOverride, 
			HH_ScrubReturnCode = @HH_ScrubReturnCode
	WHERE     (HH_ID = @HH_ID)
Set @RowsUpdated = @@rowcount 
RETURN @RowsUpdated
GO
/****** Object:  StoredProcedure [dbo].[UpdFreezeQuote]    Script Date: 10/10/2009 16:34:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdFreezeQuote]
/* THIS PROCEDURE IS USED TO FREEZE AN AMENDMENT */
	(
		@HH_ID INT,
		@HH_Planid VARCHAR(3),
		@HH_CompID VARCHAR(3),
		@HH_AgcySubmit INT,
		@HH_AgntName VARCHAR(30),
		@HH_AgcyMoney VARCHAR(11),
		@HH_AgcyBound BIT,
		@HH_MortBill BIT,
		@HH_AgcyBoundDate DATETIME,
		@HH_ReqStatus CHAR(1),
		@HH_EFT BIT,
        @HH_PolTerm VARCHAR(2),
		@HH_MFPolNew BIT,
		@HH_AgcyHowPay VARCHAR(3),
		@HH_AgcyChkNum VARCHAR(10),
		@HH_AgcyMemo VARCHAR(50),
		@HH_MFPolNumKey VARCHAR(25),
		@HH_MFCorp VARCHAR(3),
		@HH_MFComp VARCHAR(3),
		@HH_MFPrefixA VARCHAR(4),
		@HH_MFPrefixB VARCHAR(4),
		@HH_MFPolNum VARCHAR(10),
		@HH_MFDecNum VARCHAR(1),
		@HH_AGTMSG VARCHAR(512),
		@HH_AGCYMSG VARCHAR(512),
		@HH_UploadedBy VARCHAR(100)
	)

AS
DECLARE @RowsUpdated INT
UPDATE    Household
SET		HH_LastDateUpd = GETDATE(), 
		HH_AgcySubmit = @HH_AgcySubmit, 
		HH_AgntName = @HH_AgntName, 
		HH_AgcyMoney = @HH_AgcyMoney,
        HH_AgcyBound = @HH_AgcyBound,
        HH_MortBill = @HH_MortBill, 
		HH_AgcyBoundDate = @HH_AgcyBoundDate, 
		HH_ReqStatus = @HH_ReqStatus, 
		HH_ReqDate = GETDATE(), 
		HH_PlanID = @HH_Planid,
		HH_CompID = @HH_CompID,
        HH_EFT = @HH_EFT,
        HH_PolTerm = @HH_PolTerm,
        HH_MFPolNew = @HH_MFPolNew,
		HH_AgcyHowPay = @HH_AgcyHowPay,
		HH_AgcyChkNum = @HH_AgcyChkNum,
		HH_AgcyMemo = @HH_AgcyMemo,
		HH_MFPolNumKey = @HH_MFPolNumKey,
		HH_MFCorp = @HH_MFCorp,
		HH_MFComp = @HH_MFComp,
		HH_MFPrefixA = @HH_MFPrefixA,
		HH_MFPrefixB = @HH_MFPrefixB,
		HH_MFPolNum = @HH_MFPolNum,
		HH_MFDecNum = @HH_MFDecNum,
		HH_AGTMSG = @HH_AGTMSG, 
		HH_AGCYMSG = @HH_AGCYMSG, 
		HH_UploadedBy = @HH_UploadedBy
WHERE     (HH_ID = @HH_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[UpdHHoldPrint]    Script Date: 10/10/2009 16:34:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdHHoldPrint]
(	
	@HH_ID int, 
	@HH_ReqStatus char(1),
	@HH_BatID int
)
AS
UPDATE dbo.Household
SET HH_BatID = @HH_BatID, HH_ReqStatus = @HH_ReqStatus, HH_HOPrtDate = GETDATE()
WHERE HH_ID = @HH_ID
RETURN
GO
/****** Object:  StoredProcedure [dbo].[UpdAddrScrubOverride]    Script Date: 10/10/2009 16:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdAddrScrubOverride]
/*  UPDATE OVERRIDE  INFO FOR ADDRESS SCRUBBING */
	(
		@HH_ID INT,
		@HH_ScrubReturnCode varchar(3),
		@HH_ScrubOverride bit
	)
AS
DECLARE @RowsUpdated INT
SET NOCOUNT OFF;
UPDATE    Household
SET      HH_ScrubReturnCode = @HH_ScrubReturnCode, HH_ScrubOverride = @HH_ScrubOverride WHERE (HH_ID = @HH_ID)
Set @RowsUpdated = @@rowcount
RETURN @RowsUpdated
GO
/****** Object:  StoredProcedure [dbo].[UpdAgentMessages]    Script Date: 10/10/2009 16:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdAgentMessages]
/* THIS PROCEDURE IS USED TO UPDATE THE AGENCY/AGENT MESSAGES IN THE APPLICANT TABLE */
	(
		@HH_ID INT,
		@HH_AGTMSG VARCHAR(512),
		@HH_AGCYMSG VARCHAR(512)
	)

AS
UPDATE    Household
SET		
        HH_AGTMSG = @HH_AGTMSG, 
        HH_AGCYMSG = @HH_AGCYMSG
WHERE     (HH_ID = @HH_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetUnderWriterInfo]    Script Date: 10/10/2009 16:34:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUnderWriterInfo]
/*  GET UNDERWRITER INFO FROM PREMISES RECORD */
	(
		@HH_ID INT
	)
AS
SELECT  
	Household.HH_FirstName, 
	Household.HH_MidName, 
	Household.HH_LastName, 
	Household.HH_SufName, 
    Household.HH_CoAppFirstName, 
    Household.HH_CoAppMidName, 
    Household.HH_CoAppLastName, 
    Household.HH_CoAppSufName,
	Household.HH_ApDOB, 
	Household.HH_ApSSN, 
	Household.HH_ApOccupation, 
	Household.HH_CoApDOB, 
	Household.HH_CoApSSN, 
    Household.HH_CoApOccupation, 
    Premises.PM_ID, 
    Premises.PM_TStamp, 
    Premises.PM_UWComments, 
    Premises.PM_UWVisited, 
    Premises.PM_PurchaseDate, 
    Premises.PM_PoolFenceHT, 
    Premises.PM_PetBreed, 
    Premises.PM_OccupiedDaily, 
    Premises.PM_AccessAllTimes, 
    Premises.PM_Pets, 
    Premises.PM_Fireplace, 
    Premises.PM_FireCleanAnnually, 
    Premises.PM_Felony, 
    Premises.PM_Bankruptcy, 
    Premises.PM_Pool, 
    Premises.PM_PoolinGround, 
    Premises.PM_PoolFenced, 
    Premises.PM_PoolDVBoard, 
    Premises.PM_PoolSlide, 
    Premises.PM_Trampoline, 
    Premises.PM_TrampolineNet,
    Premises.PM_TotFireLoss,
    Premises.PM_WaterLoss,
    Premises.PM_AllWeatherRoad,
    Premises.PM_ForSale,
    Premises.PM_AnimalBreeding
FROM         Household INNER JOIN Premises ON Household.HH_ID = Premises.HH_ID
WHERE     (Household.HH_ID = @HH_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetTotalCount]    Script Date: 10/10/2009 16:34:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTotalCount]
/* GET NUMBER OF STUFF ON POLICY */
	(
		@HH_ID INT
	)
AS
/* GET IF MVR/CLU/NCF HAS BEEN RUN */
SELECT	
	HH_MVRDte, 
	HH_CLUDte,
	HH_E2ValDte,
    HH_CLADte

FROM Household WHERE (HH_ID = @HH_ID)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[StorePOS]    Script Date: 10/10/2009 16:34:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StorePOS]
/* ADD A NEW OR OVERLAY AN EXISTING POS REPORT */
	(
	 @POS_ID INT OUTPUT,
	 @HH_ID INT, 
	 @POS_AltKey INT, 
	 @POS_AltKeyType CHAR(1), 
	 @POS_Type CHAR(3), 
	 @POS_JRecEnabled BIT,
	 @POS_NTID VARCHAR(50), 
	 @POS_Data TEXT
	)
AS
IF @POS_AltKeyType IS NULL BEGIN
	SELECT     POS_ID FROM POS WHERE (HH_ID = @HH_ID) AND (POS_AltKey = @POS_AltKey) AND (POS_Type = @POS_Type) AND (POS_AltKeyType IS NULL)
	IF @@Rowcount >= 1 BEGIN
		DELETE FROM POS WHERE (HH_ID = @HH_ID) AND (POS_AltKey = @POS_AltKey) AND (POS_Type = @POS_Type) AND (POS_AltKeyType IS NULL)
	END
END
ELSE BEGIN
	SELECT     POS_ID FROM POS WHERE (HH_ID = @HH_ID) AND (POS_AltKey = @POS_AltKey) AND (POS_Type = @POS_Type) AND (POS_AltKeyType = @POS_AltKeyType)
	IF @@Rowcount >= 1 BEGIN
		DELETE FROM POS WHERE (HH_ID = @HH_ID) AND (POS_AltKey = @POS_AltKey) AND (POS_Type = @POS_Type) AND (POS_AltKeyType = @POS_AltKeyType)
	END
END

INSERT INTO POS(
		HH_ID, 
		POS_AltKey, 
		POS_AltKeyType, 
		POS_Type, 
		POS_JRecEnabled,
		POS_NTID, 
		POS_Date, 
		POS_Data
	) VALUES (
		@HH_ID, 
		@POS_AltKey, 
		@POS_AltKeyType, 
		@POS_Type,
		@POS_JRecEnabled, 
		@POS_NTID,
 		GETDATE(), 
		@POS_Data
	)
SET @POS_ID = @@IDENTITY

IF @POS_Type = 'MVR' BEGIN
	UPDATE    Household
	SET   HH_MVRDte = GETDATE()
	WHERE     (HH_ID = @HH_ID)
END
IF @POS_Type = 'CLU' BEGIN
	UPDATE    Household
		SET   HH_CLUDte = GETDATE()
		WHERE     (HH_ID = @HH_ID)
END
RETURN
GO
/****** Object:  StoredProcedure [dbo].[XtractLien]    Script Date: 10/10/2009 16:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XtractLien]
/*  EXTRACT LIENHOLDER/ADDITIONAL INSURED RECORDS FOR A BATCH TO BE UPLOADED TO MAINFRAME */
	(
		@BatID INT
	)
AS
SELECT     Lein_AddIns.*
FROM         Lein_AddIns
WHERE     (HH_ID = @BatID)
ORDER BY LN_ID
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetLienCount]    Script Date: 10/10/2009 16:34:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetLienCount]
/*  GET THE COUNTS OF MULTIPLE ENTRY ENDORSEMENTS */
	(
		@HH_ID INT,
		@LN_Count INT OUTPUT
	)

AS
	SELECT     @LN_Count = COUNT(*)
	FROM         Lein_AddIns
	WHERE     (HH_ID = @HH_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetLienHolder]    Script Date: 10/10/2009 16:34:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetLienHolder]
/*  GET LIENHOLDER INFORMATION FOR LEINHOLDER UPDATE/VIEW SCREEN */
	(
		@LN_ID INT,
		@HH_ID INT = NULL,
		@Profile BIT
	)

AS

IF @Profile = 1
	BEGIN
		SELECT TOP 1
			LN_ID, 
			LN_IntrCode, 
			LN_FirstName,
			LN_LastName, 
			LN_Addr1, 
			LN_Addr2, 
			LN_City, 
			LN_State, 
			LN_ZipCode, 
			LN_ZipPlus4, 
			LN_LoanNum,
			LN_SendBill, 
		    LN_TStamp
		FROM         Lein_AddIns
		WHERE     (HH_ID = @HH_ID)
	END
ELSE
	BEGIN
		SELECT     
			LN_ID, 
			LN_IntrCode, 
			LN_FirstName, 
			LN_LastName, 
			LN_Addr1, 
			LN_Addr2, 
			LN_City, 
			LN_State, 
			LN_ZipCode, 
			LN_ZipPlus4, 
			LN_LoanNum, 
			LN_SendBill,
			LN_TStamp
		FROM         Lein_AddIns
		WHERE     (LN_ID = @LN_ID)
	END
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetAllLiens]    Script Date: 10/10/2009 16:34:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllLiens]
/* *** GET LIENHOLDER INFORMATION FOR THE POLICY */	
	(
		@HH_ID INT
	)
AS
SELECT	LN_ID, 
		HH_ID, 
		LN_IntrCode,
		LN_SendBill,
		LN_FirstName, 
		LN_LastName, 
		LN_Addr1, 
		LN_Addr2, 
		LN_City, 
		LN_State, 
		LN_ZipCode, 
		LN_ZipPlus4, 
		LN_LoanNum
FROM         Lein_AddIns
WHERE     (HH_ID = @HH_ID)
ORDER BY LN_ID 
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetNoteList]    Script Date: 10/10/2009 16:34:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetNoteList]
	@HH_ID int
AS

SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT * FROM [dbo].[Note] WHERE HH_ID = @HH_ID order by date
GO
/****** Object:  StoredProcedure [dbo].[AddNote]    Script Date: 10/10/2009 16:34:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddNote]
	@HH_ID int,
	@user varchar(50),
	@date datetime,
	@text varchar(512),
	@id int OUTPUT
	
AS

INSERT INTO [dbo].[Note] (
	[HH_ID],
	[user],
	[date],
	[text]
) VALUES (
	@HH_ID,
	@user,
	@date,
	@text
)
SET @id = @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[GetPOS]    Script Date: 10/10/2009 16:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPOS]
/* GET POS REPORT IF EXISTS IN DATABASE */
	(
		@HH_ID INT,
		@POS_AltKey INT,
		@POS_Type VARCHAR(3)
	)
AS

SELECT
	POS_NTID, 
	POS_Date, 
	POS_Data, 
	POS_JRecEnabled, 
	POS_AltKeyType
FROM         POS
WHERE     (HH_ID = @HH_ID) AND (POS_AltKey = @POS_AltKey) AND (POS_Type = @POS_Type)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetPremises]    Script Date: 10/10/2009 16:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPremises]
/*	GET THE PREMISES RECORD FOR THE PREMISES SCREEN */
	(
		@HH_ID INT
	)
AS
SELECT TOP 1 
	PM_ID,
	PM_HouseNum,
	PM_AptNum, 
	PM_Addr1, 
	PM_Addr2, 
	PM_City, 
	PM_State, 
	PM_ZipCode, 
	PM_ZipCodePlus4, 
	PM_LglDesc1, 
	PM_LglDesc2, 
	PM_DwellUse, 
    PM_NumFamily, 
    PM_EmpResidence, 
    PM_EmpNumber, 
    PM_FarmOp, 
    PM_FarmAcres, 
    PM_Construction, 
    PM_ProtClass, 
    PM_YearBuilt, 
    PM_ResType, 
    PM_FireDivUnit, 
    PM_FireDeptSrvLmt, 
    PM_FireDeptMi, 
    PM_FireHydtPresent, 
    PM_SmkDetector, 
    PM_BrglrAlarm, 
    PM_FireAlarm, 
    PM_WoodStove, 
    PM_BuilderRisk,
    PM_UpdWireYr, 
    PM_UpdHeatYr, 
    PM_Business, 
    PM_BusinessDesc, 
    PM_FireHydtFt, 
    PM_InCityLimits, 
    PM_FireDstrctName, 
    PM_PriHeatType, 
    PM_HeatSysAge, 
    PM_RoofType, 
    PM_RoofAge, 
    PM_RoofCond, 
    PM_MHManufacturer, 
    PM_MHSerialNum, 
    PM_MHModel, 
    PM_MHLen, 
    PM_MHWidth, 
    PM_MHMovingSoon, 
    PM_MHDamaged, 
    PM_MHGotThermostat, 
    PM_MHFoundation, 
    PM_MHTieDowns, 
    PM_Comments, 
    PM_TStamp,
    PM_LogHome,
    PM_RolledRoof,
    PM_ShakeSiding,
    PM_Foundation,
    PM_NonWeatherLoss
FROM         Premises
WHERE     (HH_ID = @HH_ID)
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetPremisesZipCode]    Script Date: 10/10/2009 16:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPremisesZipCode]
/*  GET LOCATION ZIP CODE */
	(
		@HH_ID INT
	)
AS
SELECT     PM_ZipCode
FROM         Premises
WHERE     (HH_ID = @HH_ID)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetPremisesFarmAcres]    Script Date: 10/10/2009 16:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPremisesFarmAcres]
/*  GET THE PREMISES STATE */
	(
		@HH_ID INT,
		@PM_FarmAcres VARCHAR(2) OUTPUT,
		@PM_BuilderRisk BIT OUTPUT
	)
AS

SELECT @PM_FarmAcres = PM_FarmAcres, @PM_BuilderRisk = PM_BuilderRisk
FROM         Premises
WHERE     (HH_ID = @HH_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetPremisesState]    Script Date: 10/10/2009 16:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPremisesState]
/*  GET THE PREMISES STATE */
	(
		@HH_ID INT,
		@PM_State VARCHAR(2) OUTPUT
	)
AS

SELECT @PM_State = PM_State
FROM         Premises
WHERE     (HH_ID = @HH_ID)
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetTerritoryInfo]    Script Date: 10/10/2009 16:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTerritoryInfo]
/*  GET UNASSIGNED TERRITORIES */
	(
		@HH_ID INT
	)
AS
SELECT DISTINCT 
	Premises.PM_City, 
	Premises.PM_State, 
	Premises.PM_ZipCode, 
	Rate.RT_Plan
FROM         Premises INNER JOIN Rate ON Premises.HH_ID = Rate.HH_ID
WHERE     (Rate.RT_CountyName IS NULL) AND (Premises.HH_ID = @HH_ID)
ORDER BY Premises.PM_ZipCode, Rate.RT_Plan
RETURN
GO
/****** Object:  StoredProcedure [dbo].[XtractPremises]    Script Date: 10/10/2009 16:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XtractPremises]
/*  EXTRACT DRIVER RECORDS FOR A BATCH TO BE UPLOADED TO MAINFRAME */
	(
		@BatID INT
	)
AS
SELECT [PM_ID]
      ,[HH_ID]
      ,[PM_HouseNum]
      ,[PM_AptNum]
      ,[PM_Addr1]
      ,[PM_Addr2]
      ,[PM_City]
      ,[PM_State]
      ,[PM_ZipCode]
      ,[PM_ZipCodePlus4]
      ,[PM_LglDesc1]
      ,[PM_LglDesc2]
      ,[PM_DwellUse]
      ,[PM_NumFamily]
      ,[PM_EmpResidence]
      ,[PM_EmpNumber]
      ,[PM_FarmOp]
      ,[PM_FarmAcres]
      ,[PM_Construction]
      ,[PM_ProtClass]
      ,[PM_YearBuilt]
      ,[PM_ResType]
      ,[PM_FireDivUnit]
      ,[PM_FireDeptSrvLmt]
      ,[PM_FireDeptMi]
      ,[PM_FireHydtPresent]
      ,[PM_SmkDetector]
      ,[PM_BrglrAlarm]
      ,[PM_FireAlarm]
      ,[PM_WoodStove]
      ,[PM_BuilderRisk]
      ,[PM_UpdWireYr]
      ,[PM_UpdHeatYr]
      ,[PM_Business]
      ,[PM_BusinessDesc]
      ,[PM_FireHydtFt]
      ,[PM_InCityLimits]
      ,[PM_FireDstrctName]
      ,[PM_PriHeatType]
      ,[PM_HeatSysAge]
      ,[PM_RoofType]
      ,[PM_RoofAge]
      ,[PM_RoofCond]
      ,[PM_MHManufacturer]
      ,[PM_MHSerialNum]
      ,[PM_MHModel]
      ,[PM_MHLen]
      ,[PM_MHWidth]
      ,[PM_MHMovingSoon]
      ,[PM_MHDamaged]
      ,[PM_MHGotThermostat]
      ,[PM_MHFoundation]
      ,[PM_MHTieDowns]
      ,[PM_Comments]
      ,[PM_UWComments]
      ,[PM_CvgVisited]
      ,[PM_UWVisited]
      ,[PM_Cvg100Percent]
      ,[PM_CvgA]
      ,[PM_CvgB]
      ,[PM_CvgC]
      ,[PM_CvgD]
      ,[PM_CvgE]
      ,[PM_CvgF]
      ,[PM_CvgPerils]
      ,[PM_WindHail]
      ,[PM_PurchaseDate]
      ,[PM_PoolFenceHT]
      ,[PM_PetBreed]
      ,[PM_OccupiedDaily]
      ,[PM_AccessAllTimes]
      ,[PM_Pets]
      ,[PM_Fireplace]
      ,[PM_FireCleanAnnually]
      ,[PM_Felony]
      ,[PM_Bankruptcy]
      ,[PM_Pool]
      ,[PM_PoolinGround]
      ,[PM_PoolFenced]
      ,[PM_PoolDVBoard]
      ,[PM_PoolSlide]
      ,[PM_Trampoline]
      ,[PM_TrampolineNet]
      ,[PM_TotFireLoss]
      ,[PM_WaterLoss]
      ,[PM_LogHome]
      ,[PM_RolledRoof]
      ,[PM_ShakeSiding]
      ,[PM_Foundation]
      ,[PM_AllWeatherRoad]
      ,[PM_ForSale]
      ,[PM_AnimalBreeding]
      ,[PM_TStamp]
FROM         Premises
WHERE     (HH_ID = @BatID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[UpdRateTerritory]    Script Date: 10/10/2009 16:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdRateTerritory]
/* UPDATE TERRITORY INFORMATION IN THE RATE RECORD */
/*  THIS PROCEDURE USES A JOIN TO UPDATE SELECTED RECORDS ONLY */
	(
		@HH_ID INT,
		@RT_Plan VARCHAR(3),
		@RT_Terr VARCHAR(3),
		@RT_County VARCHAR(3),
		@RT_EqZone VARCHAR(3),
		@RT_CountyName VARCHAR(50),
		@PM_ZipCode VARCHAR(5)
	)
AS
SET NOCOUNT OFF;
UPDATE    Rate
	SET
		RT_Terr = @RT_Terr, 
		RT_County = @RT_County, 
		RT_CountyName = @RT_CountyName, 
		RT_EqZone = @RT_EqZone
	FROM Rate INNER JOIN Premises ON Rate.HH_ID = Premises.HH_ID
WHERE     (Rate.HH_ID = @HH_ID) AND (Rate.RT_Plan = @RT_Plan) AND (Premises.PM_ZipCode = @PM_ZipCode)
RETURN @@rowcount
GO
/****** Object:  Trigger [Premises_UpdTrigger]    Script Date: 10/10/2009 16:37:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Premises_UpdTrigger]
ON [dbo].[Premises]
FOR  UPDATE 
AS

declare @bit int ,
	@field int ,
	@char int ,
	@fieldname varchar(128) ,
	@TableName varchar(128) ,
	@PKCols varchar(1000) ,
	@sql varchar(2000)
 
 select @TableName = 'Premises'
 
 select * into #ins from inserted
 select * into #del from deleted
 
 -- Get primary key columns for full outer join
 select @PKCols = coalesce(@PKCols + ' and', ' on') + ' i.' + c.COLUMN_NAME + ' = d.' + c.COLUMN_NAME
 from INFORMATION_SCHEMA.TABLE_CONSTRAINTS pk ,
  INFORMATION_SCHEMA.KEY_COLUMN_USAGE c
 where  pk.TABLE_NAME = @TableName
 and CONSTRAINT_TYPE = 'PRIMARY KEY'
 and c.TABLE_NAME = pk.TABLE_NAME
 and c.CONSTRAINT_NAME = pk.CONSTRAINT_NAME
 
 if @PKCols is null
 begin
  raiserror('no PK on table %s', 16, -1, @TableName)
  return
 end
 
 select @field = 0
 while @field < (select max(colid) from syscolumns where id = (object_id('Premises')))
 begin
  select @field = @field + 1
  select @bit = (@field - 1 )% 8 + 1
  select @bit = power(2,@bit - 1)
  select @char = ((@field - 1) / 8) + 1
  if substring(COLUMNS_UPDATED(),@char, 1) & @bit > 0
  begin
   select @fieldname = name from syscolumns where colid = @field and id = object_id('Premises')
   select @sql =   'insert Audit (TableName, FieldName, OldValue, NewValue, HH_ID, Secondary_Key)'
   select @sql = @sql +  ' select ''' + @TableName + ''''
   select @sql = @sql +  ',''' + @fieldname + ''''
   select @sql = @sql +  ',convert(varchar(1000),d.' + @fieldname + ')'
   select @sql = @sql +  ',convert(varchar(1000),i.' + @fieldname + ') , i.HH_ID, i.PM_ID'
   select @sql = @sql +  ' from #ins i full outer join #del d'
   select @sql = @sql +  @PKCols
   select @sql = @sql +  ' where i.' + @fieldname + ' <> d.' + @fieldname 
   select @sql = @sql +  ' or (i.' + @fieldname + ' is null and  d.' + @fieldname + ' is not null)' 
   select @sql = @sql +  ' or (i.' + @fieldname + ' is not null and  d.' + @fieldname + ' is null)'
   
   exec (@sql)
  end
 end
GO
/****** Object:  StoredProcedure [dbo].[AddPremisesfromProfile]    Script Date: 10/10/2009 16:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddPremisesfromProfile]
/*  CREATE A PREMISES RECORD FROM AN EXISTING PREMISES RECORD/ USED IN PROFILE COPYING */
	(
	@NewPFHHID int,
	@OldPFHHID int
	)
	
AS
Declare @ident int
SET NOCOUNT ON

INSERT dbo.Premises
		([HH_ID]
       ,[PM_HouseNum]
       ,[PM_AptNum]
       ,[PM_Addr1]
       ,[PM_Addr2]
       ,[PM_City]
       ,[PM_State]
       ,[PM_ZipCode]
       ,[PM_ZipCodePlus4]
       ,[PM_LglDesc1]
       ,[PM_LglDesc2]
       ,[PM_DwellUse]
       ,[PM_NumFamily]
       ,[PM_EmpResidence]
       ,[PM_EmpNumber]
       ,[PM_FarmOp]
       ,[PM_FarmAcres]
       ,[PM_Construction]
       ,[PM_ProtClass]
       ,[PM_YearBuilt]
       ,[PM_ResType]
       ,[PM_FireDivUnit]
       ,[PM_FireDeptSrvLmt]
       ,[PM_FireDeptMi]
       ,[PM_FireHydtPresent]
       ,[PM_SmkDetector]
       ,[PM_BrglrAlarm]
       ,[PM_FireAlarm]
       ,[PM_WoodStove]
       ,[PM_BuilderRisk]
       ,[PM_UpdWireYr]
       ,[PM_UpdHeatYr]
       ,[PM_Business]
       ,[PM_BusinessDesc]
       ,[PM_FireHydtFt]
       ,[PM_InCityLimits]
       ,[PM_FireDstrctName]
       ,[PM_PriHeatType]
       ,[PM_HeatSysAge]
       ,[PM_RoofType]
       ,[PM_RoofAge]
       ,[PM_RoofCond]
       ,[PM_MHManufacturer]
       ,[PM_MHSerialNum]
       ,[PM_MHModel]
       ,[PM_MHLen]
       ,[PM_MHWidth]
       ,[PM_MHMovingSoon]
       ,[PM_MHDamaged]
       ,[PM_MHGotThermostat]
       ,[PM_MHFoundation]
       ,[PM_MHTieDowns]
       ,[PM_Comments]
       ,[PM_UWComments]
       ,[PM_CvgVisited]
       ,[PM_UWVisited]
       ,[PM_Cvg100Percent]
       ,[PM_CvgA]
       ,[PM_CvgB]
       ,[PM_CvgC]
       ,[PM_CvgD]
       ,[PM_CvgE]
       ,[PM_CvgF]
       ,[PM_CvgPerils]
       ,[PM_WindHail]
       ,[PM_PurchaseDate]
       ,[PM_PoolFenceHT]
       ,[PM_PetBreed]
       ,[PM_OccupiedDaily]
       ,[PM_AccessAllTimes]
       ,[PM_Pets]
       ,[PM_Fireplace]
       ,[PM_FireCleanAnnually]
       ,[PM_Felony]
       ,[PM_Bankruptcy]
       ,[PM_Pool]
       ,[PM_PoolinGround]
       ,[PM_PoolFenced]
       ,[PM_PoolDVBoard]
       ,[PM_PoolSlide]
       ,[PM_Trampoline]
       ,[PM_TrampolineNet]
       ,[PM_TotFireLoss]
       ,[PM_WaterLoss]
       ,[PM_LogHome]
       ,[PM_RolledRoof]
       ,[PM_ShakeSiding]
       ,[PM_Foundation]

)
       SELECT [HH_ID]
      ,[PM_HouseNum]
      ,[PM_AptNum]
      ,[PM_Addr1]
      ,[PM_Addr2]
      ,[PM_City]
      ,[PM_State]
      ,[PM_ZipCode]
      ,[PM_ZipCodePlus4]
      ,[PM_LglDesc1]
      ,[PM_LglDesc2]
      ,[PM_DwellUse]
      ,[PM_NumFamily]
      ,[PM_EmpResidence]
      ,[PM_EmpNumber]
      ,[PM_FarmOp]
      ,[PM_FarmAcres]
      ,[PM_Construction]
      ,[PM_ProtClass]
      ,[PM_YearBuilt]
      ,[PM_ResType]
      ,[PM_FireDivUnit]
      ,[PM_FireDeptSrvLmt]
      ,[PM_FireDeptMi]
      ,[PM_FireHydtPresent]
      ,[PM_SmkDetector]
      ,[PM_BrglrAlarm]
      ,[PM_FireAlarm]
      ,[PM_WoodStove]
      ,[PM_BuilderRisk]
      ,[PM_UpdWireYr]
      ,[PM_UpdHeatYr]
      ,[PM_Business]
      ,[PM_BusinessDesc]
      ,[PM_FireHydtFt]
      ,[PM_InCityLimits]
      ,[PM_FireDstrctName]
      ,[PM_PriHeatType]
      ,[PM_HeatSysAge]
      ,[PM_RoofType]
      ,[PM_RoofAge]
      ,[PM_RoofCond]
      ,[PM_MHManufacturer]
      ,[PM_MHSerialNum]
      ,[PM_MHModel]
      ,[PM_MHLen]
      ,[PM_MHWidth]
      ,[PM_MHMovingSoon]
      ,[PM_MHDamaged]
      ,[PM_MHGotThermostat]
      ,[PM_MHFoundation]
      ,[PM_MHTieDowns]
      ,[PM_Comments]
      ,[PM_UWComments]
      ,[PM_CvgVisited]
      ,[PM_UWVisited]
      ,[PM_Cvg100Percent]
      ,[PM_CvgA]
      ,[PM_CvgB]
      ,[PM_CvgC]
      ,[PM_CvgD]
      ,[PM_CvgE]
      ,[PM_CvgF]
      ,[PM_CvgPerils]
      ,[PM_WindHail]
      ,[PM_PurchaseDate]
      ,[PM_PoolFenceHT]
      ,[PM_PetBreed]
      ,[PM_OccupiedDaily]
      ,[PM_AccessAllTimes]
      ,[PM_Pets]
      ,[PM_Fireplace]
      ,[PM_FireCleanAnnually]
      ,[PM_Felony]
      ,[PM_Bankruptcy]
      ,[PM_Pool]
      ,[PM_PoolinGround]
      ,[PM_PoolFenced]
      ,[PM_PoolDVBoard]
      ,[PM_PoolSlide]
      ,[PM_Trampoline]
      ,[PM_TrampolineNet]
      ,[PM_TotFireLoss]
      ,[PM_WaterLoss]
      ,[PM_LogHome]
      ,[PM_RolledRoof]
      ,[PM_ShakeSiding]
      ,[PM_Foundation]
FROM  Premises 
WHERE (HH_ID = @OldPFHHID)
Set @ident=@@IDENTITY
UPDATE dbo.Premises
SET 
	HH_ID = @NewPFHHID,
	PM_CvgVisited = 0,
	PM_UWVisited = 0
WHERE PM_ID = @ident
RETURN @ident
GO
/****** Object:  StoredProcedure [dbo].[UpdResetCoverage]    Script Date: 10/10/2009 16:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdResetCoverage]
/*  RESET THE COVERAGE FIELDS WHEN PLAN OR FORM CHANGES */
	(
		@HH_ID INT
	)
AS
UPDATE    Premises
SET
	PM_CvgVisited = 0, 
	PM_Cvg100Percent = NULL, 
	PM_CvgA = NULL, 
	PM_CvgB = NULL, 
	PM_CvgC = NULL, 
	PM_CvgD = NULL, 
	PM_CvgE = NULL, 
    PM_CvgF = NULL, 
    PM_CvgPerils = NULL
WHERE     (HH_ID = @HH_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[AddProfile]    Script Date: 10/10/2009 16:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddProfile]
/*  ADD A NEW PROFILE RECORD */
	(
	@PF_ID INT OUTPUT,
	@PF_Key INT, 
	@PF_AGTID INT, 
	@PF_AgencyID INT, 
	@PF_System BIT, 
	@PF_Private BIT, 
	@PF_Table VARCHAR(1), 
	@PF_Default BIT, 
	@PF_NTLogon VARCHAR(50), 
	@PF_Name VARCHAR(50), 
	@PF_Desc VARCHAR(128)
	)
AS
INSERT INTO Profile(
	PF_Key,
	PF_AGTID, 
	PF_AgencyID, 
	PF_System, 
	PF_Private, 
	PF_Table, 
	PF_Default, 
	PF_NTLogon, 
	PF_Name, 
	PF_Desc, 
	PF_DateAdded)
VALUES (
	@PF_Key, 
	@PF_AGTID, 
	@PF_AgencyID, 
	@PF_System, 
	@PF_Private, 
	@PF_Table, 
	@PF_Default, 
	@PF_NTLogon, 
	@PF_Name, 
	@PF_Desc,
	GETDATE()
)
Set @PF_ID = @@IDENTITY
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[UpdProfile]    Script Date: 10/10/2009 16:35:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdProfile]
/*  UPDATE THE PROFILE RECORD */
	(
		@PF_ID INT,
		@PF_System BIT,
		@PF_Private BIT,
		@PF_Table VARCHAR(1),
		@PF_Name VARCHAR(50), 
		@PF_Desc VARCHAR(128)
	)
AS
UPDATE    Profile
SET             PF_System = @PF_System,
				PF_Private = @PF_Private, 
				PF_Table = @PF_Table, 
				PF_Name = @PF_Name, 
				PF_Desc = @PF_Desc
WHERE     (PF_ID = @PF_ID)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[UpdProfileDefault]    Script Date: 10/10/2009 16:35:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdProfileDefault]
/*  UPDATE THE PROFILE DEFAULT INDICATOR */
	(
		@PF_ID INT,
		@PF_Default BIT
	)
AS
UPDATE    Profile
SET              PF_Default = @PF_Default
WHERE     (PF_ID = @PF_ID)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[UpdProfileHHID]    Script Date: 10/10/2009 16:35:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdProfileHHID]
/*  UPDATE THE PROFILE HHID */
	(
		@PF_ID INT,
		@HH_ID INT
	)

AS 
UPDATE    Profile
SET              PF_Key = @HH_ID
WHERE     (PF_ID = @PF_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetProfile]    Script Date: 10/10/2009 16:34:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProfile]
/*  GET PROFILE INFORMATION FOR PROFSAVE SCRIPT */
	(
		@PF_ID INT
	)
AS
SELECT     PF_System, PF_Private, PF_Table, PF_Name, PF_Desc
FROM         Profile
WHERE     (PF_ID = @PF_ID)
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetQTIdfromProfile]    Script Date: 10/10/2009 16:34:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetQTIdfromProfile]
/*  RETRIEVE THE QTID FROM THE PROFILE ID */
	(
		@PF_ID INT,
		@QT_ID INT OUTPUT
	)
AS
SELECT TOP 1 @QT_ID =  PF_Key
FROM         Profile
WHERE     (PF_ID = @PF_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetProfileKey]    Script Date: 10/10/2009 16:34:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProfileKey]
/*  GET THE DEFAULT PROFILE KEY TO POPULATE THE SESSION OBJECT */
	(
		@PF_AgencyID INT,
		@PF_AGTID INT,
		@PF_Key INT OUTPUT,
		@PF_ID INT OUTPUT

	)
AS
SELECT TOP 1    
        @PF_Key = PF_Key, @PF_ID = PF_ID
FROM         Profile
WHERE     (PF_Default = 1) AND (PF_AgencyID = @PF_AgencyID) AND (PF_AGTID = @PF_AGTID)
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetProfileList]    Script Date: 10/10/2009 16:34:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProfileList]
/*  GET PROFILE INFORMATION */
	(
		@PF_Table VARCHAR(1),
		@PF_AGTID INT,
		@PF_AgencyID INT
	)
AS
IF @PF_AGTID IS NULL BEGIN
	SELECT     Profile.*
	FROM         Profile
	WHERE     (PF_Table = @PF_Table) AND (PF_System = 1) OR
						(PF_Table = @PF_Table) AND (PF_AgencyID = @PF_AgencyID)
	ORDER BY PF_System DESC, PF_Name
END
ELSE BEGIN
	SELECT     Profile.*
	FROM         Profile
	WHERE     (PF_Table = @PF_Table) AND (PF_System = 1) OR
						(PF_Table = @PF_Table) AND (PF_AgencyID = @PF_AgencyID) AND (PF_AGTID = @PF_AGTID)
	ORDER BY PF_System DESC, PF_Name
END
		RETURN
GO
/****** Object:  StoredProcedure [dbo].[DelAllRates]    Script Date: 10/10/2009 16:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DelAllRates]
/*  REMOVE RATE RECORDS FOR ALL PLANS */
	(
		@HH_ID INT
	)
AS
SET NOCOUNT OFF
DELETE FROM Rate WHERE (HH_ID = @HH_ID)
DELETE FROM AddEnd WHERE (HH_ID=@HH_ID) AND (ED_Type='HO0416')
UPDATE AddEnd SET ED_Cost = 0 WHERE (HH_ID=@HH_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetCountyInfo]    Script Date: 10/10/2009 16:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCountyInfo]
	/*  GET COUNTY INFO FOR TERRITORY DO NOT RATE FUNCTION */
	(
		@HH_ID INT,
		@RT_Terr VARCHAR(3) OUTPUT,
		@RT_County VARCHAR(3) OUTPUT,
		@RT_CountyName VARCHAR(50) OUTPUT,
		@RT_EqZone VARCHAR(3) OUTPUT
	)
AS
SELECT 
	@RT_Terr = RT_Terr, 
	@RT_County = RT_County, 
	@RT_CountyName = RT_CountyName, 
	@RT_EqZone = RT_EqZone
    FROM   Rate WHERE (HH_ID = @HH_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[UpdRateCosts]    Script Date: 10/10/2009 16:35:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdRateCosts]
/* UPDATE RATE COSTS FROM MQSERIES RATING */
	(
		@RT_ID INT,
		@RT_CvgACost MONEY,
		@RT_CvgCCost MONEY,
		@RT_CvgDCost MONEY,
		@RT_CvgECost MONEY,
		@RT_CvgFCost MONEY,
		@RT_EmpResCost MONEY,
		@RT_AddlResCost MONEY,
		@RT_WoodStoveChg MONEY,
		@RT_CvgPerilsCost MONEY,
		@RT_FireDeptChg MONEY,
		@RT_NewHomeCrdt MONEY,
		@RT_SecondaryCrdt MONEY,
		@RT_FAlarmCrdt MONEY,
		@RT_UpdWireCrdt	MONEY,
		@RT_UpdHeatCrdt MONEY,
		@RT_BaseCost MONEY,
		@RT_AllEndCost MONEY,
		@RT_TotPremium MONEY,
		@RT_OffExpires DATETIME,
		@RT_DateRated DATETIME,
		@RT_Tier INT,
		@RT_TierFactor DECIMAL(9,2) = NULL	,
		@RT_DiffDeductible3 INT,
		@RT_DiffDeductible4 INT,
		@RT_DiffPremium3 MONEY,
		@RT_DiffPremium4 MONEY 		
	)
AS
UPDATE    Rate
SET              
	RT_CvgACost = @RT_CvgACost, 
	RT_CvgCCost = @RT_CvgCCost, 
	RT_CvgDCost = @RT_CvgDCost, 
	RT_CvgECost = @RT_CvgECost, 
    RT_CvgFCost = @RT_CvgFCost, 
    RT_EmpResCost = @RT_EmpResCost, 
    RT_AddlResCost = @RT_AddlResCost, 
    RT_WoodStoveChg = @RT_WoodStoveChg, 
    RT_FireDeptChg = @RT_FireDeptChg,
    RT_CvgPerilsCost = @RT_CvgPerilsCost, 
    RT_NewHomeCrdt = @RT_NewHomeCrdt, 
    RT_SecondaryCrdt = @RT_SecondaryCrdt, 
    RT_FAlarmCrdt = @RT_FAlarmCrdt, 
    RT_UpdWireCrdt = @RT_UpdWireCrdt, 
    RT_UpdHeatCrdt = @RT_UpdHeatCrdt, 
    RT_BaseCost = @RT_BaseCost, 
    RT_AllEndCost = @RT_AllEndCost, 
    RT_TotPremium = @RT_TotPremium, 
    RT_OffExpires = @RT_OffExpires, 
    RT_DateRated = GETDATE(),
	RT_Tier = @RT_Tier,
    RT_TierFactor = @RT_TierFactor,
	RT_DiffDeductible3 = @RT_DiffDeductible3,
	RT_DiffDeductible4 = @RT_DiffDeductible4,
	RT_DiffPremium3 = @RT_DiffPremium3,
	RT_DiffPremium4 = @RT_DiffPremium4
WHERE     (RT_ID = @RT_ID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[XtractRate]    Script Date: 10/10/2009 16:35:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XtractRate]
/*  EXTRACT RATE RECORDS FOR A BATCH TO BE UPLOADED TO MAINFRAME */
	(
		@BatID INT
	)
AS
SELECT     Rate.*
FROM         Rate
WHERE     (HH_ID = @BatID)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetTerrbyZipCode]    Script Date: 10/10/2009 16:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTerrbyZipCode]
/*	GET TERRITORY INFORMATION BY ZIPCODE */
	(
		@Terr_ZipCode VARCHAR(5),
		@Terr_EffDate VARCHAR(8),
		@Terr_CmpNumber VARCHAR(3),
		@DoCompany bit
		
	)

AS
DECLARE @HasRows BIT
/* LOOKUP  W/O COMPANY NUMBER */
IF @DoCompany = 0
	BEGIN
		SELECT COUNT(*) 
		FROM         Territory
		WHERE     (Terr_ZipCode = @Terr_ZipCode) AND (Terr_CmpNumber IS NULL) AND (Terr_EffDate = @Terr_EffDate)

		SELECT     Terr_CountyName, Terr_Code, Terr_CountyCode, Terr_EQRT_Zone
		FROM         Territory
		WHERE     (Terr_ZipCode = @Terr_ZipCode) AND (Terr_CmpNumber IS NULL) AND (Terr_EffDate = @Terr_EffDate)
		ORDER BY Terr_CountyName
	END
/* LOOKUP  WITH COMPANY NUMBER */
ELSE
	BEGIN
		SELECT COUNT(*) 
			FROM         Territory
		WHERE     (Terr_ZipCode = @Terr_ZipCode) AND (Terr_CmpNumber = @Terr_CmpNumber) AND (Terr_EffDate = @Terr_EffDate)
			
		SELECT     Terr_CountyName, Terr_Code, Terr_CountyCode, Terr_EQRT_Zone
		FROM         Territory
		WHERE     (Terr_ZipCode = @Terr_ZipCode) AND (Terr_CmpNumber = @Terr_CmpNumber) AND (Terr_EffDate = @Terr_EffDate)
		ORDER BY Terr_CountyName
	END
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetTerrCityState]    Script Date: 10/10/2009 16:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTerrCityState]
/* GET CITY AND STATE FROM THE TERRITORY TABLE */
	(
		@Terr_ZipCode VARCHAR(5),
		@Terr_EffDate VARCHAR(8),
		@Terr_CmpNumber VARCHAR(3),
		@DoCompany bit
	)
AS

/* LOOKUP  W/O COMPANY NUMBER */
IF @DoCompany = 0
	BEGIN
			SELECT DISTINCT Terr_CityName, Terr_State
		FROM         Territory
		WHERE     (Terr_ZipCode = @Terr_ZipCode) AND (Terr_CmpNumber IS NULL) AND (Terr_EffDate = @Terr_EffDate)
	END
ELSE
	BEGIN
		SELECT DISTINCT Terr_CityName, Terr_State
		FROM         Territory
		WHERE     (Terr_ZipCode = @Terr_ZipCode) AND (Terr_CmpNumber = @Terr_CmpNumber) AND (Terr_EffDate = @Terr_EffDate)
	END
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetTerrCode]    Script Date: 10/10/2009 16:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTerrCode]
/*	GET TERRITORY INFORMATION BY ZIPCODE */
	(
		@Terr_ZipCode VARCHAR(5),
		@Terr_EffDate VARCHAR(8),
		@Terr_CmpNumber VARCHAR(3)
		
	)
AS
SELECT     Terr_Code FROM Territory
	WHERE     (Terr_ZipCode = @Terr_ZipCode) AND (Terr_CmpNumber = @Terr_CmpNumber) AND (Terr_EffDate = @Terr_EffDate)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetTerrEffDate]    Script Date: 10/10/2009 16:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTerrEffDate]
/*	GET TERRITORY LOOKUP EFFECTIVE DATES */
/*   DOCOMPANY BIT DETERMINES HOW LOOKUP MAKES THE WHERE CLAUSE */
	(
		@Terr_ZipCode VARCHAR(5),
		@Terr_CmpNumber VARCHAR(3),
		@DoCompany bit
	)
AS
/* LOOKUP EFFECTIVE DATE W/O COMPANY NUMBER */
IF @DoCompany = 0
	BEGIN
		SELECT DISTINCT Terr_EffDate
			FROM         Territory
			WHERE     (Terr_ZipCode = @Terr_ZipCode) AND (Terr_CmpNumber IS NULL)
			ORDER BY Terr_EffDate DESC
	END
/* LOOKUP EFFECTIVE DATE WITH COMPANY NUMBER */
ELSE
	BEGIN
		SELECT DISTINCT Terr_EffDate
			FROM         Territory
			WHERE     (Terr_ZipCode = @Terr_ZipCode) AND (Terr_CmpNumber = @Terr_CmpNumber)
			ORDER BY Terr_EffDate DESC
	END	
RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetTotalEndCount]    Script Date: 10/10/2009 16:34:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTotalEndCount]
/*  GET THE COUNT OF ENDORSEMENTS ON FILE */
	(
		@HH_ID INT,
		@ED_Count INT OUTPUT
	)
AS
SELECT @ED_Count = COUNT(DISTINCT ED_Type)
FROM         AddEnd
WHERE     (HH_ID = @HH_ID) AND (ED_PremBearing = 1)
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[AddHO0416]    Script Date: 10/10/2009 16:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddHO0416]
/*  ADD OPTIONAL ENDORSEMENT RECORD */
	(
		@HH_ID INT,
		@ED_Type VARCHAR(10),
		@ED_PlanID VARCHAR(3),
		@ED_FormId VARCHAR(6),
		@ED_Description1 VARCHAR(512),
		@ED_Description2 VARCHAR(255),
		@ED_Description3 VARCHAR(255),
		@ED_Name1 VARCHAR(30),
		@ED_Name2 VARCHAR(30),
		@ED_Addr1 VARCHAR(30),
		@ED_Addr2 VARCHAR(30),
		@ED_City VARCHAR(30),
		@ED_State VARCHAR(2),
		@ED_ZipCode VARCHAR(5),
		@ED_ZipPlus4 VARCHAR(4),
		@ED_LiabLmt VARCHAR(10),
		@ED_CvrLmt VARCHAR(10),
		@ED_NumFamily CHAR(1),
		@ED_BusinessType CHAR(1),
		@ED_FarmOponPremises BIT,
		@ED_VeneerExclude BIT,
		@ED_BusinessonPremises BIT,
		@ED_IncLiability BIT,
		@ED_PPropType CHAR(1),
		@ED_Loc2Name1 VARCHAR(30),
		@ED_Loc2Name2 VARCHAR(30),
		@ED_Loc2Addr1 VARCHAR(30),
		@ED_Loc2Addr2 VARCHAR(30),
		@ED_Loc2City VARCHAR(30),
		@ED_Loc2State VARCHAR(2),
		@ED_Loc2ZipCode VARCHAR(5),
		@ED_Loc2ZipPlus4 VARCHAR(4),
		@ED_Loc2LiabLmt VARCHAR(10),
		@ED_465Money VARCHAR(5),
		@ED_465Securities VARCHAR(5),
		@ED_465Jewelery VARCHAR(5),
		@ED_465Firearms VARCHAR(5),
		@ED_465Silverware VARCHAR(5),
		@ED_465ElectIn VARCHAR(5),
		@ED_465ElectOut VARCHAR(5),
		@ED_435LiabLmtPremises VARCHAR(10),
		@ED_DedPercent VARCHAR(4),
		@ED_DedAmt VARCHAR(5),
		@ED_EffDate DATETIME,
		@ED_456ReplValPercent VARCHAR(2),
		@ED_2475WCType CHAR(1),
		@ED_2475WCYear VARCHAR(4),
		@ED_2475WCMake VARCHAR(20),
		@ED_2475WCModel VARCHAR(12),
		@ED_2475WCLength VARCHAR(3),
		@ED_2475WCSerial VARCHAR(20),
		@ED_2475WCMAYear VARCHAR(4),
		@ED_2475WCMAMake VARCHAR(20),
		@ED_2475WCMAModel VARCHAR(12),
		@ED_2475WCMAHP VARCHAR(3),
		@ED_2475WCMASerial VARCHAR(20),
		@ED_2475WCMBYear VARCHAR(4),
		@ED_2475WCMBMake VARCHAR(20),
		@ED_2475WCMBModel VARCHAR(12),
		@ED_2475WCMBHP VARCHAR(3),
		@ED_2475WCMBSerial VARCHAR(20),
		@ED_0461AppraisalDate DATETIME,
		@ED_SeqNum VARCHAR(3),
		@ED_Cost MONEY,
		@ED_SSN CHAR(9) = NULL,
		@ED_DOB DATETIME = NULL
	)
AS
Declare @ident int
SET NOCOUNT OFF;

IF @ED_Type = 'HO0416' BEGIN
		INSERT INTO AddEnd(
			HH_ID, 
			ED_Type, 
			ED_PlanID, 
			ED_FormId, 
			ED_Cost,
			ED_PremBearing
		)VALUES(
			@HH_ID, 
			@ED_Type, 
			@ED_PlanID, 
			@ED_FormId, 
			@ED_Cost,
			0
		)
		IF @@Error <> 0 goto PROBLEM
		Set @ident=@@IDENTITY
END
RETURN @ident

PROBLEM:
	RETURN -1
GO
/****** Object:  Trigger [AddEnd_UpdTrigger]    Script Date: 10/10/2009 16:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AddEnd_UpdTrigger]
ON [dbo].[AddEnd]
FOR  UPDATE 
AS

declare @bit int ,
	@field int ,
	@char int ,
	@fieldname varchar(128) ,
	@TableName varchar(128) ,
	@PKCols varchar(1000) ,
	@sql varchar(2000)
 
 select @TableName = 'AddEnd'
 
 select * into #ins from inserted
 select * into #del from deleted
 
 -- Get primary key columns for full outer join
 select @PKCols = coalesce(@PKCols + ' and', ' on') + ' i.' + c.COLUMN_NAME + ' = d.' + c.COLUMN_NAME
 from INFORMATION_SCHEMA.TABLE_CONSTRAINTS pk ,
  INFORMATION_SCHEMA.KEY_COLUMN_USAGE c
 where  pk.TABLE_NAME = @TableName
 and CONSTRAINT_TYPE = 'PRIMARY KEY'
 and c.TABLE_NAME = pk.TABLE_NAME
 and c.CONSTRAINT_NAME = pk.CONSTRAINT_NAME
 
 if @PKCols is null
 begin
  raiserror('no PK on table %s', 16, -1, @TableName)
  return
 end
 
 select @field = 0
 while @field < (select max(colid) from syscolumns where id = (object_id('AddEnd')))
 begin
  select @field = @field + 1
  select @bit = (@field - 1 )% 8 + 1
  select @bit = power(2,@bit - 1)
  select @char = ((@field - 1) / 8) + 1
  if substring(COLUMNS_UPDATED(),@char, 1) & @bit > 0
  begin
   select @fieldname = name from syscolumns where colid = @field and id = object_id('AddEnd')
   select @sql =   'insert Audit (TableName, FieldName, OldValue, NewValue, HH_ID, Secondary_Key)'
   select @sql = @sql +  ' select ''' + @TableName + ''''
   select @sql = @sql +  ',''' + @fieldname + ''''
   select @sql = @sql +  ',convert(varchar(1000),d.' + @fieldname + ')'
   select @sql = @sql +  ',convert(varchar(1000),i.' + @fieldname + ') , i.HH_ID, i.ED_ID'
   select @sql = @sql +  ' from #ins i full outer join #del d'
   select @sql = @sql +  @PKCols
   select @sql = @sql +  ' where i.' + @fieldname + ' <> d.' + @fieldname 
   select @sql = @sql +  ' or (i.' + @fieldname + ' is null and  d.' + @fieldname + ' is not null)' 
   select @sql = @sql +  ' or (i.' + @fieldname + ' is not null and  d.' + @fieldname + ' is null)'
   
   exec (@sql)
  end
 end
GO
/****** Object:  StoredProcedure [dbo].[XtractAddEnd]    Script Date: 10/10/2009 16:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XtractAddEnd]
/*  EXTRACT RATE RECORDS FOR A BATCH TO BE UPLOADED TO MAINFRAME */
	(
		@BatID INT
	)
AS
SELECT     AddEnd.*
FROM         AddEnd
WHERE     (HH_ID = @BatID)
ORDER BY ED_Type
RETURN
GO
/****** Object:  StoredProcedure [dbo].[UpdRateCostsED]    Script Date: 10/10/2009 16:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdRateCostsED]
/*  UPDATE ADDITIONAL ENDORSMENTS COSTS RETURNED FROM RATING */
	(
		@ED_ID INT,
		@ED_Cost MONEY,
		@ED_Type VARCHAR(10),
		@ED_FormId VARCHAR(6),
		@ED_PlanID VARCHAR(3)
	)
AS
UPDATE    AddEnd
	SET 
		ED_Cost = @ED_Cost,
		ED_FormId = @ED_FormId,
		ED_PlanID = @ED_PlanID
WHERE     (ED_ID = @ED_ID)
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetEndCount]    Script Date: 10/10/2009 16:34:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEndCount]
/*  GET THE COUNTS OF MULTIPLE ENTRY ENDORSEMENTS */
	(
		@HH_ID INT,
		@ED_Type VARCHAR(10) = NULL,
		@ED_Count INT OUTPUT
	)

AS
IF @ED_Type is NULL BEGIN
	SELECT     COUNT(ED_Type) AS ED_Count, ED_Type
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID)
	GROUP BY ED_Type
	ORDER BY ED_Type
END ELSE BEGIN
	SELECT     @ED_Count = COUNT(ED_Type)
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
	GROUP BY ED_Type
	ORDER BY ED_Type
END
RETURN
GO
/****** Object:  StoredProcedure [dbo].[DelXtraAddEnd]    Script Date: 10/10/2009 16:34:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DelXtraAddEnd]
/* REMOVE ADDITIONAL ENDORSEMENTS THAT ARE NOT PART OF THE CURRENTLY RATED PLAN AT FREEZE TIME  */
	(
		@ED_ID INT
	)
AS
DELETE FROM AddEnd
WHERE     (ED_ID = @ED_ID)
GO
/****** Object:  StoredProcedure [dbo].[GetAddEndbyEDID]    Script Date: 10/10/2009 16:34:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAddEndbyEDID]
/*  GET ONE ENDID FOR EDITING */
	(
		@HH_ID INT,
		@ED_ID INT,
		@ED_Type VARCHAR(10)
	)
AS
IF @ED_Type = 'F070' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_CvrLmt, 
		ED_TStamp
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
END



IF @ED_Type = 'HO0461' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_PPropType, 
		ED_Description1, 
		ED_CvrLmt,
		ED_0461AppraisalDate, 
		ED_TStamp
	FROM         AddEnd
	WHERE     (ED_ID = @ED_ID)
END

IF @ED_Type = 'MH0403' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_EffDate, 
		ED_DedAmt, 
		ED_TStamp
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
END

IF @ED_Type = 'MH0406' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_LiabLmt, 
		ED_TStamp
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
END

IF @ED_Type = 'HO0412' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_LiabLmt, 
		ED_TStamp
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
END

IF @ED_Type = 'HO0435' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_435LiabLmtPremises,
		ED_Addr1,
		ED_Addr2,
		ED_City,
		ED_State,
		ED_ZipCode,
		ED_ZipPlus4,
		ED_LiabLmt,
		ED_Loc2Addr1,
		ED_Loc2Addr2,
		ED_Loc2City,
		ED_Loc2State,
		ED_Loc2ZipCode,
		ED_Loc2ZipPlus4,
		ED_Loc2LiabLmt,
		ED_TStamp
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
END

IF @ED_Type = 'HO0441' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_Name1,
		ED_Name2,
		ED_Addr1,
		ED_Addr2,
		ED_City,
		ED_State,
		ED_ZipCode,
		ED_ZipPlus4,
		ED_Description1,
		ED_SSN,
		ED_DOB,
		ED_TStamp
	FROM         AddEnd
	WHERE     (ED_ID = @ED_ID) AND (ED_Type = @ED_Type)
END

IF @ED_Type = 'HO0442' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_BusinessonPremises,
		ED_Description1,
		ED_Description2,
		ED_CvrLmt,
		ED_TStamp
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
END

IF @ED_Type = 'HO0449' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_Addr1,
		ED_Addr2,
		ED_City,
		ED_State,
		ED_ZipCode,
		ED_ZipPlus4,
		ED_LiabLmt,
		ED_Loc2Addr1,
		ED_Loc2Addr2,
		ED_Loc2City,
		ED_Loc2State,
		ED_Loc2ZipCode,
		ED_Loc2ZipPlus4,
		ED_Loc2LiabLmt,
		ED_TStamp
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
END

IF @ED_Type = 'HO0451' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_LiabLmt, 
		ED_TStamp
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
END

IF @ED_Type = 'HO0453' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_LiabLmt, 
		ED_TStamp
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
END

IF @ED_Type = 'HO0454' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_DedPercent,
		ED_VeneerExclude,
		ED_TStamp
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
END

IF @ED_Type = 'HO0456' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_DedPercent,
		ED_TStamp
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
END

IF @ED_Type = 'HO0465' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_465Money,
		ED_465Securities,
		ED_465Jewelery,
		ED_465Firearms,
		ED_465Silverware,
		ED_465ElectIn,
		ED_465ElectOut,
		ED_TStamp
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
END

IF @ED_Type = 'HO2413' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_CvrLmt,
		ED_TStamp
	FROM   AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
END

IF @ED_Type = 'HO2443' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_Addr1,
		ED_Addr2,
		ED_City,
		ED_State,
		ED_ZipCode,
		ED_ZipPlus4,
		ED_Description1,
		ED_TStamp
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
END

IF @ED_Type = 'HO2471' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_Name1,
		ED_BusinessType,
		ED_IncLiability,
		ED_TStamp
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
END

IF @ED_Type = 'ADDLRES' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_Addr1,
		ED_Addr2,
		ED_City,
		ED_State,
		ED_ZipCode,
		ED_ZipPlus4,
		ED_NumFamily,
		ED_TStamp
	FROM         AddEnd
	WHERE     (ED_ID = @ED_ID)
END

IF @ED_Type = 'HO0528C' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_CvrLmt,
		ED_TStamp
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
END

IF @ED_Type = 'HO0440' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_Description1, 
		ED_LiabLmt,
		ED_TStamp
	FROM         AddEnd
	WHERE     (ED_ID = @ED_ID)
END

IF @ED_Type = 'HO0448' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_Description1, 
		ED_LiabLmt,
		ED_TStamp
	FROM         AddEnd
	WHERE     (ED_ID = @ED_ID)
END

IF @ED_Type = 'HO0450' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_Addr1,
		ED_Addr2,
		ED_City,
		ED_State,
		ED_ZipCode,
		ED_ZipPlus4,
		ED_LiabLmt,
		ED_TStamp
	FROM         AddEnd
	WHERE     (ED_ID = @ED_ID)
END

IF @ED_Type = 'HO0492' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_Description1,
		ED_Addr1,
		ED_Addr2,
		ED_City,
		ED_State,
		ED_ZipCode,
		ED_ZipPlus4,
		ED_LiabLmt,
		ED_TStamp
	FROM         AddEnd
	WHERE     (ED_ID = @ED_ID)
END

IF @ED_Type = 'HO2464' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_Description1,
		ED_Description2,
		ED_TStamp
	FROM         AddEnd
	WHERE     (ED_ID = @ED_ID)
END

IF @ED_Type = 'HO2470' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_Addr1,
		ED_Addr2,
		ED_City,
		ED_State,
		ED_ZipCode,
		ED_ZipPlus4,
		ED_NumFamily,
		ED_TStamp
	FROM         AddEnd
	WHERE     (ED_ID = @ED_ID)
END

IF @ED_Type = 'HO2472' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_Description1,
		ED_Addr1,
		ED_Addr2,
		ED_City,
		ED_State,
		ED_ZipCode,
		ED_ZipPlus4,
		ED_FarmOponPremises,
		ED_TStamp
	FROM         AddEnd
	WHERE     (ED_ID = @ED_ID)
END

IF @ED_Type = 'HO2475' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_2475WCType,
		ED_2475WCYear,
		ED_2475WCMake,
		ED_2475WCModel,
		ED_2475WCLength,
		ED_2475WCSerial,
		ED_2475WCMAYear,
		ED_2475WCMAMake,
		ED_2475WCMAModel,
		ED_2475WCMAHP,
		ED_2475WCMASerial,
		ED_2475WCMBYear,
		ED_2475WCMBMake,
		ED_2475WCMBModel,
		ED_2475WCMBHP,
		ED_2475WCMBSerial,
		ED_TStamp
	FROM         AddEnd
	WHERE     (ED_ID = @ED_ID)
END

IF @ED_Type = 'HO0410' BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_PlanID, 
		ED_FormId, 
		ED_Name1,
		ED_Name2,
		ED_Description1,
		ED_Description2,
		ED_Addr1,
		ED_Addr2,
		ED_City,
		ED_State,
		ED_ZipCode,
		ED_ZipPlus4,
		ED_Loc2Name1,
		ED_Loc2Name2,
		ED_Loc2Addr1,
		ED_Loc2Addr2,
		ED_Loc2City,
		ED_Loc2State,
		ED_Loc2ZipCode,
		ED_Loc2ZipPlus4,
		ED_TStamp
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
END

RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetAddEndGridData]    Script Date: 10/10/2009 16:34:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAddEndGridData]	
/*   GET THE ENDORSEMENT DATA FOR A CERTAIN ENDORSMENT */
	(
		@HH_ID INT,
		@ED_Type VARCHAR(10) 
	)
AS
IF @ED_Type = 'HO0461' BEGIN
	SELECT
		ED_ID, 
		ED_PPropType, 
		ED_Description1, 
		ED_CvrLmt
	FROM AddEnd WHERE (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
	ORDER BY ED_ID
END


IF @ED_Type = 'ADDLRES' BEGIN
	SELECT
		ED_ID, 
		ED_Addr1,
		ED_City,
		ED_State,
		ED_NumFamily
	FROM AddEnd WHERE (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
	ORDER BY ED_ID
END

IF @ED_Type = 'HO0440' BEGIN
	SELECT
		ED_ID, 
		ED_Description1, 
		ED_LiabLmt
	FROM AddEnd WHERE (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
	ORDER BY ED_ID
END

IF @ED_Type = 'HO0441' BEGIN
	SELECT
		ED_ID, 
		ED_Name1,
		ED_Addr1,
		ED_City,
		ED_State
	FROM AddEnd WHERE (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
	ORDER BY ED_ID
END

IF @ED_Type = 'HO0448' BEGIN
	SELECT
		ED_ID, 
		ED_Description1, 
		ED_LiabLmt
	FROM AddEnd WHERE (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
	ORDER BY ED_ID
END

IF @ED_Type = 'HO0450' BEGIN
	SELECT
		ED_ID, 
		ED_Addr1,
		ED_City,
		ED_State,
		ED_LiabLmt
	FROM AddEnd WHERE (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
	ORDER BY ED_ID
END

IF @ED_Type = 'HO0492' BEGIN
	SELECT
		ED_ID,
		ED_Description1, 
		ED_Addr1,
		ED_City,
		ED_State,
		ED_LiabLmt
	FROM AddEnd WHERE (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
	ORDER BY ED_ID
END

IF @ED_Type = 'HO2464' BEGIN
	SELECT
		ED_ID,
		ED_Description1, 
		ED_Description2 
	FROM AddEnd WHERE (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
	ORDER BY ED_ID
END

IF @ED_Type = 'HO2470' BEGIN
	SELECT
		ED_ID,
		ED_Addr1,
		ED_City,
		ED_State,
		ED_NumFamily
	FROM AddEnd WHERE (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
	ORDER BY ED_ID
END

IF @ED_Type = 'HO2472' BEGIN
	SELECT
		ED_ID,
		ED_Description1, 
		ED_Addr1,
		ED_City,
		ED_State,
		ED_FarmOponPremises
	FROM AddEnd WHERE (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
	ORDER BY ED_ID
END

IF @ED_Type = 'HO2475' BEGIN
	SELECT
		ED_ID,
		ED_2475WCType,
		ED_2475WCYear,
		ED_2475WCMake,
		ED_2475WCModel,
		ED_2475WCSerial
	FROM AddEnd WHERE (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
	ORDER BY ED_ID
END

RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetforRating]    Script Date: 10/10/2009 16:34:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetforRating]
/*  GET QUOTE INFORMATION FOR RATING QUOTE */
	(
		@HH_ID INT,
		@RT_Plan VARCHAR(4),
		@RT_FormName VARCHAR(6),
		@EffDate VARCHAR(8),
		@State VARCHAR(2)
	)

AS
DECLARE @ED_Cnt INT
DECLARE @289cnt INT
DECLARE @490cnt INT
DECLARE @INTProtClass INT
DECLARE @INTNumFamily INT
DECLARE @INTCvgA INT
DECLARE @WSType VARCHAR(10)
DECLARE @WSNumFamily CHAR(1) 
DECLARE @WSProtClass VARCHAR(2) 
DECLARE @WSCvg100Percent BIT
DECLARE @WSCvgA VARCHAR(9)

/* GET THE REQUIRED PART OF THE QUOTE INFORMATION */
SELECT     
	Household.HH_ID, 
	Rate.RT_ID, 
    Rate.RT_Company, 
    Rate.RT_Plan, 
    Rate.RT_FormName, 
	Household.HH_PolEffDate, 
	Household.HH_PolExpDate, 
	Household.HH_PolNew, 
	Household.HH_OtherPolicy, 
	Household.HH_AppClueSCR,
    Premises.PM_State, 
    Premises.PM_ZipCode, 
    Premises.PM_NumFamily, 
    Premises.PM_YearBuilt, 
    Premises.PM_Construction, 
    Premises.PM_ResType, 
    Premises.PM_ProtClass, 
    Premises.PM_FireDeptSrvLmt, 
    Premises.PM_FarmOp, 
    Premises.PM_SmkDetector, 
    Premises.PM_BrglrAlarm, 
    Premises.PM_FireAlarm, 
    Premises.PM_WoodStove, 
    Premises.PM_Business, 
    Premises.PM_UpdWireYr, 
    Premises.PM_UpdHeatYr, 
    Premises.PM_DwellUse, 
    Premises.PM_EmpNumber, 
    Premises.PM_FireDivUnit, 
    Premises.PM_NonWeatherLoss,
    Rate.RT_Terr, 
    Rate.RT_County, 
    Rate.RT_EqZone, 
    Rate.RT_CvgA, 
    Rate.RT_CvgB, 
    Rate.RT_CvgC, 
    Rate.RT_CvgD, 
    Rate.RT_CvgE, 
    Rate.RT_CvgF, 
    Rate.RT_CvgPerils
FROM Household INNER JOIN Premises ON Household.HH_ID = Premises.HH_ID INNER JOIN Rate ON Household.HH_ID = Rate.HH_ID
WHERE     (Household.HH_ID = @HH_ID)     

/* GET THE OPTIONAL COMPONENTS OF THE QUOTE */

/* GET HO0412 OPTIONAL ENDORSEMENT */
SET @WSType='HO0412'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_LiabLmt
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO0414 OPTIONAL ENDORSEMENT */
SET @WSType='HO0414'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO0435 OPTIONAL ENDORSEMENT */
SET @WSType='HO0435'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_LiabLmt, 
		ED_Loc2LiabLmt, 
		ED_435LiabLmtPremises
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO0440 OPTIONAL ENDORSEMENT */
SET @WSType='HO0440'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_LiabLmt
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO0442 OPTIONAL ENDORSEMENT */
SET @WSType='HO0442'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_CvrLmt
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO0448 OPTIONAL ENDORSEMENT */
SET @WSType='HO0448'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_LiabLmt
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO0449 OPTIONAL ENDORSEMENT */
SET @WSType='HO0449'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_LiabLmt, 
		ED_Loc2LiabLmt
	FROM     AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO0450 OPTIONAL ENDORSEMENT */
SET @WSType='HO0450'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_LiabLmt
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO0453 OPTIONAL ENDORSEMENT */
SET @WSType='HO0453'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_LiabLmt
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO0454 OPTIONAL ENDORSEMENT */
SET @WSType='HO0454'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_DedPercent,
		ED_VeneerExclude
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO0461 OPTIONAL ENDORSEMENT */
SET @WSType='HO0461'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT  
		ED_ID, 
		ED_Type, 
		ED_CvrLmt, 
		ED_PPropType
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO0465 OPTIONAL ENDORSEMENT */
SET @WSType='HO0465'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
	    ED_465Money, 
	    ED_465Securities, 
	    ED_465Jewelery, 
	 ED_465Firearms, 
	    ED_465Silverware, 
	    ED_465ElectIn, 
	    ED_465ElectOut 
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO0480 OPTIONAL ENDORSEMENT */
SET @WSType='HO0480'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO0491 OPTIONAL ENDORSEMENT */
SET @WSType='HO0491'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO0492 OPTIONAL ENDORSEMENT */
SET @WSType='HO0492'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_LiabLmt
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO0528C OPTIONAL ENDORSEMENT */
SET @WSType='HO0528C'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_CvrLmt
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO220 OPTIONAL ENDORSEMENT */
SET @WSType='HO220'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO2413 OPTIONAL ENDORSEMENT */
SET @WSType='HO2413'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_CvrLmt
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO2443 OPTIONAL ENDORSEMENT */
SET @WSType='HO2443'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO2464 OPTIONAL ENDORSEMENT */
SET @WSType='HO2464'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type
	FROM   AddEnd
	WHERE  (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO2470 OPTIONAL ENDORSEMENT */
SET @WSType='HO2470'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type,
	    ED_NumFamily
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO2471 OPTIONAL ENDORSEMENT */
SET @WSType='HO2471'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
	    ED_BusinessType, 
	    ED_IncLiability
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO2472 OPTIONAL ENDORSEMENT */
SET @WSType='HO2472'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type,
	    ED_FarmOponPremises
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO2475 OPTIONAL ENDORSEMENT */
SET @WSType='HO2475'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_2475WCType, 
		ED_2475WCYear, 
		ED_2475WCLength, 
		ED_2475WCMAHP, 
		ED_2475WCMBHP
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET F070 OPTIONAL ENDORSEMENT */
SET @WSType='F070'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_CvrLmt
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO0451 OPTIONAL ENDORSEMENT */
SET @WSType='HO0451'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_LiabLmt
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO0456 OPTIONAL ENDORSEMENT */
SET @WSType='HO0456'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_DedPercent
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO0490 OPTIONAL ENDORSEMENT */
SET @WSType='HO0490'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO0495 OPTIONAL ENDORSEMENT */
SET @WSType='HO0495'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO0495 OPTIONAL ENDORSEMENT */
SET @WSType='HO0495C'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO0498 OPTIONAL ENDORSEMENT */
SET @WSType='HO0498'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO0599C OPTIONAL ENDORSEMENT */
SET @WSType='HO0599C'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type
	FROM  AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO1732 OPTIONAL ENDORSEMENT */
SET @WSType='HO1732'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO1733 OPTIONAL ENDORSEMENT */
SET @WSType='HO1733'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO210 OPTIONAL ENDORSEMENT */
SET @WSType='HO210'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type
	FROM  AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET HO2482 OPTIONAL ENDORSEMENT */
SET @WSType='HO2482'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* MH0402 */
SET @WSType='MH0402'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		AddEnd.ED_ID, 
		AddEnd.ED_Type,  
	    Premises.PM_MHFoundation, 
	    Premises.PM_MHTieDowns
	FROM AddEnd INNER JOIN Premises ON AddEnd.HH_ID = Premises.HH_ID
	WHERE     (AddEnd.HH_ID = @HH_ID) AND (AddEnd.ED_Type = @WSType)
END

/* GET MH0403 OPTIONAL ENDORSEMENT */
SET @WSType='MH0403'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type,
	    ED_DedAmt
	FROM         AddEnd
	WHERE  (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET MH0406 OPTIONAL ENDORSEMENT */
SET @WSType='MH0406'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type, 
		ED_LiabLmt
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

/* GET MH0404 OPTIONAL ENDORSEMENT */
SET @WSType='MH0404'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     
		ED_ID, 
		ED_Type
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
END

SET @WSType='ADDLRES'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT     ED_Type, COUNT(*) AS ED_Cnt
	FROM         AddEnd
	WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
	GROUP BY ED_Type
END

/* GET HO289 OPTIONAL ENDORSEMENT */
/* SEE IF 289 IS PRESENT THEN CHECK IF WE CAN HAVE IT ON THE POLICY */
SET @WSType='HO289'
EXECUTE @ED_Cnt = GetEndEligibleCount @RT_Plan, @State, @RT_FormName, @EffDate, @WSType
IF @ED_Cnt > 0 BEGIN
	SELECT @289cnt = COUNT(*) FROM AddEnd WHERE (HH_ID=@HH_ID) AND (ED_Type=@WSType)
	SELECT @490cnt = COUNT(*) FROM AddEnd WHERE (HH_ID=@HH_ID) AND (ED_Type='HO0490')
	IF @289cnt>0 AND @490cnt>0 BEGIN
		/* NOW CHECK THE REST OF THE REQUIREMENTS */
		SELECT 
			@WSNumFamily = Premises.PM_NumFamily, 
			@WSProtClass = Premises.PM_ProtClass, 
			@WSCvg100Percent = Premises.PM_Cvg100Percent,
			@WSCvgA = Premises.PM_CvgA
		FROM Household INNER JOIN Premises ON Household.HH_ID = Premises.HH_ID WHERE (Household.HH_ID = @HH_ID)
		
		IF @WSNumFamily=NULL OR @WSProtClass=NULL OR @WSCvg100Percent=NULL OR @WSCvgA=NULL BEGIN
			RETURN
		END
		SET @INTProtClass = CONVERT(INT,@WSProtClass)
		SET @INTNumFamily = CONVERT(INT,@WSNumFamily)
		SET @INTCvgA = CONVERT(INT,@WSCvgA)

		IF @INTNumFamily=1 AND @INTProtClass<9 AND @WSCvg100Percent=1 AND @INTCvgA>124999 BEGIN
			SELECT     
				ED_ID, 
				ED_Type
			FROM         AddEnd
			WHERE     (HH_ID = @HH_ID) AND (ED_Type = @WSType)
		END
	END
END
RETURN
GO
/****** Object:  StoredProcedure [dbo].[UpdPremises]    Script Date: 10/10/2009 16:34:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdPremises]
/*  UPDATE THE PREMISES RECORD */
	(
		@HH_ID INT,
		@HH_PlanID VARCHAR(3), 
		@PM_ID INT,
		@PM_HouseNum VARCHAR(10),
		@PM_AptNum VARCHAR(10),
		@PM_Addr1 VARCHAR(30), 
		@PM_Addr2 VARCHAR(30), 
		@PM_City VARCHAR(30), 
		@PM_State VARCHAR(2), 
		@PM_ZipCode VARCHAR(5), 
		@PM_ZipCodePlus4 VARCHAR(4), 
		@PM_LglDesc1 VARCHAR(30), 
		@PM_LglDesc2 VARCHAR(30), 
        @PM_DwellUse CHAR(1), 
        @PM_NumFamily CHAR(1), 
        @PM_EmpResidence BIT, 
        @PM_EmpNumber VARCHAR(2), 
        @PM_FarmOp BIT, 
        @PM_FarmAcres VARCHAR(3), 
        @PM_Construction CHAR(1), 
        @PM_ProtClass VARCHAR(2), 
        @PM_YearBuilt VARCHAR(4), 
        @PM_ResType CHAR(1), 
        @PM_FireDivUnit VARCHAR(3), 
        @PM_FireDeptSrvLmt VARCHAR(4), 
        @PM_FireDeptMi VARCHAR(4), 
        @PM_FireHydtPresent BIT, 
        @PM_SmkDetector BIT, 
        @PM_BrglrAlarm CHAR(1), 
        @PM_FireAlarm CHAR(1), 
        @PM_WoodStove BIT, 
        @PM_BuilderRisk BIT, 
        @PM_UpdWireYr VARCHAR(4), 
        @PM_UpdHeatYr VARCHAR(4), 
        @PM_Business BIT, 
        @PM_BusinessDesc VARCHAR(69), 
        @PM_FireHydtFt VARCHAR(9), 
        @PM_InCityLimits BIT, 
        @PM_FireDstrctName VARCHAR(15), 
        @PM_PriHeatType CHAR(1), 
        @PM_HeatSysAge VARCHAR(2), 
        @PM_RoofType VARCHAR(15), 
        @PM_RoofAge VARCHAR(2), 
        @PM_RoofCond BIT, 
        @PM_MHManufacturer VARCHAR(30), 
        @PM_MHSerialNum VARCHAR(15), 
        @PM_MHModel VARCHAR(30), 
        @PM_MHLen VARCHAR(3), 
        @PM_MHWidth VARCHAR(3), 
        @PM_MHMovingSoon BIT, 
        @PM_MHDamaged BIT, 
        @PM_MHGotThermostat BIT, 
        @PM_MHFoundation CHAR(1), 
        @PM_MHTieDowns CHAR(1), 
        @PM_Comments VARCHAR(69),
        @PM_NonWeatherLoss BIT,
        @PM_TStamp TIMESTAMP,
        @Upd_Optional BIT,
		@Upd_Required BIT
	)

AS
DECLARE @RowsUpdated INT
SET NOCOUNT OFF;

BEGIN TRANSACTION
/*  UPDATE REQUIRED FIELDS */
IF @Upd_Required = 1 BEGIN
	UPDATE    Premises SET	  
		PM_HouseNum = @PM_HouseNum,
		PM_AptNum = @PM_AptNum,
		PM_Addr1 = @PM_Addr1, 
		PM_Addr2 = @PM_Addr2, 
		PM_City = @PM_City, 
		PM_State = @PM_State, 
		PM_ZipCode = @PM_ZipCode, 
		PM_ZipCodePlus4 = @PM_ZipCodePlus4, 
		PM_LglDesc1 = @PM_LglDesc1, 
		PM_LglDesc2 = @PM_LglDesc2, 
		PM_DwellUse = @PM_DwellUse, 
		PM_NumFamily = @PM_NumFamily, 
		PM_EmpResidence = @PM_EmpResidence, 
		PM_EmpNumber = @PM_EmpNumber, 
		PM_FarmOp = @PM_FarmOp, 
		PM_FarmAcres = @PM_FarmAcres, 
		PM_Construction = @PM_Construction, 
		PM_ProtClass = @PM_ProtClass, 
		PM_YearBuilt = @PM_YearBuilt, 
		PM_ResType = @PM_ResType, 
		PM_FireDivUnit = @PM_FireDivUnit, 
		PM_FireDeptSrvLmt = @PM_FireDeptSrvLmt, 
		PM_FireDeptMi = @PM_FireDeptMi, 
		PM_SmkDetector = @PM_SmkDetector, 
		PM_BrglrAlarm = @PM_BrglrAlarm, 
		PM_FireAlarm = @PM_FireAlarm, 
		PM_WoodStove = @PM_WoodStove, 
		PM_BuilderRisk = @PM_BuilderRisk,
		PM_UpdWireYr = @PM_UpdWireYr, 
		PM_UpdHeatYr = @PM_UpdHeatYr, 
		PM_PriHeatType = @PM_PriHeatType,
		PM_Business = @PM_Business, 
		PM_BusinessDesc = @PM_BusinessDesc, 
 		PM_Comments = @PM_Comments
	WHERE     (PM_ID = @PM_ID) AND (PM_TStamp = @PM_TStamp)
END
Set @RowsUpdated = @@rowcount 
IF @@Error <> 0 goto PROBLEM

IF @RowsUpdated > 0 BEGIN
		EXECUTE DelAllRates @HH_ID
		IF @@Error <> 0 goto PROBLEM

		/* REMOVE BUILDER RISK ENDORSMENTS IF BUILDER RISK IS DECLINED */
		IF @PM_BuilderRisk = 0 BEGIN
		    DELETE FROM AddEnd WHERE (HH_ID = @HH_ID) AND ((ED_Type = 'F004') OR (ED_Type = 'F070'))
		    IF @@Error <> 0 goto PROBLEM
		END

		/*  UPDATE OPTIONAL FIELDS ON DRIVER SCREEN */
		IF @Upd_Optional = 1 BEGIN	
			UPDATE    Premises SET	             
				PM_FireHydtPresent = @PM_FireHydtPresent, 
				PM_FireHydtFt = @PM_FireHydtFt, 
				PM_InCityLimits = @PM_InCityLimits, 
				PM_FireDstrctName = @PM_FireDstrctName, 
				PM_HeatSysAge = @PM_HeatSysAge, 
				PM_RoofType = @PM_RoofType, 
				PM_RoofAge = @PM_RoofAge, 
				PM_RoofCond = @PM_RoofCond, 
				PM_MHManufacturer = @PM_MHManufacturer, 
				PM_MHSerialNum = @PM_MHSerialNum, 
				PM_MHModel = @PM_MHModel, 
				PM_MHLen = @PM_MHLen, 
				PM_MHWidth = @PM_MHWidth, 
				PM_MHMovingSoon = @PM_MHMovingSoon, 
				PM_MHDamaged = @PM_MHDamaged, 
				PM_MHGotThermostat = @PM_MHGotThermostat, 
				PM_MHFoundation = @PM_MHFoundation, 
				PM_MHTieDowns = @PM_MHTieDowns
				WHERE (PM_ID = @PM_ID)
		END
			/* UPDATE THE HOUSEHOLD RECORD */
			UPDATE    Household SET
				HH_PlanID = @HH_PlanID,
				HH_LastDateUpd = Getdate()
				WHERE     (HH_ID = @HH_ID)
			IF @@Error <> 0 goto PROBLEM
END

COMMIT TRANSACTION
RETURN @RowsUpdated

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[UpdIRPMInfo]    Script Date: 10/10/2009 16:34:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdIRPMInfo]
/* UPDATE CLUE CREDIT SCORE AND OTHER INFO */
	(
	@HH_ID INT, 
	@HH_CLAStatus CHAR(1),
	@HH_AppClueSCR VARCHAR(3),
	@HH_CLADte DATETIME,
	@HH_CLALstOrdDte DATETIME
	)

AS
UPDATE    Household
	SET
		HH_CLADte = @HH_CLADte,
		HH_CLALstOrdDte = @HH_CLALstOrdDte,
		HH_CLAStatus = @HH_CLAStatus,
		HH_AppClueSCR = @HH_AppClueSCR
	WHERE     (HH_ID = @HH_ID)
	
/* REMOVE ALL RATE RECORDS IF WE ARE UPDATING THE HOUSEHOLD RECORD */
EXECUTE DelAllRates @HH_ID
RETURN
GO
/****** Object:  StoredProcedure [dbo].[UpdPlan]    Script Date: 10/10/2009 16:34:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdPlan]
/* UPDATE THE PLAN IN THE HOUSEHOLD RECORD */
	(
		@HH_ID INT,
		@HH_PlanID VARCHAR(3)
	)
AS
DECLARE @RowsUpdated INT
SET NOCOUNT OFF;

BEGIN TRANSACTION

	UPDATE    Household SET	
		HH_PlanID = @HH_PlanID,
		HH_LastDateUpd  = Getdate() WHERE (HH_ID = @HH_ID)
	Set @RowsUpdated = @@rowcount 
	IF @@Error <> 0 goto PROBLEM

	/* REMOVE ALL RATE RECORDS IF WE ARE UPDATING THE HOUSEHOLD RECORD */
	EXECUTE DelAllRates @HH_ID
	IF @@Error <> 0 goto PROBLEM
	
COMMIT TRANSACTION
RETURN @RowsUpdated

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[DelEndNoScreen]    Script Date: 10/10/2009 16:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DelEndNoScreen]
/* REMOVE ENDORSMENTS WITH NO SCREEN ATTACHED */
	(
		@HH_ID INT,
		@ED_Type VARCHAR(10)
	)
AS
DECLARE @RowsUpdated INT
SET NOCOUNT OFF;

DELETE FROM AddEnd
WHERE     (HH_ID = @HH_ID) AND (ED_Type = @ED_Type)
Set @RowsUpdated = @@rowcount 
IF @@Error <> 0 goto PROBLEM

/* UPDATE DRIVER COMMENTS IN THE HOUSEHOLD RECORD */
UPDATE    Household SET HH_LastDateUpd = Getdate() WHERE (HH_ID = @HH_ID)
IF @@Error <> 0 goto PROBLEM

/* REMOVE ALL RATE RECORDS IF WE ARE UPDATING THE HOUSEHOLD RECORD */
EXECUTE DelAllRates @HH_ID
IF @@Error <> 0 goto PROBLEM

RETURN @RowsUpdated

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[UpdAddEnd]    Script Date: 10/10/2009 16:34:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdAddEnd]
/*  UPDATE ADDITIONAL ENDORSEMENT RECORD */
	(
		@ED_ID INT,
		@HH_ID INT,
		@ED_Type VARCHAR(10),
		@ED_PlanID VARCHAR(3),
		@ED_FormId VARCHAR(6),
		@ED_Description1 VARCHAR(512),
		@ED_Description2 VARCHAR(255),
		@ED_Description3 VARCHAR(255),
		@ED_Name1 VARCHAR(30),
		@ED_Name2 VARCHAR(30),
		@ED_Addr1 VARCHAR(30),
		@ED_Addr2 VARCHAR(30),
		@ED_City VARCHAR(30),
		@ED_State VARCHAR(2),
		@ED_ZipCode VARCHAR(5),
		@ED_ZipPlus4 VARCHAR(4),
		@ED_LiabLmt VARCHAR(10),
		@ED_CvrLmt VARCHAR(10),
		@ED_NumFamily CHAR(1),
		@ED_BusinessType CHAR(1),
		@ED_FarmOponPremises BIT,
		@ED_BusinessonPremises BIT,
		@ED_VeneerExclude BIT,
		@ED_IncLiability BIT,
		@ED_PPropType CHAR(1),
		@ED_Loc2Name1 VARCHAR(30),
		@ED_Loc2Name2 VARCHAR(30),
		@ED_Loc2Addr1 VARCHAR(30),
		@ED_Loc2Addr2 VARCHAR(30),
		@ED_Loc2City VARCHAR(30),
		@ED_Loc2State VARCHAR(2),
		@ED_Loc2ZipCode VARCHAR(5),
		@ED_Loc2ZipPlus4 VARCHAR(4),
		@ED_Loc2LiabLmt VARCHAR(10),
		@ED_465Money VARCHAR(5),
		@ED_465Securities VARCHAR(5),
		@ED_465Jewelery VARCHAR(5),
		@ED_465Firearms VARCHAR(5),
		@ED_465Silverware VARCHAR(5),
		@ED_465ElectIn VARCHAR(5),
		@ED_465ElectOut VARCHAR(5),
		@ED_435LiabLmtPremises VARCHAR(10),
		@ED_DedPercent VARCHAR(4),
		@ED_DedAmt VARCHAR(5),
		@ED_EffDate DATETIME,
		@ED_456ReplValPercent VARCHAR(2),
		@ED_2475WCType CHAR(1),
		@ED_2475WCYear VARCHAR(4),
		@ED_2475WCMake VARCHAR(20),
		@ED_2475WCModel VARCHAR(12),
		@ED_2475WCLength VARCHAR(3),
		@ED_2475WCSerial VARCHAR(20),
		@ED_2475WCMAYear VARCHAR(4),
		@ED_2475WCMAMake VARCHAR(20),
		@ED_2475WCMAModel VARCHAR(12),
		@ED_2475WCMAHP VARCHAR(3),
		@ED_2475WCMASerial VARCHAR(20),
		@ED_2475WCMBYear VARCHAR(4),
		@ED_2475WCMBMake VARCHAR(20),
		@ED_2475WCMBModel VARCHAR(12),
		@ED_2475WCMBHP VARCHAR(3),
		@ED_2475WCMBSerial VARCHAR(20),
		@ED_0461AppraisalDate DATETIME,
		@ED_SeqNum VARCHAR(3),
		@ED_Cost MONEY,
		@Upd_Required BIT,
		@Upd_Optional BIT,
		@ED_TStamp TIMESTAMP,
		@ED_SSN CHAR(9) = NULL,
		@ED_DOB DATETIME = NULL
	)
AS
DECLARE @RowsUpdated INT
SET NOCOUNT OFF;

BEGIN TRANSACTION

	IF @ED_Type = 'F070' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_CvrLmt = @ED_CvrLmt 
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END

	IF @ED_Type = 'HO0461' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_Description1 = @ED_Description1, 
			ED_CvrLmt = @ED_CvrLmt, 
			ED_PPropType = @ED_PPropType,
			ED_0461AppraisalDate = @ED_0461AppraisalDate
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END
	
	IF @ED_Type = 'MH0403' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_EffDate = @ED_EffDate, 
			ED_DedAmt = @ED_DedAmt
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END

	IF @ED_Type = 'MH0406' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_LiabLmt = @ED_LiabLmt
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END

	IF @ED_Type = 'HO0412' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_LiabLmt = @ED_LiabLmt
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END

	IF @ED_Type = 'HO0435' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_435LiabLmtPremises = @ED_435LiabLmtPremises,
			ED_Addr1 = @ED_Addr1,
			ED_Addr2 = @ED_Addr2,
			ED_City = @ED_City,
			ED_State = @ED_State,
			ED_ZipCode = @ED_ZipCode,
			ED_ZipPlus4 = @ED_ZipPlus4,
			ED_LiabLmt = @ED_LiabLmt,
			ED_Loc2Addr1 = @ED_Loc2Addr1,
			ED_Loc2Addr2 = @ED_Loc2Addr2,
			ED_Loc2City = @ED_Loc2City,
			ED_Loc2State = @ED_Loc2State,
			ED_Loc2ZipCode = @ED_Loc2ZipCode,
			ED_Loc2ZipPlus4 = @ED_Loc2ZipPlus4,
			ED_Loc2LiabLmt = @ED_Loc2LiabLmt
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END
	
	IF @ED_Type = 'HO0441' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_Name1 = @ED_Name1,
			ED_Name2 = @ED_Name2,
			ED_Addr1 = @ED_Addr1,
			ED_Addr2 = @ED_Addr2,
			ED_City = @ED_City,
			ED_State = @ED_State,
			ED_ZipCode = @ED_ZipCode,
			ED_ZipPlus4 = @ED_ZipPlus4,
			ED_Description1 = @ED_Description1,
			ED_SSN = @ED_SSN,
			ED_DOB = @ED_DOB
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END
	
	IF @ED_Type = 'HO0442' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_BusinessonPremises = @ED_BusinessonPremises,
			ED_Description1 = @ED_Description1,
			ED_Description2 = @ED_Description2,
			ED_CvrLmt = @ED_CvrLmt
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END
	
	IF @ED_Type = 'HO0449' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_Addr1 = @ED_Addr1,
			ED_Addr2 = @ED_Addr2,
			ED_City = @ED_City,
			ED_State = @ED_State,
			ED_ZipCode = @ED_ZipCode,
			ED_ZipPlus4 = @ED_ZipPlus4,
			ED_LiabLmt = @ED_LiabLmt,
			ED_Loc2Addr1 = @ED_Loc2Addr1,
			ED_Loc2Addr2 = @ED_Loc2Addr2,
			ED_Loc2City = @ED_Loc2City,
			ED_Loc2State = @ED_Loc2State,
			ED_Loc2ZipCode = @ED_Loc2ZipCode,
			ED_Loc2ZipPlus4 = @ED_Loc2ZipPlus4,
			ED_Loc2LiabLmt = @ED_Loc2LiabLmt
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END	

	IF @ED_Type = 'HO0451' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_LiabLmt = @ED_LiabLmt
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END

	IF @ED_Type = 'HO0453' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_LiabLmt = @ED_LiabLmt
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END

	IF @ED_Type = 'HO0454' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_DedPercent = @ED_DedPercent,
			ED_VeneerExclude = @ED_VeneerExclude
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END

	IF @ED_Type = 'HO0456' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_DedPercent = @ED_DedPercent
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END

	IF @ED_Type = 'HO0465' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_465Money = @ED_465Money,
			ED_465Securities = @ED_465Securities,
			ED_465Jewelery = @ED_465Jewelery,
			ED_465Firearms = @ED_465Firearms,
			ED_465Silverware = @ED_465Silverware,
			ED_465ElectIn = @ED_465ElectIn,
			ED_465ElectOut = @ED_465ElectOut
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END
	
	IF @ED_Type = 'HO2413' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_CvrLmt = ED_CvrLmt
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END
	
	IF @ED_Type = 'HO2443' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_Addr1 = @ED_Addr1,
			ED_Addr2 = @ED_Addr2,
			ED_City = @ED_City,
			ED_State = @ED_State,
			ED_ZipCode = @ED_ZipCode,
			ED_ZipPlus4 = @ED_ZipPlus4,
			ED_Description1 = @ED_Description1
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END
	
	IF @ED_Type = 'HO2471' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_Name1 = @ED_Name1,
			ED_BusinessType = @ED_BusinessType,
			ED_IncLiability = @ED_IncLiability
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END	
	
	IF @ED_Type = 'ADDLRES' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_Addr1 = @ED_Addr1,
			ED_Addr2 = @ED_Addr2,
			ED_City = @ED_City,
			ED_State = @ED_State,
			ED_ZipCode = @ED_ZipCode,
			ED_ZipPlus4 = @ED_ZipPlus4,
			ED_NumFamily = @ED_NumFamily
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END

	IF @ED_Type = 'HO0528C' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_CvrLmt = @ED_CvrLmt
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END
	
	IF @ED_Type = 'HO0440' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_Description1 = @ED_Description1, 
			ED_LiabLmt = @ED_LiabLmt
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END

	IF @ED_Type = 'HO0448' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_Description1 = @ED_Description1, 
			ED_LiabLmt = @ED_LiabLmt
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END	

	IF @ED_Type = 'HO0450' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_Addr1 = @ED_Addr1,
			ED_Addr2 = @ED_Addr2,
			ED_City = @ED_City,
			ED_State = @ED_State,
			ED_ZipCode = @ED_ZipCode,
			ED_ZipPlus4 = @ED_ZipPlus4,
			ED_LiabLmt = @ED_LiabLmt
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END

	IF @ED_Type = 'HO0492' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_Description1 = @ED_Description1,
			ED_Addr1 = @ED_Addr1,
			ED_Addr2 = @ED_Addr2,
			ED_City = @ED_City,
			ED_State = @ED_State,
			ED_ZipCode = @ED_ZipCode,
			ED_ZipPlus4 = @ED_ZipPlus4,
			ED_LiabLmt = @ED_LiabLmt
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END

	IF @ED_Type = 'HO2464' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_Description1 = @ED_Description1,
			ED_Description2 = @ED_Description2
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END		

	IF @ED_Type = 'HO2470' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_Addr1 = @ED_Addr1,
			ED_Addr2 = @ED_Addr2,
			ED_City = @ED_City,
			ED_State = @ED_State,
			ED_ZipCode = @ED_ZipCode,
			ED_ZipPlus4 = @ED_ZipPlus4,
			ED_NumFamily = @ED_NumFamily
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END

	IF @ED_Type = 'HO2472' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_Description1 = @ED_Description1,
			ED_Addr1 = @ED_Addr1,
			ED_Addr2 = @ED_Addr2,
			ED_City = @ED_City,
			ED_State = @ED_State,
			ED_ZipCode = @ED_ZipCode,
			ED_ZipPlus4 = @ED_ZipPlus4,
			ED_FarmOponPremises = @ED_FarmOponPremises
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END
		
	IF @ED_Type = 'HO2475' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId, 
			ED_2475WCType = @ED_2475WCType,
			ED_2475WCYear = @ED_2475WCYear,
			ED_2475WCMake = @ED_2475WCMake,
			ED_2475WCModel = @ED_2475WCModel,
			ED_2475WCLength = @ED_2475WCLength,
			ED_2475WCSerial = @ED_2475WCSerial,
			ED_2475WCMAYear = @ED_2475WCMAYear,
			ED_2475WCMAMake = @ED_2475WCMAMake,
			ED_2475WCMAModel = @ED_2475WCMAModel,
			ED_2475WCMAHP = @ED_2475WCMAHP,
			ED_2475WCMASerial = @ED_2475WCMASerial,
			ED_2475WCMBYear = @ED_2475WCMBYear,
			ED_2475WCMBMake = @ED_2475WCMBMake,
			ED_2475WCMBModel = @ED_2475WCMBModel,
			ED_2475WCMBHP = @ED_2475WCMBHP,
			ED_2475WCMBSerial = @ED_2475WCMBSerial		
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END
	
	IF @ED_Type = 'HO0410' BEGIN
		UPDATE    AddEnd SET
			ED_PlanID = @ED_PlanID, 
			ED_FormId = @ED_FormId,
			ED_Name1 = @ED_Name1,
			ED_Name2 = @ED_Name2, 
			ED_Addr1 = @ED_Addr1,
			ED_Addr2 = @ED_Addr2,
			ED_City = @ED_City,
			ED_State = @ED_State,
			ED_ZipCode = @ED_ZipCode,
			ED_ZipPlus4 = @ED_ZipPlus4,
			ED_Loc2Name1 = @ED_Loc2Name1,
			ED_Loc2Name2 = @ED_Loc2Name2, 
			ED_Loc2Addr1 = @ED_Loc2Addr1,
			ED_Loc2Addr2 = @ED_Loc2Addr2,
			ED_Loc2City = @ED_Loc2City,
			ED_Loc2State = @ED_Loc2State,
			ED_Loc2ZipCode = @ED_Loc2ZipCode,
			ED_Loc2ZipPlus4 = @ED_Loc2ZipPlus4,
			ED_Description1 = @ED_Description1,
			ED_Description2 = @ED_Description2
		WHERE     (ED_ID = @ED_ID) AND (ED_TStamp = @ED_TStamp)
		Set @RowsUpdated = @@rowcount 
		IF @@Error <> 0 goto PROBLEM
	END	


	IF @RowsUpdated > 0 BEGIN
		EXECUTE DelAllRates @HH_ID
		IF @@Error <> 0 goto PROBLEM
		/* UPDATE THE HOUSEHOLD RECORD */
		UPDATE    Household SET	HH_LastDateUpd = Getdate() WHERE (HH_ID = @HH_ID)
		IF @@Error <> 0 goto PROBLEM
	END

COMMIT TRANSACTION
RETURN @RowsUpdated

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[UpdCluAttrStatus]    Script Date: 10/10/2009 16:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdCluAttrStatus]
/*  UPDATE CLUE STATUS AND LAST TIME ORDERED */
	(
		@HH_ID INT,
		@HH_CLAStatus CHAR(1),
		@ClearInfo bit

	)
AS

IF @ClearInfo = 1 BEGIN
	/*  CLEAR THE FIELDS AND DELETE CLUE ON FILE */
	UPDATE    Household
	SET
		HH_CLADte = NULL, 
		HH_CLALstOrdDte = NULL,
		HH_CLAStatus = @HH_CLAStatus,
		HH_AppClueSCR = NULL
	WHERE     (HH_ID = @HH_ID)
	
	DELETE FROM POS WHERE (HH_ID = @HH_ID) AND (POS_Type = 'CLA')
END
ELSE BEGIN
	UPDATE    Household
	SET
		HH_CLADte = NULL, 
		HH_CLALstOrdDte = GETDATE(), 
		HH_CLAStatus = @HH_CLAStatus,
		HH_AppClueSCR = NULL
	WHERE     (HH_ID = @HH_ID)
END

/* REMOVE ALL RATE RECORDS IF WE ARE UPDATING THE HOUSEHOLD RECORD */
EXECUTE DelAllRates @HH_ID
RETURN
GO
/****** Object:  StoredProcedure [dbo].[UpdCoverage]    Script Date: 10/10/2009 16:34:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdCoverage]
/*  UPDATE COVERAGE INFORMATION IN PREMISES TABLE */
	(
		@HH_ID INT,
		@HH_PlanID VARCHAR(3), 
		@PM_ID INT,
		@PM_Cvg100Percent BIT,
		@PM_CvgA VARCHAR(9),
		@PM_CvgB VARCHAR(9),
		@PM_CvgC VARCHAR(9),
		@PM_CvgD VARCHAR(9),
		@PM_CvgE VARCHAR(9),
		@PM_CvgF VARCHAR(9),
		@PM_CvgPerils VARCHAR(9),
		@PM_WindHail VARCHAR(9),
        @PM_TStamp TIMESTAMP,
        @Upd_Optional BIT,
		@Upd_Required BIT,
		@HH_LockPlan BIT
	)

AS
DECLARE @RowsUpdated INT
SET NOCOUNT OFF;
BEGIN TRANSACTION

/*  UPDATE REQUIRED FIELDS */
IF @Upd_Required = 1 BEGIN
	UPDATE Premises SET
		PM_Cvg100Percent = @PM_Cvg100Percent, 
		PM_CvgA = @PM_CvgA, 
		PM_CvgB = @PM_CvgB, 
		PM_CvgC = @PM_CvgC, 
		PM_CvgD = @PM_CvgD, 
		PM_CvgE = @PM_CvgE, 
		PM_CvgF = @PM_CvgF, 
		PM_CvgPerils = @PM_CvgPerils,
		PM_WindHail = @PM_WindHail,
		PM_CvgVisited = 1
	WHERE     (PM_ID = @PM_ID) AND (PM_TStamp = @PM_TStamp)
END
Set @RowsUpdated = @@rowcount 
IF @@Error <> 0 goto PROBLEM

IF @RowsUpdated > 0 BEGIN
	EXECUTE DelAllRates @HH_ID
	IF @@Error <> 0 goto PROBLEM

	/* UPDATE DRIVER COMMENTS IN THE HOUSEHOLD RECORD */
	UPDATE    Household SET
		HH_PlanID = @HH_PlanID,
		HH_LockPlan = @HH_LockPlan,
		HH_LastDateUpd = Getdate()
		WHERE     (HH_ID = @HH_ID)
	IF @@Error <> 0 goto PROBLEM
END

COMMIT TRANSACTION
RETURN @RowsUpdated

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[UpdHousehold]    Script Date: 10/10/2009 16:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdHousehold]
/*  UPDATE THE HOUSEHOLD TABLE FROM THE HOUSEHOLD SCREEN */
	(
	@HH_ID INT,
	@HH_FirstName VARCHAR(20),
	@HH_MidName VARCHAR(10),
	@HH_LastName VARCHAR(20),
	@HH_SufName VARCHAR(5), 
	@HH_CoAppFirstName VARCHAR(20), 
	@HH_CoAppMidName VARCHAR(10), 
	@HH_CoAppLastName VARCHAR(20),
	@HH_CoAppSufName VARCHAR(5),
	@HH_HouseNum VARCHAR(10), 
	@HH_AptNum VARCHAR(10), 
	@HH_Addr1 VARCHAR(30), 
	@HH_Addr2 VARCHAR(30), 
	@HH_City VARCHAR(30), 
	@HH_State CHAR(2), 
	@HH_ZipCode CHAR(5), 
	@HH_ZipCodePlus4 CHAR(4), 
	@HH_PhNum VARCHAR(15),
    @HH_PolEffDate DATETIME, 
	@HH_PolTerm CHAR(2), 
	@HH_PolNew BIT, 
	@HH_OtherPolicy BIT,
	@HH_MultiPolPrefix VARCHAR(4),
	@HH_MultiPolNum VARCHAR(10),
	@HH_FormID VARCHAR(6),
	@HH_PlanID VARCHAR(3),
	@HH_Remarks VARCHAR(69),
	@Upd_Required BIT,
	@Upd_Optional BIT,
	@Upd_ScrubFields BIT,
	@HH_TStamp Timestamp
	)

AS
DECLARE @RowsUpdated INT
SET NOCOUNT OFF;

BEGIN TRANSACTION

IF @Upd_Required = 1 BEGIN
	UPDATE    Household
	SET     HH_FirstName = @HH_FirstName,
			HH_MidName = @HH_MidName, 
			HH_LastName = @HH_LastName, 
			HH_SufName = @HH_SufName, 
			HH_CoAppFirstName = @HH_CoAppFirstName, 
			HH_CoAppMidName = @HH_CoAppMidName, 
			HH_CoAppLastName = @HH_CoAppLastName, 
			HH_CoAppSufName = @HH_CoAppSufName, 
			HH_HouseNum = @HH_HouseNum, 
			HH_AptNum = @HH_AptNum, 
			HH_Addr1 = @HH_Addr1, 
			HH_Addr2 = @HH_Addr2, 
			HH_City = @HH_City, 
			HH_State = @HH_State, 
			HH_ZipCode = @HH_ZipCode, 
			HH_ZipCodePlus4 = @HH_ZipCodePlus4, 
			HH_PolEffDate = @HH_PolEffDate, 
			HH_PolTerm = @HH_PolTerm, 
			HH_PolNew = @HH_PolNew, 
			HH_OtherPolicy = @HH_OtherPolicy, 
			HH_MultiPolPrefix = @HH_MultiPolPrefix, 
			HH_MultiPolNum = @HH_MultiPolNum,
			HH_FormID = @HH_FormID,
			HH_PlanID = @HH_PlanID,
			HH_Remarks = @HH_Remarks 
	WHERE     (HH_ID = @HH_ID) AND (HH_TStamp = @HH_TStamp)
END
Set @RowsUpdated = @@rowcount 
IF @@Error <> 0 goto PROBLEM

IF @RowsUpdated > 0 
	BEGIN
		/*  UPDATE OPTIONAL FIELDS */
		IF @Upd_Optional = 1 BEGIN	
			UPDATE    Household
			SET     HH_PhNum = @HH_PhNum
				WHERE     (HH_ID = @HH_ID)
			IF @@Error <> 0 goto PROBLEM
		END
		IF @Upd_ScrubFields = 1 BEGIN
			UPDATE Household SET HH_ScrubOverride = NULL, HH_ScrubReturnCode = NULL WHERE (HH_ID = @HH_ID)
			IF @@Error <> 0 goto PROBLEM
		END
		EXECUTE DelAllRates @HH_ID
		IF @@Error <> 0 goto PROBLEM
	END
/* UPDATE LATE DATE UPDATED */
UPDATE Household SET HH_LastDateUpd  = Getdate() WHERE (HH_ID = @HH_ID)
IF @@Error <> 0 goto PROBLEM

COMMIT TRANSACTION
RETURN @RowsUpdated

PROBLEM:
	ROLLBACK TRANSACTION
	RETURN -1
GO
/****** Object:  StoredProcedure [dbo].[UpdClueScore]    Script Date: 10/10/2009 16:34:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdClueScore]
(
	@HH_ID INT, 
	@HH_CLAStatus CHAR(1),
	@HH_AppClueSCR VARCHAR(3),
	@HH_NcfRefNum VARCHAR(20) = NULL,
	@HH_ClueRefNum VARCHAR(20) = NULL
)
AS
UPDATE    Household
	SET 
		HH_CLADte = GETDATE(),
		HH_CLALstOrdDte = GETDATE(),
		HH_CLAStatus = @HH_CLAStatus,
		HH_AppClueSCR = @HH_AppClueSCR,
		HH_NcfRefNum = @HH_NcfRefNum,
		HH_ClueRefNum = @HH_ClueRefNum		
	WHERE     (HH_ID = @HH_ID)
	
/* REMOVE ALL RATE RECORDS IF WE ARE UPDATING THE HOUSEHOLD RECORD */
EXECUTE DelAllRates @HH_ID
RETURN
GO
/****** Object:  StoredProcedure [dbo].[DelLien]    Script Date: 10/10/2009 16:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DelLien]
/* PHYSICAL DELETE OF AN INDIVIDUAL DRIVER RECORD  */
	(
		@HH_ID INT,
		@LN_ID INT
	)
AS
DELETE FROM Lein_AddIns
WHERE     (LN_ID = @LN_ID)

/* REMOVE ALL RATE RECORDS IF WE ARE UPDATING THE HOUSEHOLD RECORD */
EXECUTE DelAllRates @HH_ID
RETURN
GO
/****** Object:  ForeignKey [FK_AddEnd_Household]    Script Date: 10/10/2009 16:35:33 ******/
ALTER TABLE [dbo].[AddEnd]  WITH NOCHECK ADD  CONSTRAINT [FK_AddEnd_Household] FOREIGN KEY([HH_ID])
REFERENCES [dbo].[Household] ([HH_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AddEnd] CHECK CONSTRAINT [FK_AddEnd_Household]
GO
/****** Object:  ForeignKey [FK_Audit_Household]    Script Date: 10/10/2009 16:35:37 ******/
ALTER TABLE [dbo].[Audit]  WITH NOCHECK ADD  CONSTRAINT [FK_Audit_Household] FOREIGN KEY([HH_ID])
REFERENCES [dbo].[Household] ([HH_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Audit] CHECK CONSTRAINT [FK_Audit_Household]
GO
/****** Object:  ForeignKey [FK_CmicCreditCardLimitCoverageType_CmicCreditCardLimit]    Script Date: 10/10/2009 16:35:39 ******/
ALTER TABLE [dbo].[CmicCreditCardLimitCoverageType]  WITH CHECK ADD  CONSTRAINT [FK_CmicCreditCardLimitCoverageType_CmicCreditCardLimit] FOREIGN KEY([creditCardLimitId])
REFERENCES [dbo].[CmicCreditCardLimit] ([id])
GO
ALTER TABLE [dbo].[CmicCreditCardLimitCoverageType] CHECK CONSTRAINT [FK_CmicCreditCardLimitCoverageType_CmicCreditCardLimit]
GO
/****** Object:  ForeignKey [FK_CmicDeductibleDefault_CmicDeductible]    Script Date: 10/10/2009 16:35:41 ******/
ALTER TABLE [dbo].[CmicDeductibleDefault]  WITH CHECK ADD  CONSTRAINT [FK_CmicDeductibleDefault_CmicDeductible] FOREIGN KEY([deductibleId])
REFERENCES [dbo].[CmicDeductible] ([id])
GO
ALTER TABLE [dbo].[CmicDeductibleDefault] CHECK CONSTRAINT [FK_CmicDeductibleDefault_CmicDeductible]
GO
/****** Object:  ForeignKey [FK_CmicDeductibleState_CmicDeductible]    Script Date: 10/10/2009 16:35:44 ******/
ALTER TABLE [dbo].[CmicDeductibleState]  WITH CHECK ADD  CONSTRAINT [FK_CmicDeductibleState_CmicDeductible] FOREIGN KEY([deductibleId])
REFERENCES [dbo].[CmicDeductible] ([id])
GO
ALTER TABLE [dbo].[CmicDeductibleState] CHECK CONSTRAINT [FK_CmicDeductibleState_CmicDeductible]
GO
/****** Object:  ForeignKey [FK_Driver_Household]    Script Date: 10/10/2009 16:36:02 ******/
ALTER TABLE [dbo].[Driver]  WITH NOCHECK ADD  CONSTRAINT [FK_Driver_Household] FOREIGN KEY([HH_ID])
REFERENCES [dbo].[Household] ([HH_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Driver] CHECK CONSTRAINT [FK_Driver_Household]
GO
/****** Object:  ForeignKey [FK_Household_Profile]    Script Date: 10/10/2009 16:36:42 ******/
ALTER TABLE [dbo].[Household]  WITH NOCHECK ADD  CONSTRAINT [FK_Household_Profile] FOREIGN KEY([HH_ProfID])
REFERENCES [dbo].[Profile] ([PF_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Household] CHECK CONSTRAINT [FK_Household_Profile]
GO
/****** Object:  ForeignKey [FK_Lein_AddIns_Household]    Script Date: 10/10/2009 16:36:48 ******/
ALTER TABLE [dbo].[Lein_AddIns]  WITH NOCHECK ADD  CONSTRAINT [FK_Lein_AddIns_Household] FOREIGN KEY([HH_ID])
REFERENCES [dbo].[Household] ([HH_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Lein_AddIns] CHECK CONSTRAINT [FK_Lein_AddIns_Household]
GO
/****** Object:  ForeignKey [FK_Note_Household]    Script Date: 10/10/2009 16:36:50 ******/
ALTER TABLE [dbo].[Note]  WITH CHECK ADD  CONSTRAINT [FK_Note_Household] FOREIGN KEY([HH_ID])
REFERENCES [dbo].[Household] ([HH_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Note] CHECK CONSTRAINT [FK_Note_Household]
GO
/****** Object:  ForeignKey [FK_POS_Household]    Script Date: 10/10/2009 16:36:54 ******/
ALTER TABLE [dbo].[POS]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_Household] FOREIGN KEY([HH_ID])
REFERENCES [dbo].[Household] ([HH_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[POS] CHECK CONSTRAINT [FK_POS_Household]
GO
/****** Object:  ForeignKey [FK_Premises_Household]    Script Date: 10/10/2009 16:37:26 ******/
ALTER TABLE [dbo].[Premises]  WITH NOCHECK ADD  CONSTRAINT [FK_Premises_Household] FOREIGN KEY([HH_ID])
REFERENCES [dbo].[Household] ([HH_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Premises] CHECK CONSTRAINT [FK_Premises_Household]
GO
/****** Object:  ForeignKey [FK_Rate_Household]    Script Date: 10/10/2009 16:37:52 ******/
ALTER TABLE [dbo].[Rate]  WITH NOCHECK ADD  CONSTRAINT [FK_Rate_Household] FOREIGN KEY([HH_ID])
REFERENCES [dbo].[Household] ([HH_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rate] CHECK CONSTRAINT [FK_Rate_Household]
GO