DECLARE @DB VARCHAR(255)
SET @DB = DB_NAME()
EXEC('ALTER DATABASE [' + @DB + '] COLLATE SQL_Latin1_General_CP1_CI_AS')
EXEC('ALTER DATABASE [' + @DB + '] SET ANSI_NULL_DEFAULT OFF')
EXEC('ALTER DATABASE [' + @DB + '] SET ANSI_NULLS OFF')
EXEC('ALTER DATABASE [' + @DB + '] SET ANSI_PADDING OFF')
EXEC('ALTER DATABASE [' + @DB + '] SET ANSI_WARNINGS OFF')
EXEC('ALTER DATABASE [' + @DB + '] SET ARITHABORT OFF')
EXEC('ALTER DATABASE [' + @DB + '] SET AUTO_CLOSE OFF')
EXEC('ALTER DATABASE [' + @DB + '] SET AUTO_CREATE_STATISTICS ON')
EXEC('ALTER DATABASE [' + @DB + '] SET AUTO_SHRINK OFF')
EXEC('ALTER DATABASE [' + @DB + '] SET AUTO_UPDATE_STATISTICS ON')
EXEC('ALTER DATABASE [' + @DB + '] SET CURSOR_CLOSE_ON_COMMIT OFF')
EXEC('ALTER DATABASE [' + @DB + '] SET CURSOR_DEFAULT  GLOBAL')
EXEC('ALTER DATABASE [' + @DB + '] SET CONCAT_NULL_YIELDS_NULL OFF')
EXEC('ALTER DATABASE [' + @DB + '] SET NUMERIC_ROUNDABORT OFF')
EXEC('ALTER DATABASE [' + @DB + '] SET QUOTED_IDENTIFIER OFF')
EXEC('ALTER DATABASE [' + @DB + '] SET RECURSIVE_TRIGGERS OFF')
EXEC('ALTER DATABASE [' + @DB + '] SET DISABLE_BROKER')
EXEC('ALTER DATABASE [' + @DB + '] SET AUTO_UPDATE_STATISTICS_ASYNC OFF')
EXEC('ALTER DATABASE [' + @DB + '] SET DATE_CORRELATION_OPTIMIZATION OFF')
EXEC('ALTER DATABASE [' + @DB + '] SET TRUSTWORTHY OFF')
EXEC('ALTER DATABASE [' + @DB + '] SET ALLOW_SNAPSHOT_ISOLATION OFF')
EXEC('ALTER DATABASE [' + @DB + '] SET PARAMETERIZATION SIMPLE')
EXEC('ALTER DATABASE [' + @DB + '] SET READ_COMMITTED_SNAPSHOT OFF')
EXEC('ALTER DATABASE [' + @DB + '] SET READ_WRITE')
EXEC('ALTER DATABASE [' + @DB + '] SET RECOVERY FULL')
EXEC('ALTER DATABASE [' + @DB + '] SET MULTI_USER')
EXEC('ALTER DATABASE [' + @DB + '] SET PAGE_VERIFY TORN_PAGE_DETECTION')
EXEC('ALTER DATABASE [' + @DB + '] SET DB_CHAINING OFF')
GO

/****** Object:  Table [dbo].[ADM_DOC_TYPE]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_DOC_TYPE](
	[DOC_TYPE_ID] [decimal](15, 0) NOT NULL,
	[DOC_TYPE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[DOC_CATEGORY_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[DOC_GROUP_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[ACTIVATE_ENTITY_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[QUICK_FILE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[AUTO_FILE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DOC_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NTE_NOTE_PROD_DATA]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NTE_NOTE_PROD_DATA](
	[NOTE_PROD_DATA_ID] [numeric](15, 0) NOT NULL,
	[REFERENCE_TYPE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[ANCESTOR_TYPE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[ANCESTOR_ID] [numeric](15, 0) NOT NULL,
	[SYSTEM_ID] [numeric](15, 0) NOT NULL,
	[REFERENCE_ID] [numeric](15, 0) NOT NULL,
	[REFERENCE_DISPLAY] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[ANCESTOR_DISPLAY] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
	[ALERT_NOTE_ID] [numeric](9, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[NOTE_PROD_DATA_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [NOTE_PROD_D18IE1] ON [dbo].[NTE_NOTE_PROD_DATA] 
(
	[SYSTEM_ID] ASC,
	[ANCESTOR_ID] ASC,
	[ANCESTOR_TYPE_C] ASC,
	[REFERENCE_ID] ASC,
	[REFERENCE_TYPE_C] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_ERR_SEVERITY]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_ERR_SEVERITY](
	[ERR_SEVERITY_ID] [numeric](15, 0) NOT NULL,
	[SEVERITY_DESC] [varchar](120) COLLATE Latin1_General_BIN NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ERR_SEVERITY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO


/****** Object:  Table [dbo].[SYS_COUNTRY]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_COUNTRY](
	[COUNTRY_ID] [numeric](15, 0) NOT NULL,
	[COUNTRY_CODE] [char](3) COLLATE Latin1_General_BIN NOT NULL,
	[INACTIVE_DT] [datetime] NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[COUNTRY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [COUNTRY11AK1] ON [dbo].[SYS_COUNTRY] 
(
	[COUNTRY_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[SYS_DEVICE_CONFIG]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_DEVICE_CONFIG](
	[DEVICE_CONFIG_ID] [decimal](15, 0) NOT NULL,
	[DEVICE_TYPE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[DEVICE_TYPE_NAME] [varchar](24) COLLATE Latin1_General_BIN NOT NULL,
	[IMPL_CLASS] [varchar](255) COLLATE Latin1_General_BIN NOT NULL,
	[IMAGE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[NON_IMAGE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DEVICE_CONFIG_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [DEVICE_CONF17AK1] ON [dbo].[SYS_DEVICE_CONFIG] 
(
	[DEVICE_TYPE_NAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_CURRENCY]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_CURRENCY](
	[CURRENCY_ID] [numeric](15, 0) NOT NULL,
	[ISO_CODE] [varchar](3) COLLATE Latin1_General_BIN NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CURRENCY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[XPI_GETNEXTID]    Script Date: 03/08/2010 15:04:29 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[XPI_GETNEXTID] @v_IDType CHAR(6) , 
   @v_nextID INT OUTPUT 
 
--=============================================================================
-- *   Return status values:
-- *
-- *   Note:    The constants declared here for return values match those
-- *       constants defined in VB and PB header files.
-- *============================================================================
AS L_xpi_GetNextID:
BEGIN 
   DECLARE @v_tmp_var CHAR(10)
   DECLARE @v_temp_SQLCODE INT 
   DECLARE @v_temp_SQLSTATE CHAR(5) 
   DECLARE @v_ID_CREATE_FAILED INT
   DECLARE @v_SUCCESS INT
   DECLARE @v_newID INT
   DECLARE @SWV_error INT
   DECLARE @SWV_No_Data_Err INT
   SET @v_temp_SQLCODE = 0
   SET @v_temp_SQLSTATE = '00000'
   SET @v_ID_CREATE_FAILED = 904
   SET @v_SUCCESS = 0
   SET @v_newID = 0
   if @v_IDType = 'PERM'
   begin
      SET @v_temp_SQLSTATE = '00000'
      SET @v_temp_SQLCODE = 0
      -- set the next available id and return the previous id 
      update SYS_PERM_ID set NEXT_ID =(CAST(NEXT_ID AS INT)+1)
      select  @SWV_error = @@ERROR, @SWV_No_Data_Err = @@ROWCOUNT
      if(@SWV_error <> 0 OR @SWV_No_Data_Err = 0)
      begin
         SET @v_tmp_var = 'MSSQL'+CAST(@SWV_error AS CHAR(5))
         SET @v_temp_SQLSTATE = SUBSTRING(@v_tmp_var,1,5)
         SET @v_temp_SQLCODE = CAST(SUBSTRING(@v_tmp_var,6,5) AS INT)
      end
      if(@v_temp_SQLCODE <> 0)
      begin
         RETURN @v_ID_CREATE_FAILED
      end
      select  @v_newID = NEXT_ID  FROM SYS_PERM_ID
      select  @SWV_error = @@ERROR, @SWV_No_Data_Err = @@ROWCOUNT
      if(@SWV_error <> 0 OR @SWV_No_Data_Err = 0)
      begin
         SET @v_tmp_var = 'MSSQL'+CAST(@SWV_error AS CHAR(5))
         SET @v_temp_SQLSTATE = SUBSTRING(@v_tmp_var,1,5)
         SET @v_temp_SQLCODE = CAST(SUBSTRING(@v_tmp_var,6,5) AS INT)
      end
      SET @v_nextID = @v_newID
   end
   if @v_IDType = 'TRAN'
   begin
      SET @v_temp_SQLSTATE = '00000'
      SET @v_temp_SQLCODE = 0
      -- set the next available id and return the previous id 
      update SYS_TRAN_ID set NEXT_ID =(CAST(NEXT_ID AS INT)+1)
      select  @SWV_error = @@ERROR, @SWV_No_Data_Err = @@ROWCOUNT
      if(@SWV_error <> 0 OR @SWV_No_Data_Err = 0)
      begin
         SET @v_tmp_var = 'MSSQL'+CAST(@SWV_error AS CHAR(5))
         SET @v_temp_SQLSTATE = SUBSTRING(@v_tmp_var,1,5)
         SET @v_temp_SQLCODE = CAST(SUBSTRING(@v_tmp_var,6,5) AS INT)
      end
      if(@v_temp_SQLCODE <> 0)
      begin
         RETURN @v_ID_CREATE_FAILED
      end
      select  @v_newID = NEXT_ID  FROM SYS_TRAN_ID
      select  @SWV_error = @@ERROR, @SWV_No_Data_Err = @@ROWCOUNT
      if(@SWV_error <> 0 OR @SWV_No_Data_Err = 0)
      begin
         SET @v_tmp_var = 'MSSQL'+CAST(@SWV_error AS CHAR(5))
         SET @v_temp_SQLSTATE = SUBSTRING(@v_tmp_var,1,5)
         SET @v_temp_SQLCODE = CAST(SUBSTRING(@v_tmp_var,6,5) AS INT)
      end
      SET @v_nextID = @v_newID
   end   
   RETURN @v_SUCCESS
END
GO
/****** Object:  Table [dbo].[ADM_OFFICE_LOC]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_OFFICE_LOC](
	[OFFICE_LOC_ID] [numeric](15, 0) NOT NULL,
	[OFFICE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[SYSTEM_ADDR_V_ID] [numeric](15, 0) NOT NULL,
	[INACTIVE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OFFICE_LOC_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [OFFICE_LOC14AK1] ON [dbo].[ADM_OFFICE_LOC] 
(
	[OFFICE_C] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[XP_LISTCACHESERVER]    Script Date: 03/08/2010 15:04:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DROP Procedure XP_LISTCACHESERVER
Create Procedure [dbo].[XP_LISTCACHESERVER]
@commitFlag    Numeric(10),
@ImageServerID	numeric(15),
@LocaleID	numeric(15)

AS
-- dynamic result sets 1 
------------------------------------------------------------------------
-- SQL Stored Procedure 
------------------------------------------------------------------------
--LISTCACHESERVER: BEGIN
/*=============================================================================
 * Return status values:
 *
 * Note:  The constants declared here for return values match those
 *   constants defined in VB and PB header files.
 *============================================================================*/
	Declare @SUCCESS     		integer; 
	Declare @SELECT_FAILED 		integer; 
	Declare @SQLCODE		integer;
	Declare @v_temp_SQLCODE 	integer;
	Declare @SQLSTATE       	char(5);
	Declare @V_STAT         	int;  
	Declare @V_TMP_HOLDING  	char(10);
        DECLARE @V_TMP_SQLSTATE   	CHAR(5);
	
	DECLARE so_CacheServer CURSOR  FOR  
	Select 	CS.CACHE_SVR_ID, CACHE_SVR_C, CACHE_SVR_NAME
	From 	SYS_CACHE_SVR CS 
	Inner 	Join SYS_CACHE_SVR_L CSL ON 
		CS.CACHE_SVR_ID = CSL.CACHE_SVR_ID
	Where CS.IMAGE_SVR_ID = @ImageServerID And LOCALE_ID = @LocaleID And INACTIVE_F= 'N'; 
	
	
	--  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION, SQLWARNING, NOT FOUND
--	BEGIN   NOT ATOMIC 
	set @V_TMP_HOLDING = @SQLSTATE |@SQLCODE
	      --  CAST(@SQLCODE AS CHAR(5));
	set @V_TMP_SQLSTATE = SUBSTRING(@V_TMP_HOLDING,1,5);
	set @v_temp_SQLCODE = CAST(SUBSTRING(@V_TMP_HOLDING,6,5) AS INT); 
--	END ;            
	   
       	set @SELECT_FAILED = 903;
	set @SUCCESS       = 0;
      
        open so_CacheServer;
	if @v_temp_SQLCODE <> 0 
		BEGIN
		return @SELECT_FAILED;
		end
		If @@Error <> 0
                        Goto ErrHandler 
	return @SUCCESS;
	




ErrHandler:
PRINT 'ERROR'
GO
/****** Object:  StoredProcedure [dbo].[XP_LISTVERSIONS]    Script Date: 03/08/2010 15:04:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[XP_LISTVERSIONS]   
    @commitFlag   Numeric
    --LANGUAGE SQL
 --dynamic result sets 1   
------------------------------------------------------------------------
-- SQL Stored Procedure 
------------------------------------------------------------------------
--LISTVERSIONS: BEGIN
as   
    declare @SUCCESS       integer;
    declare @SELECT_FAILED integer; 
    declare @SQLCODE       integer --default 0;
    declare @v_temp_SQLCODE     integer;
    DECLARE @SQLSTATE         CHAR(5);
    DECLARE @V_STAT           INT;  
    DECLARE @V_TMP_HOLDING    CHAR(10);
        
    DECLARE @V_TMP_SQLSTATE   CHAR(5)-- default '     ';
          
    DECLARE so_VERSIONS   CURSOR FOR  
  	select	NAME, FILE_NAME,
			VERSION_DT,	ELAPSED_TIME
		from	SYS_VERSIONS;                                                    
--  	select	NAME, FILE_NAME,
--			SUBSTR(Char(VERSION_DT),1,20) ||
--			SUBSTR(char(VERSION_DT),25,2),	ELAPSED_TIME
--	from	SYS_VERSIONS;
--    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION, SQLWARNING, NOT FOUND
--    BEGIN NOT ATOMIC 
        set @V_TMP_SQLSTATE ='    '
	set @SQLCODE	=0
	set @V_TMP_HOLDING = @SQLSTATE |@SQLCODE
         --       CAST(SQLCODE AS CHAR(5));
        set @V_TMP_SQLSTATE = SUBSTRING(@V_TMP_HOLDING,1,5);
        set @v_temp_SQLCODE = CAST(SUBSTRING(@V_TMP_HOLDING,6,5) AS INT ); 
 --   END ;            
           
    set @SELECT_FAILED = 903;
    set @SUCCESS       = 0; 
 /*=============================================================================
 * Begin processing (body of procedure)
 *============================================================================*/
    open so_VERSIONS ;
    if @v_temp_SQLCODE <> 0  
     begin
	return @SELECT_FAILED;
     end 
    If @@Error <> 0
      	Goto ErrHandler

     return @SUCCESS;
     
                                        
ErrHandler:
PRINT 'ERROR'
GO
/****** Object:  Table [dbo].[SYS_GLB_LIST_TYPE]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_GLB_LIST_TYPE](
	[GLB_LIST_TYPE_ID] [numeric](15, 0) NOT NULL,
	[GLB_LIST_TYPE] [varchar](30) COLLATE Latin1_General_BIN NOT NULL,
	[GLB_LIST_SUB_TYPE] [varchar](30) COLLATE Latin1_General_BIN NOT NULL,
	[MAX_LENGTH] [numeric](10, 0) NOT NULL,
	[DATA_MODIFIABLE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[CORPORATION_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GLB_LIST_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [GLB_LIST_TY17AK1] ON [dbo].[SYS_GLB_LIST_TYPE] 
(
	[GLB_LIST_TYPE] ASC,
	[GLB_LIST_SUB_TYPE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[dt_generateansiname]    Script Date: 03/08/2010 15:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/* 
**	Generate an ansi name that is unique in the dtproperties.value column 
*/ 
create procedure [dbo].[dt_generateansiname](@name varchar(255) output) 
as 
	declare @prologue varchar(20) 
	declare @indexstring varchar(20) 
	declare @index integer 
 
	set @prologue = 'MSDT-A-' 
	set @index = 1 
 
	while 1 = 1 
	begin 
		set @indexstring = cast(@index as varchar(20)) 
		set @name = @prologue + @indexstring 
		if not exists (select value from dtproperties where value = @name) 
			break 
		 
		set @index = @index + 1 
 
		if (@index = 10000) 
			goto TooMany 
	end 
 
Leave: 
 
	return 
 
TooMany: 
 
	set @name = 'DIAGRAM' 
	goto Leave
GO
/****** Object:  StoredProcedure [dbo].[dt_adduserobject]    Script Date: 03/08/2010 15:04:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
**	Add an object to the dtproperties table
*/
create procedure [dbo].[dt_adduserobject]
as
	set nocount on
	/*
	** Create the user object if it does not exist already
	*/
	begin transaction
		insert dbo.dtproperties (property) VALUES ('DtgSchemaOBJECT')
		update dbo.dtproperties set objectid=@@identity 
			where id=@@identity and property='DtgSchemaOBJECT'
	commit
	return @@identity
GO
/****** Object:  Table [dbo].[SYS_GLB_LOCALE]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_GLB_LOCALE](
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[JAVA_TAG] [varchar](10) COLLATE Latin1_General_BIN NULL,
	[ISO_CODE] [varchar](3) COLLATE Latin1_General_BIN NULL,
	[INACTIVE_D] [int] NULL,
	[DESCRIPTION] [varchar](90) COLLATE Latin1_General_BIN NULL,
PRIMARY KEY CLUSTERED 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [GLB_LOCALE14AK1] ON [dbo].[SYS_GLB_LOCALE] 
(
	[JAVA_TAG] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [GLB_LOCALE14AK2] ON [dbo].[SYS_GLB_LOCALE] 
(
	[ISO_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[dt_setpropertybyid]    Script Date: 03/08/2010 15:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
**	If the property already exists, reset the value; otherwise add property
**		id -- the id in sysobjects of the object
**		property -- the name of the property
**		value -- the text value of the property
**		lvalue -- the binary value of the property (image)
*/
create procedure [dbo].[dt_setpropertybyid]
	@id int,
	@property varchar(64),
	@value varchar(255),
	@lvalue image
as
	set nocount on
	declare @uvalue nvarchar(255) 
	set @uvalue = convert(nvarchar(255), @value) 
	if exists (select * from dbo.dtproperties 
			where objectid=@id and property=@property)
	begin
		--
		-- bump the version count for this row as we update it
		--
		update dbo.dtproperties set value=@value, uvalue=@uvalue, lvalue=@lvalue, version=version+1
			where objectid=@id and property=@property
	end
	else
	begin
		--
		-- version count is auto-set to 0 on initial insert
		--
		insert dbo.dtproperties (property, objectid, value, uvalue, lvalue)
			values (@property, @id, @value, @uvalue, @lvalue)
	end
GO
/****** Object:  StoredProcedure [dbo].[dt_getobjwithprop]    Script Date: 03/08/2010 15:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
**	Retrieve the owner object(s) of a given property
*/
create procedure [dbo].[dt_getobjwithprop]
	@property varchar(30),
	@value varchar(255)
as
	set nocount on

	if (@property is null) or (@property = '')
	begin
		raiserror('Must specify a property name.',-1,-1)
		return (1)
	end

	if (@value is null)
		select objectid id from dbo.dtproperties
			where property=@property

	else
		select objectid id from dbo.dtproperties
			where property=@property and value=@value
GO
/****** Object:  Table [dbo].[SYS_ID_ASSIGN]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_ID_ASSIGN](
	[TABLE_NAME] [varchar](30) COLLATE Latin1_General_BIN NOT NULL,
	[NEXT_ID] [numeric](15, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TABLE_NAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[dt_getpropertiesbyid]    Script Date: 03/08/2010 15:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
**	Retrieve properties by id's
**
**	dt_getproperties objid, null or '' -- retrieve all properties of the object itself
**	dt_getproperties objid, property -- retrieve the property specified
*/
create procedure [dbo].[dt_getpropertiesbyid]
	@id int,
	@property varchar(64)
as
	set nocount on

	if (@property is null) or (@property = '')
		select property, version, value, lvalue
			from dbo.dtproperties
			where  @id=objectid
	else
		select property, version, value, lvalue
			from dbo.dtproperties
			where  @id=objectid and @property=property
GO
/****** Object:  Table [dbo].[SYS_IMAGE_SVR]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_IMAGE_SVR](
	[IMAGE_SVR_ID] [decimal](15, 0) NOT NULL,
	[IMAGE_SVR_TYPE] [varchar](30) COLLATE Latin1_General_BIN NOT NULL,
	[IMAGE_SVR_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[IMAGE_SVR_IP] [varchar](20) COLLATE Latin1_General_BIN NOT NULL,
	[HOST_NAME] [varchar](120) COLLATE Latin1_General_BIN NULL,
	[DEFAULT_LOGIN] [varchar](20) COLLATE Latin1_General_BIN NOT NULL,
	[DEFAULT_PASSWORD] [varchar](20) COLLATE Latin1_General_BIN NOT NULL,
	[INACTIVE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IMAGE_SVR_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IMAGE_SVR13AK1] ON [dbo].[SYS_IMAGE_SVR] 
(
	[IMAGE_SVR_C] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[dt_getobjwithprop_u]    Script Date: 03/08/2010 15:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
**	Retrieve the owner object(s) of a given property
*/
create procedure [dbo].[dt_getobjwithprop_u]
	@property varchar(30),
	@uvalue nvarchar(255)
as
	set nocount on

	if (@property is null) or (@property = '')
	begin
		raiserror('Must specify a property name.',-1,-1)
		return (1)
	end

	if (@uvalue is null)
		select objectid id from dbo.dtproperties
			where property=@property

	else
		select objectid id from dbo.dtproperties
			where property=@property and uvalue=@uvalue
GO
/****** Object:  StoredProcedure [dbo].[dt_dropuserobjectbyid]    Script Date: 03/08/2010 15:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
**	Drop an object from the dbo.dtproperties table
*/
create procedure [dbo].[dt_dropuserobjectbyid]
	@id int
as
	set nocount on
	delete from dbo.dtproperties where objectid=@id
GO
/****** Object:  Table [dbo].[ADM_SYSADM_PROF]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_SYSADM_PROF](
	[SYSADM_PROF_ID] [numeric](15, 0) NOT NULL,
	[SYSADM_PROF_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[INACTIVE_FLAG] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SYSADM_PROF_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [SYSADM_PROF15AK1] ON [dbo].[ADM_SYSADM_PROF] 
(
	[SYSADM_PROF_C] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[dt_droppropertiesbyid]    Script Date: 03/08/2010 15:04:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
**	Drop one or all the associated properties of an object or an attribute 
**
**	dt_dropproperties objid, null or '' -- drop all properties of the object itself
**	dt_dropproperties objid, property -- drop the property
*/
create procedure [dbo].[dt_droppropertiesbyid]
	@id int,
	@property varchar(64)
as
	set nocount on

	if (@property is null) or (@property = '')
		delete from dbo.dtproperties where objectid=@id
	else
		delete from dbo.dtproperties 
			where objectid=@id and property=@property
GO
/****** Object:  StoredProcedure [dbo].[dt_getpropertiesbyid_u]    Script Date: 03/08/2010 15:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
**	Retrieve properties by id's
**
**	dt_getproperties objid, null or '' -- retrieve all properties of the object itself
**	dt_getproperties objid, property -- retrieve the property specified
*/
create procedure [dbo].[dt_getpropertiesbyid_u]
	@id int,
	@property varchar(64)
as
	set nocount on

	if (@property is null) or (@property = '')
		select property, version, uvalue, lvalue
			from dbo.dtproperties
			where  @id=objectid
	else
		select property, version, uvalue, lvalue
			from dbo.dtproperties
			where  @id=objectid and @property=property
GO
/****** Object:  StoredProcedure [dbo].[dt_verstamp006]    Script Date: 03/08/2010 15:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
**	This procedure returns the version number of the stored
**    procedures used by legacy versions of the Microsoft
**	Visual Database Tools.  Version is 7.0.00.
*/
create procedure [dbo].[dt_verstamp006]
as
	select 7000
GO
/****** Object:  StoredProcedure [dbo].[dt_getpropertiesbyid_vcs]    Script Date: 03/08/2010 15:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create procedure [dbo].[dt_getpropertiesbyid_vcs]
    @id       int,
    @property varchar(64),
    @value    varchar(255) = NULL OUT

as

    set nocount on

    select @value = (
        select value
                from dbo.dtproperties
                where @id=objectid and @property=property
                )
GO
/****** Object:  StoredProcedure [dbo].[dt_verstamp007]    Script Date: 03/08/2010 15:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
**	This procedure returns the version number of the stored
**    procedures used by the the Microsoft Visual Database Tools.
**	Version is 7.0.05.
*/
create procedure [dbo].[dt_verstamp007]
as
	select 7005
GO
/****** Object:  StoredProcedure [dbo].[dt_displayoaerror]    Script Date: 03/08/2010 15:04:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[dt_displayoaerror]
    @iObject int,
    @iresult int
as

set nocount on

declare @vchOutput      varchar(255)
declare @hr             int
declare @vchSource      varchar(255)
declare @vchDescription varchar(255)

    exec @hr = master.dbo.sp_OAGetErrorInfo @iObject, @vchSource OUT, @vchDescription OUT

    select @vchOutput = @vchSource + ': ' + @vchDescription
    raiserror (@vchOutput,16,-1)

    return
GO
/****** Object:  StoredProcedure [dbo].[dt_adduserobject_vcs]    Script Date: 03/08/2010 15:04:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create procedure [dbo].[dt_adduserobject_vcs]
    @vchProperty varchar(64)

as

set nocount on

declare @iReturn int
    /*
    ** Create the user object if it does not exist already
    */
    begin transaction
        select @iReturn = objectid from dbo.dtproperties where property = @vchProperty
        if @iReturn IS NULL
        begin
            insert dbo.dtproperties (property) VALUES (@vchProperty)
            update dbo.dtproperties set objectid=@@identity
                    where id=@@identity and property=@vchProperty
            select @iReturn = @@identity
        end
    commit
    return @iReturn
GO
/****** Object:  Table [dbo].[SYS_POSTAL_LOOKUP]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_POSTAL_LOOKUP](
	[POSTAL_CODE] [varchar](11) COLLATE Latin1_General_BIN NOT NULL,
	[COUNTRY_CODE] [varchar](3) COLLATE Latin1_General_BIN NOT NULL,
	[STATE_PROV_CODE] [varchar](2) COLLATE Latin1_General_BIN NOT NULL,
	[CITY_CODE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[COUNTY_CODE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[INACTIVE_D] [int] NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[POSTAL_CODE] ASC,
	[COUNTRY_CODE] ASC,
	[STATE_PROV_CODE] ASC,
	[CITY_CODE] ASC,
	[COUNTY_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYS_SERVER_LOC]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_SERVER_LOC](
	[SERVER_LOC_ID] [decimal](15, 0) NOT NULL,
	[LOCATION_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[DOCUMENT_DISK_DIR] [varchar](120) COLLATE Latin1_General_BIN NOT NULL,
	[COMMIT_Q_DIR] [varchar](120) COLLATE Latin1_General_BIN NOT NULL,
	[INACTIVE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
	[SHARED_PATH] [varchar](255) COLLATE Latin1_General_BIN NULL,
	[IMAGE_SVR_ID] [decimal](15, 0) NULL,
	[CACHE_SVR_ID] [decimal](15, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[SERVER_LOC_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [SERVER_LOC14AK1] ON [dbo].[SYS_SERVER_LOC] 
(
	[LOCATION_C] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[dt_vcsenabled]    Script Date: 03/08/2010 15:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create proc [dbo].[dt_vcsenabled]

as

set nocount on

declare @iObjectId int
select @iObjectId = 0

declare @VSSGUID varchar(100)
select @VSSGUID = 'SQLVersionControl.VCS_SQL'

    declare @iReturn int
    exec @iReturn = master.dbo.sp_OACreate @VSSGUID, @iObjectId OUT
    if @iReturn <> 0 raiserror('', 16, -1) /* Can't Load Helper DLLC */
GO
/****** Object:  Table [dbo].[ADM_VERSION_CNTL]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_VERSION_CNTL](
	[VERSION_CNTL_ID] [numeric](15, 0) NOT NULL,
	[ENTITY_TYPE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[ENTITY_ID] [numeric](15, 0) NOT NULL,
	[VERS_CNTL_NBR] [int] NOT NULL,
	[EFFECTIVE_D] [int] NOT NULL,
	[PROCESS_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VERSION_CNTL_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [VERSION_CNT16AK1] ON [dbo].[ADM_VERSION_CNTL] 
(
	[ENTITY_TYPE] ASC,
	[ENTITY_ID] ASC,
	[VERS_CNTL_NBR] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_SYSADMIN_NODE]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_SYSADMIN_NODE](
	[SYSADMIN_NODE_ID] [decimal](15, 0) NOT NULL,
	[SYSTEM_CODE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[NODE_CODE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[PARENT_NODE_CODE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[INACTIVE_FLAG] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[ACTION_FLAG] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[ICON_NAME] [varchar](200) COLLATE Latin1_General_BIN NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SYSADMIN_NODE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [SYSADMIN_NO17AK1] ON [dbo].[SYS_SYSADMIN_NODE] 
(
	[NODE_CODE] ASC,
	[SYSTEM_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_TIME_ZONE]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_TIME_ZONE](
	[TIME_ZONE_ID] [numeric](15, 0) NOT NULL,
	[JAVA_TIME_ZONE_ID] [varchar](50) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TIME_ZONE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYS_SYSTEM]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_SYSTEM](
	[SYSTEM_ID] [numeric](15, 0) NOT NULL,
	[SYSTEM_NAME] [varchar](30) COLLATE Latin1_General_BIN NOT NULL,
	[SYSTEM_CODE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[BASE_SYSTEM_FLAG] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[ACCEPT_CC_NOTIFY] [char](1) COLLATE Latin1_General_BIN NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [SYSTEM10AK1] ON [dbo].[SYS_SYSTEM] 
(
	[SYSTEM_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_AUTHENTICATION]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_AUTHENTICATION](
	[AUTHENTICATION_ID] [numeric](15, 0) NOT NULL,
	[LOGIN_NAME] [varchar](30) COLLATE Latin1_General_BIN NOT NULL,
	[PASSWORD] [varchar](48) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AUTHENTICATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [AUTHENTICAT18AK1] ON [dbo].[ADM_AUTHENTICATION] 
(
	[LOGIN_NAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOC_PRINT]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DOC_PRINT](
	[PRINT_ID] [decimal](15, 0) NOT NULL,
	[PROCESS_ID] [numeric](15, 0) NOT NULL,
	[HOLD_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[DEVICE_NAME] [varchar](22) COLLATE Latin1_General_BIN NOT NULL,
	[PAPER_SIZE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[PRIORITY_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[JOB_HEADER_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[ANNOTATIONS_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[NOTE] [varchar](255) COLLATE Latin1_General_BIN NULL,
	[PRT_COPIES] [decimal](5, 0) NOT NULL,
	[ORIENTATION_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[SCALE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[PRT_COLLATE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PRINT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADM_CORPORATION]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_CORPORATION](
	[CORPORATION_ID] [numeric](15, 0) NOT NULL,
	[CORP_CODE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[SYSTEM_ADDR_V_ID] [numeric](15, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CORPORATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [CORPORATION15AK1] ON [dbo].[ADM_CORPORATION] 
(
	[CORP_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HST_CKL_DATA]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HST_CKL_DATA](
	[DATA_ID] [decimal](15, 0) NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
	[PRODUCT_INFO_ID] [decimal](15, 0) NOT NULL,
	[GLB_LIST_ID] [numeric](15, 0) NOT NULL,
	[TASK_VALUE1] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[TASK_VALUE2] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[TASK_VALUE3] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[TASK_VALUE4] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[TASK_VALUE5] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DATA_ID] ASC,
	[UPDATE_DT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WFM_PRODUCT_DATA]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WFM_PRODUCT_DATA](
	[PRODUCT_DATA_ID] [numeric](15, 0) NOT NULL,
	[ANCESTOR_ID] [numeric](15, 0) NOT NULL,
	[ANCESTOR_SYSTEM_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[ANCESTOR_TYPE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[REFERENCE_ID] [numeric](15, 0) NOT NULL,
	[REFERENCE_SYSTEM_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[REFERENCE_TYPE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[DISPLAY_DATA1] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[DISPLAY_DATA2] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[DISPLAY_DATA3] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[DISPLAY_DATA4] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[DISPLAY_DATA5] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[PRIORITY] [varchar](10) COLLATE Latin1_General_BIN NULL,
	[SYSTEM_DEFINED_DT] [datetime] NULL,
	[CATEGORY_C] [varchar](20) COLLATE Latin1_General_BIN NULL,
	[SPECIAL_F] [varchar](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PRODUCT_DATA_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [PRODUCT_DAT16IE1] ON [dbo].[WFM_PRODUCT_DATA] 
(
	[ANCESTOR_ID] ASC,
	[REFERENCE_ID] ASC,
	[ANCESTOR_SYSTEM_C] ASC,
	[REFERENCE_TYPE_C] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HST_DOC_DOCUMENT]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HST_DOC_DOCUMENT](
	[DOCUMENT_ID] [decimal](15, 0) NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
	[SERVER_LOC_ID] [decimal](15, 0) NOT NULL,
	[DOC_CONFIG_ID] [decimal](15, 0) NOT NULL,
	[BLOB_ID] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[BLOB_LOCATION] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[DOC_TYPE_ID] [decimal](15, 0) NOT NULL,
	[DOC_SUBTYPE_ID] [decimal](15, 0) NULL,
	[DOC_GROUP_STATUS_C] [varchar](10) COLLATE Latin1_General_BIN NULL,
	[DOC_STATUS_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[DOCUMENT_NUM] [varchar](20) COLLATE Latin1_General_BIN NULL,
	[RECEPIENT_ID] [numeric](15, 0) NOT NULL,
	[ADDRESSED_TO] [varchar](30) COLLATE Latin1_General_BIN NULL,
	[AUTHOR] [varchar](30) COLLATE Latin1_General_BIN NULL,
	[AMOUNT] [decimal](17, 2) NULL,
	[DESCRIPTION] [varchar](64) COLLATE Latin1_General_BIN NOT NULL,
	[DOC_ORIGIN_DT] [datetime] NOT NULL,
	[IMAGE_CLASS] [varchar](20) COLLATE Latin1_General_BIN NULL,
	[SOURCE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[CREATOR_ID] [decimal](15, 0) NOT NULL,
	[INDEXED_DT] [datetime] NOT NULL,
	[INDEXER_ID] [numeric](15, 0) NOT NULL,
	[SPECIAL_INDEXER_ID] [numeric](15, 0) NULL,
	[BATCH_NAME] [varchar](20) COLLATE Latin1_General_BIN NULL,
	[BATCH_ORDINAL] [decimal](4, 0) NULL,
	[BATCH_TOTAL] [decimal](18, 0) NULL,
	[DOC_READ_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[DUE_D] [int] NULL,
	[DUE_DT_CREATOR_ID] [int] NULL,
	[PARENT_DOCUMENT_ID] [decimal](15, 0) NOT NULL,
	[ANCESTOR_ID] [decimal](15, 0) NOT NULL,
	[ANCESTOR_TYPE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[ANCESTOR_SYSTEM_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[REFERENCE_ID] [decimal](15, 0) NOT NULL,
	[REFERENCE_TYPE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[FOLDER_TYPE_ID] [decimal](15, 0) NOT NULL,
	[WORK_ITEM_ID] [numeric](15, 0) NULL,
	[TOTAL_PAGES] [decimal](18, 0) NOT NULL,
	[IMAGE_SVR_ID] [decimal](15, 0) NULL,
	[CACHE_SVR_ID] [decimal](15, 0) NULL,
	[DOC_CATEGORY_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[PROCESS_ID] [decimal](15, 0) NOT NULL,
	[PRIORITY_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[CORPORATION_ID] [numeric](15, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[AMOUNT_CURRENCY] [varchar](3) COLLATE Latin1_General_BIN NULL,
	[DOC_DUE_D_PROC_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DOCUMENT_ID] ASC,
	[UPDATE_DT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADM_DOC_CONFIG]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_DOC_CONFIG](
	[DOC_CONFIG_ID] [decimal](15, 0) NOT NULL,
	[DOC_EXTENSION] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[ICON_LOCATION] [varchar](255) COLLATE Latin1_General_BIN NULL,
	[MIME_TYPE] [varchar](60) COLLATE Latin1_General_BIN NOT NULL,
	[SERVER_IMG_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[SERVER_NATIVE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[DISK_NATIVE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[INACTIVE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DOC_CONFIG_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [DOC_CONFIG14AK1] ON [dbo].[ADM_DOC_CONFIG] 
(
	[DOC_EXTENSION] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_DOC_SUBTYPE]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_DOC_SUBTYPE](
	[DOC_SUBTYPE_ID] [decimal](15, 0) NOT NULL,
	[DOC_TYPE_ID] [decimal](15, 0) NOT NULL,
	[DOC_SUBTYPE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[INACTIVE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DOC_SUBTYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [DOC_SUBTYPE15IF1] ON [dbo].[ADM_DOC_SUBTYPE] 
(
	[DOC_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOC_BATCH]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DOC_BATCH](
	[BATCH_ID] [decimal](15, 0) NOT NULL,
	[BATCH_NAME] [varchar](20) COLLATE Latin1_General_BIN NOT NULL,
	[CREATED_ID] [numeric](15, 0) NOT NULL,
	[IMAGE_SVR_ID] [decimal](15, 0) NOT NULL,
	[CACHE_SVR_ID] [decimal](15, 0) NULL,
	[DOC_TYPE_ID] [decimal](15, 0) NULL,
	[IMAGE_CLASS] [varchar](20) COLLATE Latin1_General_BIN NULL,
	[DOC_ORIGIN_DT] [datetime] NOT NULL,
	[BATCH_TOTAL] [decimal](18, 0) NULL,
	[PREINDEX_COUNT] [decimal](18, 0) NULL,
	[INDEX_COUNT] [decimal](18, 0) NULL,
	[PRIORITY_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[SYSTEM_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[DESCRIPTION] [varchar](255) COLLATE Latin1_General_BIN NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
	[SERVER_LOC_ID] [decimal](15, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[BATCH_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [BATCH9AK1] ON [dbo].[DOC_BATCH] 
(
	[BATCH_NAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [BATCH9IF2] ON [dbo].[DOC_BATCH] 
(
	[DOC_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [BATCH9IF3] ON [dbo].[DOC_BATCH] 
(
	[CREATED_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [BATCH9IF4] ON [dbo].[DOC_BATCH] 
(
	[IMAGE_SVR_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOC_DOCUMENT]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DOC_DOCUMENT](
	[DOCUMENT_ID] [decimal](15, 0) NOT NULL,
	[SERVER_LOC_ID] [decimal](15, 0) NOT NULL,
	[DOC_CONFIG_ID] [decimal](15, 0) NOT NULL,
	[BLOB_ID] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[BLOB_LOCATION] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[DOC_TYPE_ID] [decimal](15, 0) NOT NULL,
	[DOC_SUBTYPE_ID] [decimal](15, 0) NULL,
	[DOC_GROUP_STATUS_C] [varchar](10) COLLATE Latin1_General_BIN NULL,
	[DOC_STATUS_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[DOCUMENT_NUM] [varchar](20) COLLATE Latin1_General_BIN NULL,
	[RECEPIENT_ID] [numeric](15, 0) NOT NULL,
	[ADDRESSED_TO] [varchar](30) COLLATE Latin1_General_BIN NULL,
	[AUTHOR] [varchar](30) COLLATE Latin1_General_BIN NULL,
	[AMOUNT] [decimal](18, 3) NULL,
	[DESCRIPTION] [varchar](64) COLLATE Latin1_General_BIN NOT NULL,
	[DOC_ORIGIN_DT] [datetime] NOT NULL,
	[IMAGE_CLASS] [varchar](20) COLLATE Latin1_General_BIN NULL,
	[SOURCE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[CREATOR_ID] [decimal](15, 0) NOT NULL,
	[INDEXED_DT] [datetime] NOT NULL,
	[INDEXER_ID] [numeric](15, 0) NOT NULL,
	[SPECIAL_INDEXER_ID] [numeric](15, 0) NULL,
	[BATCH_NAME] [varchar](20) COLLATE Latin1_General_BIN NULL,
	[BATCH_ORDINAL] [decimal](4, 0) NULL,
	[BATCH_TOTAL] [decimal](18, 0) NULL,
	[DOC_READ_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[DUE_D] [int] NULL,
	[DUE_DT_CREATOR_ID] [int] NULL,
	[PARENT_DOCUMENT_ID] [decimal](15, 0) NOT NULL,
	[ANCESTOR_ID] [decimal](15, 0) NOT NULL,
	[ANCESTOR_TYPE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[ANCESTOR_SYSTEM_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[REFERENCE_ID] [decimal](15, 0) NOT NULL,
	[REFERENCE_TYPE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[FOLDER_TYPE_ID] [decimal](15, 0) NOT NULL,
	[WORK_ITEM_ID] [numeric](15, 0) NULL,
	[TOTAL_PAGES] [decimal](18, 0) NOT NULL,
	[IMAGE_SVR_ID] [decimal](15, 0) NULL,
	[CACHE_SVR_ID] [decimal](15, 0) NULL,
	[DOC_CATEGORY_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[PROCESS_ID] [decimal](15, 0) NOT NULL,
	[PRIORITY_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[CORPORATION_ID] [numeric](15, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
	[AMOUNT_CURRENCY] [varchar](3) COLLATE Latin1_General_BIN NULL,
	[DOC_DUE_D_PROC_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DOCUMENT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [DOCUMENT12IE1] ON [dbo].[DOC_DOCUMENT] 
(
	[PARENT_DOCUMENT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DOCUMENT12IE2] ON [dbo].[DOC_DOCUMENT] 
(
	[ANCESTOR_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DOCUMENT12IF1] ON [dbo].[DOC_DOCUMENT] 
(
	[DOC_CONFIG_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DOCUMENT12IF12] ON [dbo].[DOC_DOCUMENT] 
(
	[FOLDER_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DOCUMENT12IF13] ON [dbo].[DOC_DOCUMENT] 
(
	[SERVER_LOC_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DOCUMENT12IF14] ON [dbo].[DOC_DOCUMENT] 
(
	[IMAGE_SVR_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DOCUMENT12IF15] ON [dbo].[DOC_DOCUMENT] 
(
	[CACHE_SVR_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DOCUMENT12IF2] ON [dbo].[DOC_DOCUMENT] 
(
	[DOC_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DOCUMENT12IF3] ON [dbo].[DOC_DOCUMENT] 
(
	[DOC_SUBTYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DOCUMENT12IF9] ON [dbo].[DOC_DOCUMENT] 
(
	[RECEPIENT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_DOC_TYPE_XREF]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADM_DOC_TYPE_XREF](
	[DOC_TYPE_XREF_ID] [decimal](15, 0) NOT NULL,
	[ACCESS_KEY_ID] [numeric](15, 0) NOT NULL,
	[DOC_TYPE_ID] [decimal](15, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
	[DOC_FILE_ACCESS] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DOC_TYPE_XREF_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DOC_TYPE_XR17IF3] ON [dbo].[ADM_DOC_TYPE_XREF] 
(
	[ACCESS_KEY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DOC_TYPE_XR17IF4] ON [dbo].[ADM_DOC_TYPE_XREF] 
(
	[DOC_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_DOC_TYPE_SYS]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_DOC_TYPE_SYS](
	[DOC_TYPE_SYS_ID] [decimal](15, 0) NOT NULL,
	[DOC_TYPE_ID] [decimal](15, 0) NOT NULL,
	[SYSTEM_ID] [numeric](15, 0) NOT NULL,
	[INACTIVE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DOC_TYPE_SYS_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [DOC_TYPE_SY16AK1] ON [dbo].[ADM_DOC_TYPE_SYS] 
(
	[DOC_TYPE_ID] ASC,
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DOC_TYPE_SY16IF1] ON [dbo].[ADM_DOC_TYPE_SYS] 
(
	[DOC_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DOC_TYPE_SY16IF2] ON [dbo].[ADM_DOC_TYPE_SYS] 
(
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_DOC_TYPE_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_DOC_TYPE_L](
	[DOC_TYPE_L_ID] [decimal](15, 0) NOT NULL,
	[DOC_TYPE_ID] [decimal](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[DOC_TYPE_NAME] [varchar](24) COLLATE Latin1_General_BIN NOT NULL,
	[DESCRIPTION] [varchar](64) COLLATE Latin1_General_BIN NOT NULL,
	[ORDER_BY] [decimal](5, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DOC_TYPE_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [DOC_TYPE_L14AK1] ON [dbo].[ADM_DOC_TYPE_L] 
(
	[DOC_TYPE_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DOC_TYPE_L14IF1] ON [dbo].[ADM_DOC_TYPE_L] 
(
	[DOC_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOC_FAX]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DOC_FAX](
	[FAX_ID] [decimal](15, 0) NOT NULL,
	[WORK_ITEM_ID] [numeric](15, 0) NULL,
	[PROCESS_ID] [numeric](15, 0) NOT NULL,
	[HOLD_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[DEVICE_NAME] [varchar](22) COLLATE Latin1_General_BIN NOT NULL,
	[PRIORITY_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[ANNOTATIONS_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[PAGE_FOOTNOTE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[TIME_FOOTNOTE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[FAX_NUMBER] [varchar](100) COLLATE Latin1_General_BIN NOT NULL,
	[FAX_TO] [varchar](255) COLLATE Latin1_General_BIN NOT NULL,
	[FAX_FROM] [varchar](100) COLLATE Latin1_General_BIN NOT NULL,
	[FAX_SUBJECT] [varchar](128) COLLATE Latin1_General_BIN NOT NULL,
	[ANCESTOR_ID] [decimal](15, 0) NOT NULL,
	[ANCESTOR_TYPE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[ANCESTOR_SYS_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[ANCESTOR_DISPLAY] [varchar](100) COLLATE Latin1_General_BIN NOT NULL,
	[FAX_STATUS_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[FAILURE_REASON] [varchar](255) COLLATE Latin1_General_BIN NULL,
	[SCHEDULED_DT] [datetime] NOT NULL,
	[SENT_DT] [datetime] NULL,
	[SENT_PAGES] [decimal](18, 0) NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
	[EXTERNAL_FAX_ID] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[FROM_USER_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FAX_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FAX7IE1] ON [dbo].[DOC_FAX] 
(
	[ANCESTOR_ID] ASC,
	[ANCESTOR_TYPE_C] ASC,
	[FAX_STATUS_C] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FAX7IE2] ON [dbo].[DOC_FAX] 
(
	[FAX_STATUS_C] ASC,
	[PROCESS_ID] ASC,
	[SCHEDULED_DT] ASC,
	[DEVICE_NAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FAX7IF1] ON [dbo].[DOC_FAX] 
(
	[WORK_ITEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NTE_NOTE_PARM]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NTE_NOTE_PARM](
	[NOTE_PARM_ORDER_ID] [numeric](15, 0) NOT NULL,
	[NOTE_ID] [numeric](15, 0) NOT NULL,
	[NOTE_PARM] [varchar](250) COLLATE Latin1_General_BIN NOT NULL,
	[PARM_ORDER] [numeric](5, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NOTE_PARM_ORDER_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [NOTE_PARM13IF6] ON [dbo].[NTE_NOTE_PARM] 
(
	[NOTE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NTE_NOTE_TEXT]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NTE_NOTE_TEXT](
	[NOTE_ID] [numeric](15, 0) NOT NULL,
	[SEQ_NUM] [numeric](5, 0) NOT NULL,
	[NOTE_TEXT] [varchar](4000) COLLATE Latin1_General_BIN NULL,
PRIMARY KEY CLUSTERED 
(
	[NOTE_ID] ASC,
	[SEQ_NUM] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [NOTE_TEXT13IF59] ON [dbo].[NTE_NOTE_TEXT] 
(
	[NOTE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NTE_NOTE]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NTE_NOTE](
	[NOTE_ID] [numeric](15, 0) NOT NULL,
	[NOTE_PROD_DATA_ID] [numeric](15, 0) NOT NULL,
	[NOTE_TYPE_ID] [numeric](15, 0) NOT NULL,
	[NOTE_SUBTYPE_ID] [numeric](15, 0) NOT NULL,
	[SYSTEM_NOTE_ID] [numeric](15, 0) NULL,
	[PARM_FLAG] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[CREATOR_ID] [numeric](15, 0) NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NOTE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [NOTE8IF10] ON [dbo].[NTE_NOTE] 
(
	[NOTE_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NOTE8IF27] ON [dbo].[NTE_NOTE] 
(
	[NOTE_SUBTYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NOTE8IF30] ON [dbo].[NTE_NOTE] 
(
	[SYSTEM_NOTE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NOTE8IF31] ON [dbo].[NTE_NOTE] 
(
	[NOTE_PROD_DATA_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORD_ORDER_EXT_TXT]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ORD_ORDER_EXT_TXT](
	[ORDER_EXT_TXT_ID] [numeric](15, 0) NOT NULL,
	[ORDER_EXT_ID] [numeric](15, 0) NOT NULL,
	[SEQ_NUM] [numeric](5, 0) NOT NULL,
	[ORDER_TEXT] [varchar](4000) COLLATE Latin1_General_BIN NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ORDER_EXT_TXT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [ORDER_EXT_T17AK1] ON [dbo].[ORD_ORDER_EXT_TXT] 
(
	[ORDER_EXT_ID] ASC,
	[SEQ_NUM] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ORDER_EXT_T17IF1] ON [dbo].[ORD_ORDER_EXT_TXT] 
(
	[ORDER_EXT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORD_RETURN_EXT]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ORD_RETURN_EXT](
	[RETURN_EXT_ID] [numeric](15, 0) NOT NULL,
	[ORDER_EXT_ID] [numeric](15, 0) NOT NULL,
	[SEQ_NUM] [numeric](5, 0) NOT NULL,
	[RETURN_STATUS] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[RETURN_RECD_DT] [datetime] NOT NULL,
	[PROCESS_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RETURN_EXT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [RETURN_EXT14IF1] ON [dbo].[ORD_RETURN_EXT] 
(
	[ORDER_EXT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_FAX_XREF]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADM_FAX_XREF](
	[FAX_XREF_ID] [decimal](15, 0) NOT NULL,
	[ACCESS_KEY_ID] [numeric](15, 0) NOT NULL,
	[FAX_DEVICE_ID] [decimal](15, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FAX_XREF_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FAX_XREF12IF2] ON [dbo].[ADM_FAX_XREF] 
(
	[ACCESS_KEY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FAX_XREF12IF3] ON [dbo].[ADM_FAX_XREF] 
(
	[FAX_DEVICE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_FAX_DEVICE_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_FAX_DEVICE_L](
	[FAX_DEVICE_L_ID] [decimal](15, 0) NOT NULL,
	[FAX_DEVICE_ID] [decimal](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[FAX_NAME] [varchar](24) COLLATE Latin1_General_BIN NOT NULL,
	[DESCRIPTION] [varchar](255) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FAX_DEVICE_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [FAX_DEVICE_16AK1] ON [dbo].[ADM_FAX_DEVICE_L] 
(
	[FAX_DEVICE_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FAX_DEVICE_16IF1] ON [dbo].[ADM_FAX_DEVICE_L] 
(
	[FAX_DEVICE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_FAX_DEFAULT]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_FAX_DEFAULT](
	[FAX_DEFAULT_ID] [decimal](15, 0) NOT NULL,
	[FAX_DEVICE_ID] [decimal](15, 0) NOT NULL,
	[PRIORITY_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[FAX_NUMBER] [varchar](24) COLLATE Latin1_General_BIN NULL,
	[PAGE_FOOTNOTE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[TIME_FOOTNOTE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[FAX_TO] [varchar](50) COLLATE Latin1_General_BIN NULL,
	[SUBJECT] [varchar](64) COLLATE Latin1_General_BIN NULL,
	[ANNOTATIONS_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FAX_DEFAULT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FAX_DEFAULT15IF1] ON [dbo].[ADM_FAX_DEFAULT] 
(
	[FAX_DEVICE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORD_RETURN_EXT_TXT]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ORD_RETURN_EXT_TXT](
	[RETURN_EXT_TXT_ID] [numeric](15, 0) NOT NULL,
	[RETURN_EXT_ID] [numeric](15, 0) NOT NULL,
	[SEQ_NUM] [numeric](5, 0) NOT NULL,
	[RETURN_TEXT] [varchar](4000) COLLATE Latin1_General_BIN NULL,
PRIMARY KEY CLUSTERED 
(
	[RETURN_EXT_TXT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [RETURN_EXT_18AK1] ON [dbo].[ORD_RETURN_EXT_TXT] 
(
	[RETURN_EXT_ID] ASC,
	[SEQ_NUM] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [RETURN_EXT_18IF1] ON [dbo].[ORD_RETURN_EXT_TXT] 
(
	[RETURN_EXT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_FUNCTION_XREF]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADM_FUNCTION_XREF](
	[FUNCTION_XREF_ID] [numeric](15, 0) NOT NULL,
	[ACCESS_KEY_ID] [numeric](15, 0) NOT NULL,
	[APP_FUNCTION_ID] [numeric](15, 0) NOT NULL,
	[INACTIVE_DT] [datetime] NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FUNCTION_XREF_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [FUNCTION_XR17AK1] ON [dbo].[ADM_FUNCTION_XREF] 
(
	[ACCESS_KEY_ID] ASC,
	[APP_FUNCTION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FUNCTION_XR17IF1] ON [dbo].[ADM_FUNCTION_XREF] 
(
	[ACCESS_KEY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FUNCTION_XR17IF2] ON [dbo].[ADM_FUNCTION_XREF] 
(
	[APP_FUNCTION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_APP_FUNCTION_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_APP_FUNCTION_L](
	[APP_FUNCTION_L_ID] [numeric](15, 0) NOT NULL,
	[APP_FUNCTION_ID] [numeric](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[FUNCTION_NAME] [varchar](90) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[APP_FUNCTION_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [APP_FUNCTIO18AK1] ON [dbo].[SYS_APP_FUNCTION_L] 
(
	[APP_FUNCTION_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [APP_FUNCTIO18IF40] ON [dbo].[SYS_APP_FUNCTION_L] 
(
	[APP_FUNCTION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [APP_FUNCTIO18IF41] ON [dbo].[SYS_APP_FUNCTION_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_CACHE_SVR_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_CACHE_SVR_L](
	[CACHE_SVR_L_ID] [decimal](15, 0) NOT NULL,
	[CACHE_SVR_ID] [decimal](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[CACHE_SVR_NAME] [varchar](200) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CACHE_SVR_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [CACHE_SVR_L15AK1] ON [dbo].[SYS_CACHE_SVR_L] 
(
	[CACHE_SVR_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CACHE_SVR_L15IF2] ON [dbo].[SYS_CACHE_SVR_L] 
(
	[CACHE_SVR_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_IMAGE_LOGIN]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_IMAGE_LOGIN](
	[IMAGE_LOGIN_ID] [decimal](15, 0) NOT NULL,
	[IMAGE_SVR_ID] [decimal](15, 0) NOT NULL,
	[DEFAULT_SVR_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[USER_ID] [numeric](15, 0) NOT NULL,
	[IMAGE_LOGIN] [varchar](20) COLLATE Latin1_General_BIN NULL,
	[IMAGE_PASSWORD] [varchar](20) COLLATE Latin1_General_BIN NULL,
	[CACHE_SVR_ID] [decimal](15, 0) NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IMAGE_LOGIN_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IMAGE_LOGIN15AK1] ON [dbo].[ADM_IMAGE_LOGIN] 
(
	[IMAGE_SVR_ID] ASC,
	[IMAGE_LOGIN] ASC,
	[USER_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IMAGE_LOGIN15IF3] ON [dbo].[ADM_IMAGE_LOGIN] 
(
	[CACHE_SVR_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_GLB_DTL_ASSOC]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_GLB_DTL_ASSOC](
	[GLB_DTL_ASSOC_ID] [numeric](15, 0) NOT NULL,
	[DETAIL_TYP_LIST_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[GLB_DTL_DEFN_ID] [decimal](15, 0) NOT NULL,
	[CORPORATION_ID] [numeric](15, 0) NOT NULL,
	[DISPLAY_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[CLASSIFICATION_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[ORDER_BY] [numeric](5, 0) NOT NULL,
	[EDITABLE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GLB_DTL_ASSOC_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [GLB_DTL_ASS17AK1] ON [dbo].[ADM_GLB_DTL_ASSOC] 
(
	[DETAIL_TYP_LIST_C] ASC,
	[GLB_DTL_DEFN_ID] ASC,
	[CORPORATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GLB_DTL_ASS17IF1] ON [dbo].[ADM_GLB_DTL_ASSOC] 
(
	[GLB_DTL_DEFN_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GLB_DTL_ASS17IF2] ON [dbo].[ADM_GLB_DTL_ASSOC] 
(
	[CORPORATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_GLB_DTL_DEFN_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_GLB_DTL_DEFN_L](
	[GLB_DTL_DEFN_L_ID] [numeric](15, 0) NOT NULL,
	[GLB_DTL_DEFN_ID] [decimal](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[DETAIL_LABEL] [varchar](255) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GLB_DTL_DEFN_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [GLB_DTL_DEF18AK1] ON [dbo].[ADM_GLB_DTL_DEFN_L] 
(
	[GLB_DTL_DEFN_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GLB_DTL_DEF18IF1] ON [dbo].[ADM_GLB_DTL_DEFN_L] 
(
	[GLB_DTL_DEFN_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GLB_DTL_DEF18IF2] ON [dbo].[ADM_GLB_DTL_DEFN_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_CATEGORY_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_CATEGORY_L](
	[CATEGORY_L_ID] [numeric](15, 0) NOT NULL,
	[CATEGORY_ID] [numeric](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[DESCRIPTION] [varchar](255) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CATEGORY_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [CATEGORY_L14AK1] ON [dbo].[SYS_CATEGORY_L] 
(
	[CATEGORY_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CATEGORY_L14IF54] ON [dbo].[SYS_CATEGORY_L] 
(
	[CATEGORY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CATEGORY_L14IF85] ON [dbo].[SYS_CATEGORY_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_GLB_LIST_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_GLB_LIST_L](
	[GLB_LIST_L_ID] [numeric](15, 0) NOT NULL,
	[GLB_LIST_ID] [numeric](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[NAME] [varchar](200) COLLATE Latin1_General_BIN NOT NULL,
	[ORDER_BY] [numeric](5, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GLB_LIST_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [GLB_LIST_L14AK1] ON [dbo].[ADM_GLB_LIST_L] 
(
	[GLB_LIST_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GLB_LIST_L14IF38] ON [dbo].[ADM_GLB_LIST_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GLB_LIST_L14IF39] ON [dbo].[ADM_GLB_LIST_L] 
(
	[GLB_LIST_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_CKL_COLUMN]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_CKL_COLUMN](
	[CKL_COLUMN_ID] [decimal](15, 0) NOT NULL,
	[GLB_LIST_TYPE_ID] [numeric](15, 0) NOT NULL,
	[GLB_COLUMN_TYPE_ID] [numeric](15, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CKL_COLUMN_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CKL_COLUMN14IF1] ON [dbo].[SYS_CKL_COLUMN] 
(
	[GLB_LIST_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CKL_COLUMN14IF2] ON [dbo].[SYS_CKL_COLUMN] 
(
	[GLB_COLUMN_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CKL_DATA]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CKL_DATA](
	[DATA_ID] [decimal](15, 0) NOT NULL,
	[PRODUCT_INFO_ID] [decimal](15, 0) NOT NULL,
	[GLB_LIST_ID] [numeric](15, 0) NOT NULL,
	[TASK_VALUE1] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[TASK_VALUE2] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[TASK_VALUE3] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[TASK_VALUE4] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[TASK_VALUE5] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DATA_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [DATA8IF1] ON [dbo].[CKL_DATA] 
(
	[GLB_LIST_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DATA8IF2] ON [dbo].[CKL_DATA] 
(
	[PRODUCT_INFO_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_SYSTEM_ADDR_V]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_SYSTEM_ADDR_V](
	[SYSTEM_ADDR_V_ID] [numeric](15, 0) NOT NULL,
	[VERS_CNTL_NBR] [int] NOT NULL,
	[ADDRESS1] [varchar](20) COLLATE Latin1_General_BIN NOT NULL,
	[ADDRESS2] [varchar](20) COLLATE Latin1_General_BIN NULL,
	[ADDRESS3] [varchar](20) COLLATE Latin1_General_BIN NULL,
	[ADDRESS4] [varchar](20) COLLATE Latin1_General_BIN NULL,
	[CITY_ID] [numeric](15, 0) NOT NULL,
	[POSTAL_CODE] [varchar](12) COLLATE Latin1_General_BIN NOT NULL,
	[STATE_PROV_ID] [numeric](15, 0) NOT NULL,
	[COUNTRY_ID] [numeric](15, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SYSTEM_ADDR_V_ID] ASC,
	[VERS_CNTL_NBR] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [SYSTEM_ADDR17IF2] ON [dbo].[ADM_SYSTEM_ADDR_V] 
(
	[CITY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SYSTEM_ADDR17IF3] ON [dbo].[ADM_SYSTEM_ADDR_V] 
(
	[COUNTRY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SYSTEM_ADDR17IF4] ON [dbo].[ADM_SYSTEM_ADDR_V] 
(
	[STATE_PROV_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_CITY_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_CITY_L](
	[CITY_L_ID] [numeric](15, 0) NOT NULL,
	[CITY_ID] [numeric](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[CITY] [varchar](120) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CITY_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [CITY_L10AK1] ON [dbo].[SYS_CITY_L] 
(
	[CITY_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CITY_L10IF267] ON [dbo].[SYS_CITY_L] 
(
	[CITY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CITY_L10IF268] ON [dbo].[SYS_CITY_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_GLB_LST_CORP_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_GLB_LST_CORP_L](
	[GLB_LST_CORP_L_ID] [numeric](15, 0) NOT NULL,
	[GLB_LST_CORP_ID] [numeric](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[ORDER_BY] [numeric](5, 0) NOT NULL,
	[DESCRIPTION] [varchar](200) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GLB_LST_CORP_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [GLB_LST_COR18AK1] ON [dbo].[ADM_GLB_LST_CORP_L] 
(
	[GLB_LST_CORP_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GLB_LST_COR18IF134] ON [dbo].[ADM_GLB_LST_CORP_L] 
(
	[GLB_LST_CORP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GLB_LST_COR18IF136] ON [dbo].[ADM_GLB_LST_CORP_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_CKL_AREA_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_CKL_AREA_L](
	[CKL_AREA_L_ID] [decimal](15, 0) NOT NULL,
	[CKL_AREA_ID] [decimal](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[CKL_AREA_DESC] [varchar](50) COLLATE Latin1_General_BIN NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CKL_AREA_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [CKL_AREA_L14AK1] ON [dbo].[SYS_CKL_AREA_L] 
(
	[CKL_AREA_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CKL_AREA_L14IF1] ON [dbo].[SYS_CKL_AREA_L] 
(
	[CKL_AREA_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CKL_AREA_L14IF2] ON [dbo].[SYS_CKL_AREA_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_GLB_ABSENCE]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_GLB_ABSENCE](
	[GLB_ABSENCE_ID] [numeric](15, 0) NOT NULL,
	[GLB_USER_ID] [numeric](15, 0) NOT NULL,
	[START_DT] [datetime] NOT NULL,
	[END_DT] [datetime] NOT NULL,
	[WORK_ALLOWED] [varchar](10) COLLATE Latin1_General_BIN NULL,
	[ABSENCE_TYPE] [varchar](20) COLLATE Latin1_General_BIN NOT NULL,
	[BACKUP_USER] [numeric](15, 0) NOT NULL,
	[APPROVED_BY] [int] NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GLB_ABSENCE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [GLB_ABSENCE15AK1] ON [dbo].[ADM_GLB_ABSENCE] 
(
	[GLB_USER_ID] ASC,
	[START_DT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GLB_ABSENCE15IF115] ON [dbo].[ADM_GLB_ABSENCE] 
(
	[GLB_USER_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORD_ORDER_EXT]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ORD_ORDER_EXT](
	[ORDER_EXT_ID] [numeric](15, 0) NOT NULL,
	[SYSTEM_ID] [numeric](15, 0) NOT NULL,
	[ANCESTOR_ID] [numeric](15, 0) NOT NULL,
	[ANCESTOR_TYPE_CODE] [char](10) COLLATE Latin1_General_BIN NOT NULL,
	[ANCESTOR_DISPLAY] [varchar](100) COLLATE Latin1_General_BIN NOT NULL,
	[PRD_ADDTNL_DISPLAY] [varchar](50) COLLATE Latin1_General_BIN NULL,
	[REFERENCE_ID] [numeric](15, 0) NOT NULL,
	[REFERENCE_DISPLAY] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[REFERENCE_TYPE_C] [varchar](10) COLLATE Latin1_General_BIN NULL,
	[ORDER_TYPE] [char](10) COLLATE Latin1_General_BIN NOT NULL,
	[ORDERED_BY] [numeric](15, 0) NOT NULL,
	[ORDER_STATUS] [char](10) COLLATE Latin1_General_BIN NOT NULL,
	[ORDER_DT] [datetime] NOT NULL,
	[ORDER_SENT_DT] [datetime] NULL,
	[RETURN_EXPECTED] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[FILE_PATH_NAME] [varchar](255) COLLATE Latin1_General_BIN NULL,
	[COMPANY_ID] [numeric](15, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
	[SYNCHRONIZED_F] [varchar](1) COLLATE Latin1_General_BIN NOT NULL,
	[EXTERNAL_REQUEST_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[XSL_FILE_LOCATION] [varchar](255) COLLATE Latin1_General_BIN NULL,
PRIMARY KEY CLUSTERED 
(
	[ORDER_EXT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ORDER_EXT13IF2] ON [dbo].[ORD_ORDER_EXT] 
(
	[ORDERED_BY] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ORDER_EXT13IF3] ON [dbo].[ORD_ORDER_EXT] 
(
	[COMPANY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ORDER_EXT13IF4] ON [dbo].[ORD_ORDER_EXT] 
(
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_LOCK]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_LOCK](
	[GLB_USER_ID] [numeric](15, 0) NOT NULL,
	[LOCK_LEVEL_NAME] [varchar](30) COLLATE Latin1_General_BIN NOT NULL,
	[LOCKED_LEVEL_ID] [numeric](15, 0) NOT NULL,
	[ANCESTOR_ID] [numeric](15, 0) NOT NULL,
	[SYSTEM_ID] [numeric](15, 0) NOT NULL,
	[LOCK_TYPE_LIST_ID] [numeric](15, 0) NOT NULL,
	[LOGON_SESSION_ID] [numeric](15, 0) NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
	[STACK_TRACE] [varchar](1000) COLLATE Latin1_General_BIN NULL,
PRIMARY KEY CLUSTERED 
(
	[GLB_USER_ID] ASC,
	[LOCK_LEVEL_NAME] ASC,
	[LOCKED_LEVEL_ID] ASC,
	[ANCESTOR_ID] ASC,
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [LOCK8IF1] ON [dbo].[SYS_LOCK] 
(
	[GLB_USER_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [LOCK8IF2] ON [dbo].[SYS_LOCK] 
(
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_USR_CORP_ASSOC]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADM_USR_CORP_ASSOC](
	[USR_CORP_ASSOC_ID] [numeric](15, 0) NOT NULL,
	[GLB_USER_ID] [numeric](15, 0) NOT NULL,
	[CORPORATION_ID] [numeric](15, 0) NOT NULL,
	[INACTIVE_D] [int] NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[USR_CORP_ASSOC_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [USR_CORP_AS18AK1] ON [dbo].[ADM_USR_CORP_ASSOC] 
(
	[GLB_USER_ID] ASC,
	[CORPORATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [USR_CORP_AS18IF1] ON [dbo].[ADM_USR_CORP_ASSOC] 
(
	[GLB_USER_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [USR_CORP_AS18IF2] ON [dbo].[ADM_USR_CORP_ASSOC] 
(
	[CORPORATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_USER_GRP_ASSOC]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADM_USER_GRP_ASSOC](
	[USER_GRP_ASSOC_ID] [numeric](15, 0) NOT NULL,
	[GLB_USER_ID] [numeric](15, 0) NOT NULL,
	[USER_GROUP_ID] [numeric](15, 0) NOT NULL,
	[INACTIVE_DT] [datetime] NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[USER_GRP_ASSOC_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [USER_GRP_AS18AK1] ON [dbo].[ADM_USER_GRP_ASSOC] 
(
	[GLB_USER_ID] ASC,
	[USER_GROUP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [USER_GRP_AS18IF1] ON [dbo].[ADM_USER_GRP_ASSOC] 
(
	[USER_GROUP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [USER_GRP_AS18IF2] ON [dbo].[ADM_USER_GRP_ASSOC] 
(
	[GLB_USER_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOC_BOOKMARK]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DOC_BOOKMARK](
	[BOOKMARK_ID] [decimal](15, 0) NOT NULL,
	[DOCUMENT_ID] [decimal](15, 0) NOT NULL,
	[USER_ID] [numeric](15, 0) NOT NULL,
	[PAGE_NUM] [decimal](4, 0) NOT NULL,
	[DESCRIPTION] [varchar](64) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BOOKMARK_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [BOOKMARK12IF2] ON [dbo].[DOC_BOOKMARK] 
(
	[USER_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [BOOKMARK12IF3] ON [dbo].[DOC_BOOKMARK] 
(
	[DOCUMENT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_USER_PREF]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_USER_PREF](
	[USER_PREF_ID] [decimal](15, 0) NOT NULL,
	[GLB_USER_ID] [numeric](15, 0) NOT NULL,
	[SCREEN_NAME] [varchar](100) COLLATE Latin1_General_BIN NOT NULL,
	[WINDOW_SIZE] [varchar](15) COLLATE Latin1_General_BIN NULL,
	[WINDOW_POSITION] [varchar](15) COLLATE Latin1_General_BIN NULL,
	[SYS_OVERRIDE_F] [char](1) COLLATE Latin1_General_BIN NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[USER_PREF_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [USER_PREF13AK1] ON [dbo].[SYS_USER_PREF] 
(
	[GLB_USER_ID] ASC,
	[SCREEN_NAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [USER_PREF13IF1] ON [dbo].[SYS_USER_PREF] 
(
	[GLB_USER_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GBL_ABSENCE]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GBL_ABSENCE](
	[ABSENCE_ID] [decimal](15, 0) NOT NULL,
	[USER_ID] [numeric](15, 0) NOT NULL,
	[ABSENCE_TYPE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[ABSENCE_FROM_DT] [datetime] NOT NULL,
	[ABSENCE_TO_DT] [datetime] NOT NULL,
	[BACKUP_USER_ID] [decimal](15, 0) NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ABSENCE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ABSENCE11IF2] ON [dbo].[GBL_ABSENCE] 
(
	[USER_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_CKL_COLUMN_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_CKL_COLUMN_L](
	[CKL_COLUMN_L_ID] [int] NOT NULL,
	[CKL_COLUMN_ID] [decimal](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[CKL_COLUMN_NAME] [varchar](25) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CKL_COLUMN_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [CKL_COLUMN_16AK1] ON [dbo].[SYS_CKL_COLUMN_L] 
(
	[CKL_COLUMN_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CKL_COLUMN_16IF1] ON [dbo].[SYS_CKL_COLUMN_L] 
(
	[CKL_COLUMN_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CKL_COLUMN_16IF2] ON [dbo].[SYS_CKL_COLUMN_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_MESSAGE_TYPE_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_MESSAGE_TYPE_L](
	[MESSAGE_TYPE_L_ID] [numeric](15, 0) NOT NULL,
	[MESSAGE_TYPE_ID] [numeric](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[TYPE] [varchar](60) COLLATE Latin1_General_BIN NOT NULL,
	[ORDER_BY] [numeric](5, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MESSAGE_TYPE_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [MESSAGE_TYP18AK1] ON [dbo].[ADM_MESSAGE_TYPE_L] 
(
	[MESSAGE_TYPE_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [MESSAGE_TYP18IF63] ON [dbo].[ADM_MESSAGE_TYPE_L] 
(
	[MESSAGE_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [MESSAGE_TYP18IF64] ON [dbo].[ADM_MESSAGE_TYPE_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_MESSAGE_XREF]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_MESSAGE_XREF](
	[MESSAGE_XREF_ID] [numeric](15, 0) NOT NULL,
	[ACCESS_KEY_ID] [numeric](15, 0) NOT NULL,
	[MESSAGE_TYPE_ID] [numeric](15, 0) NOT NULL,
	[ACCESS_CODE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[INACTIVE_DT] [datetime] NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MESSAGE_XREF_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [MESSAGE_XRE16AK1] ON [dbo].[ADM_MESSAGE_XREF] 
(
	[ACCESS_KEY_ID] ASC,
	[MESSAGE_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [MESSAGE_XRE16IF1] ON [dbo].[ADM_MESSAGE_XREF] 
(
	[MESSAGE_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [MESSAGE_XRE16IF2] ON [dbo].[ADM_MESSAGE_XREF] 
(
	[ACCESS_KEY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WFM_MESSAGE]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WFM_MESSAGE](
	[MESSAGE_ID] [numeric](15, 0) NOT NULL,
	[MESSAGE_TYPE_ID] [numeric](15, 0) NOT NULL,
	[FILTER_ID] [numeric](15, 0) NULL,
	[CORPORATION_ID] [numeric](15, 0) NOT NULL,
	[ANCESTOR_ID] [numeric](15, 0) NOT NULL,
	[ANCESTOR_TYPE_CODE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[REFERENCE_ID] [numeric](15, 0) NOT NULL,
	[REFERENCE_TYPE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[REFERENCE_SYSTEM_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[SUBJECT] [varchar](100) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MESSAGE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [MESSAGE11IE1] ON [dbo].[WFM_MESSAGE] 
(
	[ANCESTOR_ID] ASC,
	[ANCESTOR_TYPE_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [MESSAGE11IE2] ON [dbo].[WFM_MESSAGE] 
(
	[REFERENCE_ID] ASC,
	[REFERENCE_TYPE_C] ASC,
	[REFERENCE_SYSTEM_C] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [MESSAGE11IF2] ON [dbo].[WFM_MESSAGE] 
(
	[FILTER_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [MESSAGE11IF3] ON [dbo].[WFM_MESSAGE] 
(
	[CORPORATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [MESSAGE11IF69] ON [dbo].[WFM_MESSAGE] 
(
	[MESSAGE_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_STATE_PROV]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_STATE_PROV](
	[STATE_PROV_ID] [numeric](15, 0) NOT NULL,
	[COUNTRY_ID] [numeric](15, 0) NOT NULL,
	[STATE_PROV_CODE] [char](2) COLLATE Latin1_General_BIN NOT NULL,
	[STATE_NBR] [numeric](15, 0) NULL,
	[INACTIVE_DT] [datetime] NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[STATE_PROV_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [STATE_PROV14AK1] ON [dbo].[SYS_STATE_PROV] 
(
	[COUNTRY_ID] ASC,
	[STATE_PROV_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [STATE_PROV14IF266] ON [dbo].[SYS_STATE_PROV] 
(
	[COUNTRY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_COUNTRY_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_COUNTRY_L](
	[COUNTRY_L_ID] [numeric](15, 0) NOT NULL,
	[COUNTRY_ID] [numeric](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[COUNTRY] [varchar](60) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[COUNTRY_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [COUNTRY_L13AK1] ON [dbo].[SYS_COUNTRY_L] 
(
	[COUNTRY_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [COUNTRY_L13IF258] ON [dbo].[SYS_COUNTRY_L] 
(
	[COUNTRY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [COUNTRY_L13IF259] ON [dbo].[SYS_COUNTRY_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_COUNTY_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_COUNTY_L](
	[COUNTY_L_ID] [numeric](15, 0) NOT NULL,
	[COUNTY_ID] [numeric](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[COUNTY] [varchar](60) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[COUNTY_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [COUNTY_L12AK1] ON [dbo].[SYS_COUNTY_L] 
(
	[COUNTY_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [COUNTY_L12IF269] ON [dbo].[SYS_COUNTY_L] 
(
	[COUNTY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [COUNTY_L12IF271] ON [dbo].[SYS_COUNTY_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_NOTE_SUBTYPE_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_NOTE_SUBTYPE_L](
	[NOTE_SUBTYPE_L_ID] [numeric](15, 0) NOT NULL,
	[NOTE_SUBTYPE_ID] [numeric](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[SUBTYPE] [varchar](60) COLLATE Latin1_General_BIN NOT NULL,
	[ORDER_BY] [numeric](5, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NOTE_SUBTYPE_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [NOTE_SUBTYP18AK1] ON [dbo].[ADM_NOTE_SUBTYPE_L] 
(
	[NOTE_SUBTYPE_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NOTE_SUBTYP18IF16] ON [dbo].[ADM_NOTE_SUBTYPE_L] 
(
	[NOTE_SUBTYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NOTE_SUBTYP18IF17] ON [dbo].[ADM_NOTE_SUBTYPE_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_NOTE_XREF]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_NOTE_XREF](
	[NOTE_XREF_ID] [numeric](15, 0) NOT NULL,
	[ACCESS_KEY_ID] [numeric](15, 0) NOT NULL,
	[NOTE_TYPE_ID] [numeric](15, 0) NOT NULL,
	[NOTE_SUBTYPE_ID] [numeric](15, 0) NOT NULL,
	[ACCESS_CODE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[INACTIVE_DT] [datetime] NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NOTE_XREF_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [NOTE_XREF13AK1] ON [dbo].[ADM_NOTE_XREF] 
(
	[ACCESS_KEY_ID] ASC,
	[NOTE_TYPE_ID] ASC,
	[NOTE_SUBTYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NOTE_XREF13IF1] ON [dbo].[ADM_NOTE_XREF] 
(
	[NOTE_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NOTE_XREF13IF2] ON [dbo].[ADM_NOTE_XREF] 
(
	[NOTE_SUBTYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NOTE_XREF13IF3] ON [dbo].[ADM_NOTE_XREF] 
(
	[ACCESS_KEY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_GLB_USER]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_GLB_USER](
	[GLB_USER_ID] [numeric](15, 0) NOT NULL,
	[LOGIN_NAME] [varchar](30) COLLATE Latin1_General_BIN NOT NULL,
	[USER_TYPE_LIST_ID] [numeric](15, 0) NULL,
	[FIRST_NAME] [varchar](30) COLLATE Latin1_General_BIN NOT NULL,
	[MIDDLE_NAME] [varchar](30) COLLATE Latin1_General_BIN NULL,
	[LAST_NAME] [varchar](30) COLLATE Latin1_General_BIN NOT NULL,
	[OFFICE_PHONE] [varchar](24) COLLATE Latin1_General_BIN NULL,
	[HOME_PHONE] [varchar](24) COLLATE Latin1_General_BIN NULL,
	[FAX_PHONE] [varchar](24) COLLATE Latin1_General_BIN NULL,
	[EMAIL_ADDRESS] [varchar](75) COLLATE Latin1_General_BIN NULL,
	[EMPLOYEE_ID] [varchar](20) COLLATE Latin1_General_BIN NOT NULL,
	[EMP_TYP_LST_ID] [numeric](15, 0) NULL,
	[DEFAULT_LOCALE_ID] [numeric](15, 0) NOT NULL,
	[DEFLT_CURRENCY_ID] [numeric](15, 0) NOT NULL,
	[USER_STATUS_LST_ID] [numeric](15, 0) NULL,
	[STATUS_CHANGED_DT] [datetime] NULL,
	[ADM_SYSADM_PROF_ID] [numeric](15, 0) NULL,
	[LAST_ACCESS_DATE] [int] NOT NULL,
	[WM_ORG_LEVEL] [varchar](10) COLLATE Latin1_General_BIN NULL,
	[DOC_MAIL_VIEW_RANK] [varchar](10) COLLATE Latin1_General_BIN NULL,
	[REDIRECT_USER_ID] [numeric](15, 0) NULL,
	[SERVER_LOC_ID] [numeric](15, 0) NOT NULL,
	[THEME_NAME] [varchar](30) COLLATE Latin1_General_BIN NULL,
	[OFFICE_LOC_ID] [numeric](15, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GLB_USER_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [GLB_USER12AK1] ON [dbo].[ADM_GLB_USER] 
(
	[LOGIN_NAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GLB_USER12IF42] ON [dbo].[ADM_GLB_USER] 
(
	[DEFAULT_LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GLB_USER12IF43] ON [dbo].[ADM_GLB_USER] 
(
	[DEFLT_CURRENCY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GLB_USER12IF44] ON [dbo].[ADM_GLB_USER] 
(
	[OFFICE_LOC_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_NOTE_TYPE_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_NOTE_TYPE_L](
	[NOTE_TYPE_L_ID] [numeric](15, 0) NOT NULL,
	[NOTE_TYPE_ID] [numeric](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[TYPE] [varchar](60) COLLATE Latin1_General_BIN NOT NULL,
	[ORDER_BY] [numeric](5, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NOTE_TYPE_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [NOTE_TYPE_L15AK1] ON [dbo].[ADM_NOTE_TYPE_L] 
(
	[NOTE_TYPE_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NOTE_TYPE_L15IF8] ON [dbo].[ADM_NOTE_TYPE_L] 
(
	[NOTE_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NOTE_TYPE_L15IF9] ON [dbo].[ADM_NOTE_TYPE_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_NOTE_SUBTYPE]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_NOTE_SUBTYPE](
	[NOTE_SUBTYPE_ID] [numeric](15, 0) NOT NULL,
	[NOTE_TYPE_ID] [numeric](15, 0) NOT NULL,
	[INACTIVE_DT] [datetime] NULL,
	[NOTE_SUBTYPE_CODE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[DATA_MODIFIABLE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NOTE_SUBTYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [NOTE_SUBTYP16AK1] ON [dbo].[ADM_NOTE_SUBTYPE] 
(
	[NOTE_TYPE_ID] ASC,
	[NOTE_SUBTYPE_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NOTE_SUBTYP16IF15] ON [dbo].[ADM_NOTE_SUBTYPE] 
(
	[NOTE_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_FAX_DEVICE]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_FAX_DEVICE](
	[FAX_DEVICE_ID] [decimal](15, 0) NOT NULL,
	[DEVICE_NAME] [varchar](22) COLLATE Latin1_General_BIN NOT NULL,
	[DEVICE_CONFIG_ID] [decimal](15, 0) NOT NULL,
	[FAX_NUMBER] [varchar](24) COLLATE Latin1_General_BIN NOT NULL,
	[PREFIX] [varchar](4) COLLATE Latin1_General_BIN NOT NULL,
	[LOCATION] [varchar](24) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FAX_DEVICE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [FAX_DEVICE14AK1] ON [dbo].[ADM_FAX_DEVICE] 
(
	[DEVICE_NAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FAX_DEVICE14IF1] ON [dbo].[ADM_FAX_DEVICE] 
(
	[DEVICE_CONFIG_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_PRINT_DEVICE]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_PRINT_DEVICE](
	[PRINT_DEVICE_ID] [decimal](15, 0) NOT NULL,
	[DEVICE_NAME] [varchar](22) COLLATE Latin1_General_BIN NOT NULL,
	[DEVICE_CONFIG_ID] [decimal](15, 0) NOT NULL,
	[LOCATION] [varchar](24) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PRINT_DEVICE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [PRINT_DEVIC16AK1] ON [dbo].[ADM_PRINT_DEVICE] 
(
	[DEVICE_NAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [PRINT_DEVIC16IF1] ON [dbo].[ADM_PRINT_DEVICE] 
(
	[DEVICE_CONFIG_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_ENTITY_TYPE_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_ENTITY_TYPE_L](
	[ENTITY_TYPE_L_ID] [numeric](15, 0) NOT NULL,
	[ENTITY_TYPE_ID] [numeric](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[DESCRIPTION] [varchar](64) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ENTITY_TYPE_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [ENTITY_TYPE17AK1] ON [dbo].[SYS_ENTITY_TYPE_L] 
(
	[ENTITY_TYPE_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ENTITY_TYPE17IF118] ON [dbo].[SYS_ENTITY_TYPE_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ENTITY_TYPE17IF119] ON [dbo].[SYS_ENTITY_TYPE_L] 
(
	[ENTITY_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_ENTITY_TYP_WT]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADM_ENTITY_TYP_WT](
	[ENTITY_TYP_WT_ID] [numeric](15, 0) NOT NULL,
	[ENTITY_TYPE_ID] [numeric](15, 0) NOT NULL,
	[CORPORATION_ID] [numeric](15, 0) NOT NULL,
	[WEIGHT] [numeric](10, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ENTITY_TYP_WT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [ENTITY_TYP_17AK1] ON [dbo].[ADM_ENTITY_TYP_WT] 
(
	[ENTITY_TYPE_ID] ASC,
	[CORPORATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ENTITY_TYP_17IF122] ON [dbo].[ADM_ENTITY_TYP_WT] 
(
	[ENTITY_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ENTITY_TYP_17IF3] ON [dbo].[ADM_ENTITY_TYP_WT] 
(
	[CORPORATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_OFFICE_LOC_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_OFFICE_LOC_L](
	[OFFICE_LOC_L_ID] [numeric](15, 0) NOT NULL,
	[OFFICE_LOC_ID] [numeric](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[NAME] [varchar](30) COLLATE Latin1_General_BIN NOT NULL,
	[DESCRIPTION] [varchar](255) COLLATE Latin1_General_BIN NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OFFICE_LOC_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [OFFICE_LOC_16AK1] ON [dbo].[ADM_OFFICE_LOC_L] 
(
	[OFFICE_LOC_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [OFFICE_LOC_16IF1] ON [dbo].[ADM_OFFICE_LOC_L] 
(
	[OFFICE_LOC_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [OFFICE_LOC_16IF2] ON [dbo].[ADM_OFFICE_LOC_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CKL_PRODUCT_INFO]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CKL_PRODUCT_INFO](
	[PRODUCT_INFO_ID] [decimal](15, 0) NOT NULL,
	[GLB_LIST_TYPE_ID] [numeric](15, 0) NOT NULL,
	[ANCESTOR_ID] [decimal](15, 0) NOT NULL,
	[ANCESTOR_TYPE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[REFERENCE_ID] [decimal](15, 0) NOT NULL,
	[REFERENCE_TYPE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[REFERENCE_SYSTEM_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PRODUCT_INFO_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [PRODUCT_INF16IE1] ON [dbo].[CKL_PRODUCT_INFO] 
(
	[ANCESTOR_ID] ASC,
	[GLB_LIST_TYPE_ID] ASC,
	[ANCESTOR_TYPE_C] ASC,
	[REFERENCE_ID] ASC,
	[REFERENCE_TYPE_C] ASC,
	[REFERENCE_SYSTEM_C] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [PRODUCT_INF16IF1] ON [dbo].[CKL_PRODUCT_INFO] 
(
	[GLB_LIST_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_GLB_LIST_TYP_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_GLB_LIST_TYP_L](
	[GLB_LIST_TYP_L_ID] [numeric](15, 0) NOT NULL,
	[GLB_LIST_TYPE_ID] [numeric](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[NAME] [varchar](200) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GLB_LIST_TYP_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [GLB_LIST_TY18AK1] ON [dbo].[SYS_GLB_LIST_TYP_L] 
(
	[GLB_LIST_TYPE_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GLB_LIST_TY18IF35] ON [dbo].[SYS_GLB_LIST_TYP_L] 
(
	[GLB_LIST_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GLB_LIST_TY18IF36] ON [dbo].[SYS_GLB_LIST_TYP_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_GLB_LST_CORP]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_GLB_LST_CORP](
	[GLB_LST_CORP_ID] [numeric](15, 0) NOT NULL,
	[GLB_LIST_TYPE_ID] [numeric](15, 0) NOT NULL,
	[CORPORATION_ID] [numeric](15, 0) NOT NULL,
	[LIST_CODE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[INACTIVE_DT] [datetime] NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GLB_LST_CORP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [GLB_LST_COR16AK1] ON [dbo].[ADM_GLB_LST_CORP] 
(
	[CORPORATION_ID] ASC,
	[GLB_LIST_TYPE_ID] ASC,
	[LIST_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GLB_LST_COR16IF133] ON [dbo].[ADM_GLB_LST_CORP] 
(
	[GLB_LIST_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GLB_LST_COR16IF3] ON [dbo].[ADM_GLB_LST_CORP] 
(
	[CORPORATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_GLB_LIST]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_GLB_LIST](
	[GLB_LIST_ID] [numeric](15, 0) NOT NULL,
	[GLB_LIST_TYPE_ID] [numeric](15, 0) NOT NULL,
	[LIST_CODE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[INACTIVE_DT] [datetime] NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GLB_LIST_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [GLB_LIST12AK1] ON [dbo].[ADM_GLB_LIST] 
(
	[GLB_LIST_TYPE_ID] ASC,
	[LIST_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GLB_LIST12IF37] ON [dbo].[ADM_GLB_LIST] 
(
	[GLB_LIST_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_GLB_DTL_DEFN]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_GLB_DTL_DEFN](
	[GLB_DTL_DEFN_ID] [decimal](15, 0) NOT NULL,
	[DETAIL_C] [varchar](30) COLLATE Latin1_General_BIN NOT NULL,
	[CORPORATION_ID] [numeric](15, 0) NOT NULL,
	[DISPLAY_TYP_LIST_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[DATA_LENGTH] [numeric](5, 1) NULL,
	[GLB_LIST_TYPE_ID] [numeric](15, 0) NULL,
	[INACTIVE_DT] [datetime] NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GLB_DTL_DEFN_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [GLB_DTL_DEF16AK1] ON [dbo].[ADM_GLB_DTL_DEFN] 
(
	[DETAIL_C] ASC,
	[CORPORATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GLB_DTL_DEF16IF1] ON [dbo].[ADM_GLB_DTL_DEFN] 
(
	[GLB_LIST_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GLB_DTL_DEF16IF2] ON [dbo].[ADM_GLB_DTL_DEFN] 
(
	[CORPORATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_PRINT_DEFAULT]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_PRINT_DEFAULT](
	[PRINT_DEFAULT_ID] [decimal](15, 0) NOT NULL,
	[PRINT_DEVICE_ID] [decimal](15, 0) NOT NULL,
	[PAPER_SIZE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[PRIORITY_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[JOB_HEADER_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[ANNOTATIONS_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[NOTE] [varchar](255) COLLATE Latin1_General_BIN NULL,
	[PRT_COPIES] [decimal](5, 0) NOT NULL,
	[ORIENTATION_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[SCALE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[PRT_COLLATE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PRINT_DEFAULT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [PRINT_DEFAU17IF1] ON [dbo].[ADM_PRINT_DEFAULT] 
(
	[PRINT_DEVICE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_PRINT_DEVICE_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_PRINT_DEVICE_L](
	[PRINT_DEVICE_L_ID] [decimal](15, 0) NOT NULL,
	[PRINT_DEVICE_ID] [decimal](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[PRINTER_NAME] [varchar](24) COLLATE Latin1_General_BIN NOT NULL,
	[DESCRIPTION] [varchar](255) COLLATE Latin1_General_BIN NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PRINT_DEVICE_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [PRINT_DEVIC18AK1] ON [dbo].[ADM_PRINT_DEVICE_L] 
(
	[PRINT_DEVICE_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [PRINT_DEVIC18IF1] ON [dbo].[ADM_PRINT_DEVICE_L] 
(
	[PRINT_DEVICE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_PRINT_XREF]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADM_PRINT_XREF](
	[PRINT_XREF_ID] [decimal](15, 0) NOT NULL,
	[ACCESS_KEY_ID] [numeric](15, 0) NOT NULL,
	[PRINT_DEVICE_ID] [decimal](15, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PRINT_XREF_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [PRINT_XREF14IF2] ON [dbo].[ADM_PRINT_XREF] 
(
	[ACCESS_KEY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [PRINT_XREF14IF3] ON [dbo].[ADM_PRINT_XREF] 
(
	[PRINT_DEVICE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_SYSADM_PROF_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_SYSADM_PROF_L](
	[SYSADM_PROF_L_ID] [numeric](15, 0) NOT NULL,
	[SYSADM_PROF_ID] [numeric](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[PROFILE_NAME] [varchar](24) COLLATE Latin1_General_BIN NOT NULL,
	[DESCRIPTION] [varchar](64) COLLATE Latin1_General_BIN NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SYSADM_PROF_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [SYSADM_PROF17AK1] ON [dbo].[ADM_SYSADM_PROF_L] 
(
	[SYSADM_PROF_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SYSADM_PROF17IF124] ON [dbo].[ADM_SYSADM_PROF_L] 
(
	[SYSADM_PROF_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SYSADM_PROF17IF126] ON [dbo].[ADM_SYSADM_PROF_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_IMAGE_SVR_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_IMAGE_SVR_L](
	[IMAGE_SVR_L_ID] [decimal](15, 0) NOT NULL,
	[IMAGE_SVR_ID] [decimal](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[IMAGE_SVR_NAME] [varchar](120) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IMAGE_SVR_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IMAGE_SVR_L15AK1] ON [dbo].[SYS_IMAGE_SVR_L] 
(
	[IMAGE_SVR_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IMAGE_SVR_L15IF2] ON [dbo].[SYS_IMAGE_SVR_L] 
(
	[IMAGE_SVR_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WFM_WKLOAD_GROUP_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WFM_WKLOAD_GROUP_L](
	[WKLOAD_GROUP_L_ID] [decimal](15, 0) NOT NULL,
	[WKLOAD_GROUP_ID] [decimal](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[GROUP_DESC] [varchar](100) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WKLOAD_GROUP_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [WKLOAD_GROU18AK1] ON [dbo].[WFM_WKLOAD_GROUP_L] 
(
	[WKLOAD_GROUP_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [WKLOAD_GROU18IF1] ON [dbo].[WFM_WKLOAD_GROUP_L] 
(
	[WKLOAD_GROUP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [WKLOAD_GROU18IF2] ON [dbo].[WFM_WKLOAD_GROUP_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LTR_TEMPLATE_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LTR_TEMPLATE_L](
	[TEMPLATE_L_ID] [decimal](15, 0) NOT NULL,
	[TEMPLATE_ID] [decimal](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[TEMPLATE_NAME] [varchar](75) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TEMPLATE_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [TEMPLATE_L14IF1] ON [dbo].[LTR_TEMPLATE_L] 
(
	[TEMPLATE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [TEMPLATE_L14IF2] ON [dbo].[LTR_TEMPLATE_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_DOC_SUBTYPE_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_DOC_SUBTYPE_L](
	[DOC_SUBTYPE_L_ID] [decimal](15, 0) NOT NULL,
	[DOC_SUBTYPE_ID] [decimal](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[DOC_SUBTYPE_NAME] [varchar](24) COLLATE Latin1_General_BIN NOT NULL,
	[DESCRIPTION] [varchar](64) COLLATE Latin1_General_BIN NOT NULL,
	[ORDER_BY] [decimal](5, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DOC_SUBTYPE_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [DOC_SUBTYPE17AK1] ON [dbo].[ADM_DOC_SUBTYPE_L] 
(
	[DOC_SUBTYPE_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DOC_SUBTYPE17IF1] ON [dbo].[ADM_DOC_SUBTYPE_L] 
(
	[DOC_SUBTYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WFM_GRAPH_TYPE_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WFM_GRAPH_TYPE_L](
	[GRAPH_TYPE_L_ID] [decimal](15, 0) NOT NULL,
	[GRAPH_TYPE_ID] [decimal](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[GRAPH_TYPE_DESC] [varchar](100) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GRAPH_TYPE_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [GRAPH_TYPE_16AK1] ON [dbo].[WFM_GRAPH_TYPE_L] 
(
	[GRAPH_TYPE_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GRAPH_TYPE_16IF1] ON [dbo].[WFM_GRAPH_TYPE_L] 
(
	[GRAPH_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GRAPH_TYPE_16IF2] ON [dbo].[WFM_GRAPH_TYPE_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_CLI_TYPE_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_CLI_TYPE_L](
	[CLI_TYPE_L_ID] [numeric](15, 0) NOT NULL,
	[CLI_TYPE_ID] [numeric](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[DESCRIPTION] [varchar](255) COLLATE Latin1_General_BIN NOT NULL,
	[ORDER_BY] [numeric](5, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CLI_TYPE_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [CLI_TYPE_L14AK1] ON [dbo].[ADM_CLI_TYPE_L] 
(
	[CLI_TYPE_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CLI_TYPE_L14IF2] ON [dbo].[ADM_CLI_TYPE_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CLI_TYPE_L14IF3] ON [dbo].[ADM_CLI_TYPE_L] 
(
	[CLI_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WFM_FILTER_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WFM_FILTER_L](
	[FILTER_L_ID] [numeric](15, 0) NOT NULL,
	[FILTER_ID] [numeric](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[DESCRIPTION] [varchar](255) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FILTER_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [FILTER_L12AK1] ON [dbo].[WFM_FILTER_L] 
(
	[FILTER_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FILTER_L12IF1] ON [dbo].[WFM_FILTER_L] 
(
	[FILTER_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FILTER_L12IF2] ON [dbo].[WFM_FILTER_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_CLI_CATGRY_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_CLI_CATGRY_L](
	[CLI_CATGRY_L_ID] [numeric](15, 0) NOT NULL,
	[CLI_CATGRY_ID] [numeric](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[DESCRIPTION] [varchar](255) COLLATE Latin1_General_BIN NOT NULL,
	[ORDER_BY] [numeric](5, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CLI_CATGRY_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [CLI_CATGRY_16AK1] ON [dbo].[ADM_CLI_CATGRY_L] 
(
	[CLI_CATGRY_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CLI_CATGRY_16IF1] ON [dbo].[ADM_CLI_CATGRY_L] 
(
	[CLI_CATGRY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CLI_CATGRY_16IF2] ON [dbo].[ADM_CLI_CATGRY_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_DOC_CONFIG_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_DOC_CONFIG_L](
	[DOC_CONFIG_L_ID] [decimal](15, 0) NOT NULL,
	[DOC_CONFIG_ID] [decimal](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[DESCRIPTION] [varchar](64) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DOC_CONFIG_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [DOC_CONFIG_16AK1] ON [dbo].[ADM_DOC_CONFIG_L] 
(
	[DOC_CONFIG_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DOC_CONFIG_16IF1] ON [dbo].[ADM_DOC_CONFIG_L] 
(
	[DOC_CONFIG_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_STATE_PROV_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_STATE_PROV_L](
	[STATE_PROV_L_ID] [numeric](15, 0) NOT NULL,
	[STATE_PROV_ID] [numeric](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[STATE_PROV_NAME] [varchar](120) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[STATE_PROV_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [STATE_PROV_16AK1] ON [dbo].[SYS_STATE_PROV_L] 
(
	[STATE_PROV_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [STATE_PROV_16IF261] ON [dbo].[SYS_STATE_PROV_L] 
(
	[STATE_PROV_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [STATE_PROV_16IF272] ON [dbo].[SYS_STATE_PROV_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_SYSADM_NODE_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_SYSADM_NODE_L](
	[SYSADM_NODE_L_ID] [decimal](15, 0) NOT NULL,
	[SYSADMIN_NODE_ID] [decimal](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[DESCRIPTION] [varchar](64) COLLATE Latin1_General_BIN NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SYSADM_NODE_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [SYSADM_NODE17AK1] ON [dbo].[SYS_SYSADM_NODE_L] 
(
	[SYSADMIN_NODE_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SYSADM_NODE17IF1] ON [dbo].[SYS_SYSADM_NODE_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SYSADM_NODE17IF2] ON [dbo].[SYS_SYSADM_NODE_L] 
(
	[SYSADMIN_NODE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_SYSTEM_NOTE_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_SYSTEM_NOTE_L](
	[SYSTEM_NOTE_L_ID] [numeric](15, 0) NOT NULL,
	[SYSTEM_NOTE_ID] [numeric](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[NOTE] [varchar](500) COLLATE Latin1_General_BIN NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SYSTEM_NOTE_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [SYSTEM_NOTE17AK1] ON [dbo].[ADM_SYSTEM_NOTE_L] 
(
	[SYSTEM_NOTE_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SYSTEM_NOTE17IF2] ON [dbo].[ADM_SYSTEM_NOTE_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SYSTEM_NOTE17IF3] ON [dbo].[ADM_SYSTEM_NOTE_L] 
(
	[SYSTEM_NOTE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_SERVER_LOC_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_SERVER_LOC_L](
	[SERVER_LOC_L_ID] [decimal](15, 0) NOT NULL,
	[SERVER_LOC_ID] [decimal](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[LOCATION_NAME] [varchar](50) COLLATE Latin1_General_BIN NOT NULL,
	[DESCRIPTION] [varchar](24) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SERVER_LOC_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [SERVER_LOC_16AK1] ON [dbo].[SYS_SERVER_LOC_L] 
(
	[SERVER_LOC_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SERVER_LOC_16IF2] ON [dbo].[SYS_SERVER_LOC_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_USER_GROUP_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_USER_GROUP_L](
	[USER_GROUP_L_ID] [numeric](15, 0) NOT NULL,
	[USER_GROUP_ID] [numeric](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[USER_GROUP_DESC] [varchar](200) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[USER_GROUP_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [USER_GROUP_16AK1] ON [dbo].[ADM_USER_GROUP_L] 
(
	[USER_GROUP_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [USER_GROUP_16IF1] ON [dbo].[ADM_USER_GROUP_L] 
(
	[USER_GROUP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [USER_GROUP_16IF2] ON [dbo].[ADM_USER_GROUP_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_NOTE_PARM_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_NOTE_PARM_L](
	[NOTE_PARM_L_ID] [numeric](15, 0) NOT NULL,
	[NOTE_PARM_ID] [numeric](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[NOTE_PARM_DESC] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NOTE_PARM_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [NOTE_PARM_L15AK1] ON [dbo].[SYS_NOTE_PARM_L] 
(
	[NOTE_PARM_ID] ASC,
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NOTE_PARM_L15IF7] ON [dbo].[SYS_NOTE_PARM_L] 
(
	[LOCALE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_CACHE_SVR]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_CACHE_SVR](
	[CACHE_SVR_ID] [decimal](15, 0) NOT NULL,
	[IMAGE_SVR_ID] [decimal](15, 0) NOT NULL,
	[CACHE_SVR_C] [varchar](200) COLLATE Latin1_General_BIN NOT NULL,
	[DEFAULT_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[INACTIVE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CACHE_SVR_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [CACHE_SVR13AK1] ON [dbo].[SYS_CACHE_SVR] 
(
	[IMAGE_SVR_ID] ASC,
	[CACHE_SVR_C] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CACHE_SVR13IF1] ON [dbo].[SYS_CACHE_SVR] 
(
	[IMAGE_SVR_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_IMAGE_SVR_PARM]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_IMAGE_SVR_PARM](
	[IMAGE_SVR_PARM_ID] [decimal](15, 0) NOT NULL,
	[IMAGE_SVR_ID] [decimal](15, 0) NOT NULL,
	[PARM_NAME] [varchar](20) COLLATE Latin1_General_BIN NOT NULL,
	[PARM_VALUE] [varchar](255) COLLATE Latin1_General_BIN NOT NULL,
	[INACTIVE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IMAGE_SVR_PARM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IMAGE_SVR_P18IF1] ON [dbo].[SYS_IMAGE_SVR_PARM] 
(
	[IMAGE_SVR_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_SYSADM_ACCESS]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_SYSADM_ACCESS](
	[SYSADM_ACCESS_ID] [numeric](15, 0) NOT NULL,
	[SYSADM_PROF_ID] [numeric](15, 0) NOT NULL,
	[SYSADMIN_NODE_ID] [decimal](15, 0) NOT NULL,
	[READ_FLAG] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[WRITE_FLAG] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SYSADM_ACCESS_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [SYSADM_ACCE17AK1] ON [dbo].[ADM_SYSADM_ACCESS] 
(
	[SYSADM_PROF_ID] ASC,
	[SYSADMIN_NODE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SYSADM_ACCE17IF127] ON [dbo].[ADM_SYSADM_ACCESS] 
(
	[SYSADM_PROF_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SYSADM_ACCE17IF128] ON [dbo].[ADM_SYSADM_ACCESS] 
(
	[SYSADMIN_NODE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_USER_GROUP_V]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADM_USER_GROUP_V](
	[USER_GROUP_V_ID] [numeric](15, 0) NOT NULL,
	[USER_GROUP_ID] [numeric](15, 0) NOT NULL,
	[PARENT_USER_GRP_ID] [numeric](15, 0) NULL,
	[INACTIVE_DT] [datetime] NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[USER_GROUP_V_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [USER_GROUP_16AK2] ON [dbo].[ADM_USER_GROUP_V] 
(
	[USER_GROUP_ID] ASC,
	[PARENT_USER_GRP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [USER_GROUP_16IF4] ON [dbo].[ADM_USER_GROUP_V] 
(
	[PARENT_USER_GRP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [USER_GROUP_16IF5] ON [dbo].[ADM_USER_GROUP_V] 
(
	[USER_GROUP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_ACCESS_KEY]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADM_ACCESS_KEY](
	[ACCESS_KEY_ID] [numeric](15, 0) NOT NULL,
	[USER_GROUP_ID] [numeric](15, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ACCESS_KEY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [ACCESS_KEY14AK1] ON [dbo].[ADM_ACCESS_KEY] 
(
	[USER_GROUP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_ACSKEY_ASSOC]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADM_ACSKEY_ASSOC](
	[ACSKEY_ASSOC_ID] [numeric](15, 0) NOT NULL,
	[ACCESS_KEY_ID] [numeric](15, 0) NOT NULL,
	[USER_GROUP_ID] [numeric](15, 0) NOT NULL,
	[INACTIVE_DT] [datetime] NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ACSKEY_ASSOC_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [ACSKEY_ASSO16AK1] ON [dbo].[ADM_ACSKEY_ASSOC] 
(
	[ACCESS_KEY_ID] ASC,
	[USER_GROUP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ACSKEY_ASSO16IF1] ON [dbo].[ADM_ACSKEY_ASSOC] 
(
	[USER_GROUP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ACSKEY_ASSO16IF2] ON [dbo].[ADM_ACSKEY_ASSOC] 
(
	[ACCESS_KEY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LTR_TEMPLATE_STATE]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LTR_TEMPLATE_STATE](
	[TEMPLATE_STATE_ID] [numeric](15, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
	[TEMPLATE_ID] [decimal](15, 0) NOT NULL,
	[STATE_PROV_ID] [numeric](15, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TEMPLATE_STATE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [TEMPLATE_ST18IF1] ON [dbo].[LTR_TEMPLATE_STATE] 
(
	[TEMPLATE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [TEMPLATE_ST18IF2] ON [dbo].[LTR_TEMPLATE_STATE] 
(
	[STATE_PROV_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_CITY]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_CITY](
	[CITY_ID] [numeric](15, 0) NOT NULL,
	[STATE_PROV_ID] [numeric](15, 0) NOT NULL,
	[CITY_CODE] [char](10) COLLATE Latin1_General_BIN NOT NULL,
	[INACTIVE_DT] [datetime] NULL,
	[UPDATED_BY] [numeric](15, 0) NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CITY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [CITY8AK1] ON [dbo].[SYS_CITY] 
(
	[STATE_PROV_ID] ASC,
	[CITY_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CITY8IF263] ON [dbo].[SYS_CITY] 
(
	[STATE_PROV_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_COUNTY]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_COUNTY](
	[COUNTY_ID] [numeric](15, 0) NOT NULL,
	[COUNTY_CODE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[STATE_PROV_ID] [numeric](15, 0) NOT NULL,
	[INACTIVE_DT] [datetime] NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[COUNTY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [COUNTY10AK1] ON [dbo].[SYS_COUNTY] 
(
	[COUNTY_CODE] ASC,
	[STATE_PROV_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [COUNTY10IF270] ON [dbo].[SYS_COUNTY] 
(
	[STATE_PROV_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_NODE_ACTION]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_NODE_ACTION](
	[NODE_ACTION_ID] [numeric](15, 0) NOT NULL,
	[SYSADMIN_NODE_ID] [decimal](15, 0) NOT NULL,
	[DISPLAY_NAME] [varchar](40) COLLATE Latin1_General_BIN NOT NULL,
	[CLASS_NAME] [varchar](200) COLLATE Latin1_General_BIN NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NODE_ACTION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [NODE_ACTION15IF138] ON [dbo].[SYS_NODE_ACTION] 
(
	[SYSADMIN_NODE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_SYSTEM_NOTE]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_SYSTEM_NOTE](
	[SYSTEM_NOTE_ID] [numeric](15, 0) NOT NULL,
	[SYSTEM_ID] [numeric](15, 0) NOT NULL,
	[EVENT] [varchar](30) COLLATE Latin1_General_BIN NOT NULL,
	[ENABLED] [char](1) COLLATE Latin1_General_BIN NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SYSTEM_NOTE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [SYSTEM_NOTE15IF4] ON [dbo].[ADM_SYSTEM_NOTE] 
(
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_USER_GROUP]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_USER_GROUP](
	[USER_GROUP_ID] [numeric](15, 0) NOT NULL,
	[USER_GROUP_TYPE_C] [char](10) COLLATE Latin1_General_BIN NOT NULL,
	[USER_GROUP_CODE] [char](10) COLLATE Latin1_General_BIN NOT NULL,
	[SYSTEM_ID] [numeric](15, 0) NOT NULL,
	[CORPORATION_ID] [numeric](15, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[USER_GROUP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [USER_GROUP14AK1] ON [dbo].[ADM_USER_GROUP] 
(
	[USER_GROUP_TYPE_C] ASC,
	[USER_GROUP_CODE] ASC,
	[SYSTEM_ID] ASC,
	[CORPORATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [USER_GROUP14IF1] ON [dbo].[ADM_USER_GROUP] 
(
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [USER_GROUP14IF2] ON [dbo].[ADM_USER_GROUP] 
(
	[CORPORATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WFM_FILTER]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WFM_FILTER](
	[FILTER_ID] [numeric](15, 0) NOT NULL,
	[FILTER_CODE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[SYSTEM_ID] [numeric](15, 0) NOT NULL,
	[INACTIVE_FLAG] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FILTER_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [FILTER10AK1] ON [dbo].[WFM_FILTER] 
(
	[FILTER_CODE] ASC,
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FILTER10IF1] ON [dbo].[WFM_FILTER] 
(
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WFM_GRAPH_TYPE]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WFM_GRAPH_TYPE](
	[GRAPH_TYPE_ID] [decimal](15, 0) NOT NULL,
	[GRAPH_TYPE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[SYSTEM_ID] [numeric](15, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GRAPH_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [GRAPH_TYPE14AK1] ON [dbo].[WFM_GRAPH_TYPE] 
(
	[SYSTEM_ID] ASC,
	[GRAPH_TYPE_C] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GRAPH_TYPE14IF1] ON [dbo].[WFM_GRAPH_TYPE] 
(
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ERR_ERROR_CORRECT]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ERR_ERROR_CORRECT](
	[ERROR_CORRECT_ID] [numeric](15, 0) NOT NULL,
	[SYSTEM_ID] [numeric](15, 0) NOT NULL,
	[FILE_TYPE] [varchar](10) COLLATE Latin1_General_BIN NULL,
	[FILE_NAME] [varchar](50) COLLATE Latin1_General_BIN NOT NULL,
	[ERROR_TAG] [varchar](50) COLLATE Latin1_General_BIN NULL,
	[ERROR_DESC] [varchar](4000) COLLATE Latin1_General_BIN NULL,
	[ORIGINAL_FILE_LOC] [varchar](100) COLLATE Latin1_General_BIN NOT NULL,
	[ORIGINAL_FILE_EXTN] [varchar](10) COLLATE Latin1_General_BIN NULL,
	[ERROR_FILE_LOC] [varchar](100) COLLATE Latin1_General_BIN NOT NULL,
	[RECORD_STATUS] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ERROR_CORRECT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ERROR_CORRE17IF1] ON [dbo].[ERR_ERROR_CORRECT] 
(
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GBL_ABSENCE_ALLOW]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GBL_ABSENCE_ALLOW](
	[ABSENCE_ALLOW_ID] [decimal](15, 0) NOT NULL,
	[ABSENCE_ID] [decimal](15, 0) NOT NULL,
	[SYSTEM_ID] [numeric](15, 0) NOT NULL,
	[TASK_ALLOWED] [varchar](20) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ABSENCE_ALLOW_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ABSENCE_ALL17IF1] ON [dbo].[GBL_ABSENCE_ALLOW] 
(
	[ABSENCE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ABSENCE_ALL17IF2] ON [dbo].[GBL_ABSENCE_ALLOW] 
(
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOG_MSG]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOG_MSG](
	[MSG_ID] [numeric](15, 0) NOT NULL,
	[SYSTEM_ID] [numeric](15, 0) NOT NULL,
	[MESSAGE_TEXT] [varchar](255) COLLATE Latin1_General_BIN NULL,
	[SESSION_ID] [varchar](120) COLLATE Latin1_General_BIN NOT NULL,
	[THREAD_ID] [varchar](120) COLLATE Latin1_General_BIN NULL,
	[CLASS_NAME] [varchar](120) COLLATE Latin1_General_BIN NULL,
	[METHOD_NAME] [varchar](120) COLLATE Latin1_General_BIN NULL,
	[LINE_NUMBER] [varchar](20) COLLATE Latin1_General_BIN NULL,
	[FILE_NAME] [varchar](120) COLLATE Latin1_General_BIN NULL,
	[STACK_TRACE] [varchar](3000) COLLATE Latin1_General_BIN NULL,
	[SEVERITY] [varchar](20) COLLATE Latin1_General_BIN NULL,
	[LOG_DT] [datetime] NULL,
	[CREATOR_ID] [numeric](15, 0) NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MSG_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [MSG7IF84] ON [dbo].[LOG_MSG] 
(
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WFM_WKLOAD_GROUP]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WFM_WKLOAD_GROUP](
	[WKLOAD_GROUP_ID] [decimal](15, 0) NOT NULL,
	[SYSTEM_ID] [numeric](15, 0) NOT NULL,
	[WKLOAD_GROUP_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[GROUP_TYPE] [varchar](10) COLLATE Latin1_General_BIN NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WKLOAD_GROUP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [WKLOAD_GROU16AK1] ON [dbo].[WFM_WKLOAD_GROUP] 
(
	[SYSTEM_ID] ASC,
	[WKLOAD_GROUP_C] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [WKLOAD_GROU16IF1] ON [dbo].[WFM_WKLOAD_GROUP] 
(
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LTR_TEMPLATE]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LTR_TEMPLATE](
	[TEMPLATE_ID] [decimal](15, 0) NOT NULL,
	[TEMPLATE_TYPE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[SYSTEM_ID] [numeric](15, 0) NOT NULL,
	[DOC_TYPE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[PROCESS_ID] [int] NOT NULL,
	[INACTIVE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
	[DOC_SUBTYPE_C] [varchar](10) COLLATE Latin1_General_BIN NULL,
PRIMARY KEY CLUSTERED 
(
	[TEMPLATE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [TEMPLATE12IF1] ON [dbo].[LTR_TEMPLATE] 
(
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_FOLDER_TYPE]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_FOLDER_TYPE](
	[FOLDER_TYPE_ID] [decimal](15, 0) NOT NULL,
	[SYSTEM_ID] [numeric](15, 0) NOT NULL,
	[ENTITY_TYPE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[FOLDER_LEVEL] [int] NOT NULL,
	[FOLDER_TYPE] [varchar](24) COLLATE Latin1_General_BIN NOT NULL,
	[INACTIVE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FOLDER_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FOLDER_TYPE15IF1] ON [dbo].[SYS_FOLDER_TYPE] 
(
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_CKL_AREA]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_CKL_AREA](
	[CKL_AREA_ID] [decimal](15, 0) NOT NULL,
	[SYSTEM_ID] [numeric](15, 0) NOT NULL,
	[CKL_AREA_C] [varchar](10) COLLATE Latin1_General_BIN NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CKL_AREA_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [CKL_AREA12IF1] ON [dbo].[SYS_CKL_AREA] 
(
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_ENTITY_TYPE]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_ENTITY_TYPE](
	[ENTITY_TYPE_ID] [numeric](15, 0) NOT NULL,
	[SYSTEM_ID] [numeric](15, 0) NOT NULL,
	[ENTITY_TYPE_CODE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ENTITY_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [ENTITY_TYPE15AK1] ON [dbo].[SYS_ENTITY_TYPE] 
(
	[SYSTEM_ID] ASC,
	[ENTITY_TYPE_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ENTITY_TYPE15IF120] ON [dbo].[SYS_ENTITY_TYPE] 
(
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_CATEGORY]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_CATEGORY](
	[CATEGORY_ID] [numeric](15, 0) NOT NULL,
	[CATEGORY_CODE] [varchar](20) COLLATE Latin1_General_BIN NOT NULL,
	[DATA_MODIFIABLE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[SYSTEM_ID] [numeric](15, 0) NULL,
	[DISPLAY_COUNT_TYPE] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CATEGORY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [CATEGORY12AK1] ON [dbo].[SYS_CATEGORY] 
(
	[CATEGORY_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CATEGORY12IF1] ON [dbo].[SYS_CATEGORY] 
(
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_GLB_APP_CONFIG]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_GLB_APP_CONFIG](
	[GLB_APP_CONFIG_ID] [numeric](15, 0) NOT NULL,
	[CORPORATION_ID] [numeric](15, 0) NOT NULL,
	[SYSTEM_ID] [numeric](15, 0) NOT NULL,
	[APP_NAME] [varchar](30) COLLATE Latin1_General_BIN NOT NULL,
	[TASK_CODE] [varchar](40) COLLATE Latin1_General_BIN NOT NULL,
	[METADATA] [varchar](60) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GLB_APP_CONFIG_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [GLB_APP_CON18AK1] ON [dbo].[ADM_GLB_APP_CONFIG] 
(
	[CORPORATION_ID] ASC,
	[SYSTEM_ID] ASC,
	[TASK_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GLB_APP_CON18IF4] ON [dbo].[ADM_GLB_APP_CONFIG] 
(
	[CORPORATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [GLB_APP_CON18IF60] ON [dbo].[ADM_GLB_APP_CONFIG] 
(
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_APP_FUNCTION]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_APP_FUNCTION](
	[APP_FUNCTION_ID] [numeric](15, 0) NOT NULL,
	[SYSTEM_ID] [numeric](15, 0) NOT NULL,
	[FUNCTION_C] [varchar](50) COLLATE Latin1_General_BIN NOT NULL,
	[GRP_LVL_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[ORDER_BY] [numeric](5, 0) NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[APP_FUNCTION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [APP_FUNCTIO16AK1] ON [dbo].[SYS_APP_FUNCTION] 
(
	[FUNCTION_C] ASC,
	[GRP_LVL_C] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [APP_FUNCTIO16IF23] ON [dbo].[SYS_APP_FUNCTION] 
(
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WFM_WORK_LOAD]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WFM_WORK_LOAD](
	[WORK_LOAD_ID] [numeric](15, 0) NOT NULL,
	[SYSTEM_ID] [numeric](15, 0) NOT NULL,
	[QUEUE_ID] [numeric](15, 0) NOT NULL,
	[TODAYS_MTH1_COUNT] [numeric](10, 0) NOT NULL,
	[TODAYS_MTH2_COUNT] [numeric](10, 0) NOT NULL,
	[TOTAL_MTH1_COUNT] [numeric](10, 0) NOT NULL,
	[TOTAL_MTH2_COUNT] [numeric](10, 0) NOT NULL,
	[DEFAULT_COUNT] [numeric](10, 0) NOT NULL,
	[PROD1_COUNT] [numeric](10, 0) NOT NULL,
	[PROD2_COUNT] [numeric](10, 0) NOT NULL,
	[PROD3_COUNT] [numeric](10, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
	[TODAYS_NEW_COUNT] [numeric](10, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WORK_LOAD_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [WORK_LOAD13AK1] ON [dbo].[WFM_WORK_LOAD] 
(
	[QUEUE_ID] ASC,
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WFM_WL_CONFIG]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WFM_WL_CONFIG](
	[WL_CONFIG_ID] [numeric](15, 0) NOT NULL,
	[SYSTEM_ID] [numeric](15, 0) NOT NULL,
	[TOTAL_COUNT_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[TOTAL_TIE_BREAK_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[TODAY_COUNT_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[TODAY_TIE_BREAK_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[DEFAULT_COUNT_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[DEFLT_TIE_BREAK_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[PROD1_COUNT_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[PROD1_TIE_BREAK_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[PROD2_COUNT_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[PROD2_TIE_BREAK_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[PROD3_COUNT_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[PROD3_TIE_BREAK_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
	[TODAY_NEW_COUNT_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[TODAY_NEW_T_BRK_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WL_CONFIG_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [WL_CONFIG13AK1] ON [dbo].[WFM_WL_CONFIG] 
(
	[SYSTEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_TIME_ZONE_L]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_TIME_ZONE_L](
	[TIME_ZONE_L_ID] [numeric](15, 0) NOT NULL,
	[TIME_ZONE_ID] [numeric](15, 0) NOT NULL,
	[LOCALE_ID] [numeric](15, 0) NOT NULL,
	[DESCRIPTION] [varchar](100) COLLATE Latin1_General_BIN NOT NULL,
	[ORDER_BY] [numeric](15, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TIME_ZONE_L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [TIME_ZONE_L15IF1] ON [dbo].[SYS_TIME_ZONE_L] 
(
	[TIME_ZONE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_USER_PREF_CNTL]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_USER_PREF_CNTL](
	[USER_PREF_CNTL_ID] [decimal](15, 0) NOT NULL,
	[USER_PREF_ID] [decimal](15, 0) NOT NULL,
	[CNTL_NAME] [varchar](100) COLLATE Latin1_General_BIN NOT NULL,
	[CNTL_VALUE] [varchar](255) COLLATE Latin1_General_BIN NOT NULL,
	[CNTL_VALUE_TYPE] [varchar](100) COLLATE Latin1_General_BIN NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[USER_PREF_CNTL_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [USER_PREF_C18IF1] ON [dbo].[SYS_USER_PREF_CNTL] 
(
	[USER_PREF_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOC_FAX_DOCUMENT]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DOC_FAX_DOCUMENT](
	[FAX_DOCUMENT_ID] [decimal](15, 0) NOT NULL,
	[FAX_ID] [decimal](15, 0) NOT NULL,
	[DOC_ID] [decimal](15, 0) NOT NULL,
	[REFERENCE_ID] [numeric](15, 0) NOT NULL,
	[REFERENCE_TYPE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[PAGE_FROM] [decimal](18, 0) NOT NULL,
	[PAGE_TO] [decimal](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FAX_DOCUMENT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FAX_DOCUMEN16IF1] ON [dbo].[DOC_FAX_DOCUMENT] 
(
	[FAX_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FAX_DOCUMEN16IF2] ON [dbo].[DOC_FAX_DOCUMENT] 
(
	[DOC_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOC_PRINT_DOCUMENT]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_PRINT_DOCUMENT](
	[PRINT_DOCUMENT_ID] [decimal](15, 0) NOT NULL,
	[PRINT_ID] [decimal](15, 0) NOT NULL,
	[DOCUMENT_ID] [decimal](15, 0) NOT NULL,
	[PAGE_FROM] [decimal](18, 0) NOT NULL,
	[PAGE_TO] [decimal](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PRINT_DOCUMENT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [PRINT_DOCUM18IF1] ON [dbo].[DOC_PRINT_DOCUMENT] 
(
	[PRINT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [PRINT_DOCUM18IF2] ON [dbo].[DOC_PRINT_DOCUMENT] 
(
	[DOCUMENT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WFM_ASSOCIATION]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WFM_ASSOCIATION](
	[ASSOCIATION_ID] [numeric](15, 0) NOT NULL,
	[MESSAGE_ID] [numeric](15, 0) NOT NULL,
	[FILTER_ID] [numeric](15, 0) NULL,
	[CORPORATION_ID] [numeric](15, 0) NOT NULL,
	[ASSOC_TYP_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[ASSOC_CREATOR_ID] [numeric](15, 0) NOT NULL,
	[QUEUE_ID] [numeric](15, 0) NOT NULL,
	[REFERENCE_ID] [numeric](15, 0) NOT NULL,
	[ANCESTOR_ID] [numeric](15, 0) NOT NULL,
	[ANCESTOR_TYPE_CODE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[ANCESTOR_DISPLAY] [varchar](100) COLLATE Latin1_General_BIN NOT NULL,
	[REFERENCE_SYSTEM_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[REFERENCE_DISPLAY] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[REFERENCE_TYPE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[PROD1_FLAG] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[PROD2_FLAG] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[PROD3_FLAG] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[DEFAULT_WEIGHT_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[WEIGHT_MTH1] [numeric](5, 0) NOT NULL,
	[WEIGHT_MTH2] [numeric](5, 0) NOT NULL,
	[OWNER_FLAG] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[OWNER_REASSIGNED_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[CLOSE_AUTO_REPLY_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[ASSOCIATION_STATUS] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[CLOSE_REASON_ID] [numeric](15, 0) NULL,
	[OPEN_REASON_ID] [numeric](15, 0) NULL,
	[CLOSE_DT] [datetime] NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ASSOCIATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ASSOCIATION15IE1] ON [dbo].[WFM_ASSOCIATION] 
(
	[ANCESTOR_ID] ASC,
	[ANCESTOR_TYPE_CODE] ASC,
	[REFERENCE_SYSTEM_C] ASC,
	[OWNER_FLAG] ASC,
	[REFERENCE_ID] ASC,
	[REFERENCE_TYPE_C] ASC,
	[ASSOCIATION_STATUS] ASC,
	[QUEUE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ASSOCIATION15IE2] ON [dbo].[WFM_ASSOCIATION] 
(
	[INSERT_DT] ASC,
	[QUEUE_ID] ASC,
	[REFERENCE_TYPE_C] ASC,
	[ASSOCIATION_STATUS] ASC,
	[OWNER_FLAG] ASC,
	[ANCESTOR_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ASSOCIATION15IE3] ON [dbo].[WFM_ASSOCIATION] 
(
	[QUEUE_ID] ASC,
	[OWNER_FLAG] ASC,
	[ASSOCIATION_STATUS] ASC,
	[ASSOCIATION_ID] ASC,
	[ANCESTOR_ID] ASC,
	[REFERENCE_TYPE_C] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ASSOCIATION15IE4] ON [dbo].[WFM_ASSOCIATION] 
(
	[REFERENCE_ID] ASC,
	[REFERENCE_TYPE_C] ASC,
	[REFERENCE_SYSTEM_C] ASC,
	[ASSOCIATION_STATUS] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ASSOCIATION15IF111] ON [dbo].[WFM_ASSOCIATION] 
(
	[MESSAGE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ASSOCIATION15IF2] ON [dbo].[WFM_ASSOCIATION] 
(
	[FILTER_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ASSOCIATION15IF3] ON [dbo].[WFM_ASSOCIATION] 
(
	[CORPORATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WFM_REMINDER]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WFM_REMINDER](
	[REMINDER_ID] [numeric](15, 0) NOT NULL,
	[QUEUE_ID] [numeric](15, 0) NOT NULL,
	[ANCESTOR_ID] [numeric](15, 0) NOT NULL,
	[FILTER_ID] [numeric](15, 0) NULL,
	[CORPORATION_ID] [numeric](15, 0) NOT NULL,
	[ANCESTOR_TYPE_CODE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[ANCESTOR_DISPLAY] [varchar](100) COLLATE Latin1_General_BIN NOT NULL,
	[REFERENCE_ID] [numeric](15, 0) NOT NULL,
	[REFERENCE_TYPE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[REFERENCE_SYSTEM_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[REFERENCE_DISPLAY] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[CREATOR_ID] [numeric](15, 0) NOT NULL,
	[REMINDER_STATE] [numeric](10, 0) NOT NULL,
	[PRIVATE_FLAG] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[DESCRIPTION] [varchar](255) COLLATE Latin1_General_BIN NOT NULL,
	[CONTACT_ID] [numeric](15, 0) NULL,
	[CONTACT_NM_SEQ_NUM] [numeric](5, 0) NULL,
	[RECUR_INTERVAL] [numeric](10, 0) NULL,
	[RECUR_COUNT] [numeric](10, 0) NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
	[ALERT_D] [int] NOT NULL,
	[LAST_RECURRENCE_D] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[REMINDER_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [REMINDER12IE1] ON [dbo].[WFM_REMINDER] 
(
	[ANCESTOR_ID] ASC,
	[QUEUE_ID] ASC,
	[ANCESTOR_TYPE_CODE] ASC,
	[REFERENCE_SYSTEM_C] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [REMINDER12IE2] ON [dbo].[WFM_REMINDER] 
(
	[ALERT_D] ASC,
	[QUEUE_ID] ASC,
	[REFERENCE_SYSTEM_C] ASC,
	[REMINDER_STATE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [REMINDER12IF1] ON [dbo].[WFM_REMINDER] 
(
	[FILTER_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [REMINDER12IF2] ON [dbo].[WFM_REMINDER] 
(
	[CORPORATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WFM_WORK_ITEM]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WFM_WORK_ITEM](
	[WORK_ITEM_ID] [numeric](15, 0) NOT NULL,
	[QUEUE_ID] [numeric](15, 0) NOT NULL,
	[CATEGORY_CODE] [varchar](20) COLLATE Latin1_General_BIN NOT NULL,
	[CREATOR_ID] [numeric](15, 0) NOT NULL,
	[FILTER_ID] [numeric](15, 0) NULL,
	[CORPORATION_ID] [numeric](15, 0) NOT NULL,
	[DISPLAY_DESC] [varchar](64) COLLATE Latin1_General_BIN NULL,
	[ANCESTOR_ID] [numeric](15, 0) NOT NULL,
	[ANCESTOR_TYPE_CODE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[ANCESTOR_SYSTEM_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[ANCESTOR_DISPLAY] [varchar](100) COLLATE Latin1_General_BIN NOT NULL,
	[REFERENCE_ID] [numeric](15, 0) NOT NULL,
	[REFERENCE_TYPE_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[REFERENCE_SYSTEM_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[REFERENCE_DISPLAY] [varchar](100) COLLATE Latin1_General_BIN NULL,
	[WFM_ID] [numeric](15, 0) NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WORK_ITEM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [WORK_ITEM13IE1] ON [dbo].[WFM_WORK_ITEM] 
(
	[ANCESTOR_ID] ASC,
	[REFERENCE_ID] ASC,
	[ANCESTOR_SYSTEM_C] ASC,
	[REFERENCE_TYPE_C] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [WORK_ITEM13IE2] ON [dbo].[WFM_WORK_ITEM] 
(
	[QUEUE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [WORK_ITEM13IE3] ON [dbo].[WFM_WORK_ITEM] 
(
	[WFM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [WORK_ITEM13IF1] ON [dbo].[WFM_WORK_ITEM] 
(
	[FILTER_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [WORK_ITEM13IF2] ON [dbo].[WFM_WORK_ITEM] 
(
	[CORPORATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WFM_WKLOAD_GRAPH]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WFM_WKLOAD_GRAPH](
	[WKLOAD_GRAPH_ID] [decimal](15, 0) NOT NULL,
	[GRAPH_TYPE_ID] [decimal](15, 0) NOT NULL,
	[WKLOAD_GROUP_ID] [decimal](15, 0) NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WKLOAD_GRAPH_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [WKLOAD_GRAP16AK1] ON [dbo].[WFM_WKLOAD_GRAPH] 
(
	[GRAPH_TYPE_ID] ASC,
	[WKLOAD_GROUP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [WKLOAD_GRAP16IF1] ON [dbo].[WFM_WKLOAD_GRAPH] 
(
	[GRAPH_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [WKLOAD_GRAP16IF2] ON [dbo].[WFM_WKLOAD_GRAPH] 
(
	[WKLOAD_GROUP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_CLI_CATGRY]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_CLI_CATGRY](
	[CLI_CATGRY_ID] [numeric](15, 0) NOT NULL,
	[CLI_TYPE_ID] [numeric](15, 0) NOT NULL,
	[CLIENT_CAT_C] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[INACTIVE_DT] [datetime] NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CLI_CATGRY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [CLI_CATGRY14AK1] ON [dbo].[ADM_CLI_CATGRY] 
(
	[CLI_TYPE_ID] ASC,
	[CLIENT_CAT_C] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CLI_CATGRY14IF2] ON [dbo].[ADM_CLI_CATGRY] 
(
	[CLI_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WFM_MSG_PART]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WFM_MSG_PART](
	[MSG_PART_ID] [numeric](15, 0) NOT NULL,
	[MESSAGE_ID] [numeric](15, 0) NOT NULL,
	[PARTICIPANT_ID] [numeric](15, 0) NOT NULL,
	[PARTICIPANT_TYPE] [varchar](30) COLLATE Latin1_General_BIN NOT NULL,
	[MESSAGE_STATUS] [varchar](8) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
	[ORIG_RECIPIENT_ID] [numeric](15, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MSG_PART_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [MSG_PART12IF53] ON [dbo].[WFM_MSG_PART] 
(
	[MESSAGE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WFM_MESSAGE_BODY]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WFM_MESSAGE_BODY](
	[MESSAGE_ID] [numeric](15, 0) NOT NULL,
	[SEQ_NUM] [numeric](5, 0) NOT NULL,
	[BODY] [varchar](4000) COLLATE Latin1_General_BIN NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MESSAGE_ID] ASC,
	[SEQ_NUM] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [MESSAGE_BOD16IF57] ON [dbo].[WFM_MESSAGE_BODY] 
(
	[MESSAGE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_COMPANY_V]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_COMPANY_V](
	[COMPANY_V_ID] [numeric](15, 0) NOT NULL,
	[COMPANY_ID] [numeric](15, 0) NOT NULL,
	[VERS_CNTL_NBR] [int] NOT NULL,
	[COMPANY_NAME] [varchar](128) COLLATE Latin1_General_BIN NOT NULL,
	[INACTIVE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[EFFECTIVE_STATUS_D] [int] NOT NULL,
	[PHONE1] [varchar](24) COLLATE Latin1_General_BIN NOT NULL,
	[PHONE2] [varchar](24) COLLATE Latin1_General_BIN NULL,
	[FAX] [varchar](24) COLLATE Latin1_General_BIN NULL,
	[INTERNET] [varchar](120) COLLATE Latin1_General_BIN NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
	[INFO1] [varchar](30) COLLATE Latin1_General_BIN NULL,
	[INFO2] [varchar](30) COLLATE Latin1_General_BIN NULL,
	[INFO3] [varchar](30) COLLATE Latin1_General_BIN NULL,
PRIMARY KEY CLUSTERED 
(
	[COMPANY_V_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [COMPANY_V13AK1] ON [dbo].[ADM_COMPANY_V] 
(
	[COMPANY_ID] ASC,
	[VERS_CNTL_NBR] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [COMPANY_V13IF1] ON [dbo].[ADM_COMPANY_V] 
(
	[COMPANY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_CORPORATION_V]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_CORPORATION_V](
	[CORPORATION_V_ID] [numeric](15, 0) NOT NULL,
	[CORPORATION_ID] [numeric](15, 0) NOT NULL,
	[VERS_CNTL_NBR] [int] NOT NULL,
	[CORP_NAME] [varchar](128) COLLATE Latin1_General_BIN NOT NULL,
	[INACTIVE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[EFFECTIVE_STATUS_D] [int] NOT NULL,
	[PHONE1] [varchar](24) COLLATE Latin1_General_BIN NOT NULL,
	[PHONE2] [varchar](24) COLLATE Latin1_General_BIN NULL,
	[FAX] [varchar](24) COLLATE Latin1_General_BIN NULL,
	[INTERNET] [varchar](120) COLLATE Latin1_General_BIN NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CORPORATION_V_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [CORPORATION17AK1] ON [dbo].[ADM_CORPORATION_V] 
(
	[CORPORATION_ID] ASC,
	[VERS_CNTL_NBR] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CORPORATION17IF1] ON [dbo].[ADM_CORPORATION_V] 
(
	[CORPORATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_COMPANY]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_COMPANY](
	[COMPANY_ID] [numeric](15, 0) NOT NULL,
	[CORPORATION_ID] [numeric](15, 0) NOT NULL,
	[SYSTEM_ADDR_V_ID] [numeric](15, 0) NOT NULL,
	[COMPANY_CODE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[COMPANY_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [COMPANY11AK1] ON [dbo].[ADM_COMPANY] 
(
	[CORPORATION_ID] ASC,
	[COMPANY_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [COMPANY11IF47] ON [dbo].[ADM_COMPANY] 
(
	[CORPORATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_CLI_TYPE]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_CLI_TYPE](
	[CLI_TYPE_ID] [numeric](15, 0) NOT NULL,
	[DISPLAY_TYP_LST_ID] [numeric](15, 0) NOT NULL,
	[CLIENT_TYPE_CODE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[CORPORATION_ID] [numeric](15, 0) NOT NULL,
	[INACTIVE_DT] [datetime] NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CLI_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [CLI_TYPE12AK1] ON [dbo].[ADM_CLI_TYPE] 
(
	[CLIENT_TYPE_CODE] ASC,
	[CORPORATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CLI_TYPE12IF1] ON [dbo].[ADM_CLI_TYPE] 
(
	[CORPORATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_NOTE_TYPE]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_NOTE_TYPE](
	[NOTE_TYPE_ID] [numeric](15, 0) NOT NULL,
	[CORPORATION_ID] [numeric](15, 0) NOT NULL,
	[INACTIVE_DT] [datetime] NULL,
	[NOTE_TYPE_CODE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[DATA_MODIFIABLE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NOTE_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [NOTE_TYPE13AK1] ON [dbo].[ADM_NOTE_TYPE] 
(
	[CORPORATION_ID] ASC,
	[NOTE_TYPE_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NOTE_TYPE13IF2] ON [dbo].[ADM_NOTE_TYPE] 
(
	[CORPORATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADM_MESSAGE_TYPE]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADM_MESSAGE_TYPE](
	[MESSAGE_TYPE_ID] [numeric](15, 0) NOT NULL,
	[CORPORATION_ID] [numeric](15, 0) NOT NULL,
	[MESSAGE_TYPE_CODE] [varchar](10) COLLATE Latin1_General_BIN NOT NULL,
	[DATA_MODIFIABLE_F] [char](1) COLLATE Latin1_General_BIN NOT NULL,
	[INACTIVE_DT] [datetime] NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MESSAGE_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [MESSAGE_TYP16AK1] ON [dbo].[ADM_MESSAGE_TYPE] 
(
	[CORPORATION_ID] ASC,
	[MESSAGE_TYPE_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [MESSAGE_TYP16IF2] ON [dbo].[ADM_MESSAGE_TYPE] 
(
	[CORPORATION_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LTR_TEMPLATE_LOC]    Script Date: 03/08/2010 15:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LTR_TEMPLATE_LOC](
	[TEMPLATE_LOC_ID] [decimal](15, 0) NOT NULL,
	[TEMPLATE_ID] [decimal](15, 0) NOT NULL,
	[LEVEL_C_1] [varchar](20) COLLATE Latin1_General_BIN NOT NULL,
	[LEVEL_C_2] [varchar](20) COLLATE Latin1_General_BIN NULL,
	[LEVEL_C_3] [varchar](20) COLLATE Latin1_General_BIN NULL,
	[LEVEL_C_4] [varchar](20) COLLATE Latin1_General_BIN NULL,
	[LEVEL_C_5] [varchar](20) COLLATE Latin1_General_BIN NULL,
	[UPDATED_BY] [int] NOT NULL,
	[INSERT_DT] [datetime] NOT NULL,
	[UPDATE_DT] [datetime] NOT NULL,
	[LEVEL_TYPE_1] [varchar](20) COLLATE Latin1_General_BIN NULL,
	[LEVEL_TYPE_2] [varchar](20) COLLATE Latin1_General_BIN NULL,
	[LEVEL_TYPE_3] [varchar](20) COLLATE Latin1_General_BIN NULL,
	[LEVEL_TYPE_4] [varchar](20) COLLATE Latin1_General_BIN NULL,
	[LEVEL_TYPE_5] [varchar](20) COLLATE Latin1_General_BIN NULL,
PRIMARY KEY CLUSTERED 
(
	[TEMPLATE_LOC_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [TEMPLATE_LO16IF1] ON [dbo].[LTR_TEMPLATE_LOC] 
(
	[TEMPLATE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_WORK_ITEMS]    Script Date: 03/08/2010 15:04:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--For 39563--
CREATE PROCEDURE [dbo].[UPDATE_WORK_ITEMS] AS

DECLARE	@work_id  numeric(15,0);
DECLARE @mess_id numeric(15,0);
DECLARE	@rec_count int;
DECLARE	@ances_id numeric(15,0);
DECLARE	@que_id numeric(15,0);
DECLARE @part_id numeric(15,0);
	
DECLARE	 SELECT_CURSOR CURSOR FOR 

		SELECT WORK_ITEM_ID, WFM_ID, WI.ANCESTOR_ID, QUEUE_ID, PARTICIPANT_ID 
		FROM WFM_WORK_ITEM WI, WFM_MESSAGE M, WFM_MSG_PART MP 
		WHERE CATEGORY_CODE = 'CWSMSG' AND M.ANCESTOR_ID = WI.ANCESTOR_ID AND M.MESSAGE_ID = MP.MESSAGE_ID
		AND WFM_ID = M.MESSAGE_ID AND QUEUE_ID NOT IN 
			(SELECT P.PARTICIPANT_ID FROM WFM_MSG_PART P WHERE MP.PARTICIPANT_TYPE IN ('TO', 'CC') 
			AND M.MESSAGE_ID = P.MESSAGE_ID )
		AND MP.PARTICIPANT_TYPE IN ('TO', 'CC')
		ORDER BY WORK_ITEM_ID, WI.ANCESTOR_ID;

--			SELECT WORK_ITEM_ID, QUEUE_ID, ANCESTOR_ID 
--			FROM WFM_WORK_ITEM 
--			WHERE CATEGORY_CODE IN ('CWSAMAIL');

OPEN SELECT_CURSOR
FETCH NEXT FROM SELECT_CURSOR INTO @work_id, @mess_id,  @ances_id, @que_id, @part_id
WHILE @@FETCH_STATUS = 0		
BEGIN


			UPDATE DV1OCGBL.WFM_WORK_ITEM SET QUEUE_ID = @part_id
			WHERE CATEGORY_CODE = 'CWSMSG' AND ANCESTOR_ID = @ances_id
			AND WFM_ID = @mess_id AND WORK_ITEM_ID = @work_id AND QUEUE_ID = @que_id;

			
--			IF NOT EXISTS(SELECT * FROM DOC_DOCUMENT WHERE RECEPIENT_ID = @que_id AND DOC_STATUS_C = 'NEW' AND ANCESTOR_ID = @ances_id ) 
--				DELETE FROM WFM_WORK_ITEM 
--				WHERE CATEGORY_CODE IN ('CWSAMAIL') AND ANCESTOR_ID = @ances_id
--				AND WORK_ITEM_ID = @work_id AND QUEUE_ID = @que_id;


		
		FETCH NEXT FROM SELECT_CURSOR INTO @work_id, @mess_id,  @ances_id, @que_id, @part_id
END		
CLOSE SELECT_CURSOR
DEALLOCATE SELECT_CURSOR

DELETE FROM WFM_WORK_ITEM WHERE WORK_ITEM_ID IN(SELECT A.WORK_ITEM_ID 
FROM WFM_WORK_ITEM A,WFM_MESSAGE B,WFM_MSG_PART C
WHERE A.CATEGORY_CODE = 'CWSMSG' AND A.WFM_ID = B.MESSAGE_ID AND B.MESSAGE_ID =
C.MESSAGE_ID AND A.QUEUE_ID = C.PARTICIPANT_ID AND C.MESSAGE_STATUS = 'READ')
	

DELETE FROM WFM_WORK_ITEM WHERE WORK_ITEM_ID IN(SELECT A.WORK_ITEM_ID 
FROM WFM_WORK_ITEM A,WFM_MESSAGE B,WFM_MSG_PART C
WHERE A.CATEGORY_CODE = 'CWSMSG' AND A.WFM_ID = B.MESSAGE_ID AND B.MESSAGE_ID =
C.MESSAGE_ID AND A.QUEUE_ID = C.PARTICIPANT_ID AND C.MESSAGE_STATUS =
'REPLIED')



EXEC UPDATE_WORK_ITEMS;
DROP PROCEDURE UPDATE_WORK_ITEMS;
--39563 - End--
GO
/****** Object:  StoredProcedure [dbo].[dt_setpropertybyid_u]    Script Date: 03/08/2010 15:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
**	If the property already exists, reset the value; otherwise add property
**		id -- the id in sysobjects of the object
**		property -- the name of the property
**		uvalue -- the text value of the property
**		lvalue -- the binary value of the property (image)
*/
create procedure [dbo].[dt_setpropertybyid_u]
	@id int,
	@property varchar(64),
	@uvalue nvarchar(255),
	@lvalue image
as
	set nocount on
	-- 
	-- If we are writing the name property, find the ansi equivalent. 
	-- If there is no lossless translation, generate an ansi name. 
	-- 
	declare @avalue varchar(255) 
	set @avalue = null 
	if (@uvalue is not null) 
	begin 
		if (convert(nvarchar(255), convert(varchar(255), @uvalue)) = @uvalue) 
		begin 
			set @avalue = convert(varchar(255), @uvalue) 
		end 
		else 
		begin 
			if 'DtgSchemaNAME' = @property 
			begin 
				exec dbo.dt_generateansiname @avalue output 
			end 
		end 
	end 
	if exists (select * from dbo.dtproperties 
			where objectid=@id and property=@property)
	begin
		--
		-- bump the version count for this row as we update it
		--
		update dbo.dtproperties set value=@avalue, uvalue=@uvalue, lvalue=@lvalue, version=version+1
			where objectid=@id and property=@property
	end
	else
	begin
		--
		-- version count is auto-set to 0 on initial insert
		--
		insert dbo.dtproperties (property, objectid, value, uvalue, lvalue)
			values (@property, @id, @avalue, @uvalue, @lvalue)
	end
GO
/****** Object:  StoredProcedure [dbo].[dt_addtosourcecontrol]    Script Date: 03/08/2010 15:04:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create proc [dbo].[dt_addtosourcecontrol]
    @vchSourceSafeINI varchar(255) = '',
    @vchProjectName   varchar(255) ='',
    @vchComment       varchar(255) ='',
    @vchLoginName     varchar(255) ='',
    @vchPassword      varchar(255) =''

as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId = 0

declare @iStreamObjectId int
select @iStreamObjectId = 0

declare @VSSGUID varchar(100)
select @VSSGUID = 'SQLVersionControl.VCS_SQL'

declare @vchDatabaseName varchar(255)
select @vchDatabaseName = db_name()

declare @iReturnValue int
select @iReturnValue = 0

declare @iPropertyObjectId int
declare @vchParentId varchar(255)

declare @iObjectCount int
select @iObjectCount = 0

    exec @iReturn = master.dbo.sp_OACreate @VSSGUID, @iObjectId OUT
    if @iReturn <> 0 GOTO E_OAError


    /* Create Project in SS */
    exec @iReturn = master.dbo.sp_OAMethod @iObjectId,
											'AddProjectToSourceSafe',
											NULL,
											@vchSourceSafeINI,
											@vchProjectName output,
											@@SERVERNAME,
											@vchDatabaseName,
											@vchLoginName,
											@vchPassword,
											@vchComment


    if @iReturn <> 0 GOTO E_OAError

    /* Set Database Properties */

    begin tran SetProperties

    /* add high level object */

    exec @iPropertyObjectId = dbo.dt_adduserobject_vcs 'VCSProjectID'

    select @vchParentId = CONVERT(varchar(255),@iPropertyObjectId)

    exec dbo.dt_setpropertybyid @iPropertyObjectId, 'VCSProjectID', @vchParentId , NULL
    exec dbo.dt_setpropertybyid @iPropertyObjectId, 'VCSProject' , @vchProjectName , NULL
    exec dbo.dt_setpropertybyid @iPropertyObjectId, 'VCSSourceSafeINI' , @vchSourceSafeINI , NULL
    exec dbo.dt_setpropertybyid @iPropertyObjectId, 'VCSSQLServer', @@SERVERNAME, NULL
    exec dbo.dt_setpropertybyid @iPropertyObjectId, 'VCSSQLDatabase', @vchDatabaseName, NULL

    if @@error <> 0 GOTO E_General_Error

    commit tran SetProperties
    
    select @iObjectCount = 0;

CleanUp:
    select @vchProjectName
    select @iObjectCount
    return

E_General_Error:
    /* this is an all or nothing.  No specific error messages */
    goto CleanUp

E_OAError:
    exec dbo.dt_displayoaerror @iObjectId, @iReturn
    goto CleanUp
GO
/****** Object:  StoredProcedure [dbo].[GETNEXTIDBLOCK]    Script Date: 03/08/2010 15:04:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[GETNEXTIDBLOCK] @vTable VARCHAR(18) ,
@vBlock INT ,
@vKey DECIMAL(15,0) OUTPUT ,
@sql_code INT OUTPUT



AS
BEGIN

 declare @last_block DECIMAL(15,0) ;
 declare @new_block  DECIMAL(15,0) ;
 declare @INITIAL_ID DECIMAL(15,0) ;
 declare @retcode    SMALLINT;

  DECLARE cursor1 CURSOR  FOR  SELECT NEXT_ID  FROM SYS_ID_ASSIGN  WHERE TABLE_NAME = @vTable  FOR UPDATE



   SET @last_block = 0
   SET @INITIAL_ID = 10000
   SET @retcode = 0

   OPEN cursor1

   fetch cursor1 into @last_block

   if (@@fetch_status = 0)
   begin
   SET @new_block = @last_block+@vBlock
   update SYS_ID_ASSIGN set NEXT_ID = @new_block  WHERE CURRENT OF cursor1
   	if ( @@error <> 0 or @@rowcount <> 1 )
      		begin
      			close cursor1
      			deallocate cursor1
      			set @sql_code = @@ERROR
      			SET @vKey = null
   		end
   Set @vKey = @last_block
   Set @sql_code = @retcode

   end
   if (@@fetch_status = -1)
   begin
   SET @vBlock = @INITIAL_ID+@vBlock
   INSERT INTO SYS_ID_ASSIGN(TABLE_NAME,NEXT_ID) VALUES(@vTable,@vBlock)
      		if ( @@error <> 0 or @@rowcount <> 1 )
   		begin
   			close cursor1
   			deallocate cursor1
   			set @sql_code = @@ERROR
   			SET @vKey = null
   		end


  Set @vKey = @INITIAL_ID
  Set @sql_code = @retcode

   end

   close cursor1
   deallocate cursor1

END
GO
/****** Object:  StoredProcedure [dbo].[dt_removefromsourcecontrol]    Script Date: 03/08/2010 15:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create procedure [dbo].[dt_removefromsourcecontrol]

as

    set nocount on

    declare @iPropertyObjectId int
    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    exec dbo.dt_droppropertiesbyid @iPropertyObjectId, null

    /* -1 is returned by dt_droppopertiesbyid */
    if @@error <> 0 and @@error <> -1 return 1

    return 0
GO
/****** Object:  StoredProcedure [dbo].[dt_validateloginparams]    Script Date: 03/08/2010 15:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create proc [dbo].[dt_validateloginparams]
    @vchLoginName  varchar(255),
    @vchPassword   varchar(255)
as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId =0

declare @VSSGUID varchar(100)
select @VSSGUID = 'SQLVersionControl.VCS_SQL'

    declare @iPropertyObjectId int
    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchSourceSafeINI varchar(255)
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT

    exec @iReturn = master.dbo.sp_OACreate @VSSGUID, @iObjectId OUT
    if @iReturn <> 0 GOTO E_OAError

    exec @iReturn = master.dbo.sp_OAMethod @iObjectId,
											'ValidateLoginParams',
											NULL,
											@sSourceSafeINI = @vchSourceSafeINI,
											@sLoginName = @vchLoginName,
											@sPassword = @vchPassword
    if @iReturn <> 0 GOTO E_OAError

CleanUp:
    return

E_OAError:
    exec dbo.dt_displayoaerror @iObjectId, @iReturn
    GOTO CleanUp
GO
/****** Object:  StoredProcedure [dbo].[dt_checkinobject]    Script Date: 03/08/2010 15:04:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create proc [dbo].[dt_checkinobject]
    @chObjectType  char(4),
    @vchObjectName varchar(255),
    @vchComment    varchar(255)='',
    @vchLoginName  varchar(255),
    @vchPassword   varchar(255)='',
    @iVCSFlags     int = 0,
    @iActionFlag   int = 0,   /* 0 => AddFile, 1 => CheckIn */
    @txStream1     Text = '', /* drop stream   */ /* There is a bug that if items are NULL they do not pass to OLE servers */
    @txStream2     Text = '', /* create stream */
    @txStream3     Text = ''  /* grant stream  */


as

	set nocount on

	declare @iReturn int
	declare @iObjectId int
	select @iObjectId = 0
	declare @iStreamObjectId int

	declare @VSSGUID varchar(100)
	select @VSSGUID = 'SQLVersionControl.VCS_SQL'

	declare @iPropertyObjectId int
	select @iPropertyObjectId  = 0

    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchProjectName   varchar(255)
    declare @vchSourceSafeINI varchar(255)
    declare @vchServerName    varchar(255)
    declare @vchDatabaseName  varchar(255)
    declare @iReturnValue	  int
    declare @pos			  int
    declare @vchProcLinePiece varchar(255)

    
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSProject',       @vchProjectName   OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLServer',     @vchServerName    OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLDatabase',   @vchDatabaseName  OUT

    if @chObjectType = 'PROC'
    begin
        if @iActionFlag = 1
        begin
            /* Procedure Can have up to three streams
            Drop Stream, Create Stream, GRANT stream */

            begin tran compile_all

            /* try to compile the streams */
            exec (@txStream1)
            if @@error <> 0 GOTO E_Compile_Fail

            exec (@txStream2)
            if @@error <> 0 GOTO E_Compile_Fail

            exec (@txStream3)
            if @@error <> 0 GOTO E_Compile_Fail
        end

        exec @iReturn = master.dbo.sp_OACreate @VSSGUID, @iObjectId OUT
        if @iReturn <> 0 GOTO E_OAError

        exec @iReturn = master.dbo.sp_OAGetProperty @iObjectId, 'GetStreamObject', @iStreamObjectId OUT
        if @iReturn <> 0 GOTO E_OAError
        
        if @iActionFlag = 1
        begin
            
            declare @iStreamLength int
			
			select @pos=1
			select @iStreamLength = datalength(@txStream2)
			
			if @iStreamLength > 0
			begin
			
				while @pos < @iStreamLength
				begin
						
					select @vchProcLinePiece = substring(@txStream2, @pos, 255)
					
					exec @iReturn = master.dbo.sp_OAMethod @iStreamObjectId, 'AddStream', @iReturnValue OUT, @vchProcLinePiece
            		if @iReturn <> 0 GOTO E_OAError
            		
					select @pos = @pos + 255
					
				end
            
				exec @iReturn = master.dbo.sp_OAMethod @iObjectId,
														'CheckIn_StoredProcedure',
														NULL,
														@sProjectName = @vchProjectName,
														@sSourceSafeINI = @vchSourceSafeINI,
														@sServerName = @vchServerName,
														@sDatabaseName = @vchDatabaseName,
														@sObjectName = @vchObjectName,
														@sComment = @vchComment,
														@sLoginName = @vchLoginName,
														@sPassword = @vchPassword,
														@iVCSFlags = @iVCSFlags,
														@iActionFlag = @iActionFlag,
														@sStream = ''
                                        
			end
        end
        else
        begin
        
            select colid, text into #ProcLines
            from syscomments
            where id = object_id(@vchObjectName)
            order by colid

            declare @iCurProcLine int
            declare @iProcLines int
            select @iCurProcLine = 1
            select @iProcLines = (select count(*) from #ProcLines)
            while @iCurProcLine <= @iProcLines
            begin
                select @pos = 1
                declare @iCurLineSize int
                select @iCurLineSize = len((select text from #ProcLines where colid = @iCurProcLine))
                while @pos <= @iCurLineSize
                begin                
                    select @vchProcLinePiece = convert(varchar(255),
                        substring((select text from #ProcLines where colid = @iCurProcLine),
                                  @pos, 255 ))
                    exec @iReturn = master.dbo.sp_OAMethod @iStreamObjectId, 'AddStream', @iReturnValue OUT, @vchProcLinePiece
                    if @iReturn <> 0 GOTO E_OAError
                    select @pos = @pos + 255                  
                end
                select @iCurProcLine = @iCurProcLine + 1
            end
            drop table #ProcLines

            exec @iReturn = master.dbo.sp_OAMethod @iObjectId,
													'CheckIn_StoredProcedure',
													NULL,
													@sProjectName = @vchProjectName,
													@sSourceSafeINI = @vchSourceSafeINI,
													@sServerName = @vchServerName,
													@sDatabaseName = @vchDatabaseName,
													@sObjectName = @vchObjectName,
													@sComment = @vchComment,
													@sLoginName = @vchLoginName,
													@sPassword = @vchPassword,
													@iVCSFlags = @iVCSFlags,
													@iActionFlag = @iActionFlag,
													@sStream = ''
        end

        if @iReturn <> 0 GOTO E_OAError

        if @iActionFlag = 1
        begin
            commit tran compile_all
            if @@error <> 0 GOTO E_Compile_Fail
        end

    end

CleanUp:
	return

E_Compile_Fail:
	declare @lerror int
	select @lerror = @@error
	rollback tran compile_all
	RAISERROR (@lerror,16,-1)
	goto CleanUp

E_OAError:
	if @iActionFlag = 1 rollback tran compile_all
	exec dbo.dt_displayoaerror @iObjectId, @iReturn
	goto CleanUp
GO
/****** Object:  StoredProcedure [dbo].[dt_isundersourcecontrol]    Script Date: 03/08/2010 15:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create proc [dbo].[dt_isundersourcecontrol]
    @vchLoginName varchar(255) = '',
    @vchPassword  varchar(255) = '',
    @iWhoToo      int = 0 /* 0 => Just check project; 1 => get list of objs */

as

	set nocount on

	declare @iReturn int
	declare @iObjectId int
	select @iObjectId = 0

	declare @VSSGUID varchar(100)
	select @VSSGUID = 'SQLVersionControl.VCS_SQL'

	declare @iReturnValue int
	select @iReturnValue = 0

	declare @iStreamObjectId int
	select @iStreamObjectId   = 0

	declare @vchTempText varchar(255)

    declare @iPropertyObjectId int
    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchProjectName   varchar(255)
    declare @vchSourceSafeINI varchar(255)
    declare @vchServerName    varchar(255)
    declare @vchDatabaseName  varchar(255)
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSProject',       @vchProjectName   OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLServer',     @vchServerName    OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLDatabase',   @vchDatabaseName  OUT

    if (@vchProjectName = '')	set @vchProjectName		= null
    if (@vchSourceSafeINI = '') set @vchSourceSafeINI	= null
    if (@vchServerName = '')	set @vchServerName		= null
    if (@vchDatabaseName = '')	set @vchDatabaseName	= null
    
    if (@vchProjectName is null) or (@vchSourceSafeINI is null) or (@vchServerName is null) or (@vchDatabaseName is null)
    begin
        RAISERROR('Not Under Source Control',16,-1)
        return
    end

    if @iWhoToo = 1
    begin

        /* Get List of Procs in the project */
        exec @iReturn = master.dbo.sp_OACreate @VSSGUID, @iObjectId OUT
        if @iReturn <> 0 GOTO E_OAError

        exec @iReturn = master.dbo.sp_OAMethod @iObjectId,
												'GetListOfObjects',
												NULL,
												@vchProjectName,
												@vchSourceSafeINI,
												@vchServerName,
												@vchDatabaseName,
												@vchLoginName,
												@vchPassword

        if @iReturn <> 0 GOTO E_OAError

        exec @iReturn = master.dbo.sp_OAGetProperty @iObjectId, 'GetStreamObject', @iStreamObjectId OUT

        if @iReturn <> 0 GOTO E_OAError

        create table #ObjectList (id int identity, vchObjectlist varchar(255))

        select @vchTempText = 'STUB'
        while @vchTempText is not null
        begin
            exec @iReturn = master.dbo.sp_OAMethod @iStreamObjectId, 'GetStream', @iReturnValue OUT, @vchTempText OUT
            if @iReturn <> 0 GOTO E_OAError
            
            if (@vchTempText = '') set @vchTempText = null
            if (@vchTempText is not null) insert into #ObjectList (vchObjectlist ) select @vchTempText
        end

        select vchObjectlist from #ObjectList order by id
    end

CleanUp:
    return

E_OAError:
    exec dbo.dt_displayoaerror @iObjectId, @iReturn
    goto CleanUp
GO
/****** Object:  StoredProcedure [dbo].[dt_whocheckedout]    Script Date: 03/08/2010 15:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create proc [dbo].[dt_whocheckedout]
        @chObjectType  char(4),
        @vchObjectName varchar(255),
        @vchLoginName  varchar(255),
        @vchPassword   varchar(255)

as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId =0

declare @VSSGUID varchar(100)
select @VSSGUID = 'SQLVersionControl.VCS_SQL'

    declare @iPropertyObjectId int

    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchProjectName   varchar(255)
    declare @vchSourceSafeINI varchar(255)
    declare @vchServerName    varchar(255)
    declare @vchDatabaseName  varchar(255)
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSProject',       @vchProjectName   OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLServer',     @vchServerName    OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLDatabase',   @vchDatabaseName  OUT

    if @chObjectType = 'PROC'
    begin
        exec @iReturn = master.dbo.sp_OACreate @VSSGUID, @iObjectId OUT

        if @iReturn <> 0 GOTO E_OAError

        declare @vchReturnValue varchar(255)
        select @vchReturnValue = ''

        exec @iReturn = master.dbo.sp_OAMethod @iObjectId,
												'WhoCheckedOut',
												@vchReturnValue OUT,
												@sProjectName = @vchProjectName,
												@sSourceSafeINI = @vchSourceSafeINI,
												@sObjectName = @vchObjectName,
												@sServerName = @vchServerName,
												@sDatabaseName = @vchDatabaseName,
												@sLoginName = @vchLoginName,
												@sPassword = @vchPassword

        if @iReturn <> 0 GOTO E_OAError

        select @vchReturnValue

    end

CleanUp:
    return

E_OAError:
    exec dbo.dt_displayoaerror @iObjectId, @iReturn
    GOTO CleanUp
GO
/****** Object:  StoredProcedure [dbo].[dt_getpropertiesbyid_vcs_u]    Script Date: 03/08/2010 15:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create procedure [dbo].[dt_getpropertiesbyid_vcs_u]
    @id       int,
    @property varchar(64),
    @value    nvarchar(255) = NULL OUT

as

    -- This procedure should no longer be called;  dt_getpropertiesbyid_vcsshould be called instead.
	-- Calls are forwarded to dt_getpropertiesbyid_vcs to maintain backward compatibility.
	set nocount on
    exec dbo.dt_getpropertiesbyid_vcs
		@id,
		@property,
		@value output
GO
/****** Object:  StoredProcedure [dbo].[dt_checkoutobject]    Script Date: 03/08/2010 15:04:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create proc [dbo].[dt_checkoutobject]
    @chObjectType  char(4),
    @vchObjectName varchar(255),
    @vchComment    varchar(255),
    @vchLoginName  varchar(255),
    @vchPassword   varchar(255),
    @iVCSFlags     int = 0,
    @iActionFlag   int = 0/* 0 => Checkout, 1 => GetLatest, 2 => UndoCheckOut */

as

	set nocount on

	declare @iReturn int
	declare @iObjectId int
	select @iObjectId =0

	declare @VSSGUID varchar(100)
	select @VSSGUID = 'SQLVersionControl.VCS_SQL'

	declare @iReturnValue int
	select @iReturnValue = 0

	declare @vchTempText varchar(255)

	/* this is for our strings */
	declare @iStreamObjectId int
	select @iStreamObjectId = 0

    declare @iPropertyObjectId int
    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchProjectName   varchar(255)
    declare @vchSourceSafeINI varchar(255)
    declare @vchServerName    varchar(255)
    declare @vchDatabaseName  varchar(255)
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSProject',       @vchProjectName   OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLServer',     @vchServerName    OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLDatabase',   @vchDatabaseName  OUT

    if @chObjectType = 'PROC'
    begin
        /* Procedure Can have up to three streams
           Drop Stream, Create Stream, GRANT stream */

        exec @iReturn = master.dbo.sp_OACreate @VSSGUID, @iObjectId OUT

        if @iReturn <> 0 GOTO E_OAError

        exec @iReturn = master.dbo.sp_OAMethod @iObjectId,
												'CheckOut_StoredProcedure',
												NULL,
												@sProjectName = @vchProjectName,
												@sSourceSafeINI = @vchSourceSafeINI,
												@sObjectName = @vchObjectName,
												@sServerName = @vchServerName,
												@sDatabaseName = @vchDatabaseName,
												@sComment = @vchComment,
												@sLoginName = @vchLoginName,
												@sPassword = @vchPassword,
												@iVCSFlags = @iVCSFlags,
												@iActionFlag = @iActionFlag

        if @iReturn <> 0 GOTO E_OAError


        exec @iReturn = master.dbo.sp_OAGetProperty @iObjectId, 'GetStreamObject', @iStreamObjectId OUT

        if @iReturn <> 0 GOTO E_OAError

        create table #commenttext (id int identity, sourcecode varchar(255))


        select @vchTempText = 'STUB'
        while @vchTempText is not null
        begin
            exec @iReturn = master.dbo.sp_OAMethod @iStreamObjectId, 'GetStream', @iReturnValue OUT, @vchTempText OUT
            if @iReturn <> 0 GOTO E_OAError
            
            if (@vchTempText = '') set @vchTempText = null
            if (@vchTempText is not null) insert into #commenttext (sourcecode) select @vchTempText
        end

        select 'VCS'=sourcecode from #commenttext order by id
        select 'SQL'=text from syscomments where id = object_id(@vchObjectName) order by colid

    end

CleanUp:
    return

E_OAError:
    exec dbo.dt_displayoaerror @iObjectId, @iReturn
    GOTO CleanUp
GO
/****** Object:  StoredProcedure [dbo].[dt_displayoaerror_u]    Script Date: 03/08/2010 15:04:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[dt_displayoaerror_u]
    @iObject int,
    @iresult int
as
	-- This procedure should no longer be called;  dt_displayoaerror should be called instead.
	-- Calls are forwarded to dt_displayoaerror to maintain backward compatibility.
	set nocount on
	exec dbo.dt_displayoaerror
		@iObject,
		@iresult
GO
/****** Object:  StoredProcedure [dbo].[XP_CREATEBATCH]    Script Date: 03/08/2010 15:04:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[XP_CREATEBATCH] 

@CommitFlag             numeric,
@BATCHNAME		varchar(50), 
@CREATEDID		numeric(15), 
@IMAGESVRID		numeric(15), 
@CACHESVRID		numeric(15), 
@DOCTYPEID		numeric(15), 
@IMAGECLASS		varchar(20), 
@DOCORIGINDT		DATETIME,
@PRIORITYC		varchar(10), 
@DESCRI         	varchar(255), 
@SYSTEMC		varchar(10), 
@ModifierID   		numeric(15)  
AS
--    LANGUAGE SQL
------------------------------------------------------------------------
-- SQL Stored Procedure 
------------------------------------------------------------------------
-- CREATEBATCH: BEGIN
/*=============================================================================
 * Return status values:
 *
 * Note:  The constants declared here for return values match those
 *   constants defined in VB and PB header files.
 *============================================================================*/
    Declare @INSERT_FAILED     		integer;
    Declare @UPDATE_FAILED      	integer;
    Declare @SUCCESS         		integer; 
    Declare @BATCHID	    		numeric(15); 
    Declare @currDT             	datetime;
    Declare @SQLCODE            	integer -- default 0;
    Declare @v_temp_SQLCODE   		integer;
    Declare @SQLSTATE           	char(5);
    Declare @V_STAT            		integer;  
    Declare @V_TMP_HOLDING      	char(10);
    Declare @V_TMP_SQLSTATE     	char(5) -- default '     ';
-- 	
--    BEGIN   NOT ATOMIC 
       set @SQLCODE		=0
       set  @V_TMP_SQLSTATE    	='    '
       set @V_TMP_HOLDING 	=   @SQLSTATE | @SQLCODE 
---CAST(@SQLCODE AS CHAR(5)) ;
        set @V_TMP_SQLSTATE 	= SUBSTRING(@V_TMP_HOLDING,1,5);
        set @v_temp_SQLCODE 	= CAST(SUBSTRING(@V_TMP_HOLDING,6,5)AS INT); 
    --END ;            
           
    	set @INSERT_FAILED	= 900;
    	set @UPDATE_FAILED	= 901;
    	set @SUCCESS		= 0;     
    	set @currDT         	= GETDATE(); 
    
 --  Instead of  'lock table DOC_BATCH in EXCLUSIVE mode' we used  'SET TRANSACTION ISOLATION LEVEL REPEATABLE READ'

    /*Get the  next ID*/
    select @BATCHID = max( BATCH_ID ) from DOC_BATCH;
    if( @BATCHID IS NULL ) 
	BEGIN
       	set @BATCHID = 0;
    	end 
    set @BATCHID = @BATCHID + 1;  
begin transaction;                 
Insert into DOC_BATCH(
BATCH_ID, BATCH_NAME, CREATED_ID, IMAGE_SVR_ID, CACHE_SVR_ID, DOC_TYPE_ID, IMAGE_CLASS, DOC_ORIGIN_DT,
BATCH_TOTAL, PREINDEX_COUNT, INDEX_COUNT, PRIORITY_C, DESCRIPTION, SYSTEM_C, 
UPDATED_BY, INSERT_DT, UPDATE_DT)
Values
(@BATCHID, @BATCHNAME, @CREATEDID, @IMAGESVRID, @CACHESVRID, @DOCTYPEID, @IMAGECLASS, @DOCORIGINDT,
0, 0, 0, @PRIORITYC, @DESCRI, @SYSTEMC, @ModifierID, @currDT, @currDT);
if (@v_temp_SQLCODE<> 0 ) 
begin
     if (@CommitFlag=1) 
     begin
     rollback transaction;
     end 
     If @@Error <> 0
            Goto ErrHandler
     return @INSERT_FAILED;
end  
If @@Error <> 0
    Goto ErrHandler
if (@CommitFlag = 1)
begin
       commit transaction;
end     
If @@Error <> 0
  Goto ErrHandler
return @SUCCESS;  

ErrHandler:
PRINT 'ERROR'
GO
/****** Object:  StoredProcedure [dbo].[dt_addtosourcecontrol_u]    Script Date: 03/08/2010 15:04:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create proc [dbo].[dt_addtosourcecontrol_u]
    @vchSourceSafeINI nvarchar(255) = '',
    @vchProjectName   nvarchar(255) ='',
    @vchComment       nvarchar(255) ='',
    @vchLoginName     nvarchar(255) ='',
    @vchPassword      nvarchar(255) =''

as
	-- This procedure should no longer be called;  dt_addtosourcecontrol should be called instead.
	-- Calls are forwarded to dt_addtosourcecontrol to maintain backward compatibility
	set nocount on
	exec dbo.dt_addtosourcecontrol 
		@vchSourceSafeINI, 
		@vchProjectName, 
		@vchComment, 
		@vchLoginName, 
		@vchPassword
GO
/****** Object:  StoredProcedure [dbo].[dt_checkinobject_u]    Script Date: 03/08/2010 15:04:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create proc [dbo].[dt_checkinobject_u]
    @chObjectType  char(4),
    @vchObjectName nvarchar(255),
    @vchComment    nvarchar(255)='',
    @vchLoginName  nvarchar(255),
    @vchPassword   nvarchar(255)='',
    @iVCSFlags     int = 0,
    @iActionFlag   int = 0,   /* 0 => AddFile, 1 => CheckIn */
    @txStream1     text = '',  /* drop stream   */ /* There is a bug that if items are NULL they do not pass to OLE servers */
    @txStream2     text = '',  /* create stream */
    @txStream3     text = ''   /* grant stream  */

as	
	-- This procedure should no longer be called;  dt_checkinobject should be called instead.
	-- Calls are forwarded to dt_checkinobject to maintain backward compatibility.
	set nocount on
	exec dbo.dt_checkinobject
		@chObjectType,
		@vchObjectName,
		@vchComment,
		@vchLoginName,
		@vchPassword,
		@iVCSFlags,
		@iActionFlag,   
		@txStream1,		
		@txStream2,		
		@txStream3
GO
/****** Object:  StoredProcedure [dbo].[dt_checkoutobject_u]    Script Date: 03/08/2010 15:04:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create proc [dbo].[dt_checkoutobject_u]
    @chObjectType  char(4),
    @vchObjectName nvarchar(255),
    @vchComment    nvarchar(255),
    @vchLoginName  nvarchar(255),
    @vchPassword   nvarchar(255),
    @iVCSFlags     int = 0,
    @iActionFlag   int = 0/* 0 => Checkout, 1 => GetLatest, 2 => UndoCheckOut */

as

	-- This procedure should no longer be called;  dt_checkoutobject should be called instead.
	-- Calls are forwarded to dt_checkoutobject to maintain backward compatibility.
	set nocount on
	exec dbo.dt_checkoutobject
		@chObjectType,  
		@vchObjectName, 
		@vchComment,    
		@vchLoginName,  
		@vchPassword,  
		@iVCSFlags,    
		@iActionFlag
GO
/****** Object:  StoredProcedure [dbo].[dt_isundersourcecontrol_u]    Script Date: 03/08/2010 15:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create proc [dbo].[dt_isundersourcecontrol_u]
    @vchLoginName nvarchar(255) = '',
    @vchPassword  nvarchar(255) = '',
    @iWhoToo      int = 0 /* 0 => Just check project; 1 => get list of objs */

as
	-- This procedure should no longer be called;  dt_isundersourcecontrol should be called instead.
	-- Calls are forwarded to dt_isundersourcecontrol to maintain backward compatibility.
	set nocount on
	exec dbo.dt_isundersourcecontrol
		@vchLoginName,
		@vchPassword,
		@iWhoToo
GO
/****** Object:  StoredProcedure [dbo].[dt_validateloginparams_u]    Script Date: 03/08/2010 15:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create proc [dbo].[dt_validateloginparams_u]
    @vchLoginName  nvarchar(255),
    @vchPassword   nvarchar(255)
as

	-- This procedure should no longer be called;  dt_validateloginparams should be called instead.
	-- Calls are forwarded to dt_validateloginparams to maintain backward compatibility.
	set nocount on
	exec dbo.dt_validateloginparams
		@vchLoginName,
		@vchPassword
GO
/****** Object:  StoredProcedure [dbo].[dt_whocheckedout_u]    Script Date: 03/08/2010 15:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create proc [dbo].[dt_whocheckedout_u]
        @chObjectType  char(4),
        @vchObjectName nvarchar(255),
        @vchLoginName  nvarchar(255),
        @vchPassword   nvarchar(255)

as

	-- This procedure should no longer be called;  dt_whocheckedout should be called instead.
	-- Calls are forwarded to dt_whocheckedout to maintain backward compatibility.
	set nocount on
	exec dbo.dt_whocheckedout
		@chObjectType, 
		@vchObjectName,
		@vchLoginName, 
		@vchPassword
GO
/****** Object:  Default [DF__ADM_AUTHE__UPDAT__6A7188C2]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_AUTHENTICATION] ADD  DEFAULT (getdate()) FOR [UPDATE_DT]
GO
/****** Object:  Default [DF__ADM_DOC_T__DOC_F__09EA341B]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_DOC_TYPE_XREF] ADD  DEFAULT ((0)) FOR [DOC_FILE_ACCESS]
GO
/****** Object:  Default [DF__DOC_DOCUM__DOC_D__68543626]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_DOCUMENT] ADD  DEFAULT ('N') FOR [DOC_DUE_D_PROC_F]
GO
/****** Object:  Default [DF__DOC_FAX__FROM_US__6B30A2D1]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_FAX] ADD  DEFAULT ((0)) FOR [FROM_USER_ID]
GO
/****** Object:  Default [DF__HST_DOC_D__DOC_D__7B670A9A]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[HST_DOC_DOCUMENT] ADD  DEFAULT ('N') FOR [DOC_DUE_D_PROC_F]
GO
/****** Object:  Default [DF__ORD_ORDER__SYNCH__0F6E0347]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ORD_ORDER_EXT] ADD  DEFAULT ('N') FOR [SYNCHRONIZED_F]
GO
/****** Object:  Default [DF__ORD_ORDER__EXTER__10622780]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ORD_ORDER_EXT] ADD  DEFAULT ('N') FOR [EXTERNAL_REQUEST_F]
GO
/****** Object:  Default [DF__WFM_WL_CO__TODAY__03C74671]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_WL_CONFIG] ADD  DEFAULT ('N') FOR [TODAY_NEW_COUNT_F]
GO
/****** Object:  Default [DF__WFM_WL_CO__TODAY__04BB6AAA]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_WL_CONFIG] ADD  DEFAULT ('N') FOR [TODAY_NEW_T_BRK_F]
GO
/****** Object:  Default [DF__WFM_WORK___TODAY__09801FC7]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_WORK_LOAD] ADD  DEFAULT ((0)) FOR [TODAYS_NEW_COUNT]
GO
/****** Object:  ForeignKey [FK__ADM_ACCES__USER___0B686839]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_ACCESS_KEY]  WITH CHECK ADD FOREIGN KEY([USER_GROUP_ID])
REFERENCES [dbo].[ADM_USER_GROUP] ([USER_GROUP_ID])
GO
/****** Object:  ForeignKey [FK__ADM_ACSKE__ACCES__0C5C8C72]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_ACSKEY_ASSOC]  WITH CHECK ADD FOREIGN KEY([ACCESS_KEY_ID])
REFERENCES [dbo].[ADM_ACCESS_KEY] ([ACCESS_KEY_ID])
GO
/****** Object:  ForeignKey [FK__ADM_ACSKE__USER___0D50B0AB]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_ACSKEY_ASSOC]  WITH CHECK ADD FOREIGN KEY([USER_GROUP_ID])
REFERENCES [dbo].[ADM_USER_GROUP] ([USER_GROUP_ID])
GO
/****** Object:  ForeignKey [FK__ADM_CLI_C__CLI_T__0E44D4E4]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_CLI_CATGRY]  WITH CHECK ADD FOREIGN KEY([CLI_TYPE_ID])
REFERENCES [dbo].[ADM_CLI_TYPE] ([CLI_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_CLI_C__CLI_C__102D1D56]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_CLI_CATGRY_L]  WITH CHECK ADD FOREIGN KEY([CLI_CATGRY_ID])
REFERENCES [dbo].[ADM_CLI_CATGRY] ([CLI_CATGRY_ID])
GO
/****** Object:  ForeignKey [FK__ADM_CLI_C__LOCAL__0F38F91D]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_CLI_CATGRY_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_CLI_T__CORPO__1121418F]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_CLI_TYPE]  WITH CHECK ADD FOREIGN KEY([CORPORATION_ID])
REFERENCES [dbo].[ADM_CORPORATION] ([CORPORATION_ID])
GO
/****** Object:  ForeignKey [FK__ADM_CLI_T__CLI_T__121565C8]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_CLI_TYPE_L]  WITH CHECK ADD FOREIGN KEY([CLI_TYPE_ID])
REFERENCES [dbo].[ADM_CLI_TYPE] ([CLI_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_CLI_T__LOCAL__13098A01]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_CLI_TYPE_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_COMPA__CORPO__13FDAE3A]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_COMPANY]  WITH CHECK ADD FOREIGN KEY([CORPORATION_ID])
REFERENCES [dbo].[ADM_CORPORATION] ([CORPORATION_ID])
GO
/****** Object:  ForeignKey [FK__ADM_COMPA__COMPA__14F1D273]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_COMPANY_V]  WITH CHECK ADD FOREIGN KEY([COMPANY_ID])
REFERENCES [dbo].[ADM_COMPANY] ([COMPANY_ID])
GO
/****** Object:  ForeignKey [FK__ADM_CORPO__CORPO__15E5F6AC]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_CORPORATION_V]  WITH CHECK ADD FOREIGN KEY([CORPORATION_ID])
REFERENCES [dbo].[ADM_CORPORATION] ([CORPORATION_ID])
GO
/****** Object:  ForeignKey [FK__ADM_DOC_C__DOC_C__17CE3F1E]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_DOC_CONFIG_L]  WITH CHECK ADD FOREIGN KEY([DOC_CONFIG_ID])
REFERENCES [dbo].[ADM_DOC_CONFIG] ([DOC_CONFIG_ID])
GO
/****** Object:  ForeignKey [FK__ADM_DOC_C__LOCAL__16DA1AE5]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_DOC_CONFIG_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_DOC_S__DOC_T__18C26357]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_DOC_SUBTYPE]  WITH CHECK ADD FOREIGN KEY([DOC_TYPE_ID])
REFERENCES [dbo].[ADM_DOC_TYPE] ([DOC_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_DOC_S__DOC_S__1AAAABC9]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_DOC_SUBTYPE_L]  WITH CHECK ADD FOREIGN KEY([DOC_SUBTYPE_ID])
REFERENCES [dbo].[ADM_DOC_SUBTYPE] ([DOC_SUBTYPE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_DOC_S__LOCAL__19B68790]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_DOC_SUBTYPE_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_DOC_T__DOC_T__1C92F43B]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_DOC_TYPE_L]  WITH CHECK ADD FOREIGN KEY([DOC_TYPE_ID])
REFERENCES [dbo].[ADM_DOC_TYPE] ([DOC_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_DOC_T__LOCAL__1B9ED002]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_DOC_TYPE_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_DOC_T__DOC_T__1E7B3CAD]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_DOC_TYPE_SYS]  WITH CHECK ADD FOREIGN KEY([DOC_TYPE_ID])
REFERENCES [dbo].[ADM_DOC_TYPE] ([DOC_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_DOC_T__SYSTE__1D871874]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_DOC_TYPE_SYS]  WITH CHECK ADD FOREIGN KEY([SYSTEM_ID])
REFERENCES [dbo].[SYS_SYSTEM] ([SYSTEM_ID])
GO
/****** Object:  ForeignKey [FK__ADM_DOC_T__ACCES__2063851F]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_DOC_TYPE_XREF]  WITH CHECK ADD FOREIGN KEY([ACCESS_KEY_ID])
REFERENCES [dbo].[ADM_ACCESS_KEY] ([ACCESS_KEY_ID])
GO
/****** Object:  ForeignKey [FK__ADM_DOC_T__DOC_T__1F6F60E6]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_DOC_TYPE_XREF]  WITH CHECK ADD FOREIGN KEY([DOC_TYPE_ID])
REFERENCES [dbo].[ADM_DOC_TYPE] ([DOC_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_ENTIT__CORPO__2157A958]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_ENTITY_TYP_WT]  WITH CHECK ADD FOREIGN KEY([CORPORATION_ID])
REFERENCES [dbo].[ADM_CORPORATION] ([CORPORATION_ID])
GO
/****** Object:  ForeignKey [FK__ADM_ENTIT__ENTIT__224BCD91]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_ENTITY_TYP_WT]  WITH CHECK ADD FOREIGN KEY([ENTITY_TYPE_ID])
REFERENCES [dbo].[SYS_ENTITY_TYPE] ([ENTITY_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_FAX_D__FAX_D__233FF1CA]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_FAX_DEFAULT]  WITH CHECK ADD FOREIGN KEY([FAX_DEVICE_ID])
REFERENCES [dbo].[ADM_FAX_DEVICE] ([FAX_DEVICE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_FAX_D__DEVIC__24341603]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_FAX_DEVICE]  WITH CHECK ADD FOREIGN KEY([DEVICE_CONFIG_ID])
REFERENCES [dbo].[SYS_DEVICE_CONFIG] ([DEVICE_CONFIG_ID])
GO
/****** Object:  ForeignKey [FK__ADM_FAX_D__FAX_D__261C5E75]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_FAX_DEVICE_L]  WITH CHECK ADD FOREIGN KEY([FAX_DEVICE_ID])
REFERENCES [dbo].[ADM_FAX_DEVICE] ([FAX_DEVICE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_FAX_D__LOCAL__25283A3C]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_FAX_DEVICE_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_FAX_X__ACCES__2804A6E7]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_FAX_XREF]  WITH CHECK ADD FOREIGN KEY([ACCESS_KEY_ID])
REFERENCES [dbo].[ADM_ACCESS_KEY] ([ACCESS_KEY_ID])
GO
/****** Object:  ForeignKey [FK__ADM_FAX_X__FAX_D__271082AE]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_FAX_XREF]  WITH CHECK ADD FOREIGN KEY([FAX_DEVICE_ID])
REFERENCES [dbo].[ADM_FAX_DEVICE] ([FAX_DEVICE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_FUNCT__ACCES__29ECEF59]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_FUNCTION_XREF]  WITH CHECK ADD FOREIGN KEY([ACCESS_KEY_ID])
REFERENCES [dbo].[ADM_ACCESS_KEY] ([ACCESS_KEY_ID])
GO
/****** Object:  ForeignKey [FK__ADM_FUNCT__APP_F__28F8CB20]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_FUNCTION_XREF]  WITH CHECK ADD FOREIGN KEY([APP_FUNCTION_ID])
REFERENCES [dbo].[SYS_APP_FUNCTION] ([APP_FUNCTION_ID])
GO
/****** Object:  ForeignKey [FK__ADM_GLB_A__GLB_U__2AE11392]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_GLB_ABSENCE]  WITH CHECK ADD FOREIGN KEY([GLB_USER_ID])
REFERENCES [dbo].[ADM_GLB_USER] ([GLB_USER_ID])
GO
/****** Object:  ForeignKey [FK__ADM_GLB_A__CORPO__2BD537CB]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_GLB_APP_CONFIG]  WITH CHECK ADD FOREIGN KEY([CORPORATION_ID])
REFERENCES [dbo].[ADM_CORPORATION] ([CORPORATION_ID])
GO
/****** Object:  ForeignKey [FK__ADM_GLB_A__SYSTE__2CC95C04]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_GLB_APP_CONFIG]  WITH CHECK ADD FOREIGN KEY([SYSTEM_ID])
REFERENCES [dbo].[SYS_SYSTEM] ([SYSTEM_ID])
GO
/****** Object:  ForeignKey [FK__ADM_GLB_D__CORPO__2DBD803D]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_GLB_DTL_ASSOC]  WITH CHECK ADD FOREIGN KEY([CORPORATION_ID])
REFERENCES [dbo].[ADM_CORPORATION] ([CORPORATION_ID])
GO
/****** Object:  ForeignKey [FK__ADM_GLB_D__GLB_D__2EB1A476]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_GLB_DTL_ASSOC]  WITH CHECK ADD FOREIGN KEY([GLB_DTL_DEFN_ID])
REFERENCES [dbo].[ADM_GLB_DTL_DEFN] ([GLB_DTL_DEFN_ID])
GO
/****** Object:  ForeignKey [FK__ADM_GLB_D__CORPO__2FA5C8AF]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_GLB_DTL_DEFN]  WITH CHECK ADD FOREIGN KEY([CORPORATION_ID])
REFERENCES [dbo].[ADM_CORPORATION] ([CORPORATION_ID])
GO
/****** Object:  ForeignKey [FK__ADM_GLB_D__GLB_L__3099ECE8]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_GLB_DTL_DEFN]  WITH CHECK ADD FOREIGN KEY([GLB_LIST_TYPE_ID])
REFERENCES [dbo].[SYS_GLB_LIST_TYPE] ([GLB_LIST_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_GLB_D__GLB_D__3282355A]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_GLB_DTL_DEFN_L]  WITH CHECK ADD FOREIGN KEY([GLB_DTL_DEFN_ID])
REFERENCES [dbo].[ADM_GLB_DTL_DEFN] ([GLB_DTL_DEFN_ID])
GO
/****** Object:  ForeignKey [FK__ADM_GLB_D__LOCAL__318E1121]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_GLB_DTL_DEFN_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_GLB_L__GLB_L__33765993]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_GLB_LIST]  WITH CHECK ADD FOREIGN KEY([GLB_LIST_TYPE_ID])
REFERENCES [dbo].[SYS_GLB_LIST_TYPE] ([GLB_LIST_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_GLB_L__GLB_L__346A7DCC]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_GLB_LIST_L]  WITH CHECK ADD FOREIGN KEY([GLB_LIST_ID])
REFERENCES [dbo].[ADM_GLB_LIST] ([GLB_LIST_ID])
GO
/****** Object:  ForeignKey [FK__ADM_GLB_L__LOCAL__355EA205]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_GLB_LIST_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_GLB_L__CORPO__3652C63E]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_GLB_LST_CORP]  WITH CHECK ADD FOREIGN KEY([CORPORATION_ID])
REFERENCES [dbo].[ADM_CORPORATION] ([CORPORATION_ID])
GO
/****** Object:  ForeignKey [FK__ADM_GLB_L__GLB_L__3746EA77]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_GLB_LST_CORP]  WITH CHECK ADD FOREIGN KEY([GLB_LIST_TYPE_ID])
REFERENCES [dbo].[SYS_GLB_LIST_TYPE] ([GLB_LIST_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_GLB_L__GLB_L__392F32E9]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_GLB_LST_CORP_L]  WITH CHECK ADD FOREIGN KEY([GLB_LST_CORP_ID])
REFERENCES [dbo].[ADM_GLB_LST_CORP] ([GLB_LST_CORP_ID])
GO
/****** Object:  ForeignKey [FK__ADM_GLB_L__LOCAL__383B0EB0]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_GLB_LST_CORP_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_GLB_U__DEFAU__3C0B9F94]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_GLB_USER]  WITH CHECK ADD FOREIGN KEY([DEFAULT_LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_GLB_U__DEFLT__3B177B5B]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_GLB_USER]  WITH CHECK ADD FOREIGN KEY([DEFLT_CURRENCY_ID])
REFERENCES [dbo].[SYS_CURRENCY] ([CURRENCY_ID])
GO
/****** Object:  ForeignKey [FK__ADM_GLB_U__OFFIC__3A235722]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_GLB_USER]  WITH CHECK ADD FOREIGN KEY([OFFICE_LOC_ID])
REFERENCES [dbo].[ADM_OFFICE_LOC] ([OFFICE_LOC_ID])
GO
/****** Object:  ForeignKey [FK__ADM_IMAGE__CACHE__3CFFC3CD]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_IMAGE_LOGIN]  WITH CHECK ADD FOREIGN KEY([CACHE_SVR_ID])
REFERENCES [dbo].[SYS_CACHE_SVR] ([CACHE_SVR_ID])
GO
/****** Object:  ForeignKey [FK__ADM_IMAGE__IMAGE__3EE80C3F]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_IMAGE_LOGIN]  WITH CHECK ADD FOREIGN KEY([IMAGE_SVR_ID])
REFERENCES [dbo].[SYS_IMAGE_SVR] ([IMAGE_SVR_ID])
GO
/****** Object:  ForeignKey [FK__ADM_IMAGE__USER___3DF3E806]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_IMAGE_LOGIN]  WITH CHECK ADD FOREIGN KEY([USER_ID])
REFERENCES [dbo].[ADM_GLB_USER] ([GLB_USER_ID])
GO
/****** Object:  ForeignKey [FK__ADM_MESSA__CORPO__3FDC3078]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_MESSAGE_TYPE]  WITH CHECK ADD FOREIGN KEY([CORPORATION_ID])
REFERENCES [dbo].[ADM_CORPORATION] ([CORPORATION_ID])
GO
/****** Object:  ForeignKey [FK__ADM_MESSA__LOCAL__40D054B1]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_MESSAGE_TYPE_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_MESSA__MESSA__41C478EA]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_MESSAGE_TYPE_L]  WITH CHECK ADD FOREIGN KEY([MESSAGE_TYPE_ID])
REFERENCES [dbo].[ADM_MESSAGE_TYPE] ([MESSAGE_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_MESSA__ACCES__42B89D23]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_MESSAGE_XREF]  WITH CHECK ADD FOREIGN KEY([ACCESS_KEY_ID])
REFERENCES [dbo].[ADM_ACCESS_KEY] ([ACCESS_KEY_ID])
GO
/****** Object:  ForeignKey [FK__ADM_MESSA__MESSA__43ACC15C]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_MESSAGE_XREF]  WITH CHECK ADD FOREIGN KEY([MESSAGE_TYPE_ID])
REFERENCES [dbo].[ADM_MESSAGE_TYPE] ([MESSAGE_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_NOTE___NOTE___44A0E595]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_NOTE_SUBTYPE]  WITH CHECK ADD FOREIGN KEY([NOTE_TYPE_ID])
REFERENCES [dbo].[ADM_NOTE_TYPE] ([NOTE_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_NOTE___LOCAL__459509CE]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_NOTE_SUBTYPE_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_NOTE___NOTE___46892E07]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_NOTE_SUBTYPE_L]  WITH CHECK ADD FOREIGN KEY([NOTE_SUBTYPE_ID])
REFERENCES [dbo].[ADM_NOTE_SUBTYPE] ([NOTE_SUBTYPE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_NOTE___CORPO__477D5240]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_NOTE_TYPE]  WITH CHECK ADD FOREIGN KEY([CORPORATION_ID])
REFERENCES [dbo].[ADM_CORPORATION] ([CORPORATION_ID])
GO
/****** Object:  ForeignKey [FK__ADM_NOTE___LOCAL__48717679]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_NOTE_TYPE_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_NOTE___NOTE___49659AB2]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_NOTE_TYPE_L]  WITH CHECK ADD FOREIGN KEY([NOTE_TYPE_ID])
REFERENCES [dbo].[ADM_NOTE_TYPE] ([NOTE_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_NOTE___ACCES__4A59BEEB]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_NOTE_XREF]  WITH CHECK ADD FOREIGN KEY([ACCESS_KEY_ID])
REFERENCES [dbo].[ADM_ACCESS_KEY] ([ACCESS_KEY_ID])
GO
/****** Object:  ForeignKey [FK__ADM_NOTE___NOTE___4B4DE324]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_NOTE_XREF]  WITH CHECK ADD FOREIGN KEY([NOTE_SUBTYPE_ID])
REFERENCES [dbo].[ADM_NOTE_SUBTYPE] ([NOTE_SUBTYPE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_NOTE___NOTE___4C42075D]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_NOTE_XREF]  WITH CHECK ADD FOREIGN KEY([NOTE_TYPE_ID])
REFERENCES [dbo].[ADM_NOTE_TYPE] ([NOTE_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_OFFIC__LOCAL__4D362B96]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_OFFICE_LOC_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_OFFIC__OFFIC__4E2A4FCF]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_OFFICE_LOC_L]  WITH CHECK ADD FOREIGN KEY([OFFICE_LOC_ID])
REFERENCES [dbo].[ADM_OFFICE_LOC] ([OFFICE_LOC_ID])
GO
/****** Object:  ForeignKey [FK__ADM_PRINT__PRINT__4F1E7408]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_PRINT_DEFAULT]  WITH CHECK ADD FOREIGN KEY([PRINT_DEVICE_ID])
REFERENCES [dbo].[ADM_PRINT_DEVICE] ([PRINT_DEVICE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_PRINT__DEVIC__50129841]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_PRINT_DEVICE]  WITH CHECK ADD FOREIGN KEY([DEVICE_CONFIG_ID])
REFERENCES [dbo].[SYS_DEVICE_CONFIG] ([DEVICE_CONFIG_ID])
GO
/****** Object:  ForeignKey [FK__ADM_PRINT__LOCAL__5106BC7A]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_PRINT_DEVICE_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_PRINT__PRINT__51FAE0B3]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_PRINT_DEVICE_L]  WITH CHECK ADD FOREIGN KEY([PRINT_DEVICE_ID])
REFERENCES [dbo].[ADM_PRINT_DEVICE] ([PRINT_DEVICE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_PRINT__ACCES__53E32925]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_PRINT_XREF]  WITH CHECK ADD FOREIGN KEY([ACCESS_KEY_ID])
REFERENCES [dbo].[ADM_ACCESS_KEY] ([ACCESS_KEY_ID])
GO
/****** Object:  ForeignKey [FK__ADM_PRINT__PRINT__52EF04EC]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_PRINT_XREF]  WITH CHECK ADD FOREIGN KEY([PRINT_DEVICE_ID])
REFERENCES [dbo].[ADM_PRINT_DEVICE] ([PRINT_DEVICE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_SYSAD__SYSAD__54D74D5E]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_SYSADM_ACCESS]  WITH CHECK ADD FOREIGN KEY([SYSADMIN_NODE_ID])
REFERENCES [dbo].[SYS_SYSADMIN_NODE] ([SYSADMIN_NODE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_SYSAD__SYSAD__55CB7197]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_SYSADM_ACCESS]  WITH CHECK ADD FOREIGN KEY([SYSADM_PROF_ID])
REFERENCES [dbo].[ADM_SYSADM_PROF] ([SYSADM_PROF_ID])
GO
/****** Object:  ForeignKey [FK__ADM_SYSAD__LOCAL__56BF95D0]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_SYSADM_PROF_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_SYSAD__SYSAD__57B3BA09]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_SYSADM_PROF_L]  WITH CHECK ADD FOREIGN KEY([SYSADM_PROF_ID])
REFERENCES [dbo].[ADM_SYSADM_PROF] ([SYSADM_PROF_ID])
GO
/****** Object:  ForeignKey [FK__ADM_SYSTE__CITY___5A9026B4]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_SYSTEM_ADDR_V]  WITH CHECK ADD FOREIGN KEY([CITY_ID])
REFERENCES [dbo].[SYS_CITY] ([CITY_ID])
GO
/****** Object:  ForeignKey [FK__ADM_SYSTE__COUNT__599C027B]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_SYSTEM_ADDR_V]  WITH CHECK ADD FOREIGN KEY([COUNTRY_ID])
REFERENCES [dbo].[SYS_COUNTRY] ([COUNTRY_ID])
GO
/****** Object:  ForeignKey [FK__ADM_SYSTE__STATE__58A7DE42]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_SYSTEM_ADDR_V]  WITH CHECK ADD FOREIGN KEY([STATE_PROV_ID])
REFERENCES [dbo].[SYS_STATE_PROV] ([STATE_PROV_ID])
GO
/****** Object:  ForeignKey [FK__ADM_SYSTE__SYSTE__5B844AED]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_SYSTEM_NOTE]  WITH CHECK ADD FOREIGN KEY([SYSTEM_ID])
REFERENCES [dbo].[SYS_SYSTEM] ([SYSTEM_ID])
GO
/****** Object:  ForeignKey [FK__ADM_SYSTE__LOCAL__5D6C935F]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_SYSTEM_NOTE_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_SYSTE__SYSTE__5C786F26]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_SYSTEM_NOTE_L]  WITH CHECK ADD FOREIGN KEY([SYSTEM_NOTE_ID])
REFERENCES [dbo].[ADM_SYSTEM_NOTE] ([SYSTEM_NOTE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_USER___CORPO__5E60B798]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_USER_GROUP]  WITH CHECK ADD FOREIGN KEY([CORPORATION_ID])
REFERENCES [dbo].[ADM_CORPORATION] ([CORPORATION_ID])
GO
/****** Object:  ForeignKey [FK__ADM_USER___SYSTE__5F54DBD1]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_USER_GROUP]  WITH CHECK ADD FOREIGN KEY([SYSTEM_ID])
REFERENCES [dbo].[SYS_SYSTEM] ([SYSTEM_ID])
GO
/****** Object:  ForeignKey [FK__ADM_USER___LOCAL__6049000A]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_USER_GROUP_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__ADM_USER___USER___613D2443]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_USER_GROUP_L]  WITH CHECK ADD FOREIGN KEY([USER_GROUP_ID])
REFERENCES [dbo].[ADM_USER_GROUP] ([USER_GROUP_ID])
GO
/****** Object:  ForeignKey [FK__ADM_USER___PAREN__63256CB5]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_USER_GROUP_V]  WITH CHECK ADD FOREIGN KEY([PARENT_USER_GRP_ID])
REFERENCES [dbo].[ADM_USER_GROUP] ([USER_GROUP_ID])
GO
/****** Object:  ForeignKey [FK__ADM_USER___USER___6231487C]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_USER_GROUP_V]  WITH CHECK ADD FOREIGN KEY([USER_GROUP_ID])
REFERENCES [dbo].[ADM_USER_GROUP] ([USER_GROUP_ID])
GO
/****** Object:  ForeignKey [FK__ADM_USER___GLB_U__641990EE]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_USER_GRP_ASSOC]  WITH CHECK ADD FOREIGN KEY([GLB_USER_ID])
REFERENCES [dbo].[ADM_GLB_USER] ([GLB_USER_ID])
GO
/****** Object:  ForeignKey [FK__ADM_USER___USER___650DB527]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_USER_GRP_ASSOC]  WITH CHECK ADD FOREIGN KEY([USER_GROUP_ID])
REFERENCES [dbo].[ADM_USER_GROUP] ([USER_GROUP_ID])
GO
/****** Object:  ForeignKey [FK__ADM_USR_C__CORPO__6601D960]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_USR_CORP_ASSOC]  WITH CHECK ADD FOREIGN KEY([CORPORATION_ID])
REFERENCES [dbo].[ADM_CORPORATION] ([CORPORATION_ID])
GO
/****** Object:  ForeignKey [FK__ADM_USR_C__GLB_U__66F5FD99]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ADM_USR_CORP_ASSOC]  WITH CHECK ADD FOREIGN KEY([GLB_USER_ID])
REFERENCES [dbo].[ADM_GLB_USER] ([GLB_USER_ID])
GO
/****** Object:  ForeignKey [FK__CKL_DATA__GLB_LI__68DE460B]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[CKL_DATA]  WITH CHECK ADD FOREIGN KEY([GLB_LIST_ID])
REFERENCES [dbo].[ADM_GLB_LIST] ([GLB_LIST_ID])
GO
/****** Object:  ForeignKey [FK__CKL_DATA__PRODUC__67EA21D2]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[CKL_DATA]  WITH CHECK ADD FOREIGN KEY([PRODUCT_INFO_ID])
REFERENCES [dbo].[CKL_PRODUCT_INFO] ([PRODUCT_INFO_ID])
GO
/****** Object:  ForeignKey [FK__CKL_PRODU__GLB_L__69D26A44]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[CKL_PRODUCT_INFO]  WITH CHECK ADD FOREIGN KEY([GLB_LIST_TYPE_ID])
REFERENCES [dbo].[SYS_GLB_LIST_TYPE] ([GLB_LIST_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__DOC_BATCH__CREAT__6AC68E7D]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_BATCH]  WITH CHECK ADD FOREIGN KEY([CREATED_ID])
REFERENCES [dbo].[ADM_GLB_USER] ([GLB_USER_ID])
GO
/****** Object:  ForeignKey [FK__DOC_BATCH__DOC_T__6CAED6EF]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_BATCH]  WITH CHECK ADD FOREIGN KEY([DOC_TYPE_ID])
REFERENCES [dbo].[ADM_DOC_TYPE] ([DOC_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__DOC_BATCH__IMAGE__6BBAB2B6]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_BATCH]  WITH CHECK ADD FOREIGN KEY([IMAGE_SVR_ID])
REFERENCES [dbo].[SYS_IMAGE_SVR] ([IMAGE_SVR_ID])
GO
/****** Object:  ForeignKey [FK__DOC_BOOKM__DOCUM__6DA2FB28]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_BOOKMARK]  WITH CHECK ADD FOREIGN KEY([DOCUMENT_ID])
REFERENCES [dbo].[DOC_DOCUMENT] ([DOCUMENT_ID])
GO
/****** Object:  ForeignKey [FK__DOC_BOOKM__USER___6E971F61]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_BOOKMARK]  WITH CHECK ADD FOREIGN KEY([USER_ID])
REFERENCES [dbo].[ADM_GLB_USER] ([GLB_USER_ID])
GO
/****** Object:  ForeignKey [FK__DOC_DOCUM__CACHE__707F67D3]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_DOCUMENT]  WITH CHECK ADD FOREIGN KEY([CACHE_SVR_ID])
REFERENCES [dbo].[SYS_CACHE_SVR] ([CACHE_SVR_ID])
GO
/****** Object:  ForeignKey [FK__DOC_DOCUM__CORPO__6F8B439A]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_DOCUMENT]  WITH CHECK ADD FOREIGN KEY([CORPORATION_ID])
REFERENCES [dbo].[ADM_CORPORATION] ([CORPORATION_ID])
GO
/****** Object:  ForeignKey [FK__DOC_DOCUM__DOC_C__7A08D20D]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_DOCUMENT]  WITH CHECK ADD FOREIGN KEY([DOC_CONFIG_ID])
REFERENCES [dbo].[ADM_DOC_CONFIG] ([DOC_CONFIG_ID])
GO
/****** Object:  ForeignKey [FK__DOC_DOCUM__DOC_S__7820899B]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_DOCUMENT]  WITH CHECK ADD FOREIGN KEY([DOC_SUBTYPE_ID])
REFERENCES [dbo].[ADM_DOC_SUBTYPE] ([DOC_SUBTYPE_ID])
GO
/****** Object:  ForeignKey [FK__DOC_DOCUM__DOC_T__7914ADD4]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_DOCUMENT]  WITH CHECK ADD FOREIGN KEY([DOC_TYPE_ID])
REFERENCES [dbo].[ADM_DOC_TYPE] ([DOC_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__DOC_DOCUM__FOLDE__735BD47E]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_DOCUMENT]  WITH CHECK ADD FOREIGN KEY([FOLDER_TYPE_ID])
REFERENCES [dbo].[SYS_FOLDER_TYPE] ([FOLDER_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__DOC_DOCUM__IMAGE__71738C0C]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_DOCUMENT]  WITH CHECK ADD FOREIGN KEY([IMAGE_SVR_ID])
REFERENCES [dbo].[SYS_IMAGE_SVR] ([IMAGE_SVR_ID])
GO
/****** Object:  ForeignKey [FK__DOC_DOCUM__INDEX__75441CF0]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_DOCUMENT]  WITH CHECK ADD FOREIGN KEY([INDEXER_ID])
REFERENCES [dbo].[ADM_GLB_USER] ([GLB_USER_ID])
GO
/****** Object:  ForeignKey [FK__DOC_DOCUM__RECEP__76384129]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_DOCUMENT]  WITH CHECK ADD FOREIGN KEY([RECEPIENT_ID])
REFERENCES [dbo].[ADM_GLB_USER] ([GLB_USER_ID])
GO
/****** Object:  ForeignKey [FK__DOC_DOCUM__SERVE__7267B045]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_DOCUMENT]  WITH CHECK ADD FOREIGN KEY([SERVER_LOC_ID])
REFERENCES [dbo].[SYS_SERVER_LOC] ([SERVER_LOC_ID])
GO
/****** Object:  ForeignKey [FK__DOC_DOCUM__SPECI__744FF8B7]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_DOCUMENT]  WITH CHECK ADD FOREIGN KEY([SPECIAL_INDEXER_ID])
REFERENCES [dbo].[ADM_GLB_USER] ([GLB_USER_ID])
GO
/****** Object:  ForeignKey [FK__DOC_DOCUM__WORK___772C6562]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_DOCUMENT]  WITH CHECK ADD FOREIGN KEY([WORK_ITEM_ID])
REFERENCES [dbo].[WFM_WORK_ITEM] ([WORK_ITEM_ID])
GO
/****** Object:  ForeignKey [FK__DOC_FAX__WORK_IT__7AFCF646]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_FAX]  WITH CHECK ADD FOREIGN KEY([WORK_ITEM_ID])
REFERENCES [dbo].[WFM_WORK_ITEM] ([WORK_ITEM_ID])
GO
/****** Object:  ForeignKey [FK__DOC_FAX_D__DOC_I__7BF11A7F]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_FAX_DOCUMENT]  WITH CHECK ADD FOREIGN KEY([DOC_ID])
REFERENCES [dbo].[DOC_DOCUMENT] ([DOCUMENT_ID])
GO
/****** Object:  ForeignKey [FK__DOC_FAX_D__FAX_I__7CE53EB8]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_FAX_DOCUMENT]  WITH CHECK ADD FOREIGN KEY([FAX_ID])
REFERENCES [dbo].[DOC_FAX] ([FAX_ID])
GO
/****** Object:  ForeignKey [FK__DOC_PRINT__DOCUM__7DD962F1]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_PRINT_DOCUMENT]  WITH CHECK ADD FOREIGN KEY([DOCUMENT_ID])
REFERENCES [dbo].[DOC_DOCUMENT] ([DOCUMENT_ID])
GO
/****** Object:  ForeignKey [FK__DOC_PRINT__PRINT__7ECD872A]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[DOC_PRINT_DOCUMENT]  WITH CHECK ADD FOREIGN KEY([PRINT_ID])
REFERENCES [dbo].[DOC_PRINT] ([PRINT_ID])
GO
/****** Object:  ForeignKey [FK__ERR_ERROR__SYSTE__7FC1AB63]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ERR_ERROR_CORRECT]  WITH CHECK ADD FOREIGN KEY([SYSTEM_ID])
REFERENCES [dbo].[SYS_SYSTEM] ([SYSTEM_ID])
GO
/****** Object:  ForeignKey [FK__GBL_ABSEN__USER___00B5CF9C]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[GBL_ABSENCE]  WITH CHECK ADD FOREIGN KEY([USER_ID])
REFERENCES [dbo].[ADM_GLB_USER] ([GLB_USER_ID])
GO
/****** Object:  ForeignKey [FK__GBL_ABSEN__ABSEN__029E180E]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[GBL_ABSENCE_ALLOW]  WITH CHECK ADD FOREIGN KEY([ABSENCE_ID])
REFERENCES [dbo].[GBL_ABSENCE] ([ABSENCE_ID])
GO
/****** Object:  ForeignKey [FK__GBL_ABSEN__SYSTE__01A9F3D5]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[GBL_ABSENCE_ALLOW]  WITH CHECK ADD FOREIGN KEY([SYSTEM_ID])
REFERENCES [dbo].[SYS_SYSTEM] ([SYSTEM_ID])
GO
/****** Object:  ForeignKey [FK__LOG_MSG__SYSTEM___03923C47]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[LOG_MSG]  WITH CHECK ADD FOREIGN KEY([SYSTEM_ID])
REFERENCES [dbo].[SYS_SYSTEM] ([SYSTEM_ID])
GO
/****** Object:  ForeignKey [FK__LTR_TEMPL__SYSTE__04866080]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[LTR_TEMPLATE]  WITH CHECK ADD FOREIGN KEY([SYSTEM_ID])
REFERENCES [dbo].[SYS_SYSTEM] ([SYSTEM_ID])
GO
/****** Object:  ForeignKey [FK__LTR_TEMPL__LOCAL__057A84B9]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[LTR_TEMPLATE_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__LTR_TEMPL__TEMPL__066EA8F2]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[LTR_TEMPLATE_L]  WITH CHECK ADD FOREIGN KEY([TEMPLATE_ID])
REFERENCES [dbo].[LTR_TEMPLATE] ([TEMPLATE_ID])
GO
/****** Object:  ForeignKey [FK__LTR_TEMPL__TEMPL__0762CD2B]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[LTR_TEMPLATE_LOC]  WITH CHECK ADD FOREIGN KEY([TEMPLATE_ID])
REFERENCES [dbo].[LTR_TEMPLATE] ([TEMPLATE_ID])
GO
/****** Object:  ForeignKey [FK__LTR_TEMPL__STATE__0856F164]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[LTR_TEMPLATE_STATE]  WITH CHECK ADD FOREIGN KEY([STATE_PROV_ID])
REFERENCES [dbo].[SYS_STATE_PROV] ([STATE_PROV_ID])
GO
/****** Object:  ForeignKey [FK__LTR_TEMPL__TEMPL__094B159D]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[LTR_TEMPLATE_STATE]  WITH CHECK ADD FOREIGN KEY([TEMPLATE_ID])
REFERENCES [dbo].[LTR_TEMPLATE] ([TEMPLATE_ID])
GO
/****** Object:  ForeignKey [FK__NTE_NOTE__NOTE_P__0A3F39D6]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[NTE_NOTE]  WITH CHECK ADD FOREIGN KEY([NOTE_PROD_DATA_ID])
REFERENCES [dbo].[NTE_NOTE_PROD_DATA] ([NOTE_PROD_DATA_ID])
GO
/****** Object:  ForeignKey [FK__NTE_NOTE__NOTE_S__0C278248]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[NTE_NOTE]  WITH CHECK ADD FOREIGN KEY([NOTE_SUBTYPE_ID])
REFERENCES [dbo].[ADM_NOTE_SUBTYPE] ([NOTE_SUBTYPE_ID])
GO
/****** Object:  ForeignKey [FK__NTE_NOTE__NOTE_T__0D1BA681]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[NTE_NOTE]  WITH CHECK ADD FOREIGN KEY([NOTE_TYPE_ID])
REFERENCES [dbo].[ADM_NOTE_TYPE] ([NOTE_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__NTE_NOTE__SYSTEM__0B335E0F]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[NTE_NOTE]  WITH CHECK ADD FOREIGN KEY([SYSTEM_NOTE_ID])
REFERENCES [dbo].[ADM_SYSTEM_NOTE] ([SYSTEM_NOTE_ID])
GO
/****** Object:  ForeignKey [FK__NTE_NOTE___NOTE___0E0FCABA]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[NTE_NOTE_PARM]  WITH CHECK ADD FOREIGN KEY([NOTE_ID])
REFERENCES [dbo].[NTE_NOTE] ([NOTE_ID])
GO
/****** Object:  ForeignKey [FK__NTE_NOTE___NOTE___0F03EEF3]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[NTE_NOTE_TEXT]  WITH CHECK ADD FOREIGN KEY([NOTE_ID])
REFERENCES [dbo].[NTE_NOTE] ([NOTE_ID])
GO
/****** Object:  ForeignKey [FK__ORD_ORDER__COMPA__10EC3765]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ORD_ORDER_EXT]  WITH CHECK ADD FOREIGN KEY([COMPANY_ID])
REFERENCES [dbo].[ADM_COMPANY] ([COMPANY_ID])
GO
/****** Object:  ForeignKey [FK__ORD_ORDER__ORDER__11E05B9E]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ORD_ORDER_EXT]  WITH CHECK ADD FOREIGN KEY([ORDERED_BY])
REFERENCES [dbo].[ADM_GLB_USER] ([GLB_USER_ID])
GO
/****** Object:  ForeignKey [FK__ORD_ORDER__SYSTE__0FF8132C]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ORD_ORDER_EXT]  WITH CHECK ADD FOREIGN KEY([SYSTEM_ID])
REFERENCES [dbo].[SYS_SYSTEM] ([SYSTEM_ID])
GO
/****** Object:  ForeignKey [FK__ORD_ORDER__ORDER__12D47FD7]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ORD_ORDER_EXT_TXT]  WITH CHECK ADD FOREIGN KEY([ORDER_EXT_ID])
REFERENCES [dbo].[ORD_ORDER_EXT] ([ORDER_EXT_ID])
GO
/****** Object:  ForeignKey [FK__ORD_RETUR__ORDER__13C8A410]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ORD_RETURN_EXT]  WITH CHECK ADD FOREIGN KEY([ORDER_EXT_ID])
REFERENCES [dbo].[ORD_ORDER_EXT] ([ORDER_EXT_ID])
GO
/****** Object:  ForeignKey [FK__ORD_RETUR__RETUR__14BCC849]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[ORD_RETURN_EXT_TXT]  WITH CHECK ADD FOREIGN KEY([RETURN_EXT_ID])
REFERENCES [dbo].[ORD_RETURN_EXT] ([RETURN_EXT_ID])
GO
/****** Object:  ForeignKey [FK__SYS_APP_F__SYSTE__15B0EC82]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_APP_FUNCTION]  WITH CHECK ADD FOREIGN KEY([SYSTEM_ID])
REFERENCES [dbo].[SYS_SYSTEM] ([SYSTEM_ID])
GO
/****** Object:  ForeignKey [FK__SYS_APP_F__APP_F__179934F4]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_APP_FUNCTION_L]  WITH CHECK ADD FOREIGN KEY([APP_FUNCTION_ID])
REFERENCES [dbo].[SYS_APP_FUNCTION] ([APP_FUNCTION_ID])
GO
/****** Object:  ForeignKey [FK__SYS_APP_F__LOCAL__16A510BB]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_APP_FUNCTION_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__SYS_CACHE__IMAGE__188D592D]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_CACHE_SVR]  WITH CHECK ADD FOREIGN KEY([IMAGE_SVR_ID])
REFERENCES [dbo].[SYS_IMAGE_SVR] ([IMAGE_SVR_ID])
GO
/****** Object:  ForeignKey [FK__SYS_CACHE__CACHE__1A75A19F]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_CACHE_SVR_L]  WITH CHECK ADD FOREIGN KEY([CACHE_SVR_ID])
REFERENCES [dbo].[SYS_CACHE_SVR] ([CACHE_SVR_ID])
GO
/****** Object:  ForeignKey [FK__SYS_CACHE__LOCAL__19817D66]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_CACHE_SVR_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__SYS_CATEG__SYSTE__1B69C5D8]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_CATEGORY]  WITH CHECK ADD FOREIGN KEY([SYSTEM_ID])
REFERENCES [dbo].[SYS_SYSTEM] ([SYSTEM_ID])
GO
/****** Object:  ForeignKey [FK__SYS_CATEG__CATEG__1D520E4A]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_CATEGORY_L]  WITH CHECK ADD FOREIGN KEY([CATEGORY_ID])
REFERENCES [dbo].[SYS_CATEGORY] ([CATEGORY_ID])
GO
/****** Object:  ForeignKey [FK__SYS_CATEG__LOCAL__1C5DEA11]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_CATEGORY_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__SYS_CITY__STATE___1E463283]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_CITY]  WITH CHECK ADD FOREIGN KEY([STATE_PROV_ID])
REFERENCES [dbo].[SYS_STATE_PROV] ([STATE_PROV_ID])
GO
/****** Object:  ForeignKey [FK__SYS_CITY___CITY___202E7AF5]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_CITY_L]  WITH CHECK ADD FOREIGN KEY([CITY_ID])
REFERENCES [dbo].[SYS_CITY] ([CITY_ID])
GO
/****** Object:  ForeignKey [FK__SYS_CITY___LOCAL__1F3A56BC]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_CITY_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__SYS_CKL_A__SYSTE__21229F2E]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_CKL_AREA]  WITH CHECK ADD FOREIGN KEY([SYSTEM_ID])
REFERENCES [dbo].[SYS_SYSTEM] ([SYSTEM_ID])
GO
/****** Object:  ForeignKey [FK__SYS_CKL_A__CKL_A__230AE7A0]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_CKL_AREA_L]  WITH CHECK ADD FOREIGN KEY([CKL_AREA_ID])
REFERENCES [dbo].[SYS_CKL_AREA] ([CKL_AREA_ID])
GO
/****** Object:  ForeignKey [FK__SYS_CKL_A__LOCAL__2216C367]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_CKL_AREA_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__SYS_CKL_C__GLB_C__23FF0BD9]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_CKL_COLUMN]  WITH CHECK ADD FOREIGN KEY([GLB_COLUMN_TYPE_ID])
REFERENCES [dbo].[ADM_GLB_LIST] ([GLB_LIST_ID])
GO
/****** Object:  ForeignKey [FK__SYS_CKL_C__GLB_L__24F33012]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_CKL_COLUMN]  WITH CHECK ADD FOREIGN KEY([GLB_LIST_TYPE_ID])
REFERENCES [dbo].[SYS_GLB_LIST_TYPE] ([GLB_LIST_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__SYS_CKL_C__CKL_C__26DB7884]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_CKL_COLUMN_L]  WITH CHECK ADD FOREIGN KEY([CKL_COLUMN_ID])
REFERENCES [dbo].[SYS_CKL_COLUMN] ([CKL_COLUMN_ID])
GO
/****** Object:  ForeignKey [FK__SYS_CKL_C__LOCAL__25E7544B]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_CKL_COLUMN_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__SYS_COUNT__COUNT__28C3C0F6]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_COUNTRY_L]  WITH CHECK ADD FOREIGN KEY([COUNTRY_ID])
REFERENCES [dbo].[SYS_COUNTRY] ([COUNTRY_ID])
GO
/****** Object:  ForeignKey [FK__SYS_COUNT__LOCAL__27CF9CBD]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_COUNTRY_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__SYS_COUNT__STATE__29B7E52F]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_COUNTY]  WITH CHECK ADD FOREIGN KEY([STATE_PROV_ID])
REFERENCES [dbo].[SYS_STATE_PROV] ([STATE_PROV_ID])
GO
/****** Object:  ForeignKey [FK__SYS_COUNT__COUNT__2BA02DA1]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_COUNTY_L]  WITH CHECK ADD FOREIGN KEY([COUNTY_ID])
REFERENCES [dbo].[SYS_COUNTY] ([COUNTY_ID])
GO
/****** Object:  ForeignKey [FK__SYS_COUNT__LOCAL__2AAC0968]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_COUNTY_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__SYS_ENTIT__SYSTE__2C9451DA]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_ENTITY_TYPE]  WITH CHECK ADD FOREIGN KEY([SYSTEM_ID])
REFERENCES [dbo].[SYS_SYSTEM] ([SYSTEM_ID])
GO
/****** Object:  ForeignKey [FK__SYS_ENTIT__ENTIT__2D887613]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_ENTITY_TYPE_L]  WITH CHECK ADD FOREIGN KEY([ENTITY_TYPE_ID])
REFERENCES [dbo].[SYS_ENTITY_TYPE] ([ENTITY_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__SYS_ENTIT__LOCAL__2E7C9A4C]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_ENTITY_TYPE_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__SYS_FOLDE__SYSTE__2F70BE85]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_FOLDER_TYPE]  WITH CHECK ADD FOREIGN KEY([SYSTEM_ID])
REFERENCES [dbo].[SYS_SYSTEM] ([SYSTEM_ID])
GO
/****** Object:  ForeignKey [FK__SYS_GLB_L__GLB_L__315906F7]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_GLB_LIST_TYP_L]  WITH CHECK ADD FOREIGN KEY([GLB_LIST_TYPE_ID])
REFERENCES [dbo].[SYS_GLB_LIST_TYPE] ([GLB_LIST_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__SYS_GLB_L__LOCAL__3064E2BE]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_GLB_LIST_TYP_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__SYS_IMAGE__IMAGE__33414F69]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_IMAGE_SVR_L]  WITH CHECK ADD FOREIGN KEY([IMAGE_SVR_ID])
REFERENCES [dbo].[SYS_IMAGE_SVR] ([IMAGE_SVR_ID])
GO
/****** Object:  ForeignKey [FK__SYS_IMAGE__LOCAL__324D2B30]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_IMAGE_SVR_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__SYS_IMAGE__IMAGE__343573A2]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_IMAGE_SVR_PARM]  WITH CHECK ADD FOREIGN KEY([IMAGE_SVR_ID])
REFERENCES [dbo].[SYS_IMAGE_SVR] ([IMAGE_SVR_ID])
GO
/****** Object:  ForeignKey [FK__SYS_LOCK__GLB_US__361DBC14]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_LOCK]  WITH CHECK ADD FOREIGN KEY([GLB_USER_ID])
REFERENCES [dbo].[ADM_GLB_USER] ([GLB_USER_ID])
GO
/****** Object:  ForeignKey [FK__SYS_LOCK__SYSTEM__352997DB]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_LOCK]  WITH CHECK ADD FOREIGN KEY([SYSTEM_ID])
REFERENCES [dbo].[SYS_SYSTEM] ([SYSTEM_ID])
GO
/****** Object:  ForeignKey [FK__SYS_NODE___SYSAD__3711E04D]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_NODE_ACTION]  WITH CHECK ADD FOREIGN KEY([SYSADMIN_NODE_ID])
REFERENCES [dbo].[SYS_SYSADMIN_NODE] ([SYSADMIN_NODE_ID])
GO
/****** Object:  ForeignKey [FK__SYS_NOTE___LOCAL__38060486]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_NOTE_PARM_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__SYS_SERVE__LOCAL__38FA28BF]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_SERVER_LOC_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__SYS_SERVE__SERVE__39EE4CF8]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_SERVER_LOC_L]  WITH CHECK ADD FOREIGN KEY([SERVER_LOC_ID])
REFERENCES [dbo].[SYS_SERVER_LOC] ([SERVER_LOC_ID])
GO
/****** Object:  ForeignKey [FK__SYS_STATE__COUNT__3AE27131]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_STATE_PROV]  WITH CHECK ADD FOREIGN KEY([COUNTRY_ID])
REFERENCES [dbo].[SYS_COUNTRY] ([COUNTRY_ID])
GO
/****** Object:  ForeignKey [FK__SYS_STATE__LOCAL__3BD6956A]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_STATE_PROV_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__SYS_STATE__STATE__3CCAB9A3]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_STATE_PROV_L]  WITH CHECK ADD FOREIGN KEY([STATE_PROV_ID])
REFERENCES [dbo].[SYS_STATE_PROV] ([STATE_PROV_ID])
GO
/****** Object:  ForeignKey [FK__SYS_SYSAD__LOCAL__3EB30215]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_SYSADM_NODE_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__SYS_SYSAD__SYSAD__3DBEDDDC]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_SYSADM_NODE_L]  WITH CHECK ADD FOREIGN KEY([SYSADMIN_NODE_ID])
REFERENCES [dbo].[SYS_SYSADMIN_NODE] ([SYSADMIN_NODE_ID])
GO
/****** Object:  ForeignKey [FK__SYS_TIME___TIME___3FA7264E]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_TIME_ZONE_L]  WITH CHECK ADD FOREIGN KEY([TIME_ZONE_ID])
REFERENCES [dbo].[SYS_TIME_ZONE] ([TIME_ZONE_ID])
GO
/****** Object:  ForeignKey [FK__SYS_USER___GLB_U__409B4A87]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_USER_PREF]  WITH CHECK ADD FOREIGN KEY([GLB_USER_ID])
REFERENCES [dbo].[ADM_GLB_USER] ([GLB_USER_ID])
GO
/****** Object:  ForeignKey [FK__SYS_USER___USER___418F6EC0]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[SYS_USER_PREF_CNTL]  WITH CHECK ADD FOREIGN KEY([USER_PREF_ID])
REFERENCES [dbo].[SYS_USER_PREF] ([USER_PREF_ID])
GO
/****** Object:  ForeignKey [FK__WFM_ASSOC__CORPO__428392F9]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_ASSOCIATION]  WITH CHECK ADD FOREIGN KEY([CORPORATION_ID])
REFERENCES [dbo].[ADM_CORPORATION] ([CORPORATION_ID])
GO
/****** Object:  ForeignKey [FK__WFM_ASSOC__FILTE__4377B732]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_ASSOCIATION]  WITH CHECK ADD FOREIGN KEY([FILTER_ID])
REFERENCES [dbo].[WFM_FILTER] ([FILTER_ID])
GO
/****** Object:  ForeignKey [FK__WFM_ASSOC__MESSA__446BDB6B]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_ASSOCIATION]  WITH CHECK ADD FOREIGN KEY([MESSAGE_ID])
REFERENCES [dbo].[WFM_MESSAGE] ([MESSAGE_ID])
GO
/****** Object:  ForeignKey [FK__WFM_FILTE__SYSTE__455FFFA4]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_FILTER]  WITH CHECK ADD FOREIGN KEY([SYSTEM_ID])
REFERENCES [dbo].[SYS_SYSTEM] ([SYSTEM_ID])
GO
/****** Object:  ForeignKey [FK__WFM_FILTE__FILTE__47484816]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_FILTER_L]  WITH CHECK ADD FOREIGN KEY([FILTER_ID])
REFERENCES [dbo].[WFM_FILTER] ([FILTER_ID])
GO
/****** Object:  ForeignKey [FK__WFM_FILTE__LOCAL__465423DD]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_FILTER_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__WFM_GRAPH__SYSTE__483C6C4F]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_GRAPH_TYPE]  WITH CHECK ADD FOREIGN KEY([SYSTEM_ID])
REFERENCES [dbo].[SYS_SYSTEM] ([SYSTEM_ID])
GO
/****** Object:  ForeignKey [FK__WFM_GRAPH__GRAPH__4A24B4C1]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_GRAPH_TYPE_L]  WITH CHECK ADD FOREIGN KEY([GRAPH_TYPE_ID])
REFERENCES [dbo].[WFM_GRAPH_TYPE] ([GRAPH_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__WFM_GRAPH__LOCAL__49309088]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_GRAPH_TYPE_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__WFM_MESSA__CORPO__4B18D8FA]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_MESSAGE]  WITH CHECK ADD FOREIGN KEY([CORPORATION_ID])
REFERENCES [dbo].[ADM_CORPORATION] ([CORPORATION_ID])
GO
/****** Object:  ForeignKey [FK__WFM_MESSA__FILTE__4C0CFD33]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_MESSAGE]  WITH CHECK ADD FOREIGN KEY([FILTER_ID])
REFERENCES [dbo].[WFM_FILTER] ([FILTER_ID])
GO
/****** Object:  ForeignKey [FK__WFM_MESSA__MESSA__4D01216C]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_MESSAGE]  WITH CHECK ADD FOREIGN KEY([MESSAGE_TYPE_ID])
REFERENCES [dbo].[ADM_MESSAGE_TYPE] ([MESSAGE_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__WFM_MESSA__MESSA__4DF545A5]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_MESSAGE_BODY]  WITH CHECK ADD FOREIGN KEY([MESSAGE_ID])
REFERENCES [dbo].[WFM_MESSAGE] ([MESSAGE_ID])
GO
/****** Object:  ForeignKey [FK__WFM_MSG_P__MESSA__4EE969DE]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_MSG_PART]  WITH CHECK ADD FOREIGN KEY([MESSAGE_ID])
REFERENCES [dbo].[WFM_MESSAGE] ([MESSAGE_ID])
GO
/****** Object:  ForeignKey [FK__WFM_REMIN__CORPO__4FDD8E17]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_REMINDER]  WITH CHECK ADD FOREIGN KEY([CORPORATION_ID])
REFERENCES [dbo].[ADM_CORPORATION] ([CORPORATION_ID])
GO
/****** Object:  ForeignKey [FK__WFM_REMIN__FILTE__50D1B250]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_REMINDER]  WITH CHECK ADD FOREIGN KEY([FILTER_ID])
REFERENCES [dbo].[WFM_FILTER] ([FILTER_ID])
GO
/****** Object:  ForeignKey [FK__WFM_WKLOA__GRAPH__52B9FAC2]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_WKLOAD_GRAPH]  WITH CHECK ADD FOREIGN KEY([GRAPH_TYPE_ID])
REFERENCES [dbo].[WFM_GRAPH_TYPE] ([GRAPH_TYPE_ID])
GO
/****** Object:  ForeignKey [FK__WFM_WKLOA__WKLOA__51C5D689]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_WKLOAD_GRAPH]  WITH CHECK ADD FOREIGN KEY([WKLOAD_GROUP_ID])
REFERENCES [dbo].[WFM_WKLOAD_GROUP] ([WKLOAD_GROUP_ID])
GO
/****** Object:  ForeignKey [FK__WFM_WKLOA__SYSTE__53AE1EFB]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_WKLOAD_GROUP]  WITH CHECK ADD FOREIGN KEY([SYSTEM_ID])
REFERENCES [dbo].[SYS_SYSTEM] ([SYSTEM_ID])
GO
/****** Object:  ForeignKey [FK__WFM_WKLOA__LOCAL__54A24334]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_WKLOAD_GROUP_L]  WITH CHECK ADD FOREIGN KEY([LOCALE_ID])
REFERENCES [dbo].[SYS_GLB_LOCALE] ([LOCALE_ID])
GO
/****** Object:  ForeignKey [FK__WFM_WKLOA__WKLOA__5596676D]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_WKLOAD_GROUP_L]  WITH CHECK ADD FOREIGN KEY([WKLOAD_GROUP_ID])
REFERENCES [dbo].[WFM_WKLOAD_GROUP] ([WKLOAD_GROUP_ID])
GO
/****** Object:  ForeignKey [FK__WFM_WL_CO__SYSTE__568A8BA6]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_WL_CONFIG]  WITH CHECK ADD FOREIGN KEY([SYSTEM_ID])
REFERENCES [dbo].[SYS_SYSTEM] ([SYSTEM_ID])
GO
/****** Object:  ForeignKey [FK__WFM_WORK___CORPO__577EAFDF]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_WORK_ITEM]  WITH CHECK ADD FOREIGN KEY([CORPORATION_ID])
REFERENCES [dbo].[ADM_CORPORATION] ([CORPORATION_ID])
GO
/****** Object:  ForeignKey [FK__WFM_WORK___FILTE__5872D418]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_WORK_ITEM]  WITH CHECK ADD FOREIGN KEY([FILTER_ID])
REFERENCES [dbo].[WFM_FILTER] ([FILTER_ID])
GO
/****** Object:  ForeignKey [FK__WFM_WORK___SYSTE__5966F851]    Script Date: 03/08/2010 15:04:33 ******/
ALTER TABLE [dbo].[WFM_WORK_LOAD]  WITH CHECK ADD FOREIGN KEY([SYSTEM_ID])
REFERENCES [dbo].[SYS_SYSTEM] ([SYSTEM_ID])
GO

/****** Object:  View [dbo].[VW_HST_CKL_DATA]    Script Date: 03/08/2010 15:04:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_HST_CKL_DATA] AS

SELECT C.DATA_ID, 'CHECKLIST DATA' AS ENTITY,  C.DATA_ID AS IDENTIFIER, T.COLUMN_CHANGED,T.DATA_VALUE, T.UPDATE_DT, T.UPDATED_BY AS UPDATED_BY  FROM
(SELECT  'HST_CKL_DATA' AS HST_TABLE, H1.DATA_ID,'PRODUCT_INFO_ID' AS COLUMN_CHANGED, CAST(H1.PRODUCT_INFO_ID AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY  FROM HST_CKL_DATA H1 UNION

SELECT  'HST_CKL_DATA' AS HST_TABLE, H1.DATA_ID,'GLB_LIST_ID' AS COLUMN_CHANGED, CAST(H1.GLB_LIST_ID AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY  FROM HST_CKL_DATA H1 UNION

SELECT  'HST_CKL_DATA' AS HST_TABLE, H1.DATA_ID,'TASK_VALUE1' AS COLUMN_CHANGED, CAST(H1.TASK_VALUE1 AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_CKL_DATA H1 UNION

SELECT  'HST_CKL_DATA' AS HST_TABLE, H1.DATA_ID,'TASK_VALUE2' AS COLUMN_CHANGED, CAST(H1.TASK_VALUE2 AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_CKL_DATA H1 UNION

SELECT  'HST_CKL_DATA' AS HST_TABLE, H1.DATA_ID,'TASK_VALUE3' AS COLUMN_CHANGED, CAST(H1.TASK_VALUE3 AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_CKL_DATA H1 UNION

SELECT  'HST_CKL_DATA' AS HST_TABLE, H1.DATA_ID,'TASK_VALUE4' AS COLUMN_CHANGED, CAST(H1.TASK_VALUE4 AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_CKL_DATA H1 UNION

SELECT  'HST_CKL_DATA' AS HST_TABLE, H1.DATA_ID,'TASK_VALUE5' AS COLUMN_CHANGED, CAST(H1.TASK_VALUE5 AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_CKL_DATA H1 ) T,

CKL_DATA C WHERE C.DATA_ID = T.DATA_ID
GO

/****** Object:  View [dbo].[VW_HST_DOC_DATA]    Script Date: 03/08/2010 15:04:34 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[VW_HST_DOC_DATA] AS

SELECT C.DOCUMENT_ID, 'DOCUMENT' AS ENTITY, C.ANCESTOR_ID, C.DOCUMENT_ID AS IDENTIFIER, T.COLUMN_CHANGED,T.DATA_VALUE, T.UPDATE_DT, T.UPDATED_BY AS UPDATED_BY  FROM
(SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'SERVER_LOC_ID' AS COLUMN_CHANGED, CAST(H1.SERVER_LOC_ID AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY  FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'DOC_CONFIG_ID' AS COLUMN_CHANGED, CAST(H1.DOC_CONFIG_ID AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY  FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'BLOB_ID' AS COLUMN_CHANGED, CAST(H1.BLOB_ID AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'BLOB_LOCATION' AS COLUMN_CHANGED, CAST(H1.BLOB_LOCATION AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'DOC_TYPE_ID' AS COLUMN_CHANGED, CAST(H1.DOC_TYPE_ID AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'DOC_SUBTYPE_ID' AS COLUMN_CHANGED, CAST(H1.DOC_SUBTYPE_ID AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'DOC_GROUP_STATUS_C' AS COLUMN_CHANGED, CAST(H1.DOC_GROUP_STATUS_C AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'DOC_STATUS_C' AS COLUMN_CHANGED, CAST(H1.DOC_STATUS_C AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'DOCUMENT_NUM' AS COLUMN_CHANGED, CAST(H1.DOCUMENT_NUM AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'RECEPIENT_ID' AS COLUMN_CHANGED, CAST(H1.RECEPIENT_ID AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'ADDRESSED_TO' AS COLUMN_CHANGED, CAST(H1.ADDRESSED_TO AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'AUTHOR' AS COLUMN_CHANGED, CAST(H1.AUTHOR AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'AMOUNT' AS COLUMN_CHANGED, CAST(H1.AMOUNT AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'DESCRIPTION' AS COLUMN_CHANGED, CAST(H1.DESCRIPTION AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'IMAGE_CLASS' AS COLUMN_CHANGED, CAST(H1.IMAGE_CLASS AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'SOURCE_C' AS COLUMN_CHANGED, CAST(H1.SOURCE_C AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'INDEXED_DT' AS COLUMN_CHANGED, CAST(H1.INDEXED_DT AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'INDEXER_ID' AS COLUMN_CHANGED, CAST(H1.INDEXER_ID AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'SPECIAL_INDEXER_ID' AS COLUMN_CHANGED, CAST(H1.SPECIAL_INDEXER_ID AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'BATCH_NAME' AS COLUMN_CHANGED, CAST(H1.BATCH_NAME AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'BATCH_ORDINAL' AS COLUMN_CHANGED, CAST(H1.BATCH_ORDINAL AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'BATCH_TOTAL' AS COLUMN_CHANGED, CAST(H1.BATCH_TOTAL AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'DOC_READ_F' AS COLUMN_CHANGED, CAST(H1.DOC_READ_F AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'DUE_D' AS COLUMN_CHANGED, CAST(H1.DUE_D AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'DUE_DT_CREATOR_ID' AS COLUMN_CHANGED, CAST(H1.DUE_DT_CREATOR_ID AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'PARENT_DOCUMENT_ID' AS COLUMN_CHANGED, CAST(H1.PARENT_DOCUMENT_ID AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'ANCESTOR_ID' AS COLUMN_CHANGED, CAST(H1.ANCESTOR_ID AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'ANCESTOR_TYPE_C' AS COLUMN_CHANGED, CAST(H1.ANCESTOR_TYPE_C AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'ANCESTOR_SYSTEM_C' AS COLUMN_CHANGED, CAST(H1.ANCESTOR_SYSTEM_C AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'REFERENCE_ID' AS COLUMN_CHANGED, CAST(H1.REFERENCE_ID AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'REFERENCE_TYPE_C' AS COLUMN_CHANGED, CAST(H1.REFERENCE_TYPE_C AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'FOLDER_TYPE_ID' AS COLUMN_CHANGED, CAST(H1.FOLDER_TYPE_ID AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'WORK_ITEM_ID' AS COLUMN_CHANGED, CAST(H1.WORK_ITEM_ID AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'TOTAL_PAGES' AS COLUMN_CHANGED, CAST(H1.TOTAL_PAGES AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'IMAGE_SVR_ID' AS COLUMN_CHANGED, CAST(H1.IMAGE_SVR_ID AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'CACHE_SVR_ID' AS COLUMN_CHANGED, CAST(H1.CACHE_SVR_ID AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'DOC_CATEGORY_C' AS COLUMN_CHANGED, CAST(H1.DOC_CATEGORY_C AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'PROCESS_ID' AS COLUMN_CHANGED, CAST(H1.PROCESS_ID AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'PRIORITY_C' AS COLUMN_CHANGED, CAST(H1.PRIORITY_C AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'AMOUNT_CURRENCY' AS COLUMN_CHANGED, CAST(H1.AMOUNT_CURRENCY AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 UNION

SELECT  'HST_DOC_DOCUMENT' AS HST_TABLE, H1.DOCUMENT_ID,'DOC_ORIGIN_DT' AS COLUMN_CHANGED, CAST(H1.DOC_ORIGIN_DT AS CHAR(100)) AS DATA_VALUE, H1.UPDATE_DT, H1.UPDATED_BY FROM HST_DOC_DOCUMENT H1 ) T,

DOC_DOCUMENT C WHERE C.DOCUMENT_ID = T.DOCUMENT_ID
GO

/****** Object:  View [dbo].[PhilView]    Script Date: 03/08/2010 15:04:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PhilView]
AS
SELECT     TOP (100) PERCENT dbo.SYS_CITY.CITY_CODE, dbo.SYS_CITY_L.CITY, 
                      CASE SYS_CITY.STATE_PROV_ID WHEN 1 THEN 'Missouri' WHEN 3 THEN 'Arkansas' ELSE CAST(SYS_CITY.STATE_PROV_ID AS varchar(1)) 
                      END AS State
FROM         dbo.SYS_CITY INNER JOIN
                      dbo.SYS_CITY_L ON dbo.SYS_CITY.CITY_ID = dbo.SYS_CITY_L.CITY_ID
ORDER BY CAST(dbo.SYS_CITY.CITY_CODE AS int)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "SYS_CITY"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 200
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SYS_CITY_L"
            Begin Extent = 
               Top = 6
               Left = 238
               Bottom = 121
               Right = 390
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PhilView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PhilView'
GO