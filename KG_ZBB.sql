USE [master]
GO
/****** Object:  Database [KG_ZBB]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE DATABASE [KG_ZBB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KGLOBAL_ZBB_DEV', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KGLOBAL_ZBB_DEV.mdf' , SIZE = 74752000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'KGLOBAL_ZBB_DEV_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KGLOBAL_ZBB_DEV_log.ldf' , SIZE = 25480KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KG_ZBB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KG_ZBB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KG_ZBB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KG_ZBB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KG_ZBB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KG_ZBB] SET ARITHABORT OFF 
GO
ALTER DATABASE [KG_ZBB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KG_ZBB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [KG_ZBB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KG_ZBB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KG_ZBB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KG_ZBB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KG_ZBB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KG_ZBB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KG_ZBB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KG_ZBB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KG_ZBB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KG_ZBB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KG_ZBB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KG_ZBB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KG_ZBB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KG_ZBB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KG_ZBB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KG_ZBB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KG_ZBB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KG_ZBB] SET  MULTI_USER 
GO
ALTER DATABASE [KG_ZBB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KG_ZBB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KG_ZBB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KG_ZBB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KG_ZBB', N'ON'
GO
USE [KG_ZBB]
GO
/****** Object:  User [US\SQL_KG_ZBB_R]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE USER [US\SQL_KG_ZBB_R] FOR LOGIN [US\SQL_KG_ZBB_R]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_ZBB_SUPPORT_R]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE USER [US\SQL_DS_ZBB_SUPPORT_R] FOR LOGIN [US\SQL_DS_ZBB_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE ROLE [db_view_def]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_KG_ZBB_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [us\SQL_KEYSTONE_SA_PROD_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_Keystone_SA_Prod]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_ZBB_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_ZBB_SUPPORT_R]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_SUPPORT_R]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_ANALYTICS_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_ANALYTICS_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_DATA_SERVICES]
GO
ALTER ROLE [db_owner] ADD MEMBER [SQL_SPARK_PROD]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKRRD01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKPLG01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKPCL01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKNXA19]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKMEW01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKLCH06]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKKXW01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKKFS02]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKJXS19]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKJTB03]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKJAK14]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [SAS_USKJAK14]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKDRK07]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKCRS01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKBPH02]
GO
ALTER ROLE [db_owner] ADD MEMBER [BODS]
GO
/****** Object:  Schema [ADT]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE SCHEMA [ADT]
GO
/****** Object:  Schema [EDW]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE SCHEMA [EDW]
GO
/****** Object:  Schema [EXT]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE SCHEMA [EXT]
GO
/****** Object:  Schema [src]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE SCHEMA [src]
GO
/****** Object:  Schema [STG]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE SCHEMA [STG]
GO
/****** Object:  StoredProcedure [dbo].[USP_BB_MAPPINGS]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_BB_MAPPINGS]
 AS
 SELECT 
 EKKO.LIFNR as Vendor_Name
,EKKO.LIFRE as Invoice_Party_Name
,AUFNR as Requesting_order 
,AUART as Order_Type 
,AUTYP as Order_category  
,COAS.KTEXT AS Description 
,KOSTV as Responsible_CCtr
,COAS.KSTAR as Settlement_cost_elem
,KOSTL as Cost_center 
,SAKNR as GL_account 
,USER2 as Person_responsible
,COAS.PRCTR as Profit_Center
,CEPCT.KTEXT AS Name
 FROM SRC.TBL_COEP COEP	LEFT OUTER JOIN SRC.TBL_EKKO EKKO ON COEP.EBELN= EKKO.EBELN
						LEFT OUTER JOIN SRC.TBL_LFA1 LFA1 ON EKKO.LIFNR= LFA1.LIFNR
									--AND EKKO.LIFRE=LFA1.LIFRE
						LEFT OUTER JOIN SRC.TBL_COAS COAS ON COEP.OBJNR=COAS.OBJNR
						LEFT OUTER JOIN SRC.TBL_CEPCT CEPCT ON COAS.PRCTR= CEPCT.PRCTR

GO
/****** Object:  StoredProcedure [dbo].[USP_DB_Metric_Detail_Populate_Region]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_DB_Metric_Detail_Populate_Region]
AS
BEGIN
SET NOCOUNT ON
	BEGIN TRY

--- ALL THE ALLOCATION RULES SHOULD GO HERE.


UPDATE KG_ZBB.DBO.DB_Metric_Detail
SET REGION = CASE WHEN DBName LIKE 'KNA%' THEN 'KNA'
                  WHEN DBName LIKE 'KAP%' THEN 'KAP'
				  WHEN DBName LIKE 'KEU%' THEN 'KEU'
				  
				  WHEN DBName LIKE 'KIN%' THEN 'KIN'
				  WHEN DBName LIKE 'KLA%' THEN 'KLA'
				  WHEN DBName =  'KG_ZBB' THEN 'KNA'
				  WHEN DBName LIKE 'KG%'  THEN 'KG'
				  WHEN DBName LIKE 'TPE%' THEN 'KNA'


				  WHEN DBName NOT LIKE 'KNA%' 
                   AND DBName NOT LIKE 'KAP%' 
				   AND DBName NOT LIKE 'KEU%' 
				   AND DBName NOT LIKE 'KG%' 
				   AND DBName NOT LIKE 'KIN%' 
				   AND DBName NOT LIKE 'KLA%' 
	                                     THEN 'OTH'
			 END
/*** SAME LOGIC ABOVE IS REPLICATED FOR ANOTHER METRIC KEEP THESE TWO IN SYNCH  ******/

UPDATE KG_ZBB.DBO.DB_Size_Metric_Detail
SET REGION = CASE WHEN DBName LIKE 'KNA%' THEN 'KNA'
                  WHEN DBName LIKE 'KAP%' THEN 'KAP'
				  WHEN DBName LIKE 'KEU%' THEN 'KEU'
				  
				  WHEN DBName LIKE 'KIN%' THEN 'KIN'
				  WHEN DBName LIKE 'KLA%' THEN 'KLA'
				  WHEN DBName =  'KG_ZBB' THEN 'KNA'
				  WHEN DBName LIKE 'KG%'  THEN 'KG'
				  WHEN DBName LIKE 'TPE%' THEN 'KNA'


				  WHEN DBName NOT LIKE 'KNA%' 
                   AND DBName NOT LIKE 'KAP%' 
				   AND DBName NOT LIKE 'KEU%' 
				   AND DBName NOT LIKE 'KG%' 
				   AND DBName NOT LIKE 'KIN%' 
				   AND DBName NOT LIKE 'KLA%' 
	                                     THEN 'OTH'
			 END

			  

	END TRY

	BEGIN CATCH
	END CATCH
SET NOCOUNT OFF
--SELECT * FROM  KG_ZBB.DBO.DB_Metric_Detail
--SELECT * FROM  KG_ZBB.DBO.DB_Size_Metric_Detail

END

GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_AIRFARE]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_DQ_LOAD_AIRFARE]
--@Client_Name VARCHAR (50), 
--@Table_Name VARCHAR (50), 
@Cntry_flag  varchar(5),
@Totalcount INT OUTPUT, 
@Warcount INT OUTPUT, 
@ErrCount INT OUTPUT, 
@InsCount INT OUTPUt
---@UpdCount INT OUTPUT--, 
--@BatchDetailID INT OUTPUT

AS

/******************************************************************************
NAME        :  USP_DQ_LOAD_AIRFARE
PURPOSE & 
Description :  This script will load data into Airfare table from stg table.
			   
			Also this script will do data validations like data type check,removing spaces and special charecters .	
REVISIONS:
Ver          Date             Author                    Change Reason
------    ----------      ---------------         ------------------------------
1.0         04/16/2016       USCLXK36                1. Initial Version



-----------------------------Execution script--------------------------------------
DECLARE @RC int
DECLARE @Cntry_flag varchar(5)='CA'
DECLARE @Totalcount int
DECLARE @Warcount int
DECLARE @ErrCount int
DECLARE @InsCount int

-- TODO: Set parameter values here.

EXECUTE @RC = DBO.[USP_DQ_LOAD_AIRFARE] 
@Cntry_flag
,@Totalcount OUTPUT
,@Warcount OUTPUT
,@ErrCount OUTPUT
,@InsCount OUTPUT
GO

******************************************************************************/
BEGIN
BEGIN TRY
if (@Cntry_flag = 'CA')
BEGIN -- CA 
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/


UPDATE  [STG].[AIRFARE_DETAIL_CA_STG]
SET	[Client_Name] = LTRIM(RTRIM([Client_Name])),
[Record_Key] = LTRIM(RTRIM([Record_Key])),
[GCN] = LTRIM(RTRIM([GCN])),
[Client_Cd] = LTRIM(RTRIM([Client_Cd])),
[Lctr] = LTRIM(RTRIM([Lctr])),
[Trvlr] = LTRIM(RTRIM([Trvlr])),
[Invoice_Dt] = LTRIM(RTRIM([Invoice_Dt])),
[Invoice_Num] = LTRIM(RTRIM([Invoice_Num])),
[Agency] = LTRIM(RTRIM([Agency])),
[Agency_Num] = LTRIM(RTRIM([Agency_Num])),
[Booking_Src] = LTRIM(RTRIM([Booking_Src])),
[Booking_Agnt_ID] = LTRIM(RTRIM([Booking_Agnt_ID])),
[Local_Air_Rsn_Cd] = LTRIM(RTRIM([Local_Air_Rsn_Cd])),
[Local_Air_Rsn_Cd_Desc] = LTRIM(RTRIM([Local_Air_Rsn_Cd_Desc])),
[Glbl_Air_Rsn_Cd] = LTRIM(RTRIM([Glbl_Air_Rsn_Cd])),
[glbl_Air_rsn_cd_desc] = LTRIM(RTRIM([glbl_Air_rsn_cd_desc])),
[Fare_Accptd_Cd] = LTRIM(RTRIM([Fare_Accptd_Cd])),
[Fare_Accptd_Cd_desc] = LTRIM(RTRIM([Fare_Accptd_Cd_desc])),
[CreditCrd_Num] = LTRIM(RTRIM([CreditCrd_Num])),
[CreditCrd_Typ] = LTRIM(RTRIM([CreditCrd_Typ])),
[Creditcrd_exprtn] = LTRIM(RTRIM([Creditcrd_exprtn])),
[Refund_Indctr] = LTRIM(RTRIM([Refund_Indctr])),
[Exchange_Indctr] = LTRIM(RTRIM([Exchange_Indctr])),
[True_Tckt_Cnt] = LTRIM(RTRIM([True_Tckt_Cnt])),
[Round_Trp_Indctr] = LTRIM(RTRIM([Round_Trp_Indctr])),
[Short_Long_Hl_Indctr] = LTRIM(RTRIM([Short_Long_Hl_Indctr])),
[Original_docnum] = LTRIM(RTRIM([Original_docnum])),
[Int_Dom] = LTRIM(RTRIM([Int_Dom])),
[Trvl_Sctr] = LTRIM(RTRIM([Trvl_Sctr])),
[Traveler_Cntry] = LTRIM(RTRIM([Traveler_Cntry])),
[Ticketing_Cntry] = LTRIM(RTRIM([Ticketing_Cntry])),
[Trip_Lgth] = LTRIM(RTRIM([Trip_Lgth])),
[Travel_Strt_dt] = LTRIM(RTRIM([Travel_Strt_dt])),
[Ticket_Num] = LTRIM(RTRIM([Ticket_Num])),
[Carrier_cd] = LTRIM(RTRIM([Carrier_cd])),
[Carrier_Name] = LTRIM(RTRIM([Carrier_Name])),
[Orgn_Airport_Cd] = LTRIM(RTRIM([Orgn_Airport_Cd])),
[Origin_Cty] = LTRIM(RTRIM([Origin_Cty])),
[Origin_Airport] = LTRIM(RTRIM([Origin_Airport])),
--[Origin_Cntry] = LTRIM(RTRIM([Origin_Cntry])),
--[Origin_Cntry] = LTRIM(RTRIM([Origin_Cntry])),
--[Origin_Cntry] = LTRIM(RTRIM([Origin_Cntry])),
[Origin_Cntry] = LTRIM(RTRIM([Origin_Cntry])),
[Dstntn_Cntry] = LTRIM(RTRIM([Dstntn_Cntry])),
[Routing] = LTRIM(RTRIM([Routing])),
[Booking_Clss_Smmry] = LTRIM(RTRIM([Booking_Clss_Smmry])),
[Fare_Basis_Smmry] = LTRIM(RTRIM([Fare_Basis_Smmry])),
[Cabin] = LTRIM(RTRIM([Cabin])),
[Tour_Cd] = LTRIM(RTRIM([Tour_Cd])),
[Booking_Dt] = LTRIM(RTRIM([Booking_Dt])),
[Days_Adv_Booking] = LTRIM(RTRIM([Days_Adv_Booking])),
[Days_Adv_Booking_grp] = LTRIM(RTRIM([Days_Adv_Booking_grp])),
[Days_Adv_Prchs] = LTRIM(RTRIM([Days_Adv_Prchs])),
[Days_Adv_PrchsGrp] = LTRIM(RTRIM([Days_Adv_PrchsGrp])),
[Mileage] = LTRIM(RTRIM([Mileage])),
[Cost_Per_Mile] = LTRIM(RTRIM([Cost_Per_Mile])),
[Tax_amnt] = LTRIM(RTRIM([Tax_amnt])),
[Ticket_Amt_Mns_Txs] = LTRIM(RTRIM([Ticket_Amt_Mns_Txs])),
[Total_Ticket_amnt] = LTRIM(RTRIM([Total_Ticket_amnt])),
[Low_Fare] = LTRIM(RTRIM([Low_Fare])),
[Full_Fare] = LTRIM(RTRIM([Full_Fare])),
[Amnt_Lost] = LTRIM(RTRIM([Amnt_Lost])),
[Full_Fare_Svngs] = LTRIM(RTRIM([Full_Fare_Svngs])),
[Contract_Svngs] = LTRIM(RTRIM([Contract_Svngs])),
[Fare_Bfr_Dscnt] = LTRIM(RTRIM([Fare_Bfr_Dscnt])),
[Fare_Cmpr2] = LTRIM(RTRIM([Fare_Cmpr2])),
[Fare_Cmpr3] = LTRIM(RTRIM([Fare_Cmpr3])),
[Fare_Cmpr4] = LTRIM(RTRIM([Fare_Cmpr4])),
[Fare_Cmpr5] = LTRIM(RTRIM([Fare_Cmpr5])),
[Fare_Cmpr6] = LTRIM(RTRIM([Fare_Cmpr6])),
[CST_CNTR_ION] = LTRIM(RTRIM([CST_CNTR_ION]));

/*********************Removing Commas Start *************************************/
	
UPDATE  [STG].[AIRFARE_DETAIL_CA_STG]
SET	
[Mileage] = replace([Mileage],',',''),
[Cost_Per_Mile] = replace(LTRIM(RTRIM([Cost_Per_Mile])),',',''),
[Tax_amnt] = replace(LTRIM(RTRIM([Tax_amnt])),',',''),
[Ticket_Amt_Mns_Txs] = replace(LTRIM(RTRIM([Ticket_Amt_Mns_Txs])),',',''),
[Total_Ticket_amnt] = replace(LTRIM(RTRIM([Total_Ticket_amnt])),',',''),
[Low_Fare] = replace(LTRIM(RTRIM([Low_Fare])),',',''),
[Full_Fare] = replace(LTRIM(RTRIM([Full_Fare])),',',''),
[Amnt_Lost] = replace(LTRIM(RTRIM([Amnt_Lost])),',',''),
[Full_Fare_Svngs] = replace(LTRIM(RTRIM([Full_Fare_Svngs])),',',''),
[Contract_Svngs] = replace(LTRIM(RTRIM([Contract_Svngs])),',',''),
[Fare_Bfr_Dscnt] =replace( LTRIM(RTRIM([Fare_Bfr_Dscnt])),',',''),
[Fare_Cmpr2] = replace(LTRIM(RTRIM([Fare_Cmpr2])),',',''),
[Fare_Cmpr3] = replace(LTRIM(RTRIM([Fare_Cmpr3])),',',''),
[Fare_Cmpr4] = replace(LTRIM(RTRIM([Fare_Cmpr4])),',',''),
[Fare_Cmpr5] = replace(LTRIM(RTRIM([Fare_Cmpr5])),',',''),
[Fare_Cmpr6] = replace(LTRIM(RTRIM([Fare_Cmpr6])),',','')
;

/*********************Removing Commas End *************************************/

	/*********************Removing brackets symbol Start *************************************/
	
UPDATE  [STG].[AIRFARE_DETAIL_CA_STG]
SET	
[Cost_Per_Mile] = replace(replace([Cost_Per_Mile],'(','-'),')',''),
[Tax_amnt] = replace(replace([Tax_amnt],'(','-'),')',''),
[Ticket_Amt_Mns_Txs] = replace(replace([Ticket_Amt_Mns_Txs],'(','-'),')',''),
[Total_Ticket_amnt] = replace(replace([Total_Ticket_amnt],'(','-'),')',''),
[Low_Fare] = replace(replace([Low_Fare],'(','-'),')',''),
[Full_Fare] = replace(replace([Full_Fare],'(','-'),')',''),
[Amnt_Lost] = replace(replace([Amnt_Lost],'(','-'),')',''),
[Full_Fare_Svngs] = replace(replace([Full_Fare_Svngs],'(','-'),')',''),
[Contract_Svngs] = replace(replace([Contract_Svngs],'(','-'),')',''),
[Fare_Bfr_Dscnt] =replace(replace([Fare_Bfr_Dscnt],'(','-'),')',''),
[Fare_Cmpr2] = replace(replace([Fare_Cmpr2],'(','-'),')',''),
[Fare_Cmpr3] = replace(replace([Fare_Cmpr3],'(','-'),')',''),
[Fare_Cmpr4] = replace(replace([Fare_Cmpr4],'(','-'),')',''),
[Fare_Cmpr5] = replace(replace([Fare_Cmpr5],'(','-'),')',''),
[Fare_Cmpr6] = replace(replace([Fare_Cmpr6],'(','-'),')','')
;

/*********************Removing brackets symbol End *************************************/

/********************* Checking Duplicates *************************************/
   
;WITH    CheckDuplicates
AS      (SELECT ROW_NUMBER() OVER (PARTITION BY [Invoice_Num],[Ticket_Num] ORDER BY [Ticket_Num]) AS DuplicateRecCount,
        *
    FROM   [STG].[AIRFARE_DETAIL_CA_STG] AS t)

-- select* from CheckDuplicates

UPDATE  CheckDuplicates
SET Error_Flag      = 'Y'
-- [Error_Message] = ISNULL([Error_Message], '') + 'ERR:Duplicate record has been Found ||'
WHERE   DuplicateRecCount > 1;


/*********************CHECKING FOR NULLABLE VALUES*********************************/


UPDATE [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
WHERE  [Ticket_Num]  IS NULL
OR [Ticket_Num] = '';

UPDATE [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
WHERE  [Invoice_Num]  IS NULL
OR [Invoice_Num] = '';


/*********************START CHECKING DATA TYPE**************************************/

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
WHERE   isnumeric([Cost_Per_Mile]) <> 1 AND [Cost_Per_Mile] is not null
--OR	[Cost_Per_Mile]LIKE '%[^0-9]%';

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
WHERE   isnumeric([Tax_amnt]) <> 1 AND [Tax_amnt] is not null
--OR	[Tax_amnt]LIKE '%[^0-9]%' ; 


UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
WHERE   isnumeric([Ticket_Amt_Mns_Txs]) <> 1 AND [Ticket_Amt_Mns_Txs] is not null
--OR	[Ticket_Amt_Mns_Txs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
WHERE   isnumeric([Low_Fare]) <> 1 AND [Low_Fare] is not null
--OR	[Low_Fare]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
WHERE   isnumeric([Full_Fare]) <> 1 AND [Full_Fare] is not null
--OR	[Full_Fare]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
WHERE   isnumeric([Amnt_Lost]) <> 1 AND [Amnt_Lost] is not null
--OR	[Amnt_Lost]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
WHERE   isnumeric([Full_Fare_Svngs]) <> 1 AND [Full_Fare_Svngs] is not null
--OR	[Full_Fare_Svngs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
WHERE   isnumeric([Contract_Svngs]) <> 1 AND [Contract_Svngs] is not null
--OR	[Contract_Svngs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
WHERE   isnumeric([Fare_Bfr_Dscnt]) <> 1 AND [Fare_Bfr_Dscnt] is not null
--OR	[Fare_Bfr_Dscnt]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
WHERE   isnumeric([Fare_Cmpr2]) <> 1 AND [Fare_Cmpr2] is not null
--OR	[Fare_Cmpr2]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
WHERE   isnumeric([Fare_Cmpr3]) <> 1 AND [Fare_Cmpr3] is not null
--OR	[Fare_Cmpr3]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
WHERE   isnumeric([Fare_Cmpr4]) <> 1 AND [Fare_Cmpr4] is not null
--OR	[Fare_Cmpr4]LIKE '%[^0-9]%' ;   

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
WHERE   isnumeric([Fare_Cmpr5]) <> 1 AND [Fare_Cmpr5] is not null
--OR	[Fare_Cmpr5]LIKE '%[^0-9]%' ; 

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
WHERE   isnumeric([Fare_Cmpr6]) <> 1 AND [Fare_Cmpr6] is not null
--OR	[Fare_Cmpr6]LIKE '%[^0-9]%' ; 
                  
									
/*********************Checking Total/Waring/Error Row Counts********************/
	
	
SELECT @Totalcount =   COUNT(1)
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]G;
	

SELECT @Warcount = COUNT(1)
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
WHERE  Warning_Flag = 'Y';

SELECT @ErrCount =  COUNT(1)
FROM  [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]
WHERE  Error_Flag = 'Y';

	
IF (@ErrCount=0) 
begin 
/*********************Updating Rows in Final Tabele ***********************************/
 
delete a from [KG_ZBB].DBO.[AIRFARE_DETAIL_NA] a
inner join (select [Ticket_Num],[Invoice_Num] from [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]) b
on  a.[Ticket_Num] =b.[Ticket_Num] and a.[Invoice_Num]= b.[Invoice_Num]



/*********************Insert rows to Final Tabele ***********************************/


INSERT INTO [KG_ZBB].DBO.[AIRFARE_DETAIL_NA]
(
Agency,
Agency_Num,
Amnt_Lost,
Booking_Agnt_ID,
Booking_Clss_Smmry,
Booking_Dt,
Booking_Src,
Cabin,
Carrier_cd,
Carrier_Name,
Client_Cd,
Client_Name,
Contract_Svngs,
Cost_Per_Mile,
Creditcrd_exprtn,
CreditCrd_Num,
CreditCrd_Typ,
CST_CNTR_ION,
Days_Adv_Booking,
Days_Adv_Booking_grp,
Days_Adv_Prchs,
Days_Adv_PrchsGrp,
Dstntn_Airport,
Dstntn_Airport_cd,
Dstntn_Cntry,
Dstntn_Cty,
Exchange_Indctr,
Fare_Accptd_Cd,
Fare_Accptd_Cd_desc,
Fare_Basis_Smmry,
Fare_Bfr_Dscnt,
Fare_Cmpr2,
Fare_Cmpr3,
Fare_Cmpr4,
Fare_Cmpr5,
Fare_Cmpr6,
Full_Fare,
Full_Fare_Svngs,
GCN,
Glbl_Air_Rsn_Cd,
glbl_Air_rsn_cd_desc,
Int_Dom,
Invoice_Dt,
Invoice_Num,
Lctr,
Local_Air_Rsn_Cd,
Local_Air_Rsn_Cd_Desc,
Low_Fare,
Mileage,
Orgn_Airport_Cd,
Origin_Airport,
Origin_Cntry,
Origin_Cty,
Original_docnum,
Record_Key,
Refund_Indctr,
Round_Trp_Indctr,
Routing,
Short_Long_Hl_Indctr,
Tax_amnt,
Ticket_Amt_Mns_Txs,
Ticket_Num,
Ticketing_Cntry,
Total_Ticket_amnt,
Tour_Cd,
Travel_Strt_dt,
Traveler_Cntry,
Trip_Lgth,
True_Tckt_Cnt,
Trvl_Sctr,
Trvlr)

SELECT Agency,
Agency_Num,
Amnt_Lost,
Booking_Agnt_ID,
Booking_Clss_Smmry,
cast(Booking_Dt as  date),
Booking_Src,
Cabin,
Carrier_cd,
Carrier_Name,
Client_Cd,
Client_Name,
cast(Contract_Svngs as decimal(18,2)),
cast(Cost_Per_Mile as decimal(18,2)),
Creditcrd_exprtn,
CreditCrd_Num,
CreditCrd_Typ,
CST_CNTR_ION,
Days_Adv_Booking,
Days_Adv_Booking_grp,
Days_Adv_Prchs,
Days_Adv_PrchsGrp,
Dstntn_Airport,
Dstntn_Airport_cd,
Dstntn_Cntry,
Dstntn_Cty,
Exchange_Indctr,
Fare_Accptd_Cd,
Fare_Accptd_Cd_desc,
Fare_Basis_Smmry,
Fare_Bfr_Dscnt,
cast(Fare_Cmpr2 as decimal(18,2)),
cast(Fare_Cmpr3 as decimal(18,2)),
cast(Fare_Cmpr4 as decimal(18,2)),
cast(Fare_Cmpr5 as decimal(18,2)),
cast(Fare_Cmpr6 as decimal(18,2)),
cast(Full_Fare as decimal(18,2)),
cast(Full_Fare_Svngs as decimal(18,2)),
GCN,
Glbl_Air_Rsn_Cd,
glbl_Air_rsn_cd_desc,
Int_Dom,
cast(Invoice_Dt as date),
cast(Invoice_Num as int),
Lctr,
Local_Air_Rsn_Cd,
Local_Air_Rsn_Cd_Desc,
cast(Low_Fare as decimal(18,2)),
Mileage,
Orgn_Airport_Cd,
Origin_Airport,
Origin_Cntry,
Origin_Cty,
Original_docnum,
Record_Key,
Refund_Indctr,
Round_Trp_Indctr,
Routing,
Short_Long_Hl_Indctr,
cast(Tax_amnt as decimal(18,2)),
cast(Ticket_Amt_Mns_Txs  as decimal(18,2)),
Ticket_Num,
Ticketing_Cntry,
cast(Total_Ticket_amnt  as decimal(18,2)),
Tour_Cd,
cast(Travel_Strt_dt as date),
Traveler_Cntry,
Trip_Lgth,
True_Tckt_Cnt,
Trvl_Sctr,
Trvlr
FROM [KG_ZBB].[STG].[AIRFARE_DETAIL_CA_STG]


SELECT @InsCount = @@ROWCOUNT
PRINT 'Rows Inserted Into AIRFARE_DETAIL Table:0';
PRINT @InsCount;

end 



END --CA
if (@Cntry_flag = 'US')
BEGIN -- US 
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/


UPDATE  [STG].[AIRFARE_DETAIL_US_STG]
SET	[Client_Name] = LTRIM(RTRIM([Client_Name])),
[Record_Key] = LTRIM(RTRIM([Record_Key])),
[GCN] = LTRIM(RTRIM([GCN])),
[Client_Cd] = LTRIM(RTRIM([Client_Cd])),
[Lctr] = LTRIM(RTRIM([Lctr])),
[Trvlr] = LTRIM(RTRIM([Trvlr])),
[Invoice_Dt] = LTRIM(RTRIM([Invoice_Dt])),
[Invoice_Num] = LTRIM(RTRIM([Invoice_Num])),
[Agency] = LTRIM(RTRIM([Agency])),
[Agency_Num] = LTRIM(RTRIM([Agency_Num])),
[Booking_Src] = LTRIM(RTRIM([Booking_Src])),
[Booking_Agnt_ID] = LTRIM(RTRIM([Booking_Agnt_ID])),
[Local_Air_Rsn_Cd] = LTRIM(RTRIM([Local_Air_Rsn_Cd])),
[Local_Air_Rsn_Cd_Desc] = LTRIM(RTRIM([Local_Air_Rsn_Cd_Desc])),
[Glbl_Air_Rsn_Cd] = LTRIM(RTRIM([Glbl_Air_Rsn_Cd])),
[glbl_Air_rsn_cd_desc] = LTRIM(RTRIM([glbl_Air_rsn_cd_desc])),
[Fare_Accptd_Cd] = LTRIM(RTRIM([Fare_Accptd_Cd])),
[Fare_Accptd_Cd_desc] = LTRIM(RTRIM([Fare_Accptd_Cd_desc])),
[CreditCrd_Num] = LTRIM(RTRIM([CreditCrd_Num])),
[CreditCrd_Typ] = LTRIM(RTRIM([CreditCrd_Typ])),
[Creditcrd_exprtn] = LTRIM(RTRIM([Creditcrd_exprtn])),
[Refund_Indctr] = LTRIM(RTRIM([Refund_Indctr])),
[Exchange_Indctr] = LTRIM(RTRIM([Exchange_Indctr])),
[True_Tckt_Cnt] = LTRIM(RTRIM([True_Tckt_Cnt])),
[Round_Trp_Indctr] = LTRIM(RTRIM([Round_Trp_Indctr])),
[Short_Long_Hl_Indctr] = LTRIM(RTRIM([Short_Long_Hl_Indctr])),
[Original_docnum] = LTRIM(RTRIM([Original_docnum])),
[Int_Dom] = LTRIM(RTRIM([Int_Dom])),
[Trvl_Sctr] = LTRIM(RTRIM([Trvl_Sctr])),
[Traveler_Cntry] = LTRIM(RTRIM([Traveler_Cntry])),
[Ticketing_Cntry] = LTRIM(RTRIM([Ticketing_Cntry])),
[Trip_Lgth] = LTRIM(RTRIM([Trip_Lgth])),
[Travel_Strt_dt] = LTRIM(RTRIM([Travel_Strt_dt])),
[Ticket_Num] = LTRIM(RTRIM([Ticket_Num])),
[Carrier_cd] = LTRIM(RTRIM([Carrier_cd])),
[Carrier_Name] = LTRIM(RTRIM([Carrier_Name])),
[Orgn_Airport_Cd] = LTRIM(RTRIM([Orgn_Airport_Cd])),
[Origin_Cty] = LTRIM(RTRIM([Origin_Cty])),
[Origin_Airport] = LTRIM(RTRIM([Origin_Airport])),
--[Origin_Cntry] = LTRIM(RTRIM([Origin_Cntry])),
--[Origin_Cntry] = LTRIM(RTRIM([Origin_Cntry])),
--[Origin_Cntry] = LTRIM(RTRIM([Origin_Cntry])),
[Origin_Cntry] = LTRIM(RTRIM([Origin_Cntry])),
[Dstntn_Cntry] = LTRIM(RTRIM([Dstntn_Cntry])),
[Routing] = LTRIM(RTRIM([Routing])),
[Booking_Clss_Smmry] = LTRIM(RTRIM([Booking_Clss_Smmry])),
[Fare_Basis_Smmry] = LTRIM(RTRIM([Fare_Basis_Smmry])),
[Cabin] = LTRIM(RTRIM([Cabin])),
[Tour_Cd] = LTRIM(RTRIM([Tour_Cd])),
[Booking_Dt] = LTRIM(RTRIM([Booking_Dt])),
[Days_Adv_Booking] = LTRIM(RTRIM([Days_Adv_Booking])),
[Days_Adv_Booking_grp] = LTRIM(RTRIM([Days_Adv_Booking_grp])),
[Days_Adv_Prchs] = LTRIM(RTRIM([Days_Adv_Prchs])),
[Days_Adv_PrchsGrp] = LTRIM(RTRIM([Days_Adv_PrchsGrp])),
[Mileage] = LTRIM(RTRIM([Mileage])),
[Cost_Per_Mile] = LTRIM(RTRIM([Cost_Per_Mile])),
[Tax_amnt] = LTRIM(RTRIM([Tax_amnt])),
[Ticket_Amt_Mns_Txs] = LTRIM(RTRIM([Ticket_Amt_Mns_Txs])),
[Total_Ticket_amnt] = LTRIM(RTRIM([Total_Ticket_amnt])),
[Low_Fare] = LTRIM(RTRIM([Low_Fare])),
[Full_Fare] = LTRIM(RTRIM([Full_Fare])),
[Amnt_Lost] = LTRIM(RTRIM([Amnt_Lost])),
[Full_Fare_Svngs] = LTRIM(RTRIM([Full_Fare_Svngs])),
[Contract_Svngs] = LTRIM(RTRIM([Contract_Svngs])),
[Fare_Bfr_Dscnt] = LTRIM(RTRIM([Fare_Bfr_Dscnt])),
[Fare_Cmpr2] = LTRIM(RTRIM([Fare_Cmpr2])),
[Fare_Cmpr3] = LTRIM(RTRIM([Fare_Cmpr3])),
[Fare_Cmpr4] = LTRIM(RTRIM([Fare_Cmpr4])),
[Fare_Cmpr5] = LTRIM(RTRIM([Fare_Cmpr5])),
[Fare_Cmpr6] = LTRIM(RTRIM([Fare_Cmpr6])),
[CST_CNTR_ION] = LTRIM(RTRIM([CST_CNTR_ION]));

/*********************Removing Commas Start *************************************/
	
UPDATE  [STG].[AIRFARE_DETAIL_US_STG]
SET	
[Mileage] = replace([Mileage],',',''),
[Cost_Per_Mile] = replace([Cost_Per_Mile],',',''),
[Tax_amnt] = replace([Tax_amnt],',',''),
[Ticket_Amt_Mns_Txs] = replace([Ticket_Amt_Mns_Txs],',',''),
[Total_Ticket_amnt] = replace([Total_Ticket_amnt],',',''),
[Low_Fare] = replace([Low_Fare],',',''),
[Full_Fare] = replace([Full_Fare],',',''),
[Amnt_Lost] = replace([Amnt_Lost],',',''),
[Full_Fare_Svngs] = replace([Full_Fare_Svngs],',',''),
[Contract_Svngs] = replace([Contract_Svngs],',',''),
[Fare_Bfr_Dscnt] =replace( [Fare_Bfr_Dscnt],',',''),
[Fare_Cmpr2] = replace([Fare_Cmpr2],',',''),
[Fare_Cmpr3] = replace([Fare_Cmpr3],',',''),
[Fare_Cmpr4] = replace([Fare_Cmpr4],',',''),
[Fare_Cmpr5] = replace([Fare_Cmpr5],',',''),
[Fare_Cmpr6] = replace([Fare_Cmpr6],',','')

;

/*********************Removing Commas End *************************************/

	/*********************Removing brackets symbol Start *************************************/
	
UPDATE  [STG].[AIRFARE_DETAIL_US_STG]
SET	
[Cost_Per_Mile] = replace(replace([Cost_Per_Mile],'(','-'),')',''),
[Tax_amnt] = replace(replace([Tax_amnt],'(','-'),')',''),
[Ticket_Amt_Mns_Txs] = replace(replace([Ticket_Amt_Mns_Txs],'(','-'),')',''),
[Total_Ticket_amnt] = replace(replace([Total_Ticket_amnt],'(','-'),')',''),
[Low_Fare] = replace(replace([Low_Fare],'(','-'),')',''),
[Full_Fare] = replace(replace([Full_Fare],'(','-'),')',''),
[Amnt_Lost] = replace(replace([Amnt_Lost],'(','-'),')',''),
[Full_Fare_Svngs] = replace(replace([Full_Fare_Svngs],'(','-'),')',''),
[Contract_Svngs] = replace(replace([Contract_Svngs],'(','-'),')',''),
[Fare_Bfr_Dscnt] =replace(replace([Fare_Bfr_Dscnt],'(','-'),')',''),
[Fare_Cmpr2] = replace(replace([Fare_Cmpr2],'(','-'),')',''),
[Fare_Cmpr3] = replace(replace([Fare_Cmpr3],'(','-'),')',''),
[Fare_Cmpr4] = replace(replace([Fare_Cmpr4],'(','-'),')',''),
[Fare_Cmpr5] = replace(replace([Fare_Cmpr5],'(','-'),')',''),
[Fare_Cmpr6] = replace(replace([Fare_Cmpr6],'(','-'),')','')
;

/*********************Removing brackets symbol End *************************************/

/********************* Checking Duplicates *************************************/
   
   
;WITH    CheckDuplicates
AS      (SELECT ROW_NUMBER() OVER (PARTITION BY [Invoice_Num],[Ticket_Num] ORDER BY [Ticket_Num]) AS DuplicateRecCount,
        *
    FROM   [STG].[AIRFARE_DETAIL_US_STG] AS t)
-- select* from CheckDuplicates

UPDATE  CheckDuplicates
SET Error_Flag      = 'Y'
-- [Error_Message] = ISNULL([Error_Message], '') + 'ERR:Duplicate record has been Found ||'
WHERE   DuplicateRecCount > 1;


/*********************CHECKING FOR NULLABLE VALUES*********************************/


UPDATE [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
SET Error_Flag      = 'Y'
WHERE  [Ticket_Num]  IS NULL
OR [Ticket_Num] = '';

UPDATE [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
SET Error_Flag      = 'Y'
WHERE  [Invoice_Num]  IS NULL
OR [Invoice_Num] = '';


/*********************START CHECKING DATA TYPE**************************************/

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
WHERE   isnumeric([Cost_Per_Mile]) <> 1 AND [Cost_Per_Mile] is not null
--OR	[Cost_Per_Mile]LIKE '%[^0-9]%';

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
WHERE   isnumeric([Tax_amnt]) <> 1 AND [Tax_amnt] is not null
--OR	[Tax_amnt]LIKE '%[^0-9]%' ; 


UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
WHERE   isnumeric([Ticket_Amt_Mns_Txs]) <> 1 AND [Ticket_Amt_Mns_Txs] is not null
--OR	[Ticket_Amt_Mns_Txs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
WHERE   isnumeric([Low_Fare]) <> 1 AND [Low_Fare] is not null
--OR	[Low_Fare]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
WHERE   isnumeric([Full_Fare]) <> 1 AND [Full_Fare] is not null
--OR	[Full_Fare]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
WHERE   isnumeric([Amnt_Lost]) <> 1 AND [Amnt_Lost] is not null
--OR	[Amnt_Lost]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
WHERE   isnumeric([Full_Fare_Svngs]) <> 1 AND [Full_Fare_Svngs] is not null
--OR	[Full_Fare_Svngs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
WHERE   isnumeric([Contract_Svngs]) <> 1 AND [Contract_Svngs] is not null
--OR	[Contract_Svngs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
WHERE   isnumeric([Fare_Bfr_Dscnt]) <> 1 AND [Fare_Bfr_Dscnt] is not null
--OR	[Fare_Bfr_Dscnt]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
WHERE   isnumeric([Fare_Cmpr2]) <> 1 AND [Fare_Cmpr2] is not null
--OR	[Fare_Cmpr2]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
WHERE   isnumeric([Fare_Cmpr3]) <> 1 AND [Fare_Cmpr3] is not null
--OR	[Fare_Cmpr3]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
WHERE   isnumeric([Fare_Cmpr4]) <> 1 AND [Fare_Cmpr4] is not null
--OR	[Fare_Cmpr4]LIKE '%[^0-9]%' ;   

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
WHERE   isnumeric([Fare_Cmpr5]) <> 1 AND [Fare_Cmpr5] is not null
--OR	[Fare_Cmpr5]LIKE '%[^0-9]%' ; 

UPDATE  [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
WHERE   isnumeric([Fare_Cmpr6]) <> 1 AND [Fare_Cmpr6] is not null
--OR	[Fare_Cmpr6]LIKE '%[^0-9]%' ; 
                  
									
/*********************Checking Total/Waring/Error Row Counts********************/
	
	
SELECT @Totalcount =   COUNT(1)
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]G;
	

SELECT @Warcount = COUNT(1)
FROM   [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
WHERE  Warning_Flag = 'Y';

SELECT @ErrCount =  COUNT(1)
FROM  [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]
WHERE  Error_Flag = 'Y';

	
IF (@ErrCount=0) 
begin 
/*********************Updating Rows in Final Tabele ***********************************/
 
delete a from [KG_ZBB].DBO.[AIRFARE_DETAIL_NA] a
inner join (select [Ticket_Num],[Invoice_Num] from [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]) b
on  a.[Ticket_Num] =b.[Ticket_Num] and a.[Invoice_Num]= b.[Invoice_Num]



/*********************Insert rows to Final Tabele ***********************************/


INSERT INTO [KG_ZBB].DBO.[AIRFARE_DETAIL_NA]
(
Agency,
Agency_Num,
Amnt_Lost,
Booking_Agnt_ID,
Booking_Clss_Smmry,
Booking_Dt,
Booking_Src,
Cabin,
Carrier_cd,
Carrier_Name,
Client_Cd,
Client_Name,
Contract_Svngs,
Cost_Per_Mile,
Creditcrd_exprtn,
CreditCrd_Num,
CreditCrd_Typ,
CST_CNTR_ION,
Days_Adv_Booking,
Days_Adv_Booking_grp,
Days_Adv_Prchs,
Days_Adv_PrchsGrp,
Dstntn_Airport,
Dstntn_Airport_cd,
Dstntn_Cntry,
Dstntn_Cty,
Exchange_Indctr,
Fare_Accptd_Cd,
Fare_Accptd_Cd_desc,
Fare_Basis_Smmry,
Fare_Bfr_Dscnt,
Fare_Cmpr2,
Fare_Cmpr3,
Fare_Cmpr4,
Fare_Cmpr5,
Fare_Cmpr6,
Full_Fare,
Full_Fare_Svngs,
GCN,
Glbl_Air_Rsn_Cd,
glbl_Air_rsn_cd_desc,
Int_Dom,
Invoice_Dt,
Invoice_Num,
Lctr,
Local_Air_Rsn_Cd,
Local_Air_Rsn_Cd_Desc,
Low_Fare,
Mileage,
Orgn_Airport_Cd,
Origin_Airport,
Origin_Cntry,
Origin_Cty,
Original_docnum,
Record_Key,
Refund_Indctr,
Round_Trp_Indctr,
Routing,
Short_Long_Hl_Indctr,
Tax_amnt,
Ticket_Amt_Mns_Txs,
Ticket_Num,
Ticketing_Cntry,
Total_Ticket_amnt,
Tour_Cd,
Travel_Strt_dt,
Traveler_Cntry,
Trip_Lgth,
True_Tckt_Cnt,
Trvl_Sctr,
Trvlr)

SELECT Agency,
Agency_Num,
Amnt_Lost,
Booking_Agnt_ID,
Booking_Clss_Smmry,
cast(Booking_Dt as  date),
Booking_Src,
Cabin,
Carrier_cd,
Carrier_Name,
Client_Cd,
Client_Name,
cast(Contract_Svngs as decimal(18,2)),
cast(Cost_Per_Mile as decimal(18,2)),
Creditcrd_exprtn,
CreditCrd_Num,
CreditCrd_Typ,
CST_CNTR_ION,
Days_Adv_Booking,
Days_Adv_Booking_grp,
Days_Adv_Prchs,
Days_Adv_PrchsGrp,
Dstntn_Airport,
Dstntn_Airport_cd,
Dstntn_Cntry,
Dstntn_Cty,
Exchange_Indctr,
Fare_Accptd_Cd,
Fare_Accptd_Cd_desc,
Fare_Basis_Smmry,
Fare_Bfr_Dscnt,
cast(Fare_Cmpr2 as decimal(18,2)),
cast(Fare_Cmpr3 as decimal(18,2)),
cast(Fare_Cmpr4 as decimal(18,2)),
cast(Fare_Cmpr5 as decimal(18,2)),
cast(Fare_Cmpr6 as decimal(18,2)),
cast(Full_Fare as decimal(18,2)),
cast(Full_Fare_Svngs as decimal(18,2)),
GCN,
Glbl_Air_Rsn_Cd,
glbl_Air_rsn_cd_desc,
Int_Dom,
cast(Invoice_Dt as date),
cast(Invoice_Num as int),
Lctr,
Local_Air_Rsn_Cd,
Local_Air_Rsn_Cd_Desc,
cast(Low_Fare as decimal(18,2)),
Mileage,
Orgn_Airport_Cd,
Origin_Airport,
Origin_Cntry,
Origin_Cty,
Original_docnum,
Record_Key,
Refund_Indctr,
Round_Trp_Indctr,
Routing,
Short_Long_Hl_Indctr,
cast(Tax_amnt as decimal(18,2)),
cast(Ticket_Amt_Mns_Txs  as decimal(18,2)),
Ticket_Num,
Ticketing_Cntry,
cast(Total_Ticket_amnt  as decimal(18,2)),
Tour_Cd,
cast(Travel_Strt_dt as date),
Traveler_Cntry,
Trip_Lgth,
True_Tckt_Cnt,
Trvl_Sctr,
Trvlr
FROM [KG_ZBB].[STG].[AIRFARE_DETAIL_US_STG]


SELECT @InsCount = @@ROWCOUNT
PRINT 'Rows Inserted Into AIRFARE_DETAIL Table:0';
PRINT @InsCount;

end 



END --US 
END TRY
BEGIN CATCH
END CATCH
END








GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_CARRNT_DETAIL]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_DQ_LOAD_CARRNT_DETAIL]
@Country_flag varchar(5),
@Totalcount INT OUTPUT, 
@Warcount INT OUTPUT, 
@ErrCount INT OUTPUT, 
@InsCount INT OUTPUt
---@UpdCount INT OUTPUT--, 
--@BatchDetailID INT OUTPUT

AS

/******************************************************************************
NAME        :  USP_DQ_LOAD_CARRNT_DETAIL
PURPOSE & 
Description :  This script will load data into CAR_RENT_DETAIL_NA table from stg table.
			   
			Also this script will do data validations like data type check,removing spaces and special charecters .	
REVISIONS:
Ver          Date             Author                    Change Reason
------    ----------      ---------------         ------------------------------
1.0         04/16/2016       USCLXK36                1. Initial Version



-----------------------------Execution script--------------------------------------
DECLARE @RC int
DECLARE @Country_flag varchar(5)='CA'
DECLARE @Totalcount int
DECLARE @Warcount int
DECLARE @ErrCount int
DECLARE @InsCount int

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[USP_DQ_LOAD_CARRNT_DETAIL] 
   @Country_flag
  ,@Totalcount OUTPUT
  ,@Warcount OUTPUT
  ,@ErrCount OUTPUT
  ,@InsCount OUTPUT
GO


******************************************************************************/

BEGIN
BEGIN TRY
 if @Country_flag ='CA'
 BEGIN
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/


UPDATE  [STG].[CAR_RENT_DETAIL_CA_STG]
    SET	[Client_Name] = LTRIM(RTRIM([Client_Name])),
	[Record_Key] = LTRIM(RTRIM([Record_Key])),
	[GCN] = LTRIM(RTRIM([GCN])),
	[Client_Cd] = LTRIM(RTRIM([Client_Cd])),
	[Lctr] = LTRIM(RTRIM([Lctr])),
	[Trvlr] = LTRIM(RTRIM([Trvlr])),
	[Invoice_Dt] = LTRIM(RTRIM([Invoice_Dt])),
	[Invoice_Num] = LTRIM(RTRIM([Invoice_Num])),
	[Agency] = LTRIM(RTRIM([Agency])),
	[Agency_Num] = LTRIM(RTRIM([Agency_Num])),
	[Booking_Src] = LTRIM(RTRIM([Booking_Src])),
	[Booking_Agnt_ID] = LTRIM(RTRIM([Booking_Agnt_ID])),
	[Local_Rsn_Cd] = LTRIM(RTRIM([Local_Rsn_Cd])),
	[Local_Rsn_Cd_Desc] = LTRIM(RTRIM([Local_Rsn_Cd_Desc])),
	[Glbl_Rsn_Cd] = LTRIM(RTRIM([Glbl_Rsn_Cd])),
	[glbl_rsn_cd_desc] = LTRIM(RTRIM([glbl_rsn_cd_desc])),
	[Refund_Indctr] = LTRIM(RTRIM([Refund_Indctr])),
	[Exchange_Indctr] = LTRIM(RTRIM([Exchange_Indctr])),
	[Original_docnum] = LTRIM(RTRIM([Original_docnum])),
	[Int_Dom] = LTRIM(RTRIM([Int_Dom])),
	[Trvl_Sctr] = LTRIM(RTRIM([Trvl_Sctr])),
	[Traveler_Cntry] = LTRIM(RTRIM([Traveler_Cntry])),
	[Ticketing_Cntry] = LTRIM(RTRIM([Ticketing_Cntry])),
	[No_Of_Cars] = LTRIM(RTRIM([No_Of_Cars])),
	[No_Of_days] = LTRIM(RTRIM([No_Of_days])),
	[Pickup_Dt] = LTRIM(RTRIM([Pickup_Dt])),
	[Drop_Off_Dt] = LTRIM(RTRIM([Drop_Off_Dt])),
	[Confrmtn_Num] = LTRIM(RTRIM([Confrmtn_Num])),
	[Chain_Cd] = LTRIM(RTRIM([Chain_Cd])),
	[Chain_Name] = LTRIM(RTRIM([Chain_Name])),
	[Cty_Name] = LTRIM(RTRIM([Cty_Name])),
	[State_Province] = LTRIM(RTRIM([State_Province])),
	[Cntry_Name] = LTRIM(RTRIM([Cntry_Name])),
	[Car_Typ_Cd] = LTRIM(RTRIM([Car_Typ_Cd])),
	[Car_Typ_Desc] = LTRIM(RTRIM([Car_Typ_Desc])),
	[Daily_Rate] = LTRIM(RTRIM([Daily_Rate])),
	[Total_Amnt] = LTRIM(RTRIM([Total_Amnt])),
	[CST_CNTR_ION] = LTRIM(RTRIM([CST_CNTR_ION]));


	/*********************Removing Commas Start *************************************/
	
UPDATE  [STG].[CAR_RENT_DETAIL_CA_STG]
    SET	
	[Daily_Rate] = replace([Daily_Rate],',',''),
	[Total_Amnt] = replace(LTRIM(RTRIM([Total_Amnt])),',','')
	;

	/*********************Removing Commas End *************************************/

		/*********************Removing brackets symbol Start *************************************/
	
UPDATE  [STG].[CAR_RENT_DETAIL_CA_STG]
    SET	
	[Daily_Rate] = replace(replace(Daily_Rate,'(','-'),')',''),
	[Total_Amnt] = replace(replace(Total_Amnt,'(','-'),')','')
	;

	/*********************Removing brackets symbol End *************************************/


/********************* Checking Duplicates *************************************/
   
;WITH    CheckDuplicates
AS      (SELECT ROW_NUMBER() OVER (PARTITION BY [Confrmtn_Num] ORDER BY [Confrmtn_Num]) AS DuplicateRecCount,
                *
         FROM   [STG].[CAR_RENT_DETAIL_CA_STG] AS t)

		-- select* from CheckDuplicates

UPDATE  CheckDuplicates
    SET Error_Flag      = 'Y'
       -- [Error_Message] = ISNULL([Error_Message], '') + 'ERR:Duplicate record has been Found ||'
WHERE   DuplicateRecCount > 1;


/*********************CHECKING FOR NULLABLE VALUES*********************************/


UPDATE [KG_ZBB].[STG].[CAR_RENT_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
WHERE  [Confrmtn_Num] IS NULL
OR [Confrmtn_Num] = '';

	/*UPDATE [KG_ZBB].[STG].[CAR_RENT_DETAIL_CA_STG]
	SET Error_Flag      = 'Y'
	WHERE  [Invoice_Num]  IS NULL
	OR [Invoice_Num] = '';*/


/*********************START CHECKING DATA TYPE**************************************/

UPDATE  [KG_ZBB].[STG].[CAR_RENT_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[CAR_RENT_DETAIL_CA_STG]
WHERE   isnumeric([Daily_Rate]) <> 1 AND [Daily_Rate] is not null
--OR	[Cost_Per_Mile]LIKE '%[^0-9]%';

UPDATE  [KG_ZBB].[STG].[CAR_RENT_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[CAR_RENT_DETAIL_CA_STG]
WHERE   isnumeric([Total_Amnt]) <> 1 AND [Total_Amnt] is not null
--OR	[Tax_amnt]LIKE '%[^0-9]%' ; 




                  
									
	/*********************Checking Total/Waring/Error Row Counts********************/
	
	
SELECT @Totalcount =   COUNT(1)
FROM   [KG_ZBB].[STG].[CAR_RENT_DETAIL_CA_STG];
	

SELECT @Warcount = COUNT(1)
FROM   [KG_ZBB].[STG].[CAR_RENT_DETAIL_CA_STG]
WHERE  Warning_Flag = 'Y';

SELECT @ErrCount =  COUNT(1)
FROM  [KG_ZBB].[STG].[CAR_RENT_DETAIL_CA_STG]
WHERE  Error_Flag = 'Y';

	
	IF (@ErrCount=0) 
	begin 
/*********************Updating Rows in Final Tabele ***********************************/
 
delete a from [KG_ZBB].[STG].[CAR_RENT_DETAIL_CA_STG] a
inner join (select  [Confrmtn_Num] from [KG_ZBB].[dbo].[CAR_RENT_DETAIL_NA]) b
on  a. [Confrmtn_Num] =b. [Confrmtn_Num] 



	/*********************Insert rows to Final Tabele ***********************************/


INSERT INTO [KG_ZBB].[dbo].[CAR_RENT_DETAIL_NA]
(
[Client_Name],
[Record_Key] ,
[GCN] ,
[Client_Cd] ,
[Lctr] ,
[Trvlr] ,
[Invoice_Dt] ,
[Invoice_Num],
[Agency] ,
[Agency_Num],
[Booking_Src] ,
[Booking_Agnt_ID] ,
[Refund_Indctr],
[Exchange_Indctr],
[Original_docnum],
[Int_Dom],
[Trvl_Sctr],
[Traveler_Cntry] ,
[Ticketing_Cntry] ,
[No_Of_Cars] ,
[No_Of_days] ,
[Pickup_Dt] ,
[Drop_Off_Dt],
[Confrmtn_Num] ,
[Chain_Cd] ,
[Chain_Name] ,
[Cty_Name] ,
[State_Province],
[Cntry_Name] ,
[Car_Typ_Cd],
[Car_Typ_Desc] ,
[Daily_Rate] ,
[Total_Amnt] ,
[CST_CNTR_ION]
 )
SELECT 
[Client_Name],
[Record_Key] ,
[GCN] ,
[Client_Cd] ,
[Lctr] ,
[Trvlr] ,
cast([Invoice_Dt] as date),
[Invoice_Num],
[Agency],
[Agency_Num],
[Booking_Src] ,
[Booking_Agnt_ID],
[Refund_Indctr] ,
[Exchange_Indctr],
[Original_docnum],
[Int_Dom],
[Trvl_Sctr],
[Traveler_Cntry] ,
[Ticketing_Cntry] ,
[No_Of_Cars] ,
[No_Of_days] ,
cast([Pickup_Dt] as date),
cast([Drop_Off_Dt] as date),
[Confrmtn_Num] ,
[Chain_Cd] ,
[Chain_Name] ,
[Cty_Name] ,
[State_Province],
[Cntry_Name] ,
[Car_Typ_Cd],
[Car_Typ_Desc] ,
cast([Daily_Rate] as decimal(18,2)) ,
cast([Total_Amnt] as decimal(18,2)) ,
[CST_CNTR_ION]
FROM [KG_ZBB].[STG].[CAR_RENT_DETAIL_CA_STG]



    SELECT @InsCount = @@ROWCOUNT
    PRINT 'Rows Inserted Into CAR_RENT_DETAIL_NA Table:';
    PRINT @InsCount;

end 


END
 if @Country_flag ='US'
 BEGIN
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/


UPDATE  [STG].[CAR_RENT_DETAIL_US_STG]
    SET	[Client_Name] = LTRIM(RTRIM([Client_Name])),
	[Record_Key] = LTRIM(RTRIM([Record_Key])),
	[GCN] = LTRIM(RTRIM([GCN])),
	[Client_Cd] = LTRIM(RTRIM([Client_Cd])),
	[Lctr] = LTRIM(RTRIM([Lctr])),
	[Trvlr] = LTRIM(RTRIM([Trvlr])),
	[Invoice_Dt] = LTRIM(RTRIM([Invoice_Dt])),
	[Invoice_Num] = LTRIM(RTRIM([Invoice_Num])),
	[Agency] = LTRIM(RTRIM([Agency])),
	[Agency_Num] = LTRIM(RTRIM([Agency_Num])),
	[Booking_Src] = LTRIM(RTRIM([Booking_Src])),
	[Booking_Agnt_ID] = LTRIM(RTRIM([Booking_Agnt_ID])),
	[Local_Rsn_Cd] = LTRIM(RTRIM([Local_Rsn_Cd])),
	[Local_Rsn_Cd_Desc] = LTRIM(RTRIM([Local_Rsn_Cd_Desc])),
	[Glbl_Rsn_Cd] = LTRIM(RTRIM([Glbl_Rsn_Cd])),
	[glbl_rsn_cd_desc] = LTRIM(RTRIM([glbl_rsn_cd_desc])),
	[Refund_Indctr] = LTRIM(RTRIM([Refund_Indctr])),
	[Exchange_Indctr] = LTRIM(RTRIM([Exchange_Indctr])),
	[Original_docnum] = LTRIM(RTRIM([Original_docnum])),
	[Int_Dom] = LTRIM(RTRIM([Int_Dom])),
	[Trvl_Sctr] = LTRIM(RTRIM([Trvl_Sctr])),
	[Traveler_Cntry] = LTRIM(RTRIM([Traveler_Cntry])),
	[Ticketing_Cntry] = LTRIM(RTRIM([Ticketing_Cntry])),
	[No_Of_Cars] = LTRIM(RTRIM([No_Of_Cars])),
	[No_Of_days] = LTRIM(RTRIM([No_Of_days])),
	[Pickup_Dt] = LTRIM(RTRIM([Pickup_Dt])),
	[Drop_Off_Dt] = LTRIM(RTRIM([Drop_Off_Dt])),
	[Confrmtn_Num] = LTRIM(RTRIM([Confrmtn_Num])),
	[Chain_Cd] = LTRIM(RTRIM([Chain_Cd])),
	[Chain_Name] = LTRIM(RTRIM([Chain_Name])),
	[Cty_Name] = LTRIM(RTRIM([Cty_Name])),
	[State_Province] = LTRIM(RTRIM([State_Province])),
	[Cntry_Name] = LTRIM(RTRIM([Cntry_Name])),
	[Car_Typ_Cd] = LTRIM(RTRIM([Car_Typ_Cd])),
	[Car_Typ_Desc] = LTRIM(RTRIM([Car_Typ_Desc])),
	[Daily_Rate] = LTRIM(RTRIM([Daily_Rate])),
	[Total_Amnt] = LTRIM(RTRIM([Total_Amnt])),
	[CST_CNTR_ION] = LTRIM(RTRIM([CST_CNTR_ION]));


	/*********************Removing Commas Start *************************************/
	
UPDATE  [STG].[CAR_RENT_DETAIL_US_STG]
    SET	
	[Daily_Rate] = replace([Daily_Rate],',',''),
	[Total_Amnt] = replace(LTRIM(RTRIM([Total_Amnt])),',','')
	;

	/*********************Removing Commas End *************************************/

		/*********************Removing brackets symbol Start *************************************/
	
UPDATE  [STG].[CAR_RENT_DETAIL_US_STG]
    SET	
	[Daily_Rate] = replace(replace(Daily_Rate,'(','-'),')',''),
	[Total_Amnt] = replace(replace(Total_Amnt,'(','-'),')','')
	;

	/*********************Removing brackets symbol End *************************************/


/********************* Checking Duplicates *************************************/
   
;WITH    CheckDuplicates
AS      (SELECT ROW_NUMBER() OVER (PARTITION BY  [Confrmtn_Num] ORDER BY  [Confrmtn_Num]) AS DuplicateRecCount,
                *
         FROM   [STG].[CAR_RENT_DETAIL_US_STG] AS t)

		-- select* from CheckDuplicates

UPDATE  CheckDuplicates
    SET Error_Flag      = 'Y'
       -- [Error_Message] = ISNULL([Error_Message], '') + 'ERR:Duplicate record has been Found ||'
WHERE   DuplicateRecCount > 1;


/*********************CHECKING FOR NULLABLE VALUES*********************************/


UPDATE [KG_ZBB].[STG].[CAR_RENT_DETAIL_US_STG]
SET Error_Flag      = 'Y'
WHERE   [Confrmtn_Num]  IS NULL
OR  [Confrmtn_Num] = '';

/*UPDATE [KG_ZBB].[STG].[CAR_RENT_DETAIL_US_STG]
SET Error_Flag      = 'Y'
WHERE  [Invoice_Num]  IS NULL
OR [Invoice_Num] = '';*/


/*********************START CHECKING DATA TYPE**************************************/

UPDATE  [KG_ZBB].[STG].[CAR_RENT_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[CAR_RENT_DETAIL_US_STG]
WHERE   isnumeric([Daily_Rate]) <> 1 AND [Daily_Rate] is not null
--OR	[Cost_Per_Mile]LIKE '%[^0-9]%';

UPDATE  [KG_ZBB].[STG].[CAR_RENT_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[CAR_RENT_DETAIL_US_STG]
WHERE   isnumeric([Total_Amnt]) <> 1 AND [Total_Amnt] is not null
--OR	[Tax_amnt]LIKE '%[^0-9]%' ; 




                  
									
	/*********************Checking Total/Waring/Error Row Counts********************/
	
	
SELECT @Totalcount =   COUNT(1)
FROM   [KG_ZBB].[STG].[CAR_RENT_DETAIL_US_STG];
	

SELECT @Warcount = COUNT(1)
FROM   [KG_ZBB].[STG].[CAR_RENT_DETAIL_US_STG]
WHERE  Warning_Flag = 'Y';

SELECT @ErrCount =  COUNT(1)
FROM  [KG_ZBB].[STG].[CAR_RENT_DETAIL_US_STG]
WHERE  Error_Flag = 'Y';

	
	IF (@ErrCount=0) 
	begin 
/*********************Updating Rows in Final Tabele ***********************************/
 
delete a from [KG_ZBB].[STG].[CAR_RENT_DETAIL_US_STG] a
inner join (select  [Confrmtn_Num] from [KG_ZBB].[dbo].[CAR_RENT_DETAIL_NA]) b
on  a.[Confrmtn_Num] =b. [Confrmtn_Num] 



	/*********************Insert rows to Final Tabele ***********************************/


INSERT INTO [KG_ZBB].[dbo].[CAR_RENT_DETAIL_NA]
(
[Client_Name],
[Record_Key] ,
[GCN] ,
[Client_Cd] ,
[Lctr] ,
[Trvlr] ,
[Invoice_Dt] ,
[Invoice_Num],
[Agency] ,
[Agency_Num],
[Booking_Src] ,
[Booking_Agnt_ID] ,
[Refund_Indctr],
[Exchange_Indctr],
[Original_docnum],
[Int_Dom],
[Trvl_Sctr],
[Traveler_Cntry] ,
[Ticketing_Cntry] ,
[No_Of_Cars] ,
[No_Of_days] ,
[Pickup_Dt] ,
[Drop_Off_Dt],
[Confrmtn_Num] ,
[Chain_Cd] ,
[Chain_Name] ,
[Cty_Name] ,
[State_Province],
[Cntry_Name] ,
[Car_Typ_Cd],
[Car_Typ_Desc] ,
[Daily_Rate] ,
[Total_Amnt] ,
[CST_CNTR_ION]
 )

SELECT 
[Client_Name],
[Record_Key] ,
[GCN] ,
[Client_Cd] ,
[Lctr] ,
[Trvlr] ,
cast([Invoice_Dt] as date),
[Invoice_Num],
[Agency],
[Agency_Num],
[Booking_Src] ,
[Booking_Agnt_ID],
[Refund_Indctr] ,
[Exchange_Indctr],
[Original_docnum],
[Int_Dom],
[Trvl_Sctr],
[Traveler_Cntry] ,
[Ticketing_Cntry] ,
[No_Of_Cars] ,
[No_Of_days] ,
cast([Pickup_Dt] as date),
cast([Drop_Off_Dt] as date),
[Confrmtn_Num] ,
[Chain_Cd] ,
[Chain_Name] ,
[Cty_Name] ,
[State_Province],
[Cntry_Name] ,
[Car_Typ_Cd],
[Car_Typ_Desc] ,
cast([Daily_Rate] as decimal(18,2)) ,
cast([Total_Amnt] as decimal(18,2)) ,
[CST_CNTR_ION]
FROM [KG_ZBB].[STG].[CAR_RENT_DETAIL_US_STG]


    SELECT @InsCount = @@ROWCOUNT
    PRINT 'Rows Inserted Into CAR_RENT_DETAIL_NA Table:';
    PRINT @InsCount;

end 


END

	END TRY
	BEGIN CATCH
	END CATCH
END





GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_HOTEL_FARE_DETAIL]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_DQ_LOAD_HOTEL_FARE_DETAIL]
@Cntry_flag VARCHAR(5),
@Totalcount INT OUTPUT, 
@Warcount INT OUTPUT, 
@ErrCount INT OUTPUT, 
@InsCount INT OUTPUt


AS
/******************************************************************************
NAME        :  USP_DQ_LOAD_HOTEL_FARE_DETAIL
PURPOSE & 
Description :  This script will load data into HOTEL FARE table from stg table.
			   
			Also this script will do data validations like data type check,removing spaces and special charecters .	
REVISIONS:
Ver          Date             Author                    Change Reason
------    ----------      ---------------         ------------------------------
1.0         04/16/2016       USCLXK36                1. Initial Version



-----------------------------Execution script--------------------------------------
DECLARE @RC int
DECLARE @Cntry_flag varchar(5)='CA'
DECLARE @Totalcount int
DECLARE @Warcount int
DECLARE @ErrCount int
DECLARE @InsCount int

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[USP_DQ_LOAD_HOTEL_FARE_DETAIL] 
   @Cntry_flag
  ,@Totalcount OUTPUT
  ,@Warcount OUTPUT
  ,@ErrCount OUTPUT
  ,@InsCount OUTPUT
GO


******************************************************************************/
BEGIN
BEGIN TRY
  if (@Cntry_flag = 'CA')
 BEGIN -- CA 
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/


UPDATE  [STG].HOTEL_FARE_DETAIL_CA_STG
SET	[Client_Name] = ltrim(rtrim([Client_Name])),
[Record_Key] =ltrim(rtrim([Record_Key])),
GCN=ltrim(rtrim([GCN])),
Client_Cd=ltrim(rtrim([Client_Cd])),
Lctr=ltrim(rtrim([Lctr])),
Trvlr=ltrim(rtrim([Trvlr])),
Invoice_Dt=ltrim(rtrim([Invoice_Dt])),
Invoice_Num=ltrim(rtrim([Invoice_Num])),
Agency=ltrim(rtrim([Agency])),
Agency_Num=ltrim(rtrim([Agency_Num])),
Booking_Src=ltrim(rtrim([Booking_Src])),
Booking_Agnt_ID=ltrim(rtrim([Booking_Agnt_ID])),
Local_HtlRsn_Cd=ltrim(rtrim([Local_HtlRsn_Cd])),
Local_HtlRsn_Cd_Desc=ltrim(rtrim([Local_HtlRsn_Cd_Desc])),
Glbl_HtlRsn_Cd=ltrim(rtrim([Glbl_HtlRsn_Cd])),
glbl_Htlrsn_cd_desc=ltrim(rtrim([glbl_Htlrsn_cd_desc])),
Refund_Indctr=ltrim(rtrim([Refund_Indctr])),
Exchange_Indctr=ltrim(rtrim([Exchange_Indctr])),
Original_docnum=ltrim(rtrim([Original_docnum])),
Int_Dom=ltrim(rtrim([Int_Dom])),
Trvl_Sctr=ltrim(rtrim([Trvl_Sctr])),
Traveler_Cntry=ltrim(rtrim([Traveler_Cntry])),
Ticketing_Cntry=ltrim(rtrim([Ticketing_Cntry])),
Check_In_Dt=ltrim(rtrim([Check_In_Dt])),
Check_Out_Dt=ltrim(rtrim([Check_Out_Dt])),
Cnfrmtn_Num=ltrim(rtrim([Cnfrmtn_Num])),
Htl_Mstr_ChainName=ltrim(rtrim([Htl_Mstr_ChainName])),
Htl_Chain_Cd=ltrim(rtrim([Htl_Chain_Cd])),
Htl_Chain_Name=ltrim(rtrim([Htl_Chain_Name])),
Prprty_Name=ltrim(rtrim([Prprty_Name])),
Address1=ltrim(rtrim([Address1])),
Address2=ltrim(rtrim([Address2])),
Htl_Cty=ltrim(rtrim([Htl_Cty])),
Cty_Cd=ltrim(rtrim([Cty_Cd])),
Major_Cty=ltrim(rtrim([Major_Cty])),
State=ltrim(rtrim([State])),
Postal_cd=ltrim(rtrim([Postal_cd])),
Cntry_cd=ltrim(rtrim([Cntry_cd])),
Country=ltrim(rtrim([Country])),
Cntry_ph=ltrim(rtrim([Cntry_ph])),
No_Of_Rooms=ltrim(rtrim([No_Of_Rooms])),
No_Of_Nights=ltrim(rtrim([No_Of_Nights])),
Room_Typ_cd=ltrim(rtrim([Room_Typ_cd])),
Room_Typ=ltrim(rtrim([Room_Typ])),
Rate_Ctgry=ltrim(rtrim([Rate_Ctgry])),
Room_Rate=ltrim(rtrim([Room_Rate])),
Tot_Amnt=ltrim(rtrim([Tot_Amnt])),
Compare_Rate1=ltrim(rtrim([Compare_Rate1])),
Diff_to_Rate1=ltrim(rtrim([Diff_to_Rate1])),
Tot_Diff_to_Rate1=ltrim(rtrim([Tot_Diff_to_Rate1])),
Compare_Rate2=ltrim(rtrim([Compare_Rate2])),
Diff_to_Rate2=ltrim(rtrim([Diff_to_Rate2])),
Tot_Diff_to_Rate2=ltrim(rtrim([Tot_Diff_to_Rate2])),
Htl_Pref_Ind=ltrim(rtrim([Htl_Pref_Ind])),
CST_CNTR_ION=ltrim(rtrim([CST_CNTR_ION]));


/*********************Removing Commas Start *************************************/

UPDATE  [STG].HOTEL_FARE_DETAIL_CA_STG
SET	Room_Rate = replace(Room_Rate,',',''),
Tot_Amnt = replace(Tot_Amnt,',',''),
Compare_Rate1 = replace(Compare_Rate1,',',''),
Diff_to_Rate1 = replace(Diff_to_Rate1,',',''),
Tot_Diff_to_Rate1 = replace(Tot_Diff_to_Rate1,',',''),
Compare_Rate2 = replace(Compare_Rate2,',',''),
Diff_to_Rate2 = replace(Diff_to_Rate2,',',''),
Tot_Diff_to_Rate2 = replace(Tot_Diff_to_Rate2,',','');

/*********************Removing Commas End *************************************/

/*********************Removing brackets symbol Start *************************************/

UPDATE  [STG].HOTEL_FARE_DETAIL_CA_STG
SET	
Room_Rate = replace(replace(Room_Rate,'(','-'),')',''),
Tot_Amnt = replace(replace(Tot_Amnt,'(','-'),')',''),
Compare_Rate1 =replace(replace(Compare_Rate1,'(','-'),')',''),
Diff_to_Rate1 = replace(replace(Diff_to_Rate1,'(','-'),')',''),
Tot_Diff_to_Rate1 = replace(replace(Tot_Diff_to_Rate1,'(','-'),')',''),
Compare_Rate2 = replace(replace(Compare_Rate2,'(','-'),')',''),
Diff_to_Rate2 = replace(replace(Diff_to_Rate2,'(','-'),')',''),
Tot_Diff_to_Rate2 = replace(replace(Tot_Diff_to_Rate2,'(','-'),')','');

/*********************Removing brackets symbol End *************************************/


/********************* Checking Duplicates *************************************/
   
;WITH    CheckDuplicates
AS      (SELECT ROW_NUMBER() OVER (PARTITION BY [Cnfrmtn_Num],[Invoice_Num],[Check_In_Dt] ORDER BY [Cnfrmtn_Num],[Invoice_Num],[Check_In_Dt]
) AS DuplicateRecCount,
*
FROM   [STG].HOTEL_FARE_DETAIL_CA_STG AS t)

UPDATE  CheckDuplicates
SET Error_Flag      = 'Y'
WHERE   DuplicateRecCount > 1;


/*********************CHECKING FOR NULLABLE VALUES*********************************/


UPDATE [KG_ZBB].[STG].HOTEL_FARE_DETAIL_CA_STG
SET Error_Flag      = 'Y'
WHERE  [Cnfrmtn_Num]  IS NULL
OR [Cnfrmtn_Num] = '';

UPDATE [KG_ZBB].[STG].HOTEL_FARE_DETAIL_CA_STG
SET Error_Flag      = 'Y'
WHERE  [Invoice_Num]  IS NULL
OR [Invoice_Num] = '';

UPDATE [KG_ZBB].[STG].HOTEL_FARE_DETAIL_CA_STG
SET Error_Flag      = 'Y'
WHERE  [Check_In_Dt]  IS NULL
OR [Check_In_Dt] = '';


/*********************START CHECKING DATA TYPE**************************************/

UPDATE  [KG_ZBB].[STG].HOTEL_FARE_DETAIL_CA_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].HOTEL_FARE_DETAIL_CA_STG
WHERE   isnumeric([Room_Rate]) <> 1 AND [Room_Rate] is not null;

UPDATE  [KG_ZBB].[STG].HOTEL_FARE_DETAIL_CA_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].HOTEL_FARE_DETAIL_CA_STG
WHERE   isnumeric([Tot_Amnt]) <> 1 AND [Tot_Amnt] is not null; 

UPDATE  [KG_ZBB].[STG].HOTEL_FARE_DETAIL_CA_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].HOTEL_FARE_DETAIL_CA_STG
WHERE   isnumeric([Compare_Rate1]) <> 1 AND [Compare_Rate1] is not null; 

UPDATE  [KG_ZBB].[STG].HOTEL_FARE_DETAIL_CA_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].HOTEL_FARE_DETAIL_CA_STG
WHERE   isnumeric([Diff_to_Rate1]) <> 1 AND [Diff_to_Rate1] is not null;

UPDATE  [KG_ZBB].[STG].HOTEL_FARE_DETAIL_CA_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].HOTEL_FARE_DETAIL_CA_STG
WHERE   isnumeric([Tot_Diff_to_Rate1]) <> 1 AND [Tot_Diff_to_Rate1] is not null;


UPDATE  [KG_ZBB].[STG].HOTEL_FARE_DETAIL_CA_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].HOTEL_FARE_DETAIL_CA_STG
WHERE   isnumeric([Compare_Rate2]) <> 1 AND [Compare_Rate2] is not null;


UPDATE  [KG_ZBB].[STG].HOTEL_FARE_DETAIL_CA_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].HOTEL_FARE_DETAIL_CA_STG
WHERE   isnumeric([Diff_to_Rate2]) <> 1 AND [Diff_to_Rate2] is not null;



UPDATE  [KG_ZBB].[STG].HOTEL_FARE_DETAIL_CA_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].HOTEL_FARE_DETAIL_CA_STG
WHERE   isnumeric([Tot_Diff_to_Rate2]) <> 1 AND [Tot_Diff_to_Rate2] is not null;
									
	/*********************Checking Total/Waring/Error Row Counts********************/

SELECT @Totalcount =   COUNT(1)
FROM   [KG_ZBB].[STG].HOTEL_FARE_DETAIL_CA_STG;


SELECT @Warcount = COUNT(1)
FROM   [KG_ZBB].[STG].HOTEL_FARE_DETAIL_CA_STG
WHERE  Warning_Flag = 'Y';

SELECT @ErrCount =  COUNT(1)
FROM  [KG_ZBB].[STG].HOTEL_FARE_DETAIL_CA_STG
WHERE  Error_Flag = 'Y';

	
	IF (@ErrCount=0) 
	begin 
/*********************Updating Rows in Final Tabele ***********************************/
 
delete a from [KG_ZBB].[dbo].[HOTEL_FARE_DETAIL_NA] a 
inner join (select Cnfrmtn_Num,Invoice_Num,Check_In_Dt from  [KG_ZBB].[STG].[HOTEL_FARE_DETAIL_CA_STG]) b
on  a.[Cnfrmtn_Num] =b.[Cnfrmtn_Num]  and a.Invoice_Num=b.Invoice_Num and a.Check_In_Dt=b.Check_In_Dt;



/*********************Insert rows to Final Tabele ***********************************/


INSERT INTO [KG_ZBB].[dbo].[HOTEL_FARE_DETAIL_NA]
(
Client_Name,
Record_Key,
GCN,
Client_Cd,
Lctr,
Trvlr,
Invoice_Dt,
Invoice_Num,
Agency,
Agency_Num,
Booking_Src,
Booking_Agnt_ID,
Local_HtlRsn_Cd,
Local_HtlRsn_Cd_Desc,
Glbl_HtlRsn_Cd,
glbl_Htlrsn_cd_desc,
Refund_Indctr,
Exchange_Indctr,
Original_docnum,
Int_Dom,
Trvl_Sctr,
Traveler_Cntry,
Ticketing_Cntry,
Check_In_Dt,
Check_Out_Dt,
Cnfrmtn_Num,
Htl_Mstr_ChainName,
Htl_Chain_Cd,
Htl_Chain_Name,
Prprty_Name,
Address1,
Address2,
Htl_Cty,
Cty_Cd,
Major_Cty,
State,
Postal_cd,
Cntry_cd,
Country,
Cntry_ph,
No_Of_Rooms,
No_Of_Nights,
Room_Typ_cd,
Room_Typ,
Rate_Ctgry,
Room_Rate,
Tot_Amnt,
Compare_Rate1,
Diff_to_Rate1,
Tot_Diff_to_Rate1,
Compare_Rate2,
Diff_to_Rate2,
Tot_Diff_to_Rate2,
Htl_Pref_Ind,
CST_CNTR_ION
 )

SELECT 
Client_Name,
Record_Key,
GCN,
Client_Cd,
Lctr,
Trvlr,
Invoice_Dt,
Invoice_Num,
Agency,
Agency_Num,
Booking_Src,
Booking_Agnt_ID,
Local_HtlRsn_Cd,
Local_HtlRsn_Cd_Desc,
Glbl_HtlRsn_Cd,
glbl_Htlrsn_cd_desc,
Refund_Indctr,
Exchange_Indctr,
Original_docnum,
Int_Dom,
Trvl_Sctr,
Traveler_Cntry,
Ticketing_Cntry,
Check_In_Dt,
Check_Out_Dt,
Cnfrmtn_Num,
Htl_Mstr_ChainName,
Htl_Chain_Cd,
Htl_Chain_Name,
Prprty_Name,
Address1,
Address2,
Htl_Cty,
Cty_Cd,
Major_Cty,
State,
Postal_cd,
Cntry_cd,
Country,
Cntry_ph,
No_Of_Rooms,
No_Of_Nights,
Room_Typ_cd,
Room_Typ,
Rate_Ctgry,
Room_Rate,
Tot_Amnt,
Compare_Rate1,
Diff_to_Rate1,
Tot_Diff_to_Rate1,
Compare_Rate2,
Diff_to_Rate2,
Tot_Diff_to_Rate2,
Htl_Pref_Ind,
CST_CNTR_ION
FROM [KG_ZBB].[STG].HOTEL_FARE_DETAIL_CA_STG


    SELECT @InsCount = @@ROWCOUNT
    PRINT 'Rows Inserted Into FROM HOTEL_FARE_DETAIL_CA_STG TO HOTEL_FARE_DETAIL_NA Table:';
    PRINT @InsCount;
end 



END-- end ca

if (@Cntry_flag = 'US')
 BEGIN -- US 
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/


UPDATE  [STG].HOTEL_FARE_DETAIL_US_STG
SET	[Client_Name] = ltrim(rtrim([Client_Name])),
[Record_Key] =ltrim(rtrim([Record_Key])),
GCN=ltrim(rtrim([GCN])),
Client_Cd=ltrim(rtrim([Client_Cd])),
Lctr=ltrim(rtrim([Lctr])),
Trvlr=ltrim(rtrim([Trvlr])),
Invoice_Dt=ltrim(rtrim([Invoice_Dt])),
Invoice_Num=ltrim(rtrim([Invoice_Num])),
Agency=ltrim(rtrim([Agency])),
Agency_Num=ltrim(rtrim([Agency_Num])),
Booking_Src=ltrim(rtrim([Booking_Src])),
Booking_Agnt_ID=ltrim(rtrim([Booking_Agnt_ID])),
Local_HtlRsn_Cd=ltrim(rtrim([Local_HtlRsn_Cd])),
Local_HtlRsn_Cd_Desc=ltrim(rtrim([Local_HtlRsn_Cd_Desc])),
Glbl_HtlRsn_Cd=ltrim(rtrim([Glbl_HtlRsn_Cd])),
glbl_Htlrsn_cd_desc=ltrim(rtrim([glbl_Htlrsn_cd_desc])),
Refund_Indctr=ltrim(rtrim([Refund_Indctr])),
Exchange_Indctr=ltrim(rtrim([Exchange_Indctr])),
Original_docnum=ltrim(rtrim([Original_docnum])),
Int_Dom=ltrim(rtrim([Int_Dom])),
Trvl_Sctr=ltrim(rtrim([Trvl_Sctr])),
Traveler_Cntry=ltrim(rtrim([Traveler_Cntry])),
Ticketing_Cntry=ltrim(rtrim([Ticketing_Cntry])),
Check_In_Dt=ltrim(rtrim([Check_In_Dt])),
Check_Out_Dt=ltrim(rtrim([Check_Out_Dt])),
Cnfrmtn_Num=ltrim(rtrim([Cnfrmtn_Num])),
Htl_Mstr_ChainName=ltrim(rtrim([Htl_Mstr_ChainName])),
Htl_Chain_Cd=ltrim(rtrim([Htl_Chain_Cd])),
Htl_Chain_Name=ltrim(rtrim([Htl_Chain_Name])),
Prprty_Name=ltrim(rtrim([Prprty_Name])),
Address1=ltrim(rtrim([Address1])),
Address2=ltrim(rtrim([Address2])),
Htl_Cty=ltrim(rtrim([Htl_Cty])),
Cty_Cd=ltrim(rtrim([Cty_Cd])),
Major_Cty=ltrim(rtrim([Major_Cty])),
State=ltrim(rtrim([State])),
Postal_cd=ltrim(rtrim([Postal_cd])),
Cntry_cd=ltrim(rtrim([Cntry_cd])),
Country=ltrim(rtrim([Country])),
Cntry_ph=ltrim(rtrim([Cntry_ph])),
No_Of_Rooms=ltrim(rtrim([No_Of_Rooms])),
No_Of_Nights=ltrim(rtrim([No_Of_Nights])),
Room_Typ_cd=ltrim(rtrim([Room_Typ_cd])),
Room_Typ=ltrim(rtrim([Room_Typ])),
Rate_Ctgry=ltrim(rtrim([Rate_Ctgry])),
Room_Rate=ltrim(rtrim([Room_Rate])),
Tot_Amnt=ltrim(rtrim([Tot_Amnt])),
Compare_Rate1=ltrim(rtrim([Compare_Rate1])),
Diff_to_Rate1=ltrim(rtrim([Diff_to_Rate1])),
Tot_Diff_to_Rate1=ltrim(rtrim([Tot_Diff_to_Rate1])),
Compare_Rate2=ltrim(rtrim([Compare_Rate2])),
Diff_to_Rate2=ltrim(rtrim([Diff_to_Rate2])),
Tot_Diff_to_Rate2=ltrim(rtrim([Tot_Diff_to_Rate2])),
Htl_Pref_Ind=ltrim(rtrim([Htl_Pref_Ind])),
CST_CNTR_ION=ltrim(rtrim([CST_CNTR_ION]));


/*********************Removing Commas Start *************************************/

UPDATE  [STG].HOTEL_FARE_DETAIL_US_STG
SET	Room_Rate = replace(Room_Rate,',',''),
Tot_Amnt = replace(Tot_Amnt,',',''),
Compare_Rate1 = replace(Compare_Rate1,',',''),
Diff_to_Rate1 = replace(Diff_to_Rate1,',',''),
Tot_Diff_to_Rate1 = replace(Tot_Diff_to_Rate1,',',''),
Compare_Rate2 = replace(Compare_Rate2,',',''),
Diff_to_Rate2 = replace(Diff_to_Rate2,',',''),
Tot_Diff_to_Rate2 = replace(Tot_Diff_to_Rate2,',','');

/*********************Removing Commas End *************************************/

/*********************Removing brackets symbol Start *************************************/

UPDATE  [STG].HOTEL_FARE_DETAIL_US_STG
SET	
Room_Rate = replace(replace(Room_Rate,'(','-'),')',''),
Tot_Amnt = replace(replace(Tot_Amnt,'(','-'),')',''),
Compare_Rate1 =replace(replace(Compare_Rate1,'(','-'),')',''),
Diff_to_Rate1 = replace(replace(Diff_to_Rate1,'(','-'),')',''),
Tot_Diff_to_Rate1 = replace(replace(Tot_Diff_to_Rate1,'(','-'),')',''),
Compare_Rate2 = replace(replace(Compare_Rate2,'(','-'),')',''),
Diff_to_Rate2 = replace(replace(Diff_to_Rate2,'(','-'),')',''),
Tot_Diff_to_Rate2 = replace(replace(Tot_Diff_to_Rate2,'(','-'),')','');

/*********************Removing brackets symbol End *************************************/

/********************* Checking Duplicates *************************************/
   
;WITH    CheckDuplicates
AS      (SELECT ROW_NUMBER() OVER (PARTITION BY [Cnfrmtn_Num],[Invoice_Num],[Check_In_Dt] ORDER BY [Cnfrmtn_Num],[Invoice_Num],[Check_In_Dt]
) AS DuplicateRecCount,
*
FROM   [STG].HOTEL_FARE_DETAIL_US_STG AS t)

UPDATE  CheckDuplicates
SET Error_Flag      = 'Y'
WHERE   DuplicateRecCount > 1;

/*********************CHECKING FOR NULLABLE VALUES*********************************/


UPDATE [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG
SET Error_Flag      = 'Y'
WHERE  [Cnfrmtn_Num]  IS NULL
OR [Cnfrmtn_Num] = '';

UPDATE [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG
SET Error_Flag      = 'Y'
WHERE  [Invoice_Num]  IS NULL
OR [Invoice_Num] = '';

UPDATE [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG
SET Error_Flag      = 'Y'
WHERE  [Check_In_Dt]  IS NULL
OR [Check_In_Dt] = '';

/*********************START CHECKING DATA TYPE**************************************/

UPDATE  [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG
WHERE   isnumeric([Room_Rate]) <> 1 AND [Room_Rate] is not null;

UPDATE  [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG
WHERE   isnumeric([Tot_Amnt]) <> 1 AND [Tot_Amnt] is not null; 

UPDATE  [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG
WHERE   isnumeric([Compare_Rate1]) <> 1 AND [Compare_Rate1] is not null; 

UPDATE  [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG
WHERE   isnumeric([Diff_to_Rate1]) <> 1 AND [Diff_to_Rate1] is not null;

UPDATE  [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG
WHERE   isnumeric([Tot_Diff_to_Rate1]) <> 1 AND [Tot_Diff_to_Rate1] is not null;


UPDATE  [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG
WHERE   isnumeric([Compare_Rate2]) <> 1 AND [Compare_Rate2] is not null;


UPDATE  [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG
WHERE   isnumeric([Diff_to_Rate2]) <> 1 AND [Diff_to_Rate2] is not null;



UPDATE  [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG
WHERE   isnumeric([Tot_Diff_to_Rate2]) <> 1 AND [Tot_Diff_to_Rate2] is not null;
									
	/*********************Checking Total/Waring/Error Row Counts********************/

SELECT @Totalcount =   COUNT(1)
FROM   [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG;


SELECT @Warcount = COUNT(1)
FROM   [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG
WHERE  Warning_Flag = 'Y';

SELECT @ErrCount =  COUNT(1)
FROM  [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG
WHERE  Error_Flag = 'Y';

	
	IF (@ErrCount=0) 
	begin 
/*********************Updating Rows in Final Tabele ***********************************/
 
delete a from [KG_ZBB].[dbo].[HOTEL_FARE_DETAIL_NA] a 
inner join (select Cnfrmtn_Num,Invoice_Num,Check_In_Dt from  [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG) b
on  a.[Cnfrmtn_Num] =b.[Cnfrmtn_Num]  and a.Invoice_Num=b.Invoice_Num and a.Check_In_Dt=b.Check_In_Dt;


/*********************Insert rows to Final Tabele ***********************************/


INSERT INTO [KG_ZBB].[dbo].[HOTEL_FARE_DETAIL_NA]
(
Client_Name,
Record_Key,
GCN,
Client_Cd,
Lctr,
Trvlr,
Invoice_Dt,
Invoice_Num,
Agency,
Agency_Num,
Booking_Src,
Booking_Agnt_ID,
Local_HtlRsn_Cd,
Local_HtlRsn_Cd_Desc,
Glbl_HtlRsn_Cd,
glbl_Htlrsn_cd_desc,
Refund_Indctr,
Exchange_Indctr,
Original_docnum,
Int_Dom,
Trvl_Sctr,
Traveler_Cntry,
Ticketing_Cntry,
Check_In_Dt,
Check_Out_Dt,
Cnfrmtn_Num,
Htl_Mstr_ChainName,
Htl_Chain_Cd,
Htl_Chain_Name,
Prprty_Name,
Address1,
Address2,
Htl_Cty,
Cty_Cd,
Major_Cty,
State,
Postal_cd,
Cntry_cd,
Country,
Cntry_ph,
No_Of_Rooms,
No_Of_Nights,
Room_Typ_cd,
Room_Typ,
Rate_Ctgry,
Room_Rate,
Tot_Amnt,
Compare_Rate1,
Diff_to_Rate1,
Tot_Diff_to_Rate1,
Compare_Rate2,
Diff_to_Rate2,
Tot_Diff_to_Rate2,
Htl_Pref_Ind,
CST_CNTR_ION
 )

SELECT 
Client_Name,
Record_Key,
GCN,
Client_Cd,
Lctr,
Trvlr,
Invoice_Dt,
Invoice_Num,
Agency,
Agency_Num,
Booking_Src,
Booking_Agnt_ID,
Local_HtlRsn_Cd,
Local_HtlRsn_Cd_Desc,
Glbl_HtlRsn_Cd,
glbl_Htlrsn_cd_desc,
Refund_Indctr,
Exchange_Indctr,
Original_docnum,
Int_Dom,
Trvl_Sctr,
Traveler_Cntry,
Ticketing_Cntry,
Check_In_Dt,
Check_Out_Dt,
Cnfrmtn_Num,
Htl_Mstr_ChainName,
Htl_Chain_Cd,
Htl_Chain_Name,
Prprty_Name,
Address1,
Address2,
Htl_Cty,
Cty_Cd,
Major_Cty,
State,
Postal_cd,
Cntry_cd,
Country,
Cntry_ph,
No_Of_Rooms,
No_Of_Nights,
Room_Typ_cd,
Room_Typ,
Rate_Ctgry,
Room_Rate,
Tot_Amnt,
Compare_Rate1,
Diff_to_Rate1,
Tot_Diff_to_Rate1,
Compare_Rate2,
Diff_to_Rate2,
Tot_Diff_to_Rate2,
Htl_Pref_Ind,
CST_CNTR_ION

FROM [KG_ZBB].[STG].HOTEL_FARE_DETAIL_US_STG


    SELECT @InsCount = @@ROWCOUNT
    PRINT 'Rows Inserted Into FROM HOTEL_FARE_DETAIL_US_STG TO HOTEL_FARE_DETAIL_NA Table:';
    PRINT @InsCount;

end 



END-- end us

	END TRY
	BEGIN CATCH
	END CATCH

End









GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_INTEVENT_DETAIL]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[USP_DQ_LOAD_INTEVENT_DETAIL]
--@Client_Name VARCHAR (50), 
--@Table_Name VARCHAR (50), 
@Cntry_flag  varchar(5),
@Totalcount INT OUTPUT, 
@Warcount INT OUTPUT, 
@ErrCount INT OUTPUT, 
@InsCount INT OUTPUt
---@UpdCount INT OUTPUT--, 
--@BatchDetailID INT OUTPUT

AS

/******************************************************************************
NAME        :  [USP_DQ_LOAD_INTEVENT_DETAIL_NA]
PURPOSE & 
Description :  This script will load data into [INTEVENT_DETAIL_NA] table from stg table.
			   
			Also this script will do data validations like data type check,removing spaces and special charecters .	
REVISIONS:
Ver          Date             Author                    Change Reason
------    ----------      ---------------         ------------------------------
1.0         04/16/2016       USCLXK36                1. Initial Version



-----------------------------Execution script--------------------------------------
DECLARE @RC int
DECLARE @Cntry_flag varchar(5)='CA'
DECLARE @Totalcount int
DECLARE @Warcount int
DECLARE @ErrCount int
DECLARE @InsCount int

-- TODO: Set parameter values here.

EXECUTE @RC = DBO.[USP_DQ_LOAD_INTEVE_DETAIL_NA] 
@Cntry_flag
,@Totalcount OUTPUT
,@Warcount OUTPUT
,@ErrCount OUTPUT
,@InsCount OUTPUT
GO

******************************************************************************/
BEGIN
BEGIN TRY
if (@Cntry_flag = 'CA')
BEGIN -- CA 
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/

UPDATE  [STG].[INTEVENT_DETAIL_CA_STG]
SET	[Event_ID] = LTRIM(RTRIM([Event_ID])),
[Cst_Cntr] = LTRIM(RTRIM([Cst_Cntr])),
[Event_Name] = LTRIM(RTRIM([Event_Name])),
[Venue] = LTRIM(RTRIM([Venue])),
[Start_Dt] = LTRIM(RTRIM([Start_Dt])),
[End_Dt] = LTRIM(RTRIM([End_Dt])),
[Expense_Ctgry] = LTRIM(RTRIM([Expense_Ctgry])),
[Expense] = LTRIM(RTRIM([Expense])),
[Original_Qty] = LTRIM(RTRIM([Original_Qty])),
[Cntrctd_Qty] = LTRIM(RTRIM([Cntrctd_Qty])),
[Quoted_Rate] = LTRIM(RTRIM([Quoted_Rate])),
[Cntract_Rate] = LTRIM(RTRIM([Cntract_Rate])),
[Original_Cst] = LTRIM(RTRIM([Original_Cst])),
[Negotiated_Cst] = LTRIM(RTRIM([Negotiated_Cst])),
[Savings] = LTRIM(RTRIM([Savings])),
[Value_Added_Csts] = LTRIM(RTRIM([Value_Added_Csts]))

--print '1';
--
/*********************Removing Commas and $ Start *************************************/
	
UPDATE  [STG].[INTEVENT_DETAIL_CA_STG]
SET	
[Original_Qty] = replace([Original_Qty],',',''),
[Cntrctd_Qty] = replace(LTRIM(RTRIM([Cntrctd_Qty])),',',''),
[Quoted_Rate] = replace([Quoted_Rate],',',''),
[Cntract_Rate] = replace(LTRIM(RTRIM([Cntract_Rate])),',',''),
[Original_Cst] = replace([Original_Cst],',',''),
[Negotiated_Cst] = replace(LTRIM(RTRIM([Negotiated_Cst])),',',''),
[Savings] = replace(LTRIM(RTRIM([Savings])),',',''),
[Value_Added_Csts] = replace(LTRIM(RTRIM([Value_Added_Csts])),',','')

;

UPDATE  [STG].[INTEVENT_DETAIL_CA_STG]
SET	
[Original_Qty] = replace([Original_Qty],'$',''),
[Cntrctd_Qty] = replace(LTRIM(RTRIM([Cntrctd_Qty])),'$',''),
[Quoted_Rate] = replace([Quoted_Rate],'$',''),
[Cntract_Rate] = replace(LTRIM(RTRIM([Cntract_Rate])),'$',''),
[Original_Cst] = replace([Original_Cst],'$',''),
[Negotiated_Cst] = replace(LTRIM(RTRIM([Negotiated_Cst])),'$',''),
[Savings] = replace(LTRIM(RTRIM([Savings])),'$',''),
[Value_Added_Csts] = replace(LTRIM(RTRIM([Value_Added_Csts])),'$','')

;
/*********************Removing Commas End *************************************/

	/*********************Removing brackets symbol Start *************************************/
	
UPDATE  [STG].[INTEVENT_DETAIL_CA_STG]
SET	
[Original_Qty] = replace(replace([Original_Qty],'(','-'),')',''),
[Cntrctd_Qty] = replace(replace([Cntrctd_Qty],'(','-'),')',''),
[Quoted_Rate] = replace(replace([Quoted_Rate],'(','-'),')',''),
[Cntract_Rate] = replace(replace([Cntract_Rate],'(','-'),')',''),
[Original_Cst] = replace(replace([Original_Cst],'(','-'),')',''),
[Negotiated_Cst] = replace(replace([Negotiated_Cst],'(','-'),')',''),
[Value_Added_Csts] = replace(replace([Value_Added_Csts],'(','-'),')',''),
[Savings] = replace(replace([Savings],'(','-'),')','')
;
print '2';
/*********************Removing brackets symbol End *************************************/

/********************* Checking Duplicates *************************************/
   
;WITH    CheckDuplicates
AS      (SELECT ROW_NUMBER() OVER (PARTITION BY [Event_ID]
      ,[Cst_Cntr]
      ,[Event_Name]
      ,[Venue]
      ,[Start_Dt]
      ,[End_Dt]
      ,[Expense_Ctgry]
      ,[Expense]
      ,[Original_Qty]
      ,[Cntrctd_Qty]
      ,[Quoted_Rate]
      ,[Cntract_Rate]
      ,[Original_Cst]
      ,[Negotiated_Cst]
      ,[Savings]
      ,[Value_Added_Csts] ORDER BY [Event_ID]
      ,[Cst_Cntr]
      ,[Event_Name]
      ,[Venue]
      ,[Start_Dt]
      ,[End_Dt]
      ,[Expense_Ctgry]
      ,[Expense]
      ,[Original_Qty]
      ,[Cntrctd_Qty]
      ,[Quoted_Rate]
      ,[Cntract_Rate]
      ,[Original_Cst]
      ,[Negotiated_Cst]
      ,[Savings]
      ,[Value_Added_Csts]) AS DuplicateRecCount,
        *
    FROM   [STG].[INTEVENT_DETAIL_CA_STG] AS t)

UPDATE  CheckDuplicates
SET Error_Flag      = 'Y'
-- [Error_Message] = ISNULL([Error_Message], '') + 'ERR:Duplicate record has been Found ||'
WHERE   DuplicateRecCount > 1;
print '3';

/*********************CHECKING FOR NULLABLE VALUES*********************************/


--


/*********************START CHECKING DATA TYPE**************************************/

UPDATE  [KG_ZBB].[STG].[INTEVENT_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_DETAIL_CA_STG]
WHERE   isnumeric([Original_Qty]) <> 1 AND [Original_Qty] is not null
--OR	[Cost_Per_Mile]LIKE '%[^0-9]%';

UPDATE  [KG_ZBB].[STG].[INTEVENT_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_DETAIL_CA_STG]
WHERE   isnumeric([Cntrctd_Qty]) <> 1 AND [Cntrctd_Qty] is not null
--OR	[Tax_amnt]LIKE '%[^0-9]%' ; 

UPDATE  [KG_ZBB].[STG].[INTEVENT_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_DETAIL_CA_STG]
WHERE   isnumeric([Quoted_Rate]) <> 1 AND [Quoted_Rate] is not null
--OR	[Ticket_Amt_Mns_Txs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[INTEVENT_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_DETAIL_CA_STG]
WHERE   isnumeric([Cntract_Rate]) <> 1 AND [Cntract_Rate] is not null
--OR	[Low_Fare]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[INTEVENT_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_DETAIL_CA_STG]
WHERE   isnumeric([Original_Cst]) <> 1 AND [Original_Cst] is not null
--OR	[Full_Fare]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[INTEVENT_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_DETAIL_CA_STG]
WHERE   isnumeric([Negotiated_Cst]) <> 1 AND [Negotiated_Cst] is not null
--OR	[Amnt_Lost]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[INTEVENT_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_DETAIL_CA_STG]
WHERE   isnumeric([Savings]) <> 1 AND [Savings] is not null
--OR	[Full_Fare_Svngs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[INTEVENT_DETAIL_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_DETAIL_CA_STG]
WHERE   isnumeric([Value_Added_Csts]) <> 1 AND [Value_Added_Csts] is not null
--OR	[Contract_Svngs]LIKE '%[^0-9]%' ;
									
/*********************Checking Total/Waring/Error Row Counts********************/
	
	
SELECT @Totalcount =   COUNT(1)
FROM   [KG_ZBB].[STG].[INTEVENT_DETAIL_CA_STG]G;
	

SELECT @Warcount = COUNT(1)
FROM   [KG_ZBB].[STG].[INTEVENT_DETAIL_CA_STG]
WHERE  Warning_Flag = 'Y';

SELECT @ErrCount =  COUNT(1)
FROM  [KG_ZBB].[STG].[INTEVENT_DETAIL_CA_STG]
WHERE  Error_Flag = 'Y';


	
IF (@ErrCount=0) 
begin 
/*********************Updating Rows in Final Tabele ***********************************/
 
 


delete a from [KG_ZBB].DBO.[INTEVENT_DETAIL_NA] a
inner join (select  [Event_ID]
      ,[Cst_Cntr]
      ,[Event_Name]
      ,[Venue]
      ,[Start_Dt]
      ,[End_Dt]
      ,[Expense_Ctgry]
      ,[Expense]
      ,[Original_Qty]
      ,[Cntrctd_Qty]
      ,[Quoted_Rate]
      ,[Cntract_Rate]
      ,[Original_Cst]
      ,[Negotiated_Cst]
      ,[Savings]
      ,[Value_Added_Csts] from [KG_ZBB].[STG].[INTEVENT_DETAIL_CA_STG]) b
on  a.[Event_ID] = b.[Event_ID]
     AND a.[Cst_Cntr]=b.[Cst_Cntr]
      AND a.[Event_Name]=b.[Event_Name]
      AND a.[Venue]=b.[Venue]
      AND a.[Start_Dt]=b.[Start_Dt]
      AND a.[End_Dt]=b.[End_Dt]
      AND a.[Expense_Ctgry]=b.[Expense_Ctgry]
      AND a.[Expense]=b.[Expense]
      AND a.[Original_Qty]=cast(b.[Original_Qty] as decimal(18,2))
       AND a.[Cntrctd_Qty]=cast(b.[Cntrctd_Qty] as decimal(18,2))
      AND a.[Quoted_Rate]=cast(b.[Quoted_Rate] as decimal(18,2))
     AND a.[Cntract_Rate]=cast(b.[Cntract_Rate] as decimal(18,2))
      AND a.[Original_Cst]=cast(b.[Original_Cst] as decimal(18,2))
      AND a.[Negotiated_Cst]=cast(b.[Negotiated_Cst] as decimal(18,2))
      AND a.[Savings]=cast(b.[Savings] as decimal(18,2))
      AND a.[Value_Added_Csts]=cast(b.[Value_Added_Csts] as decimal(18,2))



/*********************Insert rows to Final Tabele ***********************************/


INSERT INTO [KG_ZBB].Dbo.INTEVENT_DETAIL_NA
(
[Event_ID]
      ,[Cst_Cntr]
      ,[Event_Name]
      ,[Venue]
      ,[Start_Dt]
      ,[End_Dt]
      ,[Expense_Ctgry]
      ,[Expense]
      ,[Original_Qty]
      ,[Cntrctd_Qty]
      ,[Quoted_Rate]
      ,[Cntract_Rate]
      ,[Original_Cst]
      ,[Negotiated_Cst]
      ,[Savings]
      ,[Value_Added_Csts]
  
)
SELECT  [Event_ID]
      ,[Cst_Cntr]
      ,[Event_Name]
      ,[Venue]
      ,cast([Start_Dt] as date)
      ,cast([End_Dt] as date)
      ,[Expense_Ctgry]
      ,[Expense]
      ,cast([Original_Qty] as DECIMAL(18,2))
      ,cast([Cntrctd_Qty] as DECIMAL(18,2))
      ,cast([Quoted_Rate] as decimal(18,2))
      ,cast([Cntract_Rate] as decimal(18,2))
      ,cast([Original_Cst] as decimal(18,2))
      ,cast([Negotiated_Cst] as decimal(18,2))
      ,cast([Savings] as decimal(18,2))
      ,cast([Value_Added_Csts] as decimal(18,2))
     
  FROM [KG_ZBB].[STG].[INTEVENT_DETAIL_CA_STG]


SELECT @InsCount = @@ROWCOUNT
PRINT 'Rows Inserted Into INTEVENT_DETAIL Table:0';
PRINT @InsCount;


 print '6';
end 



END --CA
if (@Cntry_flag = 'US')
BEGIN -- CA 
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/

UPDATE  [STG].[INTEVENT_DETAIL_US_STG]
SET	[Event_ID] = LTRIM(RTRIM([Event_ID])),
[Cst_Cntr] = LTRIM(RTRIM([Cst_Cntr])),
[Event_Name] = LTRIM(RTRIM([Event_Name])),
[Venue] = LTRIM(RTRIM([Venue])),
[Start_Dt] = LTRIM(RTRIM([Start_Dt])),
[End_Dt] = LTRIM(RTRIM([End_Dt])),
[Expense_Ctgry] = LTRIM(RTRIM([Expense_Ctgry])),
[Expense] = LTRIM(RTRIM([Expense])),
[Original_Qty] = LTRIM(RTRIM([Original_Qty])),
[Cntrctd_Qty] = LTRIM(RTRIM([Cntrctd_Qty])),
[Quoted_Rate] = LTRIM(RTRIM([Quoted_Rate])),
[Cntract_Rate] = LTRIM(RTRIM([Cntract_Rate])),
[Original_Cst] = LTRIM(RTRIM([Original_Cst])),
[Negotiated_Cst] = LTRIM(RTRIM([Negotiated_Cst])),
[Savings] = LTRIM(RTRIM([Savings])),
[Value_Added_Csts] = LTRIM(RTRIM([Value_Added_Csts]))

/*********************Removing Commas and $ Start *************************************/
	
UPDATE  [STG].[INTEVENT_DETAIL_US_STG]
SET	
[Original_Qty] = replace([Original_Qty],',',''),
[Cntrctd_Qty] = replace(LTRIM(RTRIM([Cntrctd_Qty])),',',''),
[Quoted_Rate] = replace([Quoted_Rate],',',''),
[Cntract_Rate] = replace(LTRIM(RTRIM([Cntract_Rate])),',',''),
[Original_Cst] = replace([Original_Cst],',',''),
[Negotiated_Cst] = replace(LTRIM(RTRIM([Negotiated_Cst])),',',''),
[Savings] = replace(LTRIM(RTRIM([Savings])),',',''),
[Value_Added_Csts] = replace(LTRIM(RTRIM([Value_Added_Csts])),',','')

;

UPDATE  [STG].[INTEVENT_DETAIL_US_STG]
SET	
[Original_Qty] = replace([Original_Qty],'$',''),
[Cntrctd_Qty] = replace(LTRIM(RTRIM([Cntrctd_Qty])),'$',''),
[Quoted_Rate] = replace([Quoted_Rate],'$',''),
[Cntract_Rate] = replace(LTRIM(RTRIM([Cntract_Rate])),'$',''),
[Original_Cst] = replace([Original_Cst],'$',''),
[Negotiated_Cst] = replace(LTRIM(RTRIM([Negotiated_Cst])),'$',''),
[Savings] = replace(LTRIM(RTRIM([Savings])),'$',''),
[Value_Added_Csts] = replace(LTRIM(RTRIM([Value_Added_Csts])),'$','')

;
/*********************Removing Commas End *************************************/

	/*********************Removing brackets symbol Start *************************************/
	
UPDATE  [STG].[INTEVENT_DETAIL_US_STG]
SET	
[Original_Qty] = replace(replace([Original_Qty],'(','-'),')',''),
[Cntrctd_Qty] = replace(replace([Cntrctd_Qty],'(','-'),')',''),
[Quoted_Rate] = replace(replace([Quoted_Rate],'(','-'),')',''),
[Cntract_Rate] = replace(replace([Cntract_Rate],'(','-'),')',''),
[Original_Cst] = replace(replace([Original_Cst],'(','-'),')',''),
[Negotiated_Cst] = replace(replace([Negotiated_Cst],'(','-'),')',''),
[Value_Added_Csts] = replace(replace([Value_Added_Csts],'(','-'),')',''),
[Savings] = replace(replace([Savings],'(','-'),')','')
;

/*********************Removing brackets symbol End *************************************/

/********************* Checking Duplicates *************************************/
   
;WITH    CheckDuplicates
AS      (SELECT ROW_NUMBER() OVER (PARTITION BY [Event_ID]
      ,[Cst_Cntr]
      ,[Event_Name]
      ,[Venue]
      ,[Start_Dt]
      ,[End_Dt]
      ,[Expense_Ctgry]
      ,[Expense]
      ,[Original_Qty]
      ,[Cntrctd_Qty]
      ,[Quoted_Rate]
      ,[Cntract_Rate]
      ,[Original_Cst]
      ,[Negotiated_Cst]
      ,[Savings]
      ,[Value_Added_Csts] ORDER BY [Event_ID]
      ,[Cst_Cntr]
      ,[Event_Name]
      ,[Venue]
      ,[Start_Dt]
      ,[End_Dt]
      ,[Expense_Ctgry]
      ,[Expense]
      ,[Original_Qty]
      ,[Cntrctd_Qty]
      ,[Quoted_Rate]
      ,[Cntract_Rate]
      ,[Original_Cst]
      ,[Negotiated_Cst]
      ,[Savings]
      ,[Value_Added_Csts]) AS DuplicateRecCount,
        *
    FROM   [STG].[INTEVENT_DETAIL_US_STG] AS t)

UPDATE  CheckDuplicates
SET Error_Flag      = 'Y'
-- [Error_Message] = ISNULL([Error_Message], '') + 'ERR:Duplicate record has been Found ||'
WHERE   DuplicateRecCount > 1;


/*********************CHECKING FOR NULLABLE VALUES*********************************/


--


/*********************START CHECKING DATA TYPE**************************************/

UPDATE  [KG_ZBB].[STG].[INTEVENT_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_DETAIL_US_STG]
WHERE   isnumeric([Original_Qty]) <> 1 AND [Original_Qty] is not null
--OR	[Cost_Per_Mile]LIKE '%[^0-9]%';

UPDATE  [KG_ZBB].[STG].[INTEVENT_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_DETAIL_US_STG]
WHERE   isnumeric([Cntrctd_Qty]) <> 1 AND [Cntrctd_Qty] is not null
--OR	[Tax_amnt]LIKE '%[^0-9]%' ; 

UPDATE  [KG_ZBB].[STG].[INTEVENT_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_DETAIL_US_STG]
WHERE   isnumeric([Quoted_Rate]) <> 1 AND [Quoted_Rate] is not null
--OR	[Ticket_Amt_Mns_Txs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[INTEVENT_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_DETAIL_US_STG]
WHERE   isnumeric([Cntract_Rate]) <> 1 AND [Cntract_Rate] is not null
--OR	[Low_Fare]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[INTEVENT_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_DETAIL_US_STG]
WHERE   isnumeric([Original_Cst]) <> 1 AND [Original_Cst] is not null
--OR	[Full_Fare]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[INTEVENT_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_DETAIL_US_STG]
WHERE   isnumeric([Negotiated_Cst]) <> 1 AND [Negotiated_Cst] is not null
--OR	[Amnt_Lost]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[INTEVENT_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_DETAIL_US_STG]
WHERE   isnumeric([Savings]) <> 1 AND [Savings] is not null
--OR	[Full_Fare_Svngs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[INTEVENT_DETAIL_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_DETAIL_US_STG]
WHERE   isnumeric([Value_Added_Csts]) <> 1 AND [Value_Added_Csts] is not null
--OR	[Contract_Svngs]LIKE '%[^0-9]%' ;
									
/*********************Checking Total/Waring/Error Row Counts********************/
	
	
SELECT @Totalcount =   COUNT(1)
FROM   [KG_ZBB].[STG].[INTEVENT_DETAIL_US_STG]G;
	

SELECT @Warcount = COUNT(1)
FROM   [KG_ZBB].[STG].[INTEVENT_DETAIL_US_STG]
WHERE  Warning_Flag = 'Y';

SELECT @ErrCount =  COUNT(1)
FROM  [KG_ZBB].[STG].[INTEVENT_DETAIL_US_STG]
WHERE  Error_Flag = 'Y';

	
IF (@ErrCount=0) 
begin 
/*********************Updating Rows in Final Tabele ***********************************/
 
delete a from [KG_ZBB].DBO.[INTEVENT_DETAIL_NA] a
inner join (select  [Event_ID]
      ,[Cst_Cntr]
      ,[Event_Name]
      ,[Venue]
      ,[Start_Dt]
      ,[End_Dt]
      ,[Expense_Ctgry]
      ,[Expense]
      ,[Original_Qty]
      ,[Cntrctd_Qty]
      ,[Quoted_Rate]
      ,[Cntract_Rate]
      ,[Original_Cst]
      ,[Negotiated_Cst]
      ,[Savings]
      ,[Value_Added_Csts] from [KG_ZBB].[STG].[INTEVENT_DETAIL_US_STG]) b
on  a.[Event_ID] = b.[Event_ID]
     AND a.[Cst_Cntr]=b.[Cst_Cntr]
      AND a.[Event_Name]=b.[Event_Name]
      AND a.[Venue]=b.[Venue]
      AND a.[Start_Dt]=b.[Start_Dt]
      AND a.[End_Dt]=b.[End_Dt]
      AND a.[Expense_Ctgry]=b.[Expense_Ctgry]
      AND a.[Expense]=b.[Expense]
      AND a.[Original_Qty]=cast(b.[Original_Qty] as decimal(18,2))
       AND a.[Cntrctd_Qty]=cast(b.[Cntrctd_Qty] as decimal(18,2))
      AND a.[Quoted_Rate]=cast(b.[Quoted_Rate] as decimal(18,2))
     AND a.[Cntract_Rate]=cast(b.[Cntract_Rate] as decimal(18,2))
      AND a.[Original_Cst]=cast(b.[Original_Cst] as decimal(18,2))
      AND a.[Negotiated_Cst]=cast(b.[Negotiated_Cst] as decimal(18,2))
      AND a.[Savings]=cast(b.[Savings] as decimal(18,2))
      AND a.[Value_Added_Csts]=cast(b.[Value_Added_Csts] as decimal(18,2))
	  


/*********************Insert rows to Final Tabele ***********************************/


INSERT INTO [KG_ZBB].Dbo.INTEVENT_DETAIL_NA
(
[Event_ID]
      ,[Cst_Cntr]
      ,[Event_Name]
      ,[Venue]
      ,[Start_Dt]
      ,[End_Dt]
      ,[Expense_Ctgry]
      ,[Expense]
      ,[Original_Qty]
      ,[Cntrctd_Qty]
      ,[Quoted_Rate]
      ,[Cntract_Rate]
      ,[Original_Cst]
      ,[Negotiated_Cst]
      ,[Savings]
      ,[Value_Added_Csts]
  
)
SELECT  [Event_ID]
      ,[Cst_Cntr]
      ,[Event_Name]
      ,[Venue]
      ,cast([Start_Dt] as date)
      ,cast([End_Dt] as date)
      ,[Expense_Ctgry]
      ,[Expense]
      ,cast([Original_Qty] as DECIMAL(18,2))
      ,cast([Cntrctd_Qty] as DECIMAL(18,2))
      ,cast([Quoted_Rate] as decimal(18,2))
      ,cast([Cntract_Rate] as decimal(18,2))
      ,cast([Original_Cst] as decimal(18,2))
      ,cast([Negotiated_Cst] as decimal(18,2))
      ,cast([Savings] as decimal(18,2))
      ,cast([Value_Added_Csts] as decimal(18,2))
     
  FROM [KG_ZBB].[STG].[INTEVENT_DETAIL_US_STG]


SELECT @InsCount = @@ROWCOUNT
PRINT 'Rows Inserted Into INTEVENT_DETAIL Table:0';
PRINT @InsCount;

end 



END --US 
END TRY
BEGIN CATCH
END CATCH
END








GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_INTEVENT_SUMMARY]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_DQ_LOAD_INTEVENT_SUMMARY]
@Cntry_flag  varchar(5),
@Totalcount INT OUTPUT, 
@Warcount INT OUTPUT, 
@ErrCount INT OUTPUT, 
@InsCount INT OUTPUT
AS
/******************************************************************************
NAME        :  USP_DQ_LOAD_INTEVENT_SUMMARY
PURPOSE & 
Description :  This script will load data into HOTEL FARE table from stg table.
			   
Also this script will do data validations like data type check,removing spaces and special charecters .	
REVISIONS:
Ver          Date             Author                    Change Reason
------    ----------      ---------------         ------------------------------
1.0         04/16/2016       USCLXK36                1. Initial Version



-----------------------------Execution script--------------------------------------

DECLARE @RC int
DECLARE @Cntry_flag varchar(5)='US'
DECLARE @Totalcount int
DECLARE @Warcount int
DECLARE @ErrCount int
DECLARE @InsCount int

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[USP_DQ_LOAD_INTEVENT_SUMMARY] 
@Cntry_flag
,@Totalcount OUTPUT
,@Warcount OUTPUT
,@ErrCount OUTPUT
,@InsCount OUTPUT
GO


******************************************************************************/
BEGIN
BEGIN TRY
if (@Cntry_flag = 'CA')
BEGIN -- CA 
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/


UPDATE  [STG].[INTEVENT_SUMMARY_CA_STG]
SET	Event_ID =LTRIM(RTRIM(Event_ID)),
Cst_Cntr = LTRIM(RTRIM(Cst_Cntr)),
HB_Src= LTRIM(RTRIM(HB_Src)),
Hotel_Brnd= LTRIM(RTRIM(Hotel_Brnd)),
Property=LTRIM(RTRIM(Property)),
City= LTRIM(RTRIM(City)),
State=LTRIM(RTRIM(State)),
Event_Name = LTRIM(RTRIM(Event_Name)),
Start_Dt = LTRIM(RTRIM(Start_Dt)),
End_Dt = LTRIM(RTRIM(End_Dt)),
Rm_Nights = LTRIM(RTRIM(Rm_Nights)),
Rm_Savings = LTRIM(RTRIM(Rm_Savings)),
Meeting_Svngs = LTRIM(RTRIM(Meeting_Svngs)),
Othr_Svngs = LTRIM(RTRIM(Othr_Svngs)),
Orgnl_Costs = LTRIM(RTRIM(Orgnl_Costs)),
Ngttd_Costs = LTRIM(RTRIM(Ngttd_Costs)),
Ngttd_Rm_Costs = LTRIM(RTRIM(Ngttd_Rm_Costs)),
Tot_Svngs = LTRIM(RTRIM(Tot_Svngs)),
Tot_Val_Added = LTRIM(RTRIM(Tot_Val_Added)),
Actual_Attendees = LTRIM(RTRIM(Actual_Attendees));

/********************* Checking for $ symbol *************************************/

UPDATE  [STG].[INTEVENT_SUMMARY_CA_STG]
SET
Rm_Nights = replace(Rm_Nights,'$',''),
Rm_Savings = replace(Rm_Savings,'$',''),
Meeting_Svngs = replace(Meeting_Svngs,'$',''),
Othr_Svngs = replace(Othr_Svngs,'$',''),
Orgnl_Costs = replace(Orgnl_Costs,'$',''),
Ngttd_Costs = replace(Ngttd_Costs,'$',''),
Ngttd_Rm_Costs = replace(Ngttd_Rm_Costs,'$',''),
Tot_Svngs = replace(Tot_Svngs,'$',''),
Tot_Val_Added = replace(Tot_Val_Added,'$','');


UPDATE  [STG].[INTEVENT_SUMMARY_CA_STG]
SET
Rm_Nights = replace(replace(Rm_Nights,'(',''),')',''),
Rm_Savings = replace(replace(Rm_Savings,'(',''),')',''),
Meeting_Svngs = replace(replace(Meeting_Svngs,'(',''),')',''),
Othr_Svngs = replace(replace(Othr_Svngs,'(',''),')',''),
Orgnl_Costs = replace(replace(Orgnl_Costs,'(',''),')',''),
Ngttd_Costs = replace(replace(Ngttd_Costs,'(',''),')',''),
Ngttd_Rm_Costs = replace(replace(Ngttd_Rm_Costs,'(',''),')',''),
Tot_Svngs = replace(replace(Tot_Svngs,'(',''),')',''),
Tot_Val_Added = replace(replace(Tot_Val_Added,'(',''),')','');


/**********************************************************/


/********************* Checking Duplicates *************************************/
   
;WITH    CheckDuplicates
AS      (SELECT ROW_NUMBER() OVER (PARTITION BY [Event_ID] ORDER BY [Event_ID]) AS DuplicateRecCount,
    *
FROM   STG.INTEVENT_SUMMARY_CA_STG AS t)

-- select* from CheckDuplicates

UPDATE  CheckDuplicates
SET Error_Flag      = 'Y'
--       [Error_Message] = ISNULL([Error_Message], '') + 'ERR:Duplicate record has been Found ||'
WHERE   DuplicateRecCount > 1;


/*********************CHECKING FOR NULLABLE VALUES*********************************/


UPDATE [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG]
SET Error_Flag      = 'Y'
WHERE  [Event_ID]  IS NULL
OR [Event_ID] = '';


/*********************START CHECKING DATA TYPE**************************************/

UPDATE  [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG]
WHERE   isnumeric([Rm_Nights]) <> 1 AND [Rm_Nights] is not null
--OR	[Rm_Nights]LIKE '%[^0-9]%';

UPDATE  [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG]
WHERE   isnumeric([Rm_Savings]) <> 1 AND [Rm_Savings] is not null
--OR	[Rm_Savings]LIKE '%[^0-9]%' ; 


UPDATE  [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG]
WHERE   isnumeric([Meeting_Svngs]) <> 1 AND [Meeting_Svngs] is not null
--OR	[Meeting_Svngs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG]
WHERE   isnumeric([Othr_Svngs]) <> 1 AND [Othr_Svngs] is not null
--OR	[Othr_Svngs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG]
WHERE   isnumeric([Orgnl_Costs]) <> 1 AND [Orgnl_Costs] is not null
--OR	[Orgnl_Costs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG]
WHERE   isnumeric([Ngttd_Costs]) <> 1 AND [Ngttd_Costs] is not null
--OR	[Ngttd_Costs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG]
WHERE   isnumeric([Ngttd_Rm_Costs]) <> 1 AND [Ngttd_Rm_Costs] is not null
--OR	[Ngttd_Rm_Costs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG]
WHERE   isnumeric([Tot_Svngs]) <> 1 AND [Tot_Svngs] is not null
--OR	[Tot_Svngs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG]
WHERE   isnumeric([Tot_Val_Added]) <> 1 AND [Tot_Val_Added] is not null
--OR	[Tot_Val_Added]LIKE '%[^0-9]%' ;


/*********************Checking Total/Waring/Error Row Counts********************/
	
	
SELECT @Totalcount =   COUNT(1)
FROM   [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG];
	

SELECT @Warcount = COUNT(1)
FROM   [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG]
WHERE  Warning_Flag = 'Y';

SELECT @ErrCount =  COUNT(1)
FROM  [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG]
WHERE  Error_Flag = 'Y';

	
IF (@ErrCount=0) 
begin 
/*********************Updating Rows in Final Tabele ***********************************/
 
delete a from [KG_ZBB].[dbo].[INTEVENT_SUMMARY_NA] a
inner join (select [Event_ID] from [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG] ) b
on  a.[Event_ID] =b.[Event_ID] ;



/*********************Insert rows to Final Tabele ***********************************/


INSERT INTO [KG_ZBB].[dbo].[INTEVENT_SUMMARY_NA]
(
Event_ID,
Cst_Cntr,
HB_Src,
Hotel_Brnd,
Property,
City,
State,
Event_Name,
Start_Dt,
End_Dt,
Rm_Nights,
Rm_Savings,
Meeting_Svngs,
Othr_Svngs,
Orgnl_Costs,
Ngttd_Costs,
Ngttd_Rm_Costs,
Tot_Svngs,
Tot_Val_Added,
Actual_Attendees )
SELECT 
Event_ID,
Cst_Cntr,
HB_Src,
Hotel_Brnd,
Property,
City,
State,
Event_Name,
Start_Dt,
End_Dt,
cast(Rm_Nights as decimal(18,2))Rm_Nights,
cast(Rm_Savings  as decimal(18,2)),
cast(Meeting_Svngs  as decimal(18,2)),
cast(Othr_Svngs  as decimal(18,2)),
cast(Orgnl_Costs  as decimal(18,2)),
isnull(cast(Ngttd_Costs  as decimal(18,2)),0),
isnull(cast(Ngttd_Rm_Costs  as decimal(18,2)),0),
isnull(cast(Tot_Svngs as decimal(18,2)),0),
isnull(cast(Tot_Val_Added  as decimal(18,2)),0),
isnull(cast(Actual_Attendees as int),0)
FROM [KG_ZBB].[STG].[INTEVENT_SUMMARY_CA_STG];


SELECT @InsCount = @@ROWCOUNT
PRINT 'Rows Inserted Into INTEVENT_SUMMARY_NA Table :';
PRINT @InsCount;

end 
END-- end of CA

if (@Cntry_flag = 'US')
BEGIN -- US 

/********************* REMOVE SPACE ON EACH COLUMN  *********************************/


UPDATE  [STG].[INTEVENT_SUMMARY_US_STG]
SET	Event_ID =LTRIM(RTRIM(Event_ID)),
Cst_Cntr = LTRIM(RTRIM(Cst_Cntr)),
HB_Src= LTRIM(RTRIM(HB_Src)),
Hotel_Brnd= LTRIM(RTRIM(Hotel_Brnd)),
Property=LTRIM(RTRIM(Property)),
City= LTRIM(RTRIM(City)),
State=LTRIM(RTRIM(State)),
Event_Name = LTRIM(RTRIM(Event_Name)),
Start_Dt = LTRIM(RTRIM(Start_Dt)),
End_Dt = LTRIM(RTRIM(End_Dt)),
Rm_Nights = LTRIM(RTRIM(Rm_Nights)),
Rm_Savings = LTRIM(RTRIM(Rm_Savings)),
Meeting_Svngs = LTRIM(RTRIM(Meeting_Svngs)),
Othr_Svngs = LTRIM(RTRIM(Othr_Svngs)),
Orgnl_Costs = LTRIM(RTRIM(Orgnl_Costs)),
Ngttd_Costs = LTRIM(RTRIM(Ngttd_Costs)),
Ngttd_Rm_Costs = LTRIM(RTRIM(Ngttd_Rm_Costs)),
Tot_Svngs = LTRIM(RTRIM(Tot_Svngs)),
Tot_Val_Added = LTRIM(RTRIM(Tot_Val_Added)),
Actual_Attendees = LTRIM(RTRIM(Actual_Attendees));

/********************* Checking for $ symbol *************************************/

UPDATE  [STG].[INTEVENT_SUMMARY_US_STG]
SET
Rm_Nights = replace(Rm_Nights,'$',''),
Rm_Savings = replace(Rm_Savings,'$',''),
Meeting_Svngs = replace(Meeting_Svngs,'$',''),
Othr_Svngs = replace(Othr_Svngs,'$',''),
Orgnl_Costs = replace(Orgnl_Costs,'$',''),
Ngttd_Costs = replace(Ngttd_Costs,'$',''),
Ngttd_Rm_Costs = replace(Ngttd_Rm_Costs,'$',''),
Tot_Svngs = replace(Tot_Svngs,'$',''),
Tot_Val_Added = replace(Tot_Val_Added,'$','');

/**********************************************************/


/********************* Checking Duplicates *************************************/
   
;WITH    CheckDuplicates
AS      (SELECT ROW_NUMBER() OVER (PARTITION BY [Event_ID] ORDER BY [Event_ID]) AS DuplicateRecCount,
*
FROM   STG.INTEVENT_SUMMARY_US_STG AS t)

UPDATE  CheckDuplicates
SET Error_Flag      = 'Y'
       
WHERE   DuplicateRecCount > 1;


/*********************CHECKING FOR NULLABLE VALUES*********************************/


UPDATE [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG]
SET Error_Flag      = 'Y'
WHERE  [Event_ID]  IS NULL
OR [Event_ID] = '';


/*********************START CHECKING DATA TYPE**************************************/

UPDATE  [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG]
WHERE   isnumeric([Rm_Nights]) <> 1 AND [Rm_Nights] is not null
--OR	[Rm_Nights]LIKE '%[^0-9]%';

UPDATE  [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG]
WHERE   isnumeric([Rm_Savings]) <> 1 AND [Rm_Savings] is not null
--OR	[Rm_Savings]LIKE '%[^0-9]%' ; 

UPDATE  [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG]
WHERE   isnumeric([Meeting_Svngs]) <> 1 AND [Meeting_Svngs] is not null
--OR	[Meeting_Svngs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG]
WHERE   isnumeric([Othr_Svngs]) <> 1 AND [Othr_Svngs] is not null
--OR	[Othr_Svngs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG]
WHERE   isnumeric([Orgnl_Costs]) <> 1 AND [Orgnl_Costs] is not null
--OR	[Orgnl_Costs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG]
WHERE   isnumeric([Ngttd_Costs]) <> 1 AND [Ngttd_Costs] is not null
--OR	[Ngttd_Costs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG]
WHERE   isnumeric([Ngttd_Rm_Costs]) <> 1 AND [Ngttd_Rm_Costs] is not null
--OR	[Ngttd_Rm_Costs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG]
WHERE   isnumeric([Tot_Svngs]) <> 1 AND [Tot_Svngs] is not null
--OR	[Tot_Svngs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG]
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG]
WHERE   isnumeric([Tot_Val_Added]) <> 1 AND [Tot_Val_Added] is not null
----OR	[Tot_Val_Added]LIKE '%[^0-9]%' ;


/*********************Checking Total/Waring/Error Row Counts********************/
	
	
SELECT @Totalcount =   COUNT(1)
FROM   [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG]G;
	

SELECT @Warcount = COUNT(1)
FROM   [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG]
WHERE  Warning_Flag = 'Y';

SELECT @ErrCount =  COUNT(1)
FROM  [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG]
WHERE  Error_Flag = 'Y';

	
IF (@ErrCount=0) 
begin 
/*********************Updating Rows in Final Tabele ***********************************/
 
delete a from [KG_ZBB].[dbo].[INTEVENT_SUMMARY_NA] a
inner join (select [Event_ID] from [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG] ) b
on  a.[Event_ID] =b.[Event_ID] ;



/*********************Insert rows to Final Tabele ***********************************/


INSERT INTO [KG_ZBB].[dbo].[INTEVENT_SUMMARY_NA]
(
Event_ID,
Cst_Cntr,
HB_Src,
Hotel_Brnd,
Property,
City,
State,
Event_Name,
Start_Dt,
End_Dt,
Rm_Nights,
Rm_Savings,
Meeting_Svngs,
Othr_Svngs,
Orgnl_Costs,
Ngttd_Costs,
Ngttd_Rm_Costs,
Tot_Svngs,
Tot_Val_Added,
Actual_Attendees )
SELECT 
Event_ID,
Cst_Cntr,
HB_Src,
Hotel_Brnd,
Property,
City,
State,
Event_Name,
Start_Dt,
End_Dt,
cast(Rm_Nights as  decimal(18,2))Rm_Nights,
cast(Rm_Savings  as decimal(18,2)),
cast(Meeting_Svngs  as decimal(18,2)),
cast(Othr_Svngs  as decimal(18,2)),
cast(Orgnl_Costs  as decimal(18,2)),
isnull(cast(Ngttd_Costs  as decimal(18,2)),0),
isnull(cast(Ngttd_Rm_Costs  as decimal(18,2)),0),
isnull(cast(Tot_Svngs as decimal(18,2)),0),
isnull(cast(Tot_Val_Added  as decimal(18,2)),0),
isnull(cast(Actual_Attendees as int),0)
FROM [KG_ZBB].[STG].[INTEVENT_SUMMARY_US_STG]


SELECT @InsCount = @@ROWCOUNT
PRINT 'Rows Inserted Into INTEVENT_SUMMARY_NA Table :';
PRINT @InsCount;

end 
END-- end of US


END TRY
BEGIN CATCH
END CATCH
END




GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_NEWSPEND]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[USP_DQ_LOAD_NEWSPEND]
--@Client_Name VARCHAR (50), 
--@Table_Name VARCHAR (50), 
@Cntry_flag  varchar(5),
@Totalcount INT OUTPUT, 
@Warcount INT OUTPUT, 
@ErrCount INT OUTPUT, 
@InsCount INT OUTPUt
---@UpdCount INT OUTPUT--, 
--@BatchDetailID INT OUTPUT

AS

/******************************************************************************
NAME        :  [USP_DQ_LOAD_NEWSPEND]
PURPOSE & 
Description :  This script will load data into [NEW_SPEND] table from stg table.
			   
			Also this script will do data validations like data type check,removing spaces and special charecters .	
REVISIONS:
Ver          Date             Author                    Change Reason
------    ----------      ---------------         ------------------------------
1.0         04/16/2016       USCLXK36                1. Initial Version



-----------------------------Execution script--------------------------------------
DECLARE @RC int
DECLARE @Cntry_flag varchar(5)='CA'
DECLARE @Totalcount int
DECLARE @Warcount int
DECLARE @ErrCount int
DECLARE @InsCount int

-- TODO: Set parameter values here.

EXECUTE @RC = DBO.[USP_DQ_LOAD_NEWSPEND] 
@Cntry_flag
,@Totalcount OUTPUT
,@Warcount OUTPUT
,@ErrCount OUTPUT
,@InsCount OUTPUT
GO

******************************************************************************/
BEGIN
BEGIN TRY
if (@Cntry_flag = 'CA')
BEGIN -- CA 
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/

UPDATE  [STG].NEW_SPEND_CA_STG
SET	
[PD]  = LTRIM(RTRIM([PD])),
      [Year]  = LTRIM(RTRIM([Year])),
      [Loc_Name] = LTRIM(RTRIM([Loc_Name])),
      [Loc_Cd] = LTRIM(RTRIM([Loc_Cd])),
      [Pstn_Title] = LTRIM(RTRIM([Pstn_Title])),
      [no_of_Grds] = LTRIM(RTRIM([no_of_Grds])),
      [Stright_Time] = LTRIM(RTRIM([Stright_Time])),
      [Bllng_Rt_Strght] = LTRIM(RTRIM([Bllng_Rt_Strght])),
      [Premium_Hours] = LTRIM(RTRIM([Premium_Hours])),
      [Premium_Billing_Rt] = LTRIM(RTRIM([Premium_Billing_Rt])),
      [Total_Billed] = LTRIM(RTRIM([Total_Billed])),
      [Cost_Center] = LTRIM(RTRIM([Cost_Center])),
      [GL] = LTRIM(RTRIM([GL]))

	  UPDATE  [STG].NEW_SPEND_CA_STG
SET	[Total_Billed]='0' where [Total_Billed] is null;
/*********************Removing Commas and $ Start *************************************/
	
UPDATE  [STG].NEW_SPEND_CA_STG
SET	

[PD]  = replace([PD],',',''),
      [Year]  = replace([Year],',',''),
      [Loc_Name] = replace([Loc_Name],',',''),
      [Loc_Cd] = replace([Loc_Cd],',',''),
      [Pstn_Title] = replace([Pstn_Title],',',''),
      [no_of_Grds] = replace([no_of_Grds],',',''),
      [Stright_Time] = replace([Stright_Time],',',''),
      [Bllng_Rt_Strght] = replace([Bllng_Rt_Strght],',',''),
      [Premium_Hours] = replace([Premium_Hours],',',''),
      [Premium_Billing_Rt] = replace([Premium_Billing_Rt],',',''),
      [Total_Billed] = replace([Total_Billed],',',''),
      [Cost_Center] = replace([Cost_Center],',',''),
      [GL] = replace([GL],',','')

;
UPDATE  [STG].NEW_SPEND_CA_STG
SET	
[PD]  = replace([PD],'$',''),
      [Year]  = replace([Year],'$',''),
      [Loc_Name] = replace([Loc_Name],'$',''),
      [Loc_Cd] = replace([Loc_Cd],'$',''),
      [Pstn_Title] = replace([Pstn_Title],'$',''),
      [no_of_Grds] = replace([no_of_Grds],'$',''),
      [Stright_Time] = replace([Stright_Time],'$',''),
      [Bllng_Rt_Strght] = replace([Bllng_Rt_Strght],'$',''),
      [Premium_Hours] = replace([Premium_Hours],'$',''),
      [Premium_Billing_Rt] = replace([Premium_Billing_Rt],'$',''),
      [Total_Billed] = replace([Total_Billed],'$',''),
      [Cost_Center] = replace([Cost_Center],'$',''),
      [GL] = replace([GL],'$','')

;
/*********************Removing Commas End *************************************/

	/*********************Removing brackets symbol Start *************************************/
	
UPDATE  [STG].NEW_SPEND_CA_STG
SET	

[PD]  = replace(replace([PD],'(','-'),')',''),
      [Year]  =replace(replace([Year],'(','-'),')',''),
      [Loc_Name] = replace(replace([Loc_Name],'(','-'),')',''),
      [Loc_Cd] =replace(replace([Loc_Cd],'(','-'),')',''),
      [Pstn_Title] = replace(replace([Pstn_Title],'(','-'),')',''),
      [no_of_Grds] = replace(replace([no_of_Grds],'(','-'),')',''),
      [Stright_Time] = replace(replace([Stright_Time],'(','-'),')',''),
      [Bllng_Rt_Strght] = replace(replace([Bllng_Rt_Strght],'(','-'),')',''),
      [Premium_Hours] = replace(replace([Premium_Hours],'(','-'),')',''),
      [Premium_Billing_Rt] = replace(replace([Premium_Billing_Rt],'(','-'),')',''),
      [Total_Billed] = replace(replace([Total_Billed],'(','-'),')',''),
      [Cost_Center] =replace(replace([Cost_Center],'(','-'),')',''),
      [GL] = replace(replace([GL],'(','-'),')','')
;

UPDATE  [STG].NEW_SPEND_CA_STG
SET	
  [Total_Billed] = replace([Total_Billed],'-','0.00');
/*********************Removing brackets symbol End *************************************/

/********************* Checking Duplicates *************************************/
   
;WITH    CheckDuplicates
AS      (SELECT ROW_NUMBER() OVER (PARTITION BY 
      [PD]
      ,[Year]
      ,[Loc_Name]
      ,[Loc_Cd]
      ,[Pstn_Title]
      ,[no_of_Grds]
      ,[Stright_Time]
      ,[Bllng_Rt_Strght]
      ,[Premium_Hours]
      ,[Premium_Billing_Rt]
      ,[Total_Billed]
      ,[Cost_Center]
      ,[GL] ORDER BY [PD]
      ,[Year]
      ,[Loc_Name]
      ,[Loc_Cd]
      ,[Pstn_Title]
      ,[no_of_Grds]
      ,[Stright_Time]
      ,[Bllng_Rt_Strght]
      ,[Premium_Hours]
      ,[Premium_Billing_Rt]
      ,[Total_Billed]
      ,[Cost_Center]
      ,[GL]) AS DuplicateRecCount
       , *
    FROM   [STG].NEW_SPEND_CA_STG AS t)

UPDATE  CheckDuplicates
SET Error_Flag      = 'Y'
-- [Error_Message] = ISNULL([Error_Message], '') + 'ERR:Duplicate record has been Found ||'
WHERE   DuplicateRecCount > 1;


/*********************CHECKING FOR NULLABLE VALUES*********************************/


--


/*********************START CHECKING DATA TYPE**************************************/

UPDATE  [KG_ZBB].[STG].NEW_SPEND_CA_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].NEW_SPEND_CA_STG
WHERE   isnumeric(no_of_Grds) <> 1 AND no_of_Grds is not null
--OR	[Cost_Per_Mile]LIKE '%[^0-9]%';

UPDATE  [KG_ZBB].[STG].NEW_SPEND_CA_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].NEW_SPEND_CA_STG
WHERE   isnumeric(Stright_Time) <> 1 AND Stright_Time is not null
--OR	[Tax_amnt]LIKE '%[^0-9]%' ; 

UPDATE  [KG_ZBB].[STG].NEW_SPEND_CA_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].NEW_SPEND_CA_STG
WHERE   isnumeric(Bllng_Rt_Strght) <> 1 AND Bllng_Rt_Strght is not null
--OR	[Ticket_Amt_Mns_Txs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].NEW_SPEND_CA_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].NEW_SPEND_CA_STG
WHERE   isnumeric(Premium_Hours) <> 1 AND Premium_Hours is not null
--OR	[Low_Fare]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].NEW_SPEND_CA_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].NEW_SPEND_CA_STG
WHERE   isnumeric(Premium_Billing_Rt) <> 1 AND Premium_Billing_Rt is not null
--OR	[Full_Fare]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].NEW_SPEND_CA_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].NEW_SPEND_CA_STG
WHERE   isnumeric(Total_Billed) <> 1 AND Total_Billed is not null
--OR	[Amnt_Lost]LIKE '%[^0-9]%' ;

									
/*********************Checking Total/Waring/Error Row Counts********************/
	
	
SELECT @Totalcount =   COUNT(1)
FROM   [KG_ZBB].[STG].NEW_SPEND_CA_STG G;
	

SELECT @Warcount = COUNT(1)
FROM   [KG_ZBB].[STG].NEW_SPEND_CA_STG
WHERE  Warning_Flag = 'Y';

SELECT @ErrCount =  COUNT(1)
FROM  [KG_ZBB].[STG].NEW_SPEND_CA_STG
WHERE  Error_Flag = 'Y';

	
IF (@ErrCount=0) 
begin 
/*********************Updating Rows in Final Tabele ***********************************/
 
delete a from [KG_ZBB].DBO.[NEW_SPEND_NA] a
inner join (select  [PD]
      ,[Year]
      ,[Loc_Name]
      ,[Loc_Cd]
      ,[Pstn_Title]
      ,[no_of_Grds]
      ,[Stright_Time]
      ,[Bllng_Rt_Strght]
      ,[Premium_Hours]
      ,[Premium_Billing_Rt]
      ,[Total_Billed]
      ,[Cost_Center]
      ,[GL] from [KG_ZBB].[STG].NEW_SPEND_CA_STG) b
on  a.[PD] = b.[PD]
     AND a.[Year]=b.[Year]
      AND a.[Loc_Name]=b.[Loc_Name]
      AND a.[Loc_Cd]=b.[Loc_Cd]
      AND a.[Pstn_Title]=b.[Pstn_Title]
      AND a.[no_of_Grds]=b.[no_of_Grds]
      AND a.[Stright_Time]=b.[Stright_Time]
      AND a.[Bllng_Rt_Strght]=b.[Bllng_Rt_Strght]
      AND a.[Premium_Hours]=b.[Premium_Hours]
      AND a.[Premium_Billing_Rt]=b.[Premium_Billing_Rt]
      AND a.[Total_Billed]=b.[Total_Billed]
      AND a.[Cost_Center]=b.[Cost_Center]
      AND a.[GL]=b.[GL]

/*********************Insert rows to Final Tabele ***********************************/


INSERT INTO [KG_ZBB].Dbo.[NEW_SPEND_NA]
(
 [PD]
      ,[Year]
      ,[Loc_Name]
      ,[Loc_Cd]
      ,[Pstn_Title]
      ,[no_of_Grds]
      ,[Stright_Time]
      ,[Bllng_Rt_Strght]
      ,[Premium_Hours]
      ,[Premium_Billing_Rt]
      ,[Total_Billed]
      ,[Cost_Center]
      ,[GL]
  
)
SELECT   [PD]
      ,[Year]
      ,[Loc_Name]
      ,[Loc_Cd]
      ,[Pstn_Title]
      ,isnull(cast([no_of_Grds] as decimal(18,2)),0)
      ,isnull(cast([Stright_Time] as decimal(18,2)),0)
      ,isnull(cast([Bllng_Rt_Strght] as decimal(18,2)),0)
      ,isnull(cast([Premium_Hours] as decimal(18,2)),0)
      ,isnull(cast([Premium_Billing_Rt] as decimal(18,2)),0)
      ,isnull(cast([Total_Billed] as decimal(18,2)),0)      
      ,[Cost_Center]
      ,[GL]
  FROM [KG_ZBB].[STG].NEW_SPEND_CA_STG


SELECT @InsCount = @@ROWCOUNT
PRINT 'Rows Inserted Into [NEW_SPEND_NA] Table:0';
PRINT @InsCount;

end 



END --CA

if (@Cntry_flag = 'US')
BEGIN -- US 
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/

UPDATE  [STG].NEW_SPEND_US_STG
SET	
[PD]  = LTRIM(RTRIM([PD])),
      [Year]  = LTRIM(RTRIM([Year])),
      [Loc_Name] = LTRIM(RTRIM([Loc_Name])),
      [Loc_Cd] = LTRIM(RTRIM([Loc_Cd])),
      [Pstn_Title] = LTRIM(RTRIM([Pstn_Title])),
      [no_of_Grds] = LTRIM(RTRIM([no_of_Grds])),
      [Stright_Time] = LTRIM(RTRIM([Stright_Time])),
      [Bllng_Rt_Strght] = LTRIM(RTRIM([Bllng_Rt_Strght])),
      [Premium_Hours] = LTRIM(RTRIM([Premium_Hours])),
      [Premium_Billing_Rt] = LTRIM(RTRIM([Premium_Billing_Rt])),
      [Total_Billed] = LTRIM(RTRIM([Total_Billed])),
      [Cost_Center] = LTRIM(RTRIM([Cost_Center])),
      [GL] = LTRIM(RTRIM([GL]))

/*********************Removing Commas and $ Start *************************************/
	
UPDATE  [STG].NEW_SPEND_US_STG
SET	

[PD]  = replace([PD],',',''),
      [Year]  = replace([Year],',',''),
      [Loc_Name] = replace([Loc_Name],',',''),
      [Loc_Cd] = replace([Loc_Cd],',',''),
      [Pstn_Title] = replace([Pstn_Title],',',''),
      [no_of_Grds] = replace([no_of_Grds],',',''),
      [Stright_Time] = replace([Stright_Time],',',''),
      [Bllng_Rt_Strght] = replace([Bllng_Rt_Strght],',',''),
      [Premium_Hours] = replace([Premium_Hours],',',''),
      [Premium_Billing_Rt] = replace([Premium_Billing_Rt],',',''),
      [Total_Billed] = replace([Total_Billed],',',''),
      [Cost_Center] = replace([Cost_Center],',',''),
      [GL] = replace([GL],',','')

;
 UPDATE  [STG].NEW_SPEND_US_STG
SET	[Total_Billed]='0' where [Total_Billed] is null;
UPDATE  [STG].NEW_SPEND_US_STG
SET	
[PD]  = replace([PD],'$',''),
      [Year]  = replace([Year],'$',''),
      [Loc_Name] = replace([Loc_Name],'$',''),
      [Loc_Cd] = replace([Loc_Cd],'$',''),
      [Pstn_Title] = replace([Pstn_Title],'$',''),
      [no_of_Grds] = replace([no_of_Grds],'$',''),
      [Stright_Time] = replace([Stright_Time],'$',''),
      [Bllng_Rt_Strght] = replace([Bllng_Rt_Strght],'$',''),
      [Premium_Hours] = replace([Premium_Hours],'$',''),
      [Premium_Billing_Rt] = replace([Premium_Billing_Rt],'$',''),
      [Total_Billed] = replace([Total_Billed],'$',''),
      [Cost_Center] = replace([Cost_Center],'$',''),
      [GL] = replace([GL],'$','')

;
UPDATE  [STG].NEW_SPEND_US_STG
SET	
  [Total_Billed] = replace([Total_Billed],'-','0.00');
/*********************Removing Commas End *************************************/

	/*********************Removing brackets symbol Start *************************************/
	
UPDATE  [STG].NEW_SPEND_US_STG
SET	

[PD]  = replace(replace([PD],'(','-'),')',''),
      [Year]  =replace(replace([Year],'(','-'),')',''),
      [Loc_Name] = replace(replace([Loc_Name],'(','-'),')',''),
      [Loc_Cd] =replace(replace([Loc_Cd],'(','-'),')',''),
      [Pstn_Title] = replace(replace([Pstn_Title],'(','-'),')',''),
      [no_of_Grds] = replace(replace([no_of_Grds],'(','-'),')',''),
      [Stright_Time] = replace(replace([Stright_Time],'(','-'),')',''),
      [Bllng_Rt_Strght] = replace(replace([Bllng_Rt_Strght],'(','-'),')',''),
      [Premium_Hours] = replace(replace([Premium_Hours],'(','-'),')',''),
      [Premium_Billing_Rt] = replace(replace([Premium_Billing_Rt],'(','-'),')',''),
      [Total_Billed] = replace(replace([Total_Billed],'(','-'),')',''),
      [Cost_Center] =replace(replace([Cost_Center],'(','-'),')',''),
      [GL] = replace(replace([GL],'(','-'),')','')
;

/*********************Removing brackets symbol End *************************************/

/********************* Checking DupliUStes *************************************/
   
;WITH    CheckDuplicates
AS      (SELECT ROW_NUMBER() OVER (PARTITION BY 
      [PD]
      ,[Year]
      ,[Loc_Name]
      ,[Loc_Cd]
      ,[Pstn_Title]
      ,[no_of_Grds]
      ,[Stright_Time]
      ,[Bllng_Rt_Strght]
      ,[Premium_Hours]
      ,[Premium_Billing_Rt]
      ,[Total_Billed]
      ,[Cost_Center]
      ,[GL] ORDER BY [PD]
      ,[Year]
      ,[Loc_Name]
      ,[Loc_Cd]
      ,[Pstn_Title]
      ,[no_of_Grds]
      ,[Stright_Time]
      ,[Bllng_Rt_Strght]
      ,[Premium_Hours]
      ,[Premium_Billing_Rt]
      ,[Total_Billed]
      ,[Cost_Center]
      ,[GL]) AS DuplicateRecCount
       , *
    FROM   [STG].NEW_SPEND_US_STG AS t)

UPDATE  CheckDuplicates
SET Error_Flag      = 'Y'
-- [Error_Message] = ISNULL([Error_Message], '') + 'ERR:Duplicate record has been Found ||'
WHERE   DuplicateRecCount > 1;


/*********************CHECKING FOR NULLABLE VALUES*********************************/


--


/*********************START CHECKING DATA TYPE**************************************/

UPDATE  [KG_ZBB].[STG].NEW_SPEND_US_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].NEW_SPEND_US_STG
WHERE   isnumeric(no_of_Grds) <> 1 AND no_of_Grds is not null
--OR	[Cost_Per_Mile]LIKE '%[^0-9]%';

UPDATE  [KG_ZBB].[STG].NEW_SPEND_US_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].NEW_SPEND_US_STG
WHERE   isnumeric(Stright_Time) <> 1 AND Stright_Time is not null
--OR	[Tax_amnt]LIKE '%[^0-9]%' ; 

UPDATE  [KG_ZBB].[STG].NEW_SPEND_US_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].NEW_SPEND_US_STG
WHERE   isnumeric(Bllng_Rt_Strght) <> 1 AND Bllng_Rt_Strght is not null
--OR	[Ticket_Amt_Mns_Txs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].NEW_SPEND_US_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].NEW_SPEND_US_STG
WHERE   isnumeric(Premium_Hours) <> 1 AND Premium_Hours is not null
--OR	[Low_Fare]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].NEW_SPEND_US_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].NEW_SPEND_US_STG
WHERE   isnumeric(Premium_Billing_Rt) <> 1 AND Premium_Billing_Rt is not null
--OR	[Full_Fare]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].NEW_SPEND_US_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].NEW_SPEND_US_STG
WHERE   isnumeric(Total_Billed) <> 1 AND Total_Billed is not null
--OR	[Amnt_Lost]LIKE '%[^0-9]%' ;

									
/*********************Checking Total/Waring/Error Row Counts********************/
	
	
SELECT @Totalcount =   COUNT(1)
FROM   [KG_ZBB].[STG].NEW_SPEND_US_STG;
	

SELECT @Warcount = COUNT(1)
FROM   [KG_ZBB].[STG].NEW_SPEND_US_STG
WHERE  Warning_Flag = 'Y';

SELECT @ErrCount =  COUNT(1)
FROM  [KG_ZBB].[STG].NEW_SPEND_US_STG
WHERE  Error_Flag = 'Y';

	
IF (@ErrCount=0) 
begin 
/*********************Updating Rows in Final Tabele ***********************************/
 
delete a from [KG_ZBB].DBO.[NEW_SPEND_NA] a
inner join (select  [PD]
      ,[Year]
      ,[Loc_Name]
      ,[Loc_Cd]
      ,[Pstn_Title]
      ,[no_of_Grds]
      ,[Stright_Time]
      ,[Bllng_Rt_Strght]
      ,[Premium_Hours]
      ,[Premium_Billing_Rt]
      ,[Total_Billed]
      ,[Cost_Center]
      ,[GL] from [KG_ZBB].[STG].NEW_SPEND_US_STG) b
on  a.[PD] = b.[PD]
     AND a.[Year]=b.[Year]
      AND a.[Loc_Name]=b.[Loc_Name]
      AND a.[Loc_Cd]=b.[Loc_Cd]
      AND a.[Pstn_Title]=b.[Pstn_Title]
      AND a.[no_of_Grds]=b.[no_of_Grds]
      AND a.[Stright_Time]=b.[Stright_Time]
      AND a.[Bllng_Rt_Strght]=b.[Bllng_Rt_Strght]
      AND a.[Premium_Hours]=b.[Premium_Hours]
      AND a.[Premium_Billing_Rt]=b.[Premium_Billing_Rt]
      AND a.[Total_Billed]=b.[Total_Billed]
      AND a.[Cost_Center]=b.[Cost_Center]
      AND a.[GL]=b.[GL]

/*********************Insert rows to Final Tabele ***********************************/


INSERT INTO [KG_ZBB].Dbo.[NEW_SPEND_NA]
(
 [PD]
      ,[Year]
      ,[Loc_Name]
      ,[Loc_Cd]
      ,[Pstn_Title]
      ,[no_of_Grds]
      ,[Stright_Time]
      ,[Bllng_Rt_Strght]
      ,[Premium_Hours]
      ,[Premium_Billing_Rt]
      ,[Total_Billed]
      ,[Cost_Center]
      ,[GL]
  
)
SELECT   [PD]
      ,[Year]
      ,[Loc_Name]
      ,[Loc_Cd]
      ,[Pstn_Title]
      ,isnull(cast([no_of_Grds] as decimal(18,2)),0)
      ,isnull(cast([Stright_Time] as decimal(18,2)),0)
      ,isnull(cast([Bllng_Rt_Strght] as decimal(18,2)),0)
      ,isnull(cast([Premium_Hours] as decimal(18,2)),0)
      ,isnull(cast([Premium_Billing_Rt] as decimal(18,2)),0)
      ,isnull(cast([Total_Billed] as decimal(18,2)),0)      
      ,[Cost_Center]
      ,[GL]
  FROM [KG_ZBB].[STG].NEW_SPEND_US_STG


SELECT @InsCount = @@ROWCOUNT
PRINT 'Rows Inserted Into [NEW_SPEND_NA] Table:0';
PRINT @InsCount;

end 



END --us


END TRY
BEGIN CATCH
END CATCH
END








GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_PRINTERS_LXK]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




create  PROCEDURE [dbo].[USP_DQ_LOAD_PRINTERS_LXK]
--@Client_Name VARCHAR (50), 
--@Table_Name VARCHAR (50), 
--@Cntry_flag  varchar(5),
@Totalcount INT OUTPUT, 
@Warcount INT OUTPUT, 
@ErrCount INT OUTPUT, 
@InsCount INT OUTPUT
---@UpdCount INT OUTPUT--, 
--@BatchDetailID INT OUTPUT

AS

/******************************************************************************
NAME        :  [[USP_DQ_LOAD_PRINTERS_LXK]]
PURPOSE & 
Description :  This script will load data into [[PRINTERS_LXK]] table from stg table.
			   
			Also this script will do data validations like data type check,removing spaces and special charecters .	
REVISIONS:
Ver          Date             Author                    Change Reason
------    ----------      ---------------         ------------------------------
1.0         04/16/2016       USCLXK36                1. Initial Version



-----------------------------Execution script--------------------------------------
DECLARE @RC int
--DECLARE @Cntry_flag varchar(5)='CA'
DECLARE @Totalcount int
DECLARE @Warcount int
DECLARE @ErrCount int
DECLARE @InsCount int

-- TODO: Set parameter values here.

EXECUTE @RC = DBO.[USP_DQ_LOAD_PRINTERS_LXK] 
,@Totalcount OUTPUT
,@Warcount OUTPUT
,@ErrCount OUTPUT
,@InsCount OUTPUT
GO

******************************************************************************/
BEGIN
BEGIN TRY
--if (@Cntry_flag = 'CA')
BEGIN -- CA 
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/

UPDATE  [STG].PRINTERS_LXK_STG
SET	
    [Master_Inv] =LTRIM(RTRIM( [Master_Inv])),
   [Bill_To_Inv]  =LTRIM(RTRIM([Bill_To_Inv])),
    [Cust_Inv] =LTRIM(RTRIM([Cust_Inv])),
    [Rpt_Hier_1] =LTRIM(RTRIM([Rpt_Hier_1])),
   [Rpt_Hier_2]  =LTRIM(RTRIM([Rpt_Hier_2])),
     [Rpt_Hier_3]=LTRIM(RTRIM([Rpt_Hier_3])),
   [Rpt_Hier_4]  =LTRIM(RTRIM([Rpt_Hier_4])),
    [Rpt_Hier_5] =LTRIM(RTRIM([Rpt_Hier_5])),
     [Cost_Center]=LTRIM(RTRIM([Cost_Center])),
    [Addr_Name] =LTRIM(RTRIM([Addr_Name])),
    [Install_Addr_Line1] =LTRIM(RTRIM([Install_Addr_Line1])),
    [Install_Addr_Line2] =LTRIM(RTRIM([Install_Addr_Line2])),
     [City_Suburb]=LTRIM(RTRIM([City_Suburb])),
    [State_Province] =LTRIM(RTRIM([State_Province])),
     [Country]=LTRIM(RTRIM([Country])),
     [Postal_Code]=LTRIM(RTRIM([Postal_Code])),
    [Physical_Loc_1] =LTRIM(RTRIM([Physical_Loc_1])),
     [Asset_Tag]=LTRIM(RTRIM([Asset_Tag])),
    [Manufacturer] =LTRIM(RTRIM([Manufacturer])),
     [Device]=LTRIM(RTRIM([Device])),
    [Serial_NO] =LTRIM(RTRIM([Serial_NO])),
    [IP_Addr] =LTRIM(RTRIM([IP_Addr])),
    [Charge_Typ] =LTRIM(RTRIM([Charge_Typ])),
     [Recurring_Amt]=LTRIM(RTRIM([Recurring_Amt])),
    [Meas] =LTRIM(RTRIM([Meas])),
     [Start_Meter_Read]=LTRIM(RTRIM([Start_Meter_Read])),
     [End_Meter_Read]=LTRIM(RTRIM([End_Meter_Read])),
     [Curr_Perd_Bllbl_Usg]=LTRIM(RTRIM([Curr_Perd_Bllbl_Usg])),
    [Usage_Rt] =LTRIM(RTRIM([Usage_Rt])),
    [Usage_Amnt] =LTRIM(RTRIM([Usage_Amnt])),
     [Tot_Charge_exclTax]=LTRIM(RTRIM([Tot_Charge_exclTax])),
     [Sales_Tax]=LTRIM(RTRIM([Sales_Tax])),
    [Tot_Charge_IncTax] =LTRIM(RTRIM([Tot_Charge_IncTax])),
    [meas_code] =LTRIM(RTRIM([meas_code])),
   [charge_typ_cd]  =LTRIM(RTRIM([charge_typ_cd]))
   ;
	  
/*********************Removing Commas and $ Start *************************************/
	
UPDATE  [STG].PRINTERS_LXK_STG
SET	

--[PD]  = replace([PD],',',''),
       [Recurring_Amt]=replace([Recurring_Amt],',',''),
    --[Meas] =replace([Meas],',',''),
     [Start_Meter_Read]=replace([Start_Meter_Read],',',''),
     [End_Meter_Read]=replace([End_Meter_Read],',',''),
     [Curr_Perd_Bllbl_Usg]=replace([Curr_Perd_Bllbl_Usg],',',''),
    [Usage_Rt] =replace([Usage_Rt],',',''),
    [Usage_Amnt] =replace([Usage_Amnt],',',''),
     [Tot_Charge_exclTax]=replace([Tot_Charge_exclTax],',',''),
     [Sales_Tax]=replace([Sales_Tax],',',''),
    [Tot_Charge_IncTax] =replace([Tot_Charge_IncTax],',',''),
    [meas_code] =replace([meas_code],',','')
     

;
UPDATE  [STG].PRINTERS_LXK_STG
SET	
--[PD]  = replace([PD],'$',''),
       [Recurring_Amt]=replace([Recurring_Amt],'$',''),
   -- [Meas] =replace([Meas],'$',''),
     [Start_Meter_Read]=replace([Start_Meter_Read],'$',''),
     [End_Meter_Read]=replace([End_Meter_Read],'$',''),
     [Curr_Perd_Bllbl_Usg]=replace([Curr_Perd_Bllbl_Usg],'$',''),
    [Usage_Rt] =replace([Usage_Rt],'$',''),
    [Usage_Amnt] =replace([Usage_Amnt],'$',''),
     [Tot_Charge_exclTax]=replace([Tot_Charge_exclTax],'$',''),
     [Sales_Tax]=replace([Sales_Tax],'$',''),
    [Tot_Charge_IncTax] =replace([Tot_Charge_IncTax],'$',''),
    [meas_code] =replace([meas_code],'$','')

;
/*********************Removing Commas End *************************************/

	/*********************Removing brackets symbol Start *************************************/
	
UPDATE  [STG].PRINTERS_LXK_STG
SET	

[Recurring_Amt]  = replace(replace([Recurring_Amt],'(','-'),')',''),
      [Start_Meter_Read]  =replace(replace([Start_Meter_Read],'(','-'),')',''),
      [End_Meter_Read] = replace(replace([End_Meter_Read],'(','-'),')',''),
      [Curr_Perd_Bllbl_Usg] =replace(replace([Curr_Perd_Bllbl_Usg],'(','-'),')',''),
      [Usage_Rt] = replace(replace([Usage_Rt],'(','-'),')',''),
      [Usage_Amnt] = replace(replace([Usage_Amnt],'(','-'),')',''),
      [Tot_Charge_exclTax] = replace(replace([Tot_Charge_exclTax],'(','-'),')',''),
      [Sales_Tax] = replace(replace([Sales_Tax],'(','-'),')',''),
      [Tot_Charge_IncTax] = replace(replace([Tot_Charge_IncTax],'(','-'),')','')
     ;
	 
/*********************Removing brackets symbol End *************************************/

/********************* Checking Duplicates *************************************/
   
;WITH    CheckDuplicates
AS      (SELECT ROW_NUMBER() OVER (PARTITION BY 
     serial_no,meas_code,charge_typ_cd order by serial_no) AS DuplicateRecCount
       , *
    FROM   [STG].PRINTERS_LXK_STG AS t )

UPDATE  CheckDuplicates
SET Error_Flag      = 'Y'
-- [Error_Message] = ISNULL([Error_Message], '') + 'ERR:Duplicate record has been Found ||'
WHERE   DuplicateRecCount > 1;


/*********************CHECKING FOR NULLABLE VALUES*********************************/


--


/*********************START CHECKING DATA TYPE**************************************/

UPDATE  [KG_ZBB].[STG].PRINTERS_LXK_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].PRINTERS_LXK_STG
WHERE   isnumeric([Recurring_Amt]) <> 1 AND [Recurring_Amt] is not null
--OR	[Cost_Per_Mile]LIKE '%[^0-9]%';

UPDATE  [KG_ZBB].[STG].PRINTERS_LXK_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].PRINTERS_LXK_STG
WHERE   isnumeric([Start_Meter_Read]) <> 1 AND [Start_Meter_Read] is not null
--OR	[Tax_amnt]LIKE '%[^0-9]%' ; 

UPDATE  [KG_ZBB].[STG].PRINTERS_LXK_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].PRINTERS_LXK_STG
WHERE   isnumeric([End_Meter_Read]) <> 1 AND [End_Meter_Read] is not null
--OR	[Ticket_Amt_Mns_Txs]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].PRINTERS_LXK_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].PRINTERS_LXK_STG
WHERE   isnumeric([Curr_Perd_Bllbl_Usg]) <> 1 AND [Curr_Perd_Bllbl_Usg] is not null
--OR	[Low_Fare]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].PRINTERS_LXK_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].PRINTERS_LXK_STG
WHERE   isnumeric([Usage_Rt]) <> 1 AND [Usage_Rt] is not null
--OR	[Full_Fare]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].PRINTERS_LXK_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].PRINTERS_LXK_STG
WHERE   isnumeric([Usage_Amnt]) <> 1 AND [Usage_Amnt] is not null
--OR	[Amnt_Lost]LIKE '%[^0-9]%' ;

UPDATE  [KG_ZBB].[STG].PRINTERS_LXK_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].PRINTERS_LXK_STG
WHERE   isnumeric([Tot_Charge_exclTax]) <> 1 AND [Tot_Charge_exclTax] is not null

UPDATE  [KG_ZBB].[STG].PRINTERS_LXK_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].PRINTERS_LXK_STG
WHERE   isnumeric([Sales_Tax]) <> 1 AND [Sales_Tax] is not null

UPDATE  [KG_ZBB].[STG].PRINTERS_LXK_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].PRINTERS_LXK_STG
WHERE   isnumeric([Tot_Charge_IncTax]) <> 1 AND [Tot_Charge_IncTax] is not null

;
      
									
/*********************Checking Total/Waring/Error Row Counts********************/
	
	
SELECT @Totalcount =   COUNT(1)
FROM   [KG_ZBB].[STG].PRINTERS_LXK_STG G;
	

SELECT @Warcount = COUNT(1)
FROM   [KG_ZBB].[STG].PRINTERS_LXK_STG
WHERE  Warning_Flag = 'Y';

SELECT @ErrCount =  COUNT(1)
FROM  [KG_ZBB].[STG].PRINTERS_LXK_STG
WHERE  Error_Flag = 'Y';

	
IF (@ErrCount=0) 
BEGIN 
/*********************Updating Rows in Final Tabele ***********************************/

/*DELETE a from [KG_ZBB].DBO.[PRINTERS_LXK] a
inner join (select Master_Inv, Bill_To_Inv, Cust_Inv, Rpt_Hier_1, Rpt_Hier_2, Rpt_Hier_3, Rpt_Hier_4, Rpt_Hier_5, 
Cost_Center, Addr_Name, Install_Addr_Line1, Install_Addr_Line2, City_Suburb, State_Province, Country, Postal_Code, 
Physical_Loc_1, Asset_Tag, Manufacturer, Device, Serial_NO, IP_Addr, Charge_Typ, Recurring_Amt, Meas, Start_Meter_Read, 
End_Meter_Read, Curr_Perd_Bllbl_Usg, Usage_Rt, Usage_Amnt, Tot_Charge_exclTax, Sales_Tax, Tot_Charge_IncTax, meas_code, 
charge_typ_cd FROM [KG_ZBB].[STG].PRINTERS_LXK_STG
 ) b
on  a.Serial_NO = b.Serial_NO
     AND a.meas_code=b.meas_code
      AND a.charge_typ_cd=b.charge_typ_cd 
	  AND 
   a.Master_Inv= b.Master_Inv AND a.Bill_To_Inv =b.Bill_To_Inv
   AND  a.Cust_Inv=b.Cust_Inv  and  a.Rpt_Hier_1 =b.Rpt_Hier_1 and  a.Rpt_Hier_2=b.Rpt_Hier_2  and  a.Rpt_Hier_3 =a.Rpt_Hier_3 
   AND  a.Rpt_Hier_4 =a.Rpt_Hier_4 and  a.Rpt_Hier_5=b.Rpt_Hier_5  and  
a.Cost_Center=b.Cost_Center  
AND a. Addr_Name =b.Addr_Name and  a.Install_Addr_Line1=b.Install_Addr_Line1  and  a.Install_Addr_Line2 =b.Install_Addr_Line2 
AND  a.City_Suburb =b.City_Suburb and  a.State_Province=b.State_Province  and  a.Country =b.Country and  a.Postal_Code =b.Postal_Code and  
a.Physical_Loc_1=b.Physical_Loc_1  and  a.Asset_Tag =b.Asset_Tag and  a.Manufacturer=b.Manufacturer  
AND  a.Device =b.Device and  a.Serial_NO=b.Serial_NO  and  a.IP_Addr=b.IP_Addr  and  a.Charge_Typ=b.Charge_Typ  
AND  a.Recurring_Amt =b.Recurring_Amt and a. Meas=b.Meas  and  a.Start_Meter_Read =b.Start_Meter_Read and  
a.End_Meter_Read =b.End_Meter_Read and  a.Curr_Perd_Bllbl_Usg=b.Curr_Perd_Bllbl_Usg 
 and  a.Usage_Rt =b.Usage_Rt and  a.Usage_Amnt =b.Usage_Amnt and  a.Tot_Charge_exclTax =b.Tot_Charge_exclTax 
 AND  a.Sales_Tax =b.Sales_Tax and  a.Tot_Charge_IncTax  =b.Tot_Charge_IncTax
AND a.meas_code=b.meas_code AND 
a.charge_typ_cd =b.charge_typ_cd
*/

/*********************Insert rows to Final Tabele ***********************************/


INSERT INTO [KG_ZBB].Dbo.[PRINTERS_LXK]
(
[Master_Inv]
      ,[Bill_To_Inv]
      ,[Cust_Inv]
      ,[Rpt_Hier_1]
      ,[Rpt_Hier_2]
      ,[Rpt_Hier_3]
      ,[Rpt_Hier_4]
      ,[Rpt_Hier_5]
      ,[Cost_Center]
      ,[Addr_Name]
      ,[Install_Addr_Line1]
      ,[Install_Addr_Line2]
      ,[City_Suburb]
      ,[State_Province]
      ,[Country]
      ,[Postal_Code]
      ,[Physical_Loc_1]
      ,[Asset_Tag]
      ,[Manufacturer]
      ,[Device]
      ,[Serial_NO]
      ,[IP_Addr]
      ,[Charge_Typ]
      ,[Recurring_Amt]
      ,[Meas]
      ,[Start_Meter_Read]
      ,[End_Meter_Read]
      ,[Curr_Perd_Bllbl_Usg]
      ,[Usage_Rt]
      ,[Usage_Amnt]
      ,[Tot_Charge_exclTax]
      ,[Sales_Tax]
      ,[Tot_Charge_IncTax]
      ,[meas_code]
      ,[charge_typ_cd]
	 , invc_dt
  
)
SELECT  [Master_Inv]
      ,[Bill_To_Inv]
      ,[Cust_Inv]
      ,[Rpt_Hier_1]
      ,[Rpt_Hier_2]
      ,[Rpt_Hier_3]
      ,[Rpt_Hier_4]
      ,[Rpt_Hier_5]
      ,[Cost_Center]
      ,[Addr_Name]
      ,[Install_Addr_Line1]
      ,[Install_Addr_Line2]
      ,[City_Suburb]
      ,[State_Province]
      ,[Country]
      ,[Postal_Code]
      ,[Physical_Loc_1]
      ,[Asset_Tag]
      ,[Manufacturer]
      ,[Device]
      ,[Serial_NO]
      ,[IP_Addr]
      ,[Charge_Typ]
      ,ISNULL(CAST([Recurring_Amt] AS DECIMAL(18,2)),0)
      ,[Meas]
      ,[Start_Meter_Read]
      ,[End_Meter_Read]
      ,[Curr_Perd_Bllbl_Usg]
      ,ISNULL(CAST([Usage_Rt] AS DECIMAL(18,2)),0)
      ,ISNULL(CAST([Usage_Amnt] AS DECIMAL(18,2)),0)
      ,ISNULL(CAST([Tot_Charge_exclTax] AS DECIMAL(18,2)),0)
      ,ISNULL(CAST([Sales_Tax] AS DECIMAL(18,2)),0)
      ,ISNULL(CAST([Tot_Charge_IncTax] AS DECIMAL(18,2)),0)
      ,[meas_code]
      ,[charge_typ_cd],
	  lh.[INVOICE DATE]
  FROM [KG_ZBB].[STG].PRINTERS_LXK_STG
   CROSS JOIN (SELECT  MAX(CAST(invc_dt AS DATE)) AS [INVOICE DATE] FROM STG.PRINTER_LXK_SUMM_STG) LH
   WHERE [Master_Inv] NOT LIKE '%TOTAL%'


SELECT @InsCount = @@ROWCOUNT
PRINT 'Rows Inserted Into [PRINTERS_LXK] Table:0';
PRINT @InsCount;

END 



END 


END TRY
BEGIN CATCH
END CATCH
END












GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_PRINTERS_LXK_SUMM]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[USP_DQ_LOAD_PRINTERS_LXK_SUMM]
@Totalcount INT OUTPUT, 
@Warcount INT OUTPUT, 
@ErrCount INT OUTPUT, 
@InsCount INT OUTPUt

AS

/******************************************************************************
NAME        :  USP_DQ_LOAD_PRINTERS_LXK_SUMM
PURPOSE & 
Description :  This script will load data into [PRINTERS_LXK_SUMM] table from stg table.
			   
			Also this script will do data validations like data type check,removing spaces and special charecters .	
REVISIONS:
Ver          Date             Author                    Change Reason
------    ----------      ---------------         ------------------------------
1.0         04/16/2016       USCLXK36                1. Initial Version



-----------------------------Execution script--------------------------------------
DECLARE @RC int
DECLARE @Totalcount int
DECLARE @Warcount int
DECLARE @ErrCount int
DECLARE @InsCount int

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[USP_DQ_LOAD_PRINTERS_LXK_SUMM] 
   @Totalcount OUTPUT
  ,@Warcount OUTPUT
  ,@ErrCount OUTPUT
  ,@InsCount OUTPUT
GO
******************************************************************************/

BEGIN

BEGIN TRY

/********************* REMOVE SPACE ON EACH COLUMN  *********************************/

UPDATE  [STG].PRINTER_LXK_SUMM_STG
SET	
Header_Detail=ltrim(rtrim(Header_Detail)), 
Pmt_Mthd =ltrim(rtrim(Pmt_Mthd)), 
pmt_Mthd_Supl=ltrim(rtrim(pmt_Mthd_Supl)), 
Currency=ltrim(rtrim(Currency)), 
Pmt_Terms=ltrim(rtrim(Pmt_Terms)), 
Posting_Dt=ltrim(rtrim(Posting_Dt)), 
Header_Cmpny_cd=ltrim(rtrim(Header_Cmpny_cd)), 
Post_Key21_Credit31_inv=ltrim(rtrim(Post_Key21_Credit31_inv)),
Vendor_NO =ltrim(rtrim(Vendor_NO)), 
Invc_Dt=ltrim(rtrim(Invc_Dt)), 
Invc_NO=ltrim(rtrim(Invc_NO)), 
Doc_Header_Txt=ltrim(rtrim(Doc_Header_Txt)), 
Vendor_Txt=ltrim(rtrim(Vendor_Txt)), 
Invc_tot=ltrim(rtrim(Invc_tot)), 
Tax_Amnt=ltrim(rtrim(Tax_Amnt)), 
Cmpny_cd=ltrim(rtrim(Cmpny_cd)), 
GL_accnt=ltrim(rtrim(GL_accnt)), 
Cst_Cntr=ltrim(rtrim(Cst_Cntr)), 
ION_order=ltrim(rtrim(ION_order)), 
Item_Amount=ltrim(rtrim(Item_Amount)), 
PK40_Debit_50_Crdt=ltrim(rtrim(PK40_Debit_50_Crdt)), 
Tax_Cd=ltrim(rtrim(Tax_Cd)), 
Tax_Jrsdctn=ltrim(rtrim(Tax_Jrsdctn)), 
Dtl_Txt=ltrim(rtrim(Dtl_Txt)), 
Error_Flag=ltrim(rtrim(Error_Flag)), 
Warning_Flag=ltrim(rtrim(Warning_Flag));
	  
/*********************Removing Commas and $ Start *************************************/
	
UPDATE  [STG].PRINTER_LXK_SUMM_STG
SET	
[Invc_tot] =replace([Invc_tot],'$',''),
[Item_Amount] =replace([Item_Amount],'$',''),
[PK40_Debit_50_Crdt] =replace([PK40_Debit_50_Crdt],'$','');;


UPDATE  [STG].PRINTER_LXK_SUMM_STG
SET	
[Invc_tot] =replace([Invc_tot],',',''),
[Item_Amount] =replace([Item_Amount],',',''),
[PK40_Debit_50_Crdt] =replace([PK40_Debit_50_Crdt],',','');

/*********************Removing Commas End *************************************/

/*********************Removing brackets symbol Start *************************************/
	
UPDATE  [STG].PRINTER_LXK_SUMM_STG
SET	
[Invc_tot] =replace(replace([Invc_tot],'(','-'),')',''),
[Item_Amount] =replace(replace([Item_Amount],'(','-'),')',''),
[PK40_Debit_50_Crdt] =replace(replace([PK40_Debit_50_Crdt],'(','-'),')','');
     ;
/*********************Removing brackets symbol End *************************************/

/********************* Checking Duplicates *************************************/
;WITH    CheckDuplicates
AS      (SELECT ROW_NUMBER() OVER (PARTITION BY Invc_NO
order by Invc_NO) AS DuplicateRecCount
, *
FROM   [STG].PRINTER_LXK_SUMM_STG AS t )

UPDATE  CheckDuplicates
SET Error_Flag      = 'Y'
WHERE   DuplicateRecCount > 1;



/*********************CHECKING FOR NULLABLE VALUES*********************************/
UPDATE [KG_ZBB].[STG].PRINTER_LXK_SUMM_STG
SET Error_Flag      = 'Y'
WHERE  [Invc_NO]  IS NULL
OR [Invc_NO] = '';


/*********************START CHECKING DATA TYPE**************************************/
UPDATE  [KG_ZBB].[STG].PRINTER_LXK_SUMM_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].PRINTER_LXK_SUMM_STG
WHERE   isnumeric([Invc_tot]) <> 1 AND [Invc_tot] is not null;

UPDATE  [KG_ZBB].[STG].PRINTER_LXK_SUMM_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].PRINTER_LXK_SUMM_STG
WHERE   isnumeric([Item_Amount]) <> 1 AND [Item_Amount] is not null;

UPDATE  [KG_ZBB].[STG].PRINTER_LXK_SUMM_STG
SET Error_Flag      = 'Y'
FROM   [KG_ZBB].[STG].PRINTER_LXK_SUMM_STG
WHERE   isnumeric([PK40_Debit_50_Crdt]) <> 1 AND [PK40_Debit_50_Crdt] is not null;
      
									
/*********************Checking Total/Waring/Error Row Counts********************/
	
	
SELECT @Totalcount =   COUNT(1)
FROM   [KG_ZBB].[STG].PRINTER_LXK_SUMM_STG G;
	

SELECT @Warcount = COUNT(1)
FROM   [KG_ZBB].[STG].PRINTER_LXK_SUMM_STG
WHERE  Warning_Flag = 'Y';

SELECT @ErrCount =  COUNT(1)
FROM  [KG_ZBB].[STG].PRINTER_LXK_SUMM_STG
WHERE  Error_Flag = 'Y';

	
IF (@ErrCount=0) 
begin 
/*********************Updating Rows in Final Tabele ***********************************/
 
delete a from [KG_ZBB].DBO.[PRINTER_LXK_SUMM] A
inner join (select [Invc_NO] from [KG_ZBB].[STG].PRINTER_LXK_SUMM_STG) b
on  a.[Invc_NO]= b.[Invc_NO]
 ;

/*********************Insert rows to Final Tabele ***********************************/


INSERT INTO [dbo].[PRINTER_LXK_SUMM]
           ([Header_Detail]
           ,[Pmt_Mthd]
           ,[Pmt_Mthd_Supl]
           ,[Currency]
           ,[Pmt_Terms]
           ,[Posting_Dt]
           ,[Header_Cmpny_cd]
           ,[Post_Key21_Credit31_inv]
           ,[Vendor_NO]
           ,[Invc_Dt]
           ,[Invc_NO]
           ,[Doc_Header_Txt]
           ,[Vendor_Txt]
           ,[Invc_tot]
           ,[Tax_Amnt]
           ,[Cmpny_cd]
           ,[GL_accnt]
           ,[Cst_Cntr]
           ,[ION_order]
           ,[Item_Amount]
           ,[PK40_Debit_50_Crdt]
           ,[Tax_Cd]
           ,[Tax_Jrsdctn]
           ,[Dtl_Txt])
    SELECT [Header_Detail]
      ,[Pmt_Mthd]
      ,[Pmt_Mthd_Supl]
      ,[Currency]
      ,[Pmt_Terms]
      ,[Posting_Dt]
      ,[Header_Cmpny_cd]
      ,cast(cast([Post_Key21_Credit31_inv] as decimal(18,2)) as int)
      ,[Vendor_NO]
      ,[Invc_Dt]
      ,[Invc_NO]
      ,[Doc_Header_Txt]
      ,[Vendor_Txt]
      ,ISNULL(CAST([Invc_tot] AS DECIMAL(18,2)),0)
      ,ISNULL(CAST([Tax_Amnt] AS DECIMAL(18,2)),0)
      ,[Cmpny_cd]
      ,[GL_accnt]
      ,[Cst_Cntr]
      ,[ION_order]
      ,ISNULL(CAST([Item_Amount] AS DECIMAL(18,2)),0)
      ,ISNULL(CAST([PK40_Debit_50_Crdt] AS DECIMAL(18,2)),0)
      ,[Tax_Cd]
      ,[Tax_Jrsdctn]
      ,[Dtl_Txt]

  FROM [STG].[PRINTER_LXK_SUMM_STG];


SELECT @InsCount = @@ROWCOUNT
PRINT 'Rows Inserted Into [PRINTERS_LXK] Table:0';
PRINT @InsCount;
END

END TRY
BEGIN CATCH
END CATCH

end

GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_SKU_PROFILE]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[USP_DQ_SKU_PROFILE]

@Table_Name VARCHAR (50),
@Totalcount Int output,
@Warcount INT OUTPUT, 
@ErrCount INT OUTPUT, 
@InsCount INT OUTPUT, 
@UpdCount INT OUTPUT, 
--@DelCount INT OUTPUT, 
@BatchDetailID INT OUTPUT
AS
BEGIN
BEGIN TRY
/******************************************************************************
   NAME        :  USP_DQ_SKU_PROFILE
   PURPOSE & 
   Description :  This script will be used to SORIANA Store Profile Data validation
                        
  REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0         11/19/2015       USCLXK36                1. Initial Version
 
  **********************************************************************************/
  /***********************************EXCUTION SCRIPT***********************************
 Declare 
@Totalcountvar Int ,
@Warcountvar Int  ,
@ErrCountvar Int ,
@BatchDetailIDvar Int ,
@InsCountvar Int ,
@UpdCountvar Int 


EXEC USP_DQ_SKU_PROFILE 
	
	'SKU_PROFILE',
	@Totalcount = @Totalcountvar output,
	@Warcount = @Warcountvar output,
	@ErrCount= @ErrCountvar output,
	@BatchDetailID = @BatchDetailIDvar output,
	@InsCount = @InsCountvar output,
	@UpdCount= @UpdCountvar output
	***********************************EXCUTION SCRIPT***********************************/
 /****************INVOKE BEGINBATCHDETAIL STOREDPROCEDURE ********************/
	DECLARE @BatchDetail as int
EXECUTE USP_DQ_Begin_Batch_Detail 'SKU_PROFILE', 'SKU_PROFILE', NULL, NULL,
@BatchDetail_id=@BatchDetail OUTPUT

	/****************UPDATE DETAILBATCHID IN STAGE AND ERROR TABLE ********************/
    UPDATE  STG.SKU_PROFILE_STG
        SET Batch_Detail_Id = @BatchDetail;

/********************* REMOVE SPACE ON EACH COLUMN  *********************************/
 UPDATE  STG.SKU_PROFILE_STG
    SET [TABLE_SORT_BY]             = LTRIM(RTRIM(TABLE_SORT_BY)),
        [SAP_MATERIAL_NO]           = LTRIM(RTRIM(SAP_MATERIAL_NO)),
        [SAP_MATERIAL_DESC]         = LTRIM(RTRIM(SAP_MATERIAL_DESC)),
        [EAN_14]                    = LTRIM(RTRIM(EAN_14)),
        [EAN_13]                    = LTRIM(RTRIM(EAN_13)),
        [PZ_PER_CASE_COUNT]         = LTRIM(RTRIM(PZ_PER_CASE_COUNT)),
        [WEIGHT_KG_PER_CASE]        = LTRIM(RTRIM(WEIGHT_KG_PER_CASE)),
        [M3_PER_CASE]               = LTRIM(RTRIM(M3_PER_CASE)),
        [CASE_PER_PALLET]           = LTRIM(RTRIM(CASE_PER_PALLET)),
        [CATEGORY]                  = LTRIM(RTRIM(CATEGORY)),
        [SALES_UNIT_CASE_OR_PALLET] = LTRIM(RTRIM(SALES_UNIT_CASE_OR_PALLET)),
        [BRAND]                     = LTRIM(RTRIM(BRAND)),
        [VOLUMETRIC_SIZE_PER_CASE]  = LTRIM(RTRIM(VOLUMETRIC_SIZE_PER_CASE)),
        [PZ_LENGTH]                 = LTRIM(RTRIM(PZ_LENGTH)),
        [PZ_WIDTH]                  = LTRIM(RTRIM(PZ_WIDTH)),
        [PZ_HEIGHT]                 = LTRIM(RTRIM(PZ_HEIGHT)),
        [CS_LENGTH]                 = LTRIM(RTRIM(CS_LENGTH)),
        [CS_WIDTH]                  = LTRIM(RTRIM(CS_WIDTH)),
        [CS_HEIGHT]                 = LTRIM(RTRIM(CS_HEIGHT)),
        [PAL_LENGTH]                = LTRIM(RTRIM(PAL_LENGTH)),
        [PAL_WIDTH]                 = LTRIM(RTRIM(PAL_WIDTH)),
        [PAL_HEIGHT]                = LTRIM(RTRIM(PAL_HEIGHT)),
        [MOTHER_EAN]                = LTRIM(RTRIM(MOTHER_EAN)),
        [ADD_COL2]                  = LTRIM(RTRIM(ADD_COL2)),
        [ADD_COL3]                  = LTRIM(RTRIM(ADD_COL3)),
        [ADD_COL4]                  = LTRIM(RTRIM(ADD_COL4)),
        [ADD_COL5]                  = LTRIM(RTRIM(ADD_COL5)),
        [ADD_COL6]                  = LTRIM(RTRIM(ADD_COL6)),
        [ADD_COL7]                  = LTRIM(RTRIM(ADD_COL7)),
        [ADD_COL8]                  = LTRIM(RTRIM(ADD_COL8)),
        [ADD_COL9]                  = LTRIM(RTRIM(ADD_COL9)),
        [ADD_COL10]                 = LTRIM(RTRIM(ADD_COL10)),
        [ADD_COL11]                 = LTRIM(RTRIM(ADD_COL11)),
        [ADD_COL12]                 = LTRIM(RTRIM(ADD_COL12)),
        [ADD_COL13]                 = LTRIM(RTRIM(ADD_COL13)),
        [ADD_COL14]                 = LTRIM(RTRIM(ADD_COL14)),
        [ADD_COL15]                 = LTRIM(RTRIM(ADD_COL15)),
        [ADD_COL16]                 = LTRIM(RTRIM(ADD_COL16)),
        [ADD_COL17]                 = LTRIM(RTRIM(ADD_COL17)),
        [ADD_COL18]                 = LTRIM(RTRIM(ADD_COL18)),
        [ADD_COL19]                 = LTRIM(RTRIM(ADD_COL19)),
        [ADD_COL20]                 = LTRIM(RTRIM(ADD_COL20)),
        [Error_Flag]                = LTRIM(RTRIM(Error_Flag)),
        [Error_Message]             = LTRIM(RTRIM(Error_Message)),
        [Warning_Flag]              = LTRIM(RTRIM(Warning_Flag)),
        [Warning_Message]           = LTRIM(RTRIM(Warning_Message)),
        [Batch_Detail_Id]           = LTRIM(RTRIM(Batch_Detail_Id));
 
 
/********************* Checking Duplicates ********************/
 
;WITH CheckDuplicates as
(
Select
ROW_NUMBER() OVER(PARTITION by SAP_MATERIAL_NO ORDER BY [SAP_MATERIAL_NO]) AS DuplicateRecCount,*
From
[KLA_AOS].[STG].[SKU_PROFILE_STG] t
)
update CheckDuplicates
SET Error_Flag = 'Y',
[Error_Message] = ISNULL([Error_Message], '') + 'ERR:Duplicate record has been Found ||'
where DuplicateRecCount>1
 
  
/*********************Populating Missing Values********************/
UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
        SET 
            WARNING_FLAG    = 'Y',
            WARNING_MESSAGE = ISNULL(WARNING_MESSAGE, '') + 'WAR:CLIENT_NAME IS NULL OR BLANK ||'
    WHERE   TABLE_SORT_BY IS NULL
            OR TABLE_SORT_BY = '';
 
 
/*********************CHECKING FOR NULLABLE VALUES********************/
UPDATE  [STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR:column  TABLE_SORT_BYis null or Blank ||'
WHERE   [TABLE_SORT_BY] IS NULL
        OR [TABLE_SORT_BY] = '';

UPDATE  [STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR:column  SAP_MATERIAL_NO is null or Blank ||'
WHERE   [SAP_MATERIAL_NO] IS NULL
        OR [SAP_MATERIAL_NO] = '';

UPDATE  [STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR:column  SAP_MATERIAL_DESC is null or Blank ||'
WHERE   [SAP_MATERIAL_DESC] IS NULL
        OR [SAP_MATERIAL_DESC] = '';

UPDATE  [STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR:column  EAN_14 is null or Blank ||'
WHERE   [EAN_14] IS NULL
        OR [EAN_14] = '';

UPDATE  [STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR:column  PZ_PER_CASE_COUNTis null or Blank ||'
WHERE   [PZ_PER_CASE_COUNT] IS NULL
        OR [PZ_PER_CASE_COUNT] = '';

UPDATE  [STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR:column  WEIGHT_KG_PER_CASEis null or Blank ||'
WHERE   [WEIGHT_KG_PER_CASE] IS NULL
        OR [WEIGHT_KG_PER_CASE] = '';

UPDATE  [STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR:column  CASE_PER_PALLETis null or Blank ||'
WHERE   [CASE_PER_PALLET] IS NULL
        OR [CASE_PER_PALLET] = '';

UPDATE  [STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR:column  CATEGORY is null or Blank ||'
WHERE   [CATEGORY] IS NULL
        OR [CATEGORY] = '';

UPDATE  [STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR:column  SALES_UNIT_CASE_OR_PALLET is null or Blank ||'
WHERE   [SALES_UNIT_CASE_OR_PALLET] IS NULL
        OR [SALES_UNIT_CASE_OR_PALLET] = '';

UPDATE  [STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR:column  BRAND is null or Blank ||'
WHERE   [BRAND] IS NULL
        OR [BRAND] = '';

UPDATE  [STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR:column  PZ_LENGTH is null or Blank ||'
WHERE   [PZ_LENGTH] IS NULL
        OR [PZ_LENGTH] = '';

UPDATE  [STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR:column  PZ_WIDTH is null or Blank ||'
WHERE   [PZ_WIDTH] IS NULL
        OR [PZ_WIDTH] = '';

UPDATE  [STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR:column  PZ_HEIGHT is null or Blank ||'
WHERE   [PZ_HEIGHT] IS NULL
        OR [PZ_HEIGHT] = '';

UPDATE  [STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR:column  CS_LENGTH is null or Blank ||'
WHERE   [CS_LENGTH] IS NULL
        OR [CS_LENGTH] = '';

UPDATE  [STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR:column  CS_WIDTH is null or Blank ||'
WHERE   [CS_WIDTH] IS NULL
        OR [CS_WIDTH] = '';

UPDATE  [STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR:column  CS_HEIGHT is null or Blank ||'
WHERE   [CS_HEIGHT] IS NULL
        OR [CS_HEIGHT] = '';

UPDATE  [STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR:column  PAL_LENGTH is null or Blank ||'
WHERE   [PAL_LENGTH] IS NULL
        OR [PAL_LENGTH] = '';

UPDATE  [STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR:column  PAL_WIDTH is null or Blank ||'
WHERE   [PAL_WIDTH] IS NULL
        OR [PAL_WIDTH] = '';

UPDATE  [STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR:column  PAL_HEIGHT is null or Blank ||'
WHERE   [PAL_HEIGHT] IS NULL
        OR [PAL_HEIGHT] = '';
 
/*********************CHECKING DataType******************* */
 
UPDATE [STG].[SKU_PROFILE_STG]
SET Error_Flag = 'Y',
[Error_Message] = ISNULL([Error_Message], '') + 'ERR:column TABLE_SORT_BY has non numeric value or Null value ||'
WHERE ISNUMERIC ([TABLE_SORT_BY]) <> 1
 
UPDATE [STG].[SKU_PROFILE_STG]
SET Error_Flag = 'Y',
[Error_Message] = ISNULL([Error_Message], '') + 'ERR:column TPZ_PER_CASE_COUNT has non numeric value or Null value ||'
WHERE ISNUMERIC ([PZ_PER_CASE_COUNT]) <> 1
 
UPDATE [STG].[SKU_PROFILE_STG]
SET Error_Flag = 'Y',
[Error_Message] = ISNULL([Error_Message], '') + 'ERR:column CASE_PER_PALLET has non numeric value or Null value ||'
WHERE ISNUMERIC ([CASE_PER_PALLET]) <> 1
 
 
UPDATE [STG].[SKU_PROFILE_STG]
SET Error_Flag = 'Y',
[Error_Message] = ISNULL([Error_Message], '') + 'ERR:column CASE_PER_PALLET has non numeric value or Null value ||'
WHERE ISNUMERIC ([SAP_MATERIAL_NO]) <> 1
 
 
UPDATE [STG].[SKU_PROFILE_STG]
SET Error_Flag = 'Y',
[Error_Message] = ISNULL([Error_Message], '') + 'ERR:column WEIGHT_KG_PER_CASE has non numeric value or Null value ||'
WHERE ISNUMERIC ([WEIGHT_KG_PER_CASE]) <> 1
 
UPDATE [STG].[SKU_PROFILE_STG]
SET Error_Flag = 'Y',
[Error_Message] = ISNULL([Error_Message], '') + 'ERR:column M3_PER_CASE  has non numeric value or Null value ||'
WHERE ISNUMERIC ([M3_PER_CASE]) <> 1
 
UPDATE [STG].[SKU_PROFILE_STG]
SET Error_Flag = 'Y',
[Error_Message] = ISNULL([Error_Message], '') + 'ERR:column VOLUMETRIC_SIZE_PER_CASE has non numeric value or Null value ||'
WHERE ISNUMERIC ([VOLUMETRIC_SIZE_PER_CASE]) <> 1
 
 
UPDATE [STG].[SKU_PROFILE_STG]
SET Error_Flag = 'Y',
[Error_Message] = ISNULL([Error_Message], '') + 'ERR:column PZ_LENGTH has non numeric value or Null value ||'
WHERE ISNUMERIC ([PZ_LENGTH]) <> 1
 
 
UPDATE [STG].[SKU_PROFILE_STG]
SET Error_Flag = 'Y',
[Error_Message] = ISNULL([Error_Message], '') + 'ERR:column PZ_WIDTH has non numeric value or Null value ||'
WHERE ISNUMERIC ([PZ_WIDTH]) <> 1
 
UPDATE [STG].[SKU_PROFILE_STG]
SET Error_Flag = 'Y',
[Error_Message] = ISNULL([Error_Message], '') + 'ERR:column PZ_HEIGHT has non numeric value or Null value ||'
WHERE ISNUMERIC ([PZ_HEIGHT]) <> 1
 
UPDATE [STG].[SKU_PROFILE_STG]
SET Error_Flag = 'Y',
[Error_Message] = ISNULL([Error_Message], '') + 'ERR:column CS_LENGTH has non numeric value or Null value ||'
WHERE ISNUMERIC ([CS_LENGTH]) <> 1
 
 
UPDATE [STG].[SKU_PROFILE_STG]
SET Error_Flag = 'Y',
[Error_Message] = ISNULL([Error_Message], '') + 'ERR:column CS_WIDTH has non numeric value or Null value ||'
WHERE ISNUMERIC ([CS_WIDTH]) <> 1
 
UPDATE [STG].[SKU_PROFILE_STG]
SET Error_Flag = 'Y',
[Error_Message] = ISNULL([Error_Message], '') + 'ERR:column CS_HEIGHT  has non numeric value or Null value ||'
WHERE ISNUMERIC ([CS_HEIGHT]) <> 1
 
UPDATE [STG].[SKU_PROFILE_STG]
SET Error_Flag = 'Y',
[Error_Message] = ISNULL([Error_Message], '') + 'ERR:column PAL_LENGTH has non numeric value or Null value ||'
WHERE ISNUMERIC ([PAL_LENGTH]) <> 1
 
UPDATE [STG].[SKU_PROFILE_STG]
SET Error_Flag = 'Y',
[Error_Message] = ISNULL([Error_Message], '') + 'ERR:column PAL_WIDTH has non numeric value or Null value ||'
WHERE ISNUMERIC ([PAL_WIDTH]) <> 1
 
 
UPDATE [STG].[SKU_PROFILE_STG]
SET Error_Flag = 'Y',
[Error_Message] = ISNULL([Error_Message], '') + 'ERR:column PAL_HEIGHT has non numeric value or Null value ||'
WHERE ISNUMERIC ([PAL_HEIGHT]) <> 1
 
 
 
 
/*********Checking Length **************/
 
UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: SAP_MATERIAL_DESC column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(SAP_MATERIAL_DESC))) > 255;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR:EAN_14 column length greater than target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(EAN_14))) > 14;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: EAN_13 column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   len(Ltrim(Rtrim(EAN_13))) > 14;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: FWEIGHT_KG_PER_CASEORMAT column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(SUBSTRING(CAST (WEIGHT_KG_PER_CASE AS VARCHAR), 1, CHARINDEX('.', CAST (WEIGHT_KG_PER_CASE AS VARCHAR)) - 1)) > 8
        AND LEN(SUBSTRING(CAST (WEIGHT_KG_PER_CASE AS VARCHAR), CHARINDEX('.', CAST (WEIGHT_KG_PER_CASE AS VARCHAR)) + 1, LEN(CAST (WEIGHT_KG_PER_CASE AS VARCHAR)))) > 53;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: M3_PER_CASE column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(SUBSTRING(CAST (M3_PER_CASE AS VARCHAR), 1, CHARINDEX('.', CAST (M3_PER_CASE AS VARCHAR)) - 1)) > 8
        AND LEN(SUBSTRING(CAST (M3_PER_CASE AS VARCHAR), CHARINDEX('.', CAST (M3_PER_CASE AS VARCHAR)) + 1, LEN(CAST (M3_PER_CASE AS VARCHAR)))) > 53;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: CATEGORY column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(CATEGORY))) > 50;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: SALES_UNIT_CASE_OR_PALLET column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(SALES_UNIT_CASE_OR_PALLET))) > 10;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: BRAND column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(BRAND))) > 50;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: VOLUMETRIC_SIZE_PER_CASE column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(SUBSTRING(CAST (VOLUMETRIC_SIZE_PER_CASE AS VARCHAR), 1, CHARINDEX('.', CAST (VOLUMETRIC_SIZE_PER_CASE AS VARCHAR)) - 1)) > 8
        AND LEN(SUBSTRING(CAST (VOLUMETRIC_SIZE_PER_CASE AS VARCHAR), CHARINDEX('.', CAST (VOLUMETRIC_SIZE_PER_CASE AS VARCHAR)) + 1, LEN(CAST (VOLUMETRIC_SIZE_PER_CASE AS VARCHAR)))) > 53;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: PZ_LENGTH column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(SUBSTRING(CAST (PZ_LENGTH AS VARCHAR), 1, CHARINDEX('.', CAST (PZ_LENGTH AS VARCHAR)) - 1)) > 8
        AND LEN(SUBSTRING(CAST (PZ_LENGTH AS VARCHAR), CHARINDEX('.', CAST (PZ_LENGTH AS VARCHAR)) + 1, LEN(CAST (PZ_LENGTH AS VARCHAR)))) > 53;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: PZ_WIDTH column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(SUBSTRING(CAST (PZ_WIDTH AS VARCHAR), 1, CHARINDEX('.', CAST (PZ_WIDTH AS VARCHAR)) - 1)) > 8
        AND LEN(SUBSTRING(CAST (PZ_WIDTH AS VARCHAR), CHARINDEX('.', CAST (PZ_WIDTH AS VARCHAR)) + 1, LEN(CAST (PZ_WIDTH AS VARCHAR)))) > 53;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: PZ_HEIGHT column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(SUBSTRING(CAST (PZ_HEIGHT AS VARCHAR), 1, CHARINDEX('.', CAST (PZ_HEIGHT AS VARCHAR)) - 1)) > 8
        AND LEN(SUBSTRING(CAST (PZ_HEIGHT AS VARCHAR), CHARINDEX('.', CAST (PZ_HEIGHT AS VARCHAR)) + 1, LEN(CAST (PZ_HEIGHT AS VARCHAR)))) > 53;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: CS_LENGTH column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(SUBSTRING(CAST (CS_LENGTH AS VARCHAR), 1, CHARINDEX('.', CAST (CS_LENGTH AS VARCHAR)) - 1)) > 8
        AND LEN(SUBSTRING(CAST (CS_LENGTH AS VARCHAR), CHARINDEX('.', CAST (CS_LENGTH AS VARCHAR)) + 1, LEN(CAST (CS_LENGTH AS VARCHAR)))) > 53;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: CS_WIDTH column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(SUBSTRING(CAST (CS_WIDTH AS VARCHAR), 1, CHARINDEX('.', CAST (CS_WIDTH AS VARCHAR)) - 1)) > 8
        AND LEN(SUBSTRING(CAST (CS_WIDTH AS VARCHAR), CHARINDEX('.', CAST (CS_WIDTH AS VARCHAR)) + 1, LEN(CAST (CS_WIDTH AS VARCHAR)))) > 53;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: CS_HEIGHT column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(SUBSTRING(CAST (CS_HEIGHT AS VARCHAR), 1, CHARINDEX('.', CAST (CS_HEIGHT AS VARCHAR)) - 1)) > 8
        AND LEN(SUBSTRING(CAST (CS_HEIGHT AS VARCHAR), CHARINDEX('.', CAST (CS_HEIGHT AS VARCHAR)) + 1, LEN(CAST (CS_HEIGHT AS VARCHAR)))) > 53;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: PAL_LENGTH column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(SUBSTRING(CAST (PAL_LENGTH AS VARCHAR), 1, CHARINDEX('.', CAST (PAL_LENGTH AS VARCHAR)) - 1)) > 8
        AND LEN(SUBSTRING(CAST (PAL_LENGTH AS VARCHAR), CHARINDEX('.', CAST (PAL_LENGTH AS VARCHAR)) + 1, LEN(CAST (PAL_LENGTH AS VARCHAR)))) > 53;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: PAL_WIDTH column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(SUBSTRING(CAST (PAL_WIDTH AS VARCHAR), 1, CHARINDEX('.', CAST (PAL_WIDTH AS VARCHAR)) - 1)) > 8
        AND LEN(SUBSTRING(CAST (PAL_WIDTH AS VARCHAR), CHARINDEX('.', CAST (PAL_WIDTH AS VARCHAR)) + 1, LEN(CAST (PAL_WIDTH AS VARCHAR)))) > 53;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: PAL_HEIGHT column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(SUBSTRING(CAST (PAL_HEIGHT AS VARCHAR), 1, CHARINDEX('.', CAST (PAL_HEIGHT AS VARCHAR)) - 1)) > 8
        AND LEN(SUBSTRING(CAST (PAL_HEIGHT AS VARCHAR), CHARINDEX('.', CAST (PAL_HEIGHT AS VARCHAR)) + 1, LEN(CAST (PAL_HEIGHT AS VARCHAR)))) > 53;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: MOTHER_EAN column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(MOTHER_EAN))) > 14;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: ADD_COL1 column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(ADD_COL2))) > 50;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: ADD_COL2 column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(ADD_COL3))) > 50;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: ADD_COL3 column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   len(ADD_COL3) > 50;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: ADD_COL4 column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(ADD_COL4))) > 50;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: ADD_COL5 column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(ADD_COL5))) > 50;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: ADD_COL6 column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(ADD_COL6))) > 50;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: ADD_COL7 column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(ADD_COL7))) > 50;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: ADD_COL8 column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(ADD_COL8))) > 50;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: ADD_COL9 column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(ADD_COL9))) > 50;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: ADD_COL10 column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(ADD_COL10))) > 50;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: ADD_COL11 column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(ADD_COL11))) > 50;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: ADD_COL12 column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(ADD_COL12))) > 50;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: ADD_COL13 column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(ADD_COL13))) > 50;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: ADD_COL14 column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(ADD_COL14))) > 50;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: ADD_COL15 column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(ADD_COL15))) > 50;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: ADD_COL16 column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(ADD_COL16))) > 50;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: ADD_COL17 column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(ADD_COL17))) > 50;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: ADD_COL18 column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(ADD_COL18))) > 50;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: ADD_COL19 column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(ADD_COL19))) > 50;

UPDATE  [KLA_AOS].[STG].[SKU_PROFILE_STG]
    SET Error_Flag      = 'Y',
        [Error_Message] = ISNULL([Error_Message], '') + 'ERR: ADD_COL20 column length grater then target ||'
FROM    [STG].[SKU_PROFILE_STG]
WHERE   LEN(LTRIM(RTRIM(ADD_COL20))) > 50;
 

/*********************Insert rows to Final Tabele ******************/
 
INSERT INTO [KLA_AOS].DBO.[SKU_PROFILE]
(
[TABLE_SORT_BY]
      ,[SAP_MATERIAL_NO]
      ,[SAP_MATERIAL_DESC]
      ,[EAN_14]
      ,[EAN_13]
      ,[PZ_PER_CASE_COUNT]
      ,[WEIGHT_KG_PER_CASE]
      ,[M3_PER_CASE]
      ,[CASE_PER_PALLET]
      ,[CATEGORY]
      ,[SALES_UNIT_CASE_OR_PALLET]
      ,[BRAND]
      ,[VOLUMETRIC_SIZE_PER_CASE]
      ,[PZ_LENGTH]
      ,[PZ_WIDTH]
      ,[PZ_HEIGHT]
      ,[CS_LENGTH]
      ,[CS_WIDTH]
      ,[CS_HEIGHT]
      ,[PAL_LENGTH]
      ,[PAL_WIDTH]
      ,[PAL_HEIGHT]
      ,[MOTHER_EAN]
      ,[ADD_COL2]
      ,[ADD_COL3]
      ,[ADD_COL4]
      ,[ADD_COL5]
      ,[ADD_COL6]
      ,[ADD_COL7]
      ,[ADD_COL8]
      ,[ADD_COL9]
      ,[ADD_COL10]
      ,[ADD_COL11]
      ,[ADD_COL12]
      ,[ADD_COL13]
      ,[ADD_COL14]
      ,[ADD_COL15]
      ,[ADD_COL16]
      ,[ADD_COL17]
      ,[ADD_COL18]
      ,[ADD_COL19]
      ,[ADD_COL20]
)
Select
[TABLE_SORT_BY]
      ,T.[SAP_MATERIAL_NO]
      ,T.[SAP_MATERIAL_DESC]
      ,T.[EAN_14]
      ,T.[EAN_13]
      ,T.[PZ_PER_CASE_COUNT]
      ,T.[WEIGHT_KG_PER_CASE]
      ,T.[M3_PER_CASE]
      ,T.[CASE_PER_PALLET]
      ,T.[CATEGORY]
      ,T.[SALES_UNIT_CASE_OR_PALLET]
      ,T.[BRAND]
      ,T.[VOLUMETRIC_SIZE_PER_CASE]
      ,T.[PZ_LENGTH]
      ,T.[PZ_WIDTH]
      ,T.[PZ_HEIGHT]
      ,T.[CS_LENGTH]
      ,T.[CS_WIDTH]
      ,T.[CS_HEIGHT]
      ,T.[PAL_LENGTH]
      ,T.[PAL_WIDTH]
      ,T.[PAL_HEIGHT]
      ,T.[MOTHER_EAN]
      ,T.[ADD_COL2]
      ,T.[ADD_COL3]
      ,T.[ADD_COL4]
      ,T.[ADD_COL5]
      ,T.[ADD_COL6]
      ,T.[ADD_COL7]
      ,T.[ADD_COL8]
      ,T.[ADD_COL9]
      ,T.[ADD_COL10]
      ,T.[ADD_COL11]
      ,T.[ADD_COL12]
      ,T.[ADD_COL13]
      ,T.[ADD_COL14]
      ,T.[ADD_COL15]
      ,T.[ADD_COL16]
      ,T.[ADD_COL17]
      ,T.[ADD_COL18]
      ,T.[ADD_COL19]
      ,T.[ADD_COL20]
From [KLA_AOS].[STG].[SKU_PROFILE_STG] t
where T.Error_Flag <>'Y'
And  NOT EXISTS (Select 1 FROM dbo.SKU_PROFILE SPF
                WHERE T.SAP_MATERIAL_NO= SPF.SAP_MATERIAL_NO)
                  --AND T.[Client_Name]=SPF.[Client_Name])
 
Select @InsCount = @@ROWCOUNT
PRINT 'Rows Inserted Into SKU_PROFILE Table:'
print @InsCount
 
UPDATE  SKU_PROFILE
    SET [TABLE_SORT_BY]             = T.[TABLE_SORT_BY],
        [SAP_MATERIAL_NO]           = T.[SAP_MATERIAL_NO],
        [SAP_MATERIAL_DESC]         = T.[SAP_MATERIAL_DESC],
        [EAN_14]                    = T.[EAN_14],
        [EAN_13]                    = T.[EAN_13],
        [PZ_PER_CASE_COUNT]         = T.[PZ_PER_CASE_COUNT],
        [WEIGHT_KG_PER_CASE]        = T.[WEIGHT_KG_PER_CASE],
        [M3_PER_CASE]               = T.[M3_PER_CASE],
        [CASE_PER_PALLET]           = T.[CASE_PER_PALLET],
        [CATEGORY]                  = T.[CATEGORY],
        [SALES_UNIT_CASE_OR_PALLET] = T.[SALES_UNIT_CASE_OR_PALLET],
        [BRAND]                     = T.[BRAND],
        [VOLUMETRIC_SIZE_PER_CASE]  = T.[VOLUMETRIC_SIZE_PER_CASE],
        [PZ_LENGTH]                 = T.[PZ_LENGTH],
        [PZ_WIDTH]                  = T.[PZ_WIDTH],
        [PZ_HEIGHT]                 = T.[PZ_HEIGHT],
        [CS_LENGTH]                 = T.[CS_LENGTH],
        [CS_WIDTH]                  = T.[CS_WIDTH],
        [CS_HEIGHT]                 = T.[CS_HEIGHT],
        [PAL_LENGTH]                = T.[PAL_LENGTH],
        [PAL_WIDTH]                 = T.[PAL_WIDTH],
        [PAL_HEIGHT]                = T.[PAL_HEIGHT],
        [MOTHER_EAN]                = T.[MOTHER_EAN],
        [ADD_COL2]                  = T.[ADD_COL2],
        [ADD_COL3]                  = T.[ADD_COL3],
        [ADD_COL4]                  = T.[ADD_COL4],
        [ADD_COL5]                  = T.[ADD_COL5],
        [ADD_COL6]                  = T.[ADD_COL6],
        [ADD_COL7]                  = T.[ADD_COL7],
        [ADD_COL8]                  = T.[ADD_COL8],
        [ADD_COL9]                  = T.[ADD_COL9],
        [ADD_COL10]                 = T.[ADD_COL10],
        [ADD_COL11]                 = T.[ADD_COL11],
        [ADD_COL12]                 = T.[ADD_COL12],
        [ADD_COL13]                 = T.[ADD_COL13],
        [ADD_COL14]                 = T.[ADD_COL14],
        [ADD_COL15]                 = T.[ADD_COL15],
        [ADD_COL16]                 = T.[ADD_COL16],
        [ADD_COL17]                 = T.[ADD_COL17],
        [ADD_COL18]                 = T.[ADD_COL18],
        [ADD_COL19]                 = T.[ADD_COL19],
        [ADD_COL20]                 = T.[ADD_COL20]
FROM    [KLA_AOS].[STG].[SKU_PROFILE_STG] AS T
WHERE   T.Error_Flag <> 'Y'
        AND  EXISTS (SELECT 1
                        FROM   dbo.SKU_PROFILE AS SPF
                        WHERE  T.SAP_MATERIAL_NO = SPF.SAP_MATERIAL_NO
                               AND (SPF.[TABLE_SORT_BY] <> T.[TABLE_SORT_BY]
                                    OR SPF.[SAP_MATERIAL_NO] <> T.[SAP_MATERIAL_NO]
                                    OR SPF.[SAP_MATERIAL_DESC] <> T.[SAP_MATERIAL_DESC]
                                    OR SPF.[EAN_14] <> T.[EAN_14]
                                    OR SPF.[EAN_13] <> T.[EAN_13]
                                    OR SPF.[PZ_PER_CASE_COUNT] <> T.[PZ_PER_CASE_COUNT]
                                    OR SPF.[WEIGHT_KG_PER_CASE] <> T.[WEIGHT_KG_PER_CASE]
                                    OR SPF.[M3_PER_CASE] <> T.[M3_PER_CASE]
                                    OR SPF.[CASE_PER_PALLET] <> T.[CASE_PER_PALLET]
                                    OR SPF.[CATEGORY] <> T.[CATEGORY]
                                    OR SPF.[SALES_UNIT_CASE_OR_PALLET] <> T.[SALES_UNIT_CASE_OR_PALLET]
                                    OR SPF.[BRAND] <> T.[BRAND]
                                    OR SPF.[VOLUMETRIC_SIZE_PER_CASE] <> T.[VOLUMETRIC_SIZE_PER_CASE]
                                    OR SPF.[PZ_LENGTH] <> T.[PZ_LENGTH]
                                    OR SPF.[PZ_WIDTH] <> T.[PZ_WIDTH]
                                    OR SPF.[PZ_HEIGHT] <> T.[PZ_HEIGHT]
                                    OR SPF.[CS_LENGTH] <> T.[CS_LENGTH]
                                    OR SPF.[CS_WIDTH] <> T.[CS_WIDTH]
                                    OR SPF.[CS_HEIGHT] <> T.[CS_HEIGHT]
                                    OR SPF.[PAL_LENGTH] <> T.[PAL_LENGTH]
                                    OR SPF.[PAL_WIDTH] <> T.[PAL_WIDTH]
                                    OR SPF.[PAL_HEIGHT] <> T.[PAL_HEIGHT]
                                    OR SPF.[MOTHER_EAN] <> T.[MOTHER_EAN]
                                    OR SPF.[ADD_COL2] <> T.[ADD_COL2]
                                    OR SPF.[ADD_COL3] <> T.[ADD_COL3]
                                    OR SPF.[ADD_COL4] <> T.[ADD_COL4]
                                    OR SPF.[ADD_COL5] <> T.[ADD_COL5]
                                    OR SPF.[ADD_COL6] <> T.[ADD_COL6]
                                    OR SPF.[ADD_COL7] <> T.[ADD_COL7]
                                    OR SPF.[ADD_COL8] <> T.[ADD_COL8]
                                    OR SPF.[ADD_COL9] <> T.[ADD_COL9]
                                    OR SPF.[ADD_COL10] <> T.[ADD_COL10]
                                    OR SPF.[ADD_COL11] <> T.[ADD_COL11]
                                    OR SPF.[ADD_COL12] <> T.[ADD_COL12]
                                    OR SPF.[ADD_COL13] <> T.[ADD_COL13]
                                    OR SPF.[ADD_COL14] <> T.[ADD_COL14]
                                    OR SPF.[ADD_COL15] <> T.[ADD_COL15]
                                    OR SPF.[ADD_COL16] <> T.[ADD_COL16]
                                    OR SPF.[ADD_COL17] <> T.[ADD_COL17]
                                    OR SPF.[ADD_COL18] <> T.[ADD_COL18]
                                    OR SPF.[ADD_COL19] <> T.[ADD_COL19]
                                    OR SPF.[ADD_COL20] <> T.[ADD_COL20]));                    
 
SELECT @UpdCount = @@ROWCOUNT;
    PRINT 'Rows Updated Into SKU_PROFILE Table:';
    PRINT @UpdCount;				  
						
 
 
INSERT INTO ERR.SKU_PROFILE_ERR
([TABLE_SORT_BY]
      ,[SAP_MATERIAL_NO]
      ,[SAP_MATERIAL_DESC]
      ,[EAN_14]
      ,[EAN_13]
      ,[PZ_PER_CASE_COUNT]
      ,[WEIGHT_KG_PER_CASE]
      ,[M3_PER_CASE]
      ,[CASE_PER_PALLET]
      ,[CATEGORY]
      ,[SALES_UNIT_CASE_OR_PALLET]
      ,[BRAND]
      ,[VOLUMETRIC_SIZE_PER_CASE]
      ,[PZ_LENGTH]
      ,[PZ_WIDTH]
      ,[PZ_HEIGHT]
      ,[CS_LENGTH]
      ,[CS_WIDTH]
      ,[CS_HEIGHT]
      ,[PAL_LENGTH]
      ,[PAL_WIDTH]
      ,[PAL_HEIGHT]
      ,[MOTHER_EAN]
      ,[ADD_COL2]
      ,[ADD_COL3]
      ,[ADD_COL4]
      ,[ADD_COL5]
      ,[ADD_COL6]
      ,[ADD_COL7]
      ,[ADD_COL8]
      ,[ADD_COL9]
      ,[ADD_COL10]
      ,[ADD_COL11]
      ,[ADD_COL12]
      ,[ADD_COL13]
      ,[ADD_COL14]
      ,[ADD_COL15]
      ,[ADD_COL16]
      ,[ADD_COL17]
      ,[ADD_COL18]
      ,[ADD_COL19]
      ,[ADD_COL20]
      ,[Error_Flag]
      ,[Error_Message]
      ,[Warning_Flag]
      ,[Warning_Message]
      ,[Batch_Detail_Id]
 
)
Select
[TABLE_SORT_BY]
      ,T.[SAP_MATERIAL_NO]
      ,T.[SAP_MATERIAL_DESC]
      ,T.[EAN_14]
      ,T.[EAN_13]
      ,T.[PZ_PER_CASE_COUNT]
      ,T.[WEIGHT_KG_PER_CASE]
      ,T.[M3_PER_CASE]
      ,T.[CASE_PER_PALLET]
      ,T.[CATEGORY]
      ,T.[SALES_UNIT_CASE_OR_PALLET]
      ,T.[BRAND]
      ,T.[VOLUMETRIC_SIZE_PER_CASE]
      ,T.[PZ_LENGTH]
      ,T.[PZ_WIDTH]
      ,T.[PZ_HEIGHT]
      ,T.[CS_LENGTH]
      ,T.[CS_WIDTH]
      ,T.[CS_HEIGHT]
      ,T.[PAL_LENGTH]
      ,T.[PAL_WIDTH]
      ,T.[PAL_HEIGHT]
      ,T.[MOTHER_EAN]
      ,T.[ADD_COL2]
      ,T.[ADD_COL3]
      ,T.[ADD_COL4]
      ,T.[ADD_COL5]
      ,T.[ADD_COL6]
      ,T.[ADD_COL7]
      ,T.[ADD_COL8]
      ,T.[ADD_COL9]
      ,T.[ADD_COL10]
      ,T.[ADD_COL11]
      ,T.[ADD_COL12]
      ,T.[ADD_COL13]
      ,T.[ADD_COL14]
      ,T.[ADD_COL15]
      ,T.[ADD_COL16]
      ,T.[ADD_COL17]
      ,T.[ADD_COL18]
      ,T.[ADD_COL19]
      ,T.[ADD_COL20]
	  ,[Error_Flag]
      ,[Error_Message]
      ,[Warning_Flag]
      ,[Warning_Message]
      ,[Batch_Detail_Id]
 FROM   [KLA_AOS].[STG].[SKU_PROFILE_STG] AS t
    WHERE  (T.Error_Flag = 'Y')  OR (T.Warning_Flag = 'Y')
     

/*********************CHECKING Total/Waring/Error Row Counts********************/
    SELECT @Totalcount = COUNT(1)
    FROM   STG.SKU_PROFILE_STG;

    SELECT @Warcount = COUNT(1)
    FROM   STG.SKU_PROFILE_STG
    WHERE  Warning_Flag = 'Y';

    SELECT @ErrCount = COUNT(1)
    FROM   STG.SKU_PROFILE_STG
    WHERE  Error_Flag = 'Y';



/*********************BEGIN Call END Batch Detail ********************/ 
Declare @BatchDetail_idvar int
EXECUTE [dbo].[USP_DQ_End_Batch_Detail] 'SKU_PROFILE', 'SKU_PROFILE', 1, 1, 1,NULL, 'Y',
@BatchDetail_id=@BatchDetail_idvar OUTPUT

/*********************END  Call END Batch Detail ********************/ 
 
 END TRY
 
 
 /*********************BEGIN CATCH BLOCK  ********************/ 
 BEGIN CATCH
 DECLARE @Getdate Datetime
 set @Getdate = getdate();
        DECLARE @err_num AS INT = ERROR_NUMBER(), 
				@err_sev AS NVARCHAR (50) = ERROR_SEVERITY(), 
				@err_state AS NVARCHAR (50) = ERROR_STATE(), 
				@err_proc AS NVARCHAR (50) = ERROR_PROCEDURE(), 
				@err_line AS INT = ERROR_LINE(), 
				@err_msg AS NVARCHAR (50) = ERROR_MESSAGE();

        UPDATE  bd
            SET Execution_End_TS_EST = @Getdate,
                Status               = 'C',
                Is_Success           = 'N',
                ErrorNumber          = @err_num,
                ErrorSeverity        = @err_sev,
                ErrorState           = @err_state,
                ErrorProcedure       = @err_proc,
                ErrorLine            = @err_line,
                ErrorMessage         = @err_msg,
                Modified_By          = USER_NAME(),
                Modified_TS          = @Getdate
        FROM    ADT.Batch_DQ_Detail AS bd
                INNER JOIN
                ADT.Batch_DQ_Schedule AS bs
                ON bd.Batch_Schedule_Id = bs.Batch_Schedule_Id
                INNER JOIN
                ADT.Batch_DQ_type AS bt
                ON bs.Batch_Type_Id = bt.Batch_Type_ID
        WHERE   
                 bs.Status = 'I'
                AND bs.Is_Success IS NULL


	END CATCH								  

/*********************END CATCH BLOCK  ********************/ 
END				

GO
/****** Object:  StoredProcedure [dbo].[USP_End_Batch_Schedule]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_End_Batch_Schedule]
 @Batch_Name NVARCHAR (30) 
,@Data_Start_TS_EST DATETIME=NULL 
,@Success_Flag CHAR (1)
/******************************************************************************
   NAME        :  USP_End_Batch_Schedule
   PURPOSE & 
   Description :  This script will be invoked when the Batch schedule ends.
			   
			      This will update the previous Batch schedule status to
				  'C'(Completed) and IS_Success Flag to 'Y'
			        
   REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0         10/23/2015       USCHXJ15                1. Initial Version


-----------------------------Execution script-----------------------------------
EXECUTE [dbo].[USP_End_Batch_Schedule] 'Master Data', NULL, 'Y'

******************************************************************************/
AS
BEGIN TRY
    UPDATE  bs
        SET Execution_End_TS_EST = GETDATE(),
            Status             = 'C',
            Is_Success         = @Success_Flag,
            Modified_By        = USER_NAME(),
            Modified_Date_TS      = GETDATE()
    FROM    ADT.Batch_Schedule AS bs
            INNER JOIN
            ADT.Batch_type AS bt
            ON bs.Batch_Type_Id = bt.Batch_Type_ID
    WHERE   bt.Batch_Name = @Batch_Name
            AND bs.Status = 'I'
            AND bs.Is_Success IS NULL
            AND bs.Data_Start_TS_EST = ISNULL(@Data_Start_TS_EST, (SELECT MAX(Data_End_TS_EST)
                                                          FROM   ADT.Batch_Schedule AS bs
                                                                 INNER JOIN
                                                                 ADT.Batch_Type AS bt
                                                                 ON bs.Batch_Type_Id = bt.Batch_Type_Id
                                                          WHERE  bt.Batch_Name = @Batch_Name
                                                                 AND bs.Status = 'C'
                                                                 AND bs.Is_Success = 'Y'));
END TRY
BEGIN CATCH
    UPDATE  bs
        SET Status         = 'C'
            ,Is_Success     = 'N'
            ,ErrorNumber    = ERROR_NUMBER()
            ,ErrorSeverity  = ERROR_SEVERITY()
            ,ErrorState     = ERROR_STATE()
            ,ErrorProcedure = ERROR_PROCEDURE()
            ,ErrorLine      = ERROR_LINE()
            ,ErrorMessage   = ERROR_MESSAGE()
            ,Modified_By    = USER_NAME()
            ,Modified_Date_TS  = GETDATE()
    FROM    ADT.Batch_Schedule AS bs
            INNER JOIN
            ADT.Batch_type AS bt
            ON bs.Batch_Type_Id = bt.Batch_Type_ID
    WHERE   bt.Batch_Name = @Batch_Name
            AND Status = 'I'
            AND Is_Success IS NULL
            AND bs.Data_Start_TS_EST = ISNULL(@Data_Start_TS_EST, (SELECT MAX(Data_End_TS_EST)
                                                          FROM   ADT.Batch_Schedule AS bs
                                                                 INNER JOIN
                                                                 ADT.Batch_Type AS bt
                                                                 ON bs.Batch_Type_Id = bt.Batch_Type_Id
                                                          WHERE  bt.Batch_Name = @Batch_Name
                                                                 AND bs.Status = 'C'
                                                                 AND bs.Is_Success = 'Y'));
END CATCH




GO
/****** Object:  StoredProcedure [dbo].[USP_ETL_Begin_Batch_Detail]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ETL_Begin_Batch_Detail]
@Batch_Name NVARCHAR (30), 
@Table_Name NVARCHAR (50), 
@Data_Start_TS_EST DATETIME=NULL, 
@Data_End_TS_EST DATETIME=NULL, 
@Data_Start_TS_GMT DATETIME OUTPUT, 
@Data_End_TS_GMT DATETIME OUTPUT, 
@Data_Start_TS_GMT_SAP NUMERIC (20) OUTPUT, 
@Data_End_TS_GMT_SAP NUMERIC (20) OUTPUT
AS
/******************************************************************************
   NAME        :  USP_ETL_Begin_Batch_Detail
   PURPOSE & 
   Description :  This script will be invoked when the Batch detail starts.
			   
			     In case ,If the previous Batch detail failed ,then this will update 
			     the previous Batch status to 'C' (Completed) and 
			     IS_Success Flag to 'N' (Not Completed)
			   
			     This Script also captures all the input parameters and converts 
			     EST time format to GMT time format and SAP time format		
  REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0         10/23/2015       USCHXJ15                1. Initial Version



-----------------------------Execution script--------------------------------------
DECLARE @Data_Start_TS_GMT_test AS DATETIME, 
@Data_End_TS_GMT_test AS DATETIME, 
@Data_Start_TS_GMT_SAP_test AS NUMERIC (20), 
@Data_End_TS_GMT_SAP_test AS NUMERIC (20);

EXECUTE USP_ETL_Begin_Batch_Detail 'Master Data', 'LFA1', NULL, NULL, 
@Data_Start_TS_GMT = @Data_Start_TS_GMT_test OUTPUT, 
@Data_End_TS_GMT = @Data_End_TS_GMT_test OUTPUT, 
@Data_Start_TS_GMT_SAP = @Data_Start_TS_GMT_SAP_test OUTPUT, 
@Data_End_TS_GMT_SAP = @Data_End_TS_GMT_SAP_test OUTPUT;
******************************************************************************/
BEGIN
    DECLARE @Getdate AS DATETIME = GETDATE();
    DECLARE @MaxDate_GMT DATETIME 
    DECLARE @Username AS NVARCHAR (20) = USER_NAME();
    DECLARE @MaxDate AS DATETIME;
    DECLARE @Data_Start_TS_GMT1 AS DATETIME;
    DECLARE @Data_End_TS_GMT1 AS DATETIME;
    DECLARE @Data_Start_TS_GMT_SAP1 AS NUMERIC (20);
    DECLARE @Data_End_TS_GMT_SAP1 AS NUMERIC (20);
    
    SELECT @MaxDate    =  MAX(Data_End_TS_EST) FROM ADT.Batch_Detail bd
							WHERE bd.Source_Table_Name = @Table_Name
							AND bd.Status     = 'C'
							AND bd.Is_Success ='Y'
    
   
   SELECT @MaxDate_GMT =	MAX(Data_End_TS_GMT) FROM ADT.Batch_Detail bd
							WHERE bd.Source_Table_Name = @Table_Name
							AND bd.Status     = 'C'
							AND bd.Is_Success ='Y'																     
																	     
   SELECT @Data_Start_TS_GMT1  =@MaxDate_GMT
   SELECT @Data_End_TS_GMT1    =  DATEADD(SECOND, DATEDIFF(SECOND, @Getdate, GETUTCDATE()), @Getdate);
   
    SELECT @Data_Start_TS_GMT_SAP1=DATEDIFF(SECOND, '1990-01-01 00:00:00', @Data_Start_TS_GMT1) * CONVERT(numeric(20), (10000), 0)
  SELECT @Data_End_TS_GMT_SAP1  = DATEDIFF(SECOND, '1990-01-01 00:00:00', @Data_End_TS_GMT1) * CONVERT(numeric(20), (10000), 0)
   
    SELECT @MaxDate = MAX(Data_End_TS_EST)
    FROM   ADT.Batch_Detail AS bd
    WHERE  bd.Source_Table_Name = @Table_Name
           AND bd.Status = 'C'
           AND bd.Is_Success = 'Y';
    BEGIN TRY
        UPDATE  bd
            SET bd.Status               = 'C',
                bd.Is_Success           = 'N',
                bd.Execution_End_TS_EST = @Getdate,
                bd.Modified_By          = @Username,
                bd.Modified_TS          = @Getdate
        FROM    ADT.Batch_Detail AS bd
                INNER JOIN
                ADT.Batch_Schedule AS bs
                ON bd.Batch_Schedule_Id = bs.Batch_Schedule_Id
                INNER JOIN
                ADT.Batch_type AS bt
                ON bs.Batch_Type_Id = bt.Batch_Type_ID
        WHERE   bd.Status = 'I'
                AND bd.Is_Success IS NULL
                AND bd.Source_Table_Name = @Table_Name
                AND bt.Batch_Name = @Batch_Name;
        INSERT INTO ADT.Batch_Detail (
        Batch_Schedule_Id, 
        Source_Table_Name, 
        Data_Start_TS_EST, 
        Data_End_TS_EST, 
        Data_Start_TS_GMT, 
        Data_End_TS_GMT, 
        Data_Start_TS_GMT_SAP, 
        Data_End_TS_GMT_SAP, 
        Execution_Start_TS_EST, 
        Execution_End_TS_EST, 
        Status, 
        Is_Success, 
        ErrorNumber, 
        ErrorSeverity, 
        ErrorState, 
        ErrorProcedure, 
        ErrorLine, 
        ErrorMessage, 
        Created_By, 
        Created_TS, 
        Modified_By, 
        Modified_TS, 
        Rows_Inserted, 
        Rows_Updated, 
        Rows_Deleted,
	    Total_Count,
		Warning_Count,
		Error_Count 
        )
        SELECT DISTINCT bs.Batch_Schedule_Id,
                        @Table_Name,
                        ISNULL(@Data_Start_TS_EST, (@MaxDate)),
                        ISNULL(@Data_End_TS_EST, @Getdate),
                        @Data_Start_TS_GMT1,
                        @Data_End_TS_GMT1,
                        @Data_Start_TS_GMT_SAP1,
                        @Data_End_TS_GMT_SAP1,
                        @Getdate AS Execution_Start_TS_EST,
                        NULL AS Execution_End_TS_EST,
                        'I' AS STATUS,
                        NULL AS Is_Success,
                        NULL AS ErrorNumber,
                        NULL AS ErrorSeverity,
                        NULL AS ErrorState,
                        NULL AS ErrorProcedure,
                        NULL AS ErrorLine,
                        NULL AS ErrorMessage,
                        @Username AS Created_By,
                        @Getdate AS Creation_TS,
                        NULL AS Modified_By,
                        NULL AS Modified_TS,
                        NULL AS Rows_Inserted,
                        NULL AS Rows_Updated,
                        NULL AS Rows_Deleted,
						NULL AS Total_Count,
                        NULL AS Warning_Count,
                        NULL AS Error_Count
        			FROM   
        --ADT.Batch_Detail AS bd
               --INNER JOIN
               ADT.Batch_Schedule AS bs
               --ON bd.Batch_Schedule_Id = bs.Batch_Schedule_Id
               INNER JOIN
               ADT.Batch_type AS bt
               ON bs.Batch_Type_Id = bt.Batch_Type_ID
        WHERE  bt.Batch_Name = @Batch_Name
               AND bs.Status = 'I'
               AND bs.Is_Success IS NULL;
    END TRY
    BEGIN CATCH
        DECLARE @err_num AS INT = ERROR_NUMBER(), 
				@err_sev AS NVARCHAR (50) = ERROR_SEVERITY(), 
				@err_state AS NVARCHAR (50) = ERROR_STATE(), 
				@err_proc AS NVARCHAR (50) = ERROR_PROCEDURE(), 
				@err_line AS INT = ERROR_LINE(), 
				@err_msg AS NVARCHAR (50) = ERROR_MESSAGE();
        INSERT INTO ADT.Batch_Detail (
        Batch_Schedule_Id, 
        Source_Table_Name, 
        Data_Start_TS_EST, 
        Data_End_TS_EST, 
        Execution_Start_TS_EST, 
        Execution_End_TS_EST, 
        Status, 
        Is_Success, 
        ErrorNumber, 
        ErrorSeverity, 
        ErrorState, 
        ErrorProcedure, 
        ErrorLine, 
        ErrorMessage, 
        Created_By, 
        Created_TS
        )
        SELECT bs.Batch_Schedule_Id,
               @Table_Name,
               ISNULL(@Data_Start_TS_EST, (@MaxDate)),
               ISNULL(@Data_End_TS_EST, @Getdate),
               @Getdate,
               @Getdate,
               'C',
               'N',
               @err_num AS ErrorNumber,
               @err_sev AS ErrorSeverity,
               @err_state AS ErrorState,
               @err_proc AS ErrorProcedure,
               @err_line AS ErrorLine,
               @err_msg AS ErrorMessage,
               @Username AS Created_By,
               @Getdate AS Creation_TS
        FROM   ADT.Batch_Detail AS bd
               INNER JOIN
               ADT.Batch_Schedule AS bs
               ON bd.Batch_Schedule_Id = bs.Batch_Schedule_Id
               INNER JOIN
               ADT.Batch_type AS bt
               ON bs.Batch_Type_Id = bt.Batch_Type_ID
        WHERE  bt.Batch_Name = @Batch_Name
               AND bs.Status = 'I'
               AND bs.Is_Success IS NULL;
    END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[USP_ETL_Begin_Batch_Schedule]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ETL_Begin_Batch_Schedule] 
@Batch_Name nvarchar(30),
@Data_Start_TS_EST datetime = NULL,
@Data_End_TS_EST datetime = NULL,
@Data_Start_TS_GMT datetime OUTPUT,
@Data_End_TS_GMT datetime OUTPUT,
@Data_Start_TS_GMT_SAP numeric(20) OUTPUT,
@Data_End_TS_GMT_SAP numeric(20) OUTPUT
AS
/**********************************************************************************
   NAME        : USP_ETL_Begin_Batch_Schedule
   PURPOSE & 
   Description : This script will be invoked when the Batch schedule starts.
  		   
			     In case ,If the previous Batch schedule failed ,then this will update 
			     the previous Batch status to 'C' (Completed) and 
			     IS_Success Flag to 'N' (Not Completed)
			   
			     This Script also captures all the input parameters and converts 
			     EST time format to GMT time format and SAP time format			   
			  
   REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0         10/23/2015       USCHXJ15                1. Initial Version

-----------------------------Execution script--------------------------------------

DECLARE @Data_Start_TS_GMT_test AS DATETIME, 
@Data_End_TS_GMT_test AS DATETIME, 
@Data_Start_TS_GMT_SAP_test AS NUMERIC (20), 
@Data_End_TS_GMT_SAP_test AS NUMERIC (20);

EXECUTE USP_ETL_Begin_Batch_Schedule 'Master Data', NULL, NULL, 
@Data_Start_TS_GMT = @Data_Start_TS_GMT_test OUTPUT, 
@Data_End_TS_GMT = @Data_End_TS_GMT_test OUTPUT, 
@Data_Start_TS_GMT_SAP = @Data_Start_TS_GMT_SAP_test OUTPUT, 
@Data_End_TS_GMT_SAP = @Data_End_TS_GMT_SAP_test OUTPUT;

**********************************************************************************/
BEGIN
  DECLARE @Getdate datetime = GETDATE()
  DECLARE @MaxDate datetime
  DECLARE @MaxDate_GMT datetime
  DECLARE @Username nvarchar(20)= USER_NAME()
  DECLARE @Data_Start_TS_GMT1  datetime
  DECLARE @Data_End_TS_GMT1  datetime
  DECLARE @Data_Start_TS_GMT_SAP1 numeric(20)
  DECLARE @Data_End_TS_GMT_SAP1 numeric(20)

 
  
  SELECT @MaxDate    = MAX(Data_End_TS_EST) FROM ADT.Batch_Schedule AS bs INNER JOIN ADT.Batch_Type AS bt
																 ON bs.Batch_Type_Id = bt.Batch_Type_Id
																 WHERE bt.Batch_Name = @Batch_Name
																	     AND bs.Status = 'C' AND bs.Is_Success = 'Y'
   
   SELECT @MaxDate_GMT =	 MAX(Data_End_TS_GMT) FROM ADT.Batch_Schedule AS bs INNER JOIN ADT.Batch_Type AS bt
																 ON bs.Batch_Type_Id = bt.Batch_Type_Id
														 WHERE bt.Batch_Name = @Batch_Name
																	     AND bs.Status = 'C' AND bs.Is_Success = 'Y'																     
																	     
   SELECT @Data_Start_TS_GMT1  =@MaxDate_GMT
   SELECT @Data_End_TS_GMT1    =  DATEADD(SECOND, DATEDIFF(SECOND, @Getdate, GETUTCDATE()), @Getdate);
   
    SELECT @Data_Start_TS_GMT_SAP1=DATEDIFF(SECOND, '1990-01-01 00:00:00', @Data_Start_TS_GMT1) * CONVERT(numeric(20), (10000), 0)
  SELECT @Data_End_TS_GMT_SAP1  = DATEDIFF(SECOND, '1990-01-01 00:00:00', @Data_End_TS_GMT1) * CONVERT(numeric(20), (10000), 0)
   
  BEGIN TRY
    UPDATE bs
    SET bs.Status               = 'C',
        bs.Is_Success           = 'N',
        bs.Execution_End_TS_EST = @Getdate,
        bs.Modified_By          = @Username,
        bs.Modified_TS          = @Getdate
    FROM ADT.Batch_Schedule AS bs
    INNER JOIN ADT.Batch_type AS bt
      ON bs.Batch_Type_Id       = bt.Batch_Type_ID
    WHERE bs.Status             = 'I'
    AND bs.Is_Success IS NULL
    AND bt.Batch_Name           = @Batch_Name;

   
    INSERT INTO ADT.Batch_Schedule (
    Batch_Type_Id,
    Data_Start_TS_EST,
    Data_End_TS_EST,
    Data_Start_TS_GMT,
    Data_End_TS_GMT,
    Data_Start_TS_GMT_SAP,
    Data_End_TS_GMT_SAP,
    Execution_Start_TS_EST,
    Execution_End_TS_EST,
    Status,
    Is_Success,
    ErrorNumber,
    ErrorSeverity,
    ErrorState,
    ErrorProcedure,
    ErrorLine,
    ErrorMessage,
    Created_By,
    Created_TS,
    Modified_By,
    Modified_TS)
      SELECT
        bt.Batch_Type_ID,
        ISNULL(@Data_Start_TS_EST, (@MaxDate)),
        ISNULL(@Data_End_TS_EST, @Getdate),

        @Data_Start_TS_GMT1,
        @Data_End_TS_GMT1,
        @Data_Start_TS_GMT_SAP1,
        @Data_End_TS_GMT_SAP1,
        
        @Getdate,
        NULL,
        'I',
        NULL AS Is_Success,
        NULL AS ErrorNumber,
        NULL AS ErrorSeverity,
        NULL AS ErrorState,
        NULL AS ErrorProcedure,
        NULL AS ErrorLine,
        NULL AS ErrorMessage,

        @Username AS Created_By,
        @Getdate AS Creation_TS,
        NULL AS Modified_By,
        NULL AS Modified_TS

      FROM ADT.Batch_Type AS bt
      WHERE bt.Batch_Name = @Batch_Name;
  END TRY
  BEGIN CATCH
    DECLARE @err_num int            = ERROR_NUMBER(),
            @err_sev nvarchar(50)   = ERROR_SEVERITY(),
            @err_state nvarchar(50) = ERROR_STATE(),
            @err_proc nvarchar(50)  = ERROR_PROCEDURE(),
            @err_line int           = ERROR_LINE(),
            @err_msg nvarchar(50)   = ERROR_MESSAGE()

    INSERT INTO ADT.Batch_Schedule (
    Batch_Type_Id,
    Data_Start_TS_EST,
    Data_End_TS_EST,
    Data_Start_TS_GMT,
    Data_End_TS_GMT,
    Data_Start_TS_GMT_SAP,
    Data_End_TS_GMT_SAP,
    Execution_Start_TS_EST,
    Execution_End_TS_EST,
    Status,
    Is_Success,
    ErrorNumber,
    ErrorSeverity,
    ErrorState,
    ErrorProcedure,
    ErrorLine,
    ErrorMessage,
    Created_By,
    Created_TS,
    Modified_By,
    Modified_TS)
      SELECT
        bt.Batch_Type_ID,
        ISNULL(@Data_Start_TS_EST, (@MaxDate)
        ),
        ISNULL(@Data_End_TS_EST, @Getdate),
        NULL AS Data_Start_TS_GMT,
        NULL AS Data_End_TS_GMT,
        NULL AS Data_Start_TS_GMT_SAP,
        NULL AS Data_End_TS_GMT_SAP,
        @Getdate AS Execution_Start_TS_EST,
        @Getdate AS Execution_End_TS_EST,
        'C',
        'N',
        @err_num    AS ErrorNumber,
        @err_sev    AS ErrorSeverity,
        @err_state  AS ErrorState,
        @err_proc   AS ErrorProcedure,
        @err_line   AS ErrorLine,
        @err_msg    AS ErrorMessage,
        @Username   AS Created_By,
        @Getdate    AS Creation_TS,
        NULL AS Modified_By,
        NULL AS Modified_TS
      FROM ADT.Batch_Type AS bt
      WHERE bt.Batch_Name = @Batch_Name;
  END CATCH
END


GO
/****** Object:  StoredProcedure [dbo].[USP_ETL_End_Batch_Detail]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_ETL_End_Batch_Detail]
@Batch_Name NVARCHAR (30), @Table_Name NVARCHAR (50), @Rows_Ins INT, @Rows_Upd INT, @Rows_Del INT, @Data_Start_TS_EST DATETIME=NULL, @Success_Flag CHAR (1)
AS
/**********************************************************************************
   NAME:       : USP_ETL_End_Batch_Detail
   PURPOSE & 
   Description : This script will be invoked when the Batch detail Ends.
			   
			     This will update the previous Batch detail status to 'C' (Completed) 
				 and IS_Success Flag to 'Y'
				 			  		     
  REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0         10/23/2015       USCHXJ15                1. Initial Version

-------------------------Execution Script--------------------------------------

EXECUTE [dbo].[USP_ETL_End_Batch_Detail] 'Master Data', 'LFA1', 1, 1, 1,NULL, 'Y';
*********************************************************************************/
BEGIN
    DECLARE @Getdate AS DATETIME = GETDATE();
    DECLARE @MaxDate AS DATETIME;
    
    BEGIN TRY
        UPDATE  bd
            SET Execution_End_TS_EST = @Getdate,
                Status               = 'C',
                Is_Success           = @Success_Flag,
                Modified_By          = USER_NAME(),
                Modified_TS          = @Getdate,
                Rows_Inserted        = @Rows_Ins,
                Rows_Updated         = @Rows_Upd,
                Rows_Deleted         = @Rows_Del
        FROM    ADT.Batch_Detail AS bd
                INNER JOIN
                ADT.Batch_Schedule AS bs
                ON bd.Batch_Schedule_Id = bs.Batch_Schedule_Id
                INNER JOIN
                ADT.Batch_type AS bt
                ON bs.Batch_Type_Id = bt.Batch_Type_ID
        WHERE   bt.Batch_Name = @Batch_Name
                AND bd.Source_Table_Name = @Table_Name
                AND bs.Status = 'I'
                AND bs.Is_Success IS NULL
               
    END TRY
    BEGIN CATCH
        DECLARE @err_num AS INT = ERROR_NUMBER(), 
				@err_sev AS NVARCHAR (50) = ERROR_SEVERITY(), 
				@err_state AS NVARCHAR (50) = ERROR_STATE(), 
				@err_proc AS NVARCHAR (50) = ERROR_PROCEDURE(), 
				@err_line AS INT = ERROR_LINE(), 
				@err_msg AS NVARCHAR (50) = ERROR_MESSAGE();
        UPDATE  bd
            SET Execution_End_TS_EST = @Getdate,
                Status               = 'C',
                Is_Success           = 'N',
                ErrorNumber          = @err_num,
                ErrorSeverity        = @err_sev,
                ErrorState           = @err_state,
                ErrorProcedure       = @err_proc,
                ErrorLine            = @err_line,
                ErrorMessage         = @err_msg,
                Modified_By          = USER_NAME(),
                Modified_TS          = @Getdate
        FROM    ADT.Batch_Detail AS bd
                INNER JOIN
                ADT.Batch_Schedule AS bs
                ON bd.Batch_Schedule_Id = bs.Batch_Schedule_Id
                INNER JOIN
                ADT.Batch_type AS bt
                ON bs.Batch_Type_Id = bt.Batch_Type_ID
        WHERE   bt.Batch_Name = @Batch_Name
                AND bs.Status = 'I'
                AND bs.Is_Success IS NULL
                
    END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[USP_ETL_End_Batch_Schedule]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_ETL_End_Batch_Schedule]
@Batch_Name NVARCHAR (30), @Data_Start_TS_EST DATETIME=NULL, @Success_Flag CHAR (1)
AS
/******************************************************************************
   NAME        :  USP_ETL_End_Batch_Schedule
   PURPOSE & 
   Description :  This script will be invoked when the Batch schedule ends.
			   
			      This will update the previous Batch schedule status to
				  'C'(Completed) and IS_Success Flag to 'Y'
			        
  REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0         10/23/2015       USCHXJ15                1. Initial Version


-----------------------------Execution script-----------------------------------
EXECUTE [dbo].[USP_ETL_End_Batch_Schedule] 'Master Data', NULL, 'Y'

******************************************************************************/
BEGIN
    DECLARE @Getdate AS DATETIME = GETDATE();
    DECLARE @MaxDate AS DATETIME;
    
    BEGIN TRY
        UPDATE  bs
            SET Execution_End_TS_EST = @Getdate,
                Status               = 'C',
                Is_Success           = @Success_Flag,
                Modified_By          = USER_NAME(),
                Modified_TS          = @Getdate
        FROM    ADT.Batch_Schedule AS bs
                INNER JOIN
                ADT.Batch_type AS bt
                ON bs.Batch_Type_Id = bt.Batch_Type_ID
        WHERE   bt.Batch_Name = @Batch_Name
                AND bs.Status = 'I'
                AND bs.Is_Success IS NULL
               
    END TRY
    BEGIN CATCH
        DECLARE @err_num AS INT = ERROR_NUMBER(), 
@err_sev AS NVARCHAR (50) = ERROR_SEVERITY(), 
@err_state AS NVARCHAR (50) = ERROR_STATE(), 
@err_proc AS NVARCHAR (50) = ERROR_PROCEDURE(), 
@err_line AS INT = ERROR_LINE(), 
@err_msg AS NVARCHAR (50) = ERROR_MESSAGE();
        UPDATE  bs
            SET Status         = 'C',
                Is_Success     = 'N',
                ErrorNumber    = @err_num,
                ErrorSeverity  = @err_sev,
                ErrorState     = @err_state,
                ErrorProcedure = @err_proc,
                ErrorLine      = @err_line,
                ErrorMessage   = @err_msg,
                Modified_By    = USER_NAME(),
                Modified_TS    = @Getdate
        FROM    ADT.Batch_Schedule AS bs
                INNER JOIN
                ADT.Batch_type AS bt
                ON bs.Batch_Type_Id = bt.Batch_Type_ID
        WHERE   bt.Batch_Name = @Batch_Name
                AND Status = 'I'
                AND Is_Success IS NULL
                
    END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[USP_NON_BB_MAPPINGS]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_NON_BB_MAPPINGS] 
AS
SELECT
	 EKKO.LIFNR as Vendor_Name
	,EKKO.LIFRE as Invoice_Party_Name 
	,BLTXT AS Document_Header_Text
	,USNAM AS UserName
FROM SRC.TBL_COEP COEP	LEFT OUTER JOIN SRC.TBL_EKKO EKKO ON	COEP.EBELN	= EKKO.EBELN 
						LEFT OUTER JOIN SRC.TBL_COBK COBK ON	COBK.KOKRS	= COEP.KOKRS 
													AND COBK.BELNR	= COEP.BELNR 
													AND COBK.GJAHR = COEP.GJAHR 
						LEFT OUTER JOIN SRC.TBL_LFA1 LFA1 ON EKKO.LIFNR= LFA1.LIFNR
													--AND EKKO.LIFRE=LFA1.LIFRE

GO
/****** Object:  StoredProcedure [dbo].[USP_Refresh_DB_Metric_Detail]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Refresh_DB_Metric_Detail]
AS
BEGIN
SET NOCOUNT ON

	BEGIN TRY



TRUNCATE TABLE KG_ZBB.DBO.DB_Metric_Detail_Raw
TRUNCATE TABLE KG_ZBB.DBO.DB_Metric_Detail

DECLARE @SearchSvr NVARCHAR(200)
       ,@SearchDB NVARCHAR(200)
       ,@SearchS NVARCHAR(200)
       ,@SearchTbl NVARCHAR(200)
       ,@SQL NVARCHAR(4000)


SET @SQL='SELECT ''?'' AS DbName, s.name AS SchemaName, t.name AS TableName, p.rows AS RowsCount 
FROM [?].sys.tables t INNER JOIN [?].sys.schemas s ON t.schema_id=s.schema_id INNER JOIN [?].sys.partitions p ON p.OBJECT_ID = t.OBJECT_ID
and t.is_ms_shipped = 0 AND p.index_id IN (1,0)
WHERE  ''?'' NOT IN (''master'',''model'',''msdb'',''tempdb'', ''tempdb'',''Kellogg_DBA_Management'')
--AND ''?''  IN (''KG_SC'')
'
INSERT INTO KG_ZBB.DBO.DB_Metric_Detail_Raw (DbName, SchemaName, TableName, RowsCount )
    EXEC sp_msforeachdb @SQL



INSERT INTO KG_ZBB.DBO.DB_Metric_Detail (DbName, SchemaName, TableName, RowsCount,Region, Poll_Date )

SELECT DbName, SchemaName, TableName, SUM(RowsCount),'MISC' ,CAST (GETDATE() AS DATE) AS Poll_Date
FROM KG_ZBB.DBO.DB_Metric_Detail_Raw
GROUP BY DbName, SchemaName, TableName
ORDER BY DbName, SchemaName, TableName

SET NOCOUNT OFF

--SELECT * FROM KG_ZBB.DBO.DB_Metric_Detail_Raw 
--SELECT * FROM KG_ZBB.DBO.DB_Metric_Detail


	END TRY

	BEGIN CATCH
	END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[USP_Refresh_DB_Metric_Summary]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Refresh_DB_Metric_Summary]
AS
BEGIN
	BEGIN TRY
SET NOCOUNT ON


--- METRIC 1 :DATABASES BY REGION 
TRUNCATE TABLE KG_ZBB.DBO.DB_Metric_Summary

INSERT INTO KG_ZBB.DBO.DB_Metric_Summary (Region,DB_Count,Schema_Count,Record_Count,Poll_Date)
(SELECT DISTINCT  Region
,CAST (0 AS BIGINT ) AS DB_Count
,CAST (0 AS BIGINT ) AS Schema_Count
,CAST (0 AS BIGINT ) AS Record_Count
,CAST (GETDATE() AS DATE) AS Poll_Date  
FROM KG_ZBB.DBO.DB_Metric_Detail
)

--- METRIC 1 :DATABASES BY REGION 
;WITH X1  AS 
(SELECT  DBNAME, MAX(REGION) AS REGION

FROM KG_ZBB.DBO.DB_Metric_Detail
GROUP BY DBNAME
)

, X2 AS (SELECT REGION, COUNT(*)  AS DB_Count FROM X1
GROUP BY REGION)


UPDATE T1
SET DB_Count = X2.DB_Count
FROM KG_ZBB.DBO.DB_Metric_Summary  T1  INNER JOIN X2
ON X2.Region = T1.Region

;

--- METRIC 2 :schema BY REGION 
;WITH X1  AS 
(SELECT  DBNAME,SchemaName, MAX(REGION) AS REGION

FROM KG_ZBB.DBO.DB_Metric_Detail
GROUP BY DBNAME, SchemaName
)

, X2 AS (SELECT REGION, COUNT(*)  AS Schema_Count FROM X1
GROUP BY REGION)

UPDATE T1
SET Schema_Count = X2.Schema_Count
FROM KG_ZBB.DBO.DB_Metric_Summary  T1  INNER JOIN X2
ON X2.Region = T1.Region

;


--- METRIC 3 :Record Counts BY REGION 

; WITH X2 AS (SELECT REGION, sum(RowsCount) AS Record_Count 
FROM KG_ZBB.DBO.DB_Metric_Detail
GROUP BY REGION)

UPDATE T1
SET Record_Count = X2.Record_Count
FROM KG_ZBB.DBO.DB_Metric_Summary  T1  INNER JOIN X2
ON X2.Region = T1.Region
;

 
-- POPULATE HISTORY FOR SUMMARY
DELETE FROM KG_ZBB.DBO.DB_Metric_Summary_History 
WHERE 1=1
AND EXISTS (SELECT 1 FROM KG_ZBB.DBO.DB_Metric_Summary T2
            WHERE KG_ZBB.DBO.DB_Metric_Summary_History.Poll_Date  = T2.Poll_Date
			  AND KG_ZBB.DBO.DB_Metric_Summary_History.Region  = T2.Region)

INSERT INTO KG_ZBB.DBO.DB_Metric_Summary_History (Region,DB_Count,Schema_Count,Record_Count,Poll_Date)
SELECT Region,DB_Count,Schema_Count,Record_Count,Poll_Date FROM KG_ZBB.DBO.DB_Metric_Summary



-- POPULATE HISTORY FOR DETAIL 
DELETE FROM KG_ZBB.DBO.DB_Metric_Detail_History 
WHERE 1=1
AND EXISTS (SELECT 1 FROM KG_ZBB.DBO.DB_Metric_Detail T2
            WHERE KG_ZBB.DBO.DB_Metric_Detail_History.Poll_Date  = T2.Poll_Date
			  AND KG_ZBB.DBO.DB_Metric_Detail_History.Region  = T2.Region)

INSERT INTO KG_ZBB.DBO.DB_Metric_Detail_History (DbName, SchemaName, TableName, RowsCount ,Region,Poll_Date)
SELECT DbName, SchemaName, TableName, RowsCount,Region ,Poll_Date FROM KG_ZBB.DBO.DB_Metric_Detail

  --SELECT * FROM  KG_ZBB.DBO.DB_Metric_Detail
  --SELECT * FROM  KG_ZBB.DBO.DB_Metric_Detail_History
  --Select * from  KG_ZBB.DBO.DB_Metric_Summary
  --Select * from  KG_ZBB.DBO.DB_Metric_Summary_History

 	END TRY

	BEGIN CATCH
	END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[USP_Refresh_DB_Size_Metric_Detail]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Refresh_DB_Size_Metric_Detail]
AS
BEGIN
	BEGIN TRY
SET NOCOUNT ON

/*****  CORE LOGIC STARTS BELOW **********/

--- TRUNCATE DATA FROM PREVIOUS RUN
TRUNCATE TABLE KG_ZBB.DBO.DB_Size_Metric_Detail_Raw  
TRUNCATE TABLE KG_ZBB.DBO.DB_Size_Metric_Detail

DECLARE @command VARCHAR(5000)  

SELECT @command = 'Use [' + '?' + '] SELECT  
@@servername as ServerName,  
' + '''' + '?' + '''' + ' AS DatabaseName,  
CAST(sysfiles.size/128.0 AS bigint) AS FileSize,  
sysfiles.name AS LogicalFileName, sysfiles.filename AS PhysicalFileName,  
CONVERT(sysname,DatabasePropertyEx(''?'',''Status'')) AS Status,  
CONVERT(sysname,DatabasePropertyEx(''?'',''Updateability'')) AS Updateability,  
CONVERT(sysname,DatabasePropertyEx(''?'',''Recovery'')) AS RecoveryMode,  
CAST(sysfiles.size/128.0 - CAST(FILEPROPERTY(sysfiles.name, ' + '''' +  
       'SpaceUsed' + '''' + ' ) AS bigint)/128.0 AS bigint) AS FreeSpaceMB,  
CAST(100 * (CAST (((sysfiles.size/128.0 -CAST(FILEPROPERTY(sysfiles.name,  
' + '''' + 'SpaceUsed' + '''' + ' ) AS bigint)/128.0)/(sysfiles.size/128.0))  
AS decimal(4,2))) AS varchar(8)) + ' + '''' + '%' + '''' + ' AS FreeSpacePct,  
GETDATE() as PollDate FROM dbo.sysfiles'  
INSERT INTO KG_ZBB.DBO.DB_Size_Metric_Detail_Raw  
   (ServerName,  
   DatabaseName,  
   FileSizeMB,  
   LogicalFileName,  
   PhysicalFileName,  
   Status,  
   Updateability,  
   RecoveryMode,  
   FreeSpaceMB,  
   FreeSpacePct,  
   PollDate)  
EXEC sp_MSForEachDB @command  


UPDATE KG_ZBB.DBO.DB_Size_Metric_Detail_Raw  
SET UsedSpaceMB = FileSizeMB - FreeSpaceMB


--SELECT *  
DELETE 
FROM KG_ZBB.DBO.DB_Size_Metric_Detail_Raw
WHERE DatabaseName  IN ('master','model','msdb','tempdb','Kellogg_DBA_Management')
------WHERE PhysicalFileName NOT LIKE '%.MDF'
------AND   PhysicalFileName NOT LIKE '%.LDF'

 
INSERT INTO KG_ZBB.DBO.DB_Size_Metric_Detail 
(        DBName 
		,Region 
		,PollDate   
		,FileSizeMB 
		,UsedSpaceMB 
		,FreeSpaceMB 
)
SELECT   
    DatabaseName
   ,CAST('' AS VARCHAR(100)  )  AS Region
   ,CAST (PollDate AS DATE)  AS PollDate
   ,SUM(FileSizeMB) AS FileSizeMB  
   ,SUM(CASE WHEN PhysicalFileName LIKE '%LDF' THEN FileSizeMB ELSE UsedSpaceMB END )     AS UsedSpaceMB  -- SPACE ALLOCATED TO TLOG IS ALWAYS CONSIDERED USED IN FULL 
   ,SUM( CASE WHEN PhysicalFileName LIKE '%LDF' THEN 0 ELSE FreeSpaceMB END )  AS FreeSpaceMB  -- TLOG FREE SPACE IS NOT ACTUAL FREE SPACE FOR DATA
   
FROM KG_ZBB.DBO.DB_Size_Metric_Detail_Raw

GROUP BY    DatabaseName
   --,CAST('' AS VARCHAR(100)  )
   ,CAST (PollDate AS DATE) 

   ORDER BY DatabaseName




   --SELECT * FROM KG_ZBB.DBO.DB_Size_Metric_Detail 
   --order by LTRIM(RTRIM(DBName))


--SELECT DatabaseName, COUNT(*)
----DELETE 
--FROM KG_ZBB.DBO.DB_Size_Metric_Detail_Raw
--GROUP BY DatabaseName
--HAVING COUNT(*) > 2


--SELECT GETDATE(), CONVERT(VARCHAR(10), GETDATE() , 121), CAST (GETDATE() AS DATE)

--SELECT * FROM KG_ZBB.DBO.DB_Size_Metric_Detail_Raw 
--WHERE DatabaseName LIKE 'KNA_ECC'



	END TRY

	BEGIN CATCH
	END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[USP_Refresh_DB_Size_Metric_Summary]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_Refresh_DB_Size_Metric_Summary]
AS
BEGIN
	BEGIN TRY
SET NOCOUNT ON


--- METRIC 1 :DATABASES BY REGION 
TRUNCATE TABLE KG_ZBB.DBO.DB_Size_Metric_Summary

INSERT INTO KG_ZBB.DBO.DB_Size_Metric_Summary 
(Region
,Poll_Date
,Total_Alloc_Space_MB
,Total_Used_Space_MB
,Total_Free_Space_MB
)
  SELECT Region
        ,PollDate  AS Poll_Date
		,SUM(FileSizeMB)   AS Total_Alloc_Space_MB
		,SUM(UsedSpaceMB)  AS Total_Used_Space_MB
		,SUM(FreeSpaceMB)  AS Total_Free_Space_MB 
  FROM  KG_ZBB.DBO.DB_Size_Metric_Detail
  GROUP BY Region
        ,PollDate

 
-- POPULATE HISTORY FOR SUMMARY
DELETE FROM KG_ZBB.DBO.DB_Size_Metric_Summary_History 
WHERE 1=1
AND EXISTS (SELECT 1 FROM KG_ZBB.DBO.DB_Size_Metric_Summary T2
            WHERE KG_ZBB.DBO.DB_Size_Metric_Summary_History.Poll_Date  = T2.Poll_Date
			  AND KG_ZBB.DBO.DB_Size_Metric_Summary_History.Region  = T2.Region )

INSERT INTO KG_ZBB.DBO.DB_Size_Metric_Summary_History 
(Region,Poll_Date,Total_Alloc_Space_MB,Total_Used_Space_MB,Total_Free_Space_MB)
SELECT 
Region,Poll_Date,Total_Alloc_Space_MB,Total_Used_Space_MB,Total_Free_Space_MB 
FROM KG_ZBB.DBO.DB_Size_Metric_Summary



-- POPULATE HISTORY FOR DETAIL 
DELETE FROM KG_ZBB.DBO.DB_Size_Metric_Detail_History 
WHERE 1=1
AND EXISTS (SELECT 1 FROM KG_ZBB.DBO.DB_Size_Metric_Detail T2
            WHERE KG_ZBB.DBO.DB_Size_Metric_Detail_History.PollDate  = T2.PollDate
			  AND KG_ZBB.DBO.DB_Size_Metric_Detail_History.Region  = T2.Region)
        
INSERT INTO KG_ZBB.DBO.DB_Size_Metric_Detail_History (DBName,Region ,PollDate,FileSizeMB ,UsedSpaceMB ,FreeSpaceMB )
SELECT DBName,Region ,PollDate,FileSizeMB ,UsedSpaceMB ,FreeSpaceMB  FROM KG_ZBB.DBO.DB_Size_Metric_Detail

  --SELECT * FROM  KG_ZBB.DBO.DB_Metric_Detail
  --SELECT * FROM  KG_ZBB.DBO.DB_Metric_Detail_History
  --Select * from  KG_ZBB.DBO.DB_Size_Metric_Summary
  --Select * from  KG_ZBB.DBO.DB_Size_Metric_Summary_History

 	END TRY

	BEGIN CATCH
	END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[USP_TIME_AND_EXPENSES]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[USP_TIME_AND_EXPENSES]
AS
SELECT 
  PTRV_PERIO.REINR AS Trip_Number
,KZREA AS Trip_Type
,KZTKT AS Trip_Activity_Type
,KUNDE AS Reason_for_Trip

FROM SRC.TBL_PTRV_PERIO PTRV_PERIO INNER JOIN SRC.TBL_PTRV_HEAD PTRV_HEAD
								ON PTRV_HEAD.PERNR = PTRV_PERIO.PERNR  
								AND PTRV_HEAD.REINR = PTRV_PERIO.REINR  
								AND PTRV_PERIO.HDVRS = PTRV_HEAD.HDVRS

GO
/****** Object:  UserDefinedFunction [dbo].[GetValue]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetValue]
(@Datetime1 DATETIME)
RETURNS NVARCHAR (3)
AS
BEGIN
    RETURN (SELECT TIME_TYPE
            FROM   DAYLIGHT
            WHERE  START_DATE <= @Datetime1
                   AND END_DATE >= @Datetime1);
END
GO
/****** Object:  Table [ADT].[Batch_Detail]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ADT].[Batch_Detail](
	[Batch_Detail_Id] [int] IDENTITY(1000,1) NOT NULL,
	[Batch_Schedule_Id] [int] NOT NULL,
	[Source_Table_Name] [nvarchar](100) NULL,
	[Data_Start_TS_EST] [datetime] NULL,
	[Data_End_TS_EST] [datetime] NULL,
	[Data_Start_TS_GMT] [datetime] NULL,
	[Data_End_TS_GMT] [datetime] NULL,
	[Data_Start_TS_GMT_SAP] [numeric](20, 0) NULL,
	[Data_End_TS_GMT_SAP] [numeric](20, 0) NULL,
	[Execution_Start_TS_EST] [datetime] NULL,
	[Execution_End_TS_EST] [datetime] NULL,
	[Status] [char](1) NULL,
	[Is_Success] [char](1) NULL,
	[ErrorNumber] [nvarchar](10) NULL,
	[ErrorSeverity] [nvarchar](10) NULL,
	[ErrorState] [nvarchar](10) NULL,
	[ErrorProcedure] [nvarchar](max) NULL,
	[ErrorLine] [nvarchar](10) NULL,
	[ErrorMessage] [nvarchar](max) NULL,
	[Created_By] [nvarchar](100) NULL,
	[Created_TS] [datetime] NULL,
	[Modified_By] [nvarchar](100) NULL,
	[Modified_TS] [datetime] NULL,
	[Rows_Inserted] [int] NULL,
	[Rows_Updated] [int] NULL,
	[Rows_Deleted] [int] NULL,
	[Total_Count] [int] NULL,
	[Warning_Count] [int] NULL,
	[Error_Count] [int] NULL,
 CONSTRAINT [PK_Batch_Detail] PRIMARY KEY CLUSTERED 
(
	[Batch_Detail_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ADT].[Batch_Schedule]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ADT].[Batch_Schedule](
	[Batch_Schedule_Id] [int] IDENTITY(1000,1) NOT NULL,
	[Batch_Type_Id] [int] NOT NULL,
	[Data_Start_TS_EST] [datetime] NULL,
	[Data_End_TS_EST] [datetime] NULL,
	[Data_Start_TS_GMT] [datetime] NULL,
	[Data_End_TS_GMT] [datetime] NULL,
	[Data_Start_TS_GMT_SAP] [numeric](20, 0) NULL,
	[Data_End_TS_GMT_SAP] [numeric](20, 0) NULL,
	[Execution_Start_TS_EST] [datetime] NULL,
	[Execution_End_TS_EST] [datetime] NULL,
	[Status] [char](1) NULL,
	[Is_Success] [char](1) NULL,
	[ErrorNumber] [nvarchar](10) NULL,
	[ErrorSeverity] [nvarchar](10) NULL,
	[ErrorState] [nvarchar](10) NULL,
	[ErrorProcedure] [nvarchar](max) NULL,
	[ErrorLine] [nvarchar](10) NULL,
	[ErrorMessage] [nvarchar](max) NULL,
	[Created_By] [nvarchar](100) NULL,
	[Created_TS] [datetime] NULL,
	[Modified_By] [nvarchar](100) NULL,
	[Modified_TS] [datetime] NULL,
 CONSTRAINT [PK_Batch_Schedule] PRIMARY KEY CLUSTERED 
(
	[Batch_Schedule_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ADT].[Batch_type]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ADT].[Batch_type](
	[Batch_Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Batch_Name] [nvarchar](30) NOT NULL,
	[Batch_Desc] [nvarchar](max) NULL,
	[Scheduled_Start_Time] [time](7) NULL,
	[Frequency] [nvarchar](20) NULL,
	[Batch_Job_name] [nvarchar](50) NULL,
	[Monday] [char](1) NULL,
	[Tuesday] [char](1) NULL,
	[Wednesday] [char](1) NULL,
	[Thursday] [char](1) NULL,
	[Friday] [char](1) NULL,
	[Saturday] [char](1) NULL,
	[Sunday] [char](1) NULL,
	[Created_By] [nvarchar](100) NULL,
	[Created_TS] [datetime] NULL,
	[Modified_By] [nvarchar](100) NULL,
	[Modified_TS] [datetime] NULL,
 CONSTRAINT [PK_Batch_type] PRIMARY KEY CLUSTERED 
(
	[Batch_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Batch_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_Batch_Type] UNIQUE NONCLUSTERED 
(
	[Batch_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AIRFARE_DETAIL_NA]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AIRFARE_DETAIL_NA](
	[Client_Name] [nvarchar](50) NULL,
	[Record_Key] [nvarchar](50) NOT NULL,
	[GCN] [nvarchar](10) NULL,
	[Client_Cd] [nvarchar](15) NULL,
	[Lctr] [nvarchar](15) NULL,
	[Trvlr] [nvarchar](100) NULL,
	[Invoice_Dt] [date] NOT NULL,
	[Invoice_Num] [int] NOT NULL,
	[Agency] [nvarchar](25) NULL,
	[Agency_Num] [nvarchar](5) NULL,
	[Booking_Src] [nvarchar](10) NULL,
	[Booking_Agnt_ID] [nvarchar](15) NULL,
	[Local_Air_Rsn_Cd] [nvarchar](10) NULL,
	[Local_Air_Rsn_Cd_Desc] [varchar](255) NULL,
	[Glbl_Air_Rsn_Cd] [nvarchar](10) NULL,
	[glbl_Air_rsn_cd_desc] [varchar](255) NULL,
	[Fare_Accptd_Cd] [nvarchar](5) NULL,
	[Fare_Accptd_Cd_desc] [varchar](255) NULL,
	[CreditCrd_Num] [nvarchar](25) NULL,
	[CreditCrd_Typ] [nvarchar](5) NULL,
	[Creditcrd_exprtn] [nvarchar](10) NULL,
	[Refund_Indctr] [nvarchar](2) NULL,
	[Exchange_Indctr] [nvarchar](2) NULL,
	[True_Tckt_Cnt] [nvarchar](5) NULL,
	[Round_Trp_Indctr] [nvarchar](5) NULL,
	[Short_Long_Hl_Indctr] [nvarchar](2) NULL,
	[Original_docnum] [nvarchar](25) NULL,
	[Int_Dom] [nvarchar](25) NULL,
	[Trvl_Sctr] [nvarchar](25) NULL,
	[Traveler_Cntry] [nvarchar](20) NULL,
	[Ticketing_Cntry] [nvarchar](20) NULL,
	[Trip_Lgth] [nvarchar](5) NULL,
	[Travel_Strt_dt] [date] NULL,
	[Ticket_Num] [nvarchar](50) NOT NULL,
	[Carrier_cd] [nvarchar](5) NULL,
	[Carrier_Name] [nvarchar](30) NULL,
	[Orgn_Airport_Cd] [nvarchar](5) NULL,
	[Origin_Cty] [nvarchar](25) NULL,
	[Origin_Airport] [nvarchar](50) NULL,
	[Origin_Cntry] [nvarchar](25) NULL,
	[Dstntn_Airport_cd] [nvarchar](5) NULL,
	[Dstntn_Cty] [nvarchar](30) NULL,
	[Dstntn_Airport] [nvarchar](50) NULL,
	[Dstntn_Cntry] [nvarchar](25) NULL,
	[Routing] [nvarchar](50) NULL,
	[Booking_Clss_Smmry] [nvarchar](255) NULL,
	[Fare_Basis_Smmry] [nvarchar](255) NULL,
	[Cabin] [nvarchar](15) NULL,
	[Tour_Cd] [nvarchar](25) NULL,
	[Booking_Dt] [date] NULL,
	[Days_Adv_Booking] [nvarchar](10) NULL,
	[Days_Adv_Booking_grp] [nvarchar](20) NULL,
	[Days_Adv_Prchs] [nvarchar](20) NULL,
	[Days_Adv_PrchsGrp] [nvarchar](20) NULL,
	[Mileage] [nvarchar](30) NULL,
	[Cost_Per_Mile] [decimal](18, 2) NULL,
	[Tax_amnt] [decimal](18, 2) NULL,
	[Ticket_Amt_Mns_Txs] [decimal](18, 2) NULL,
	[Total_Ticket_amnt] [decimal](18, 2) NULL,
	[Low_Fare] [decimal](18, 2) NULL,
	[Full_Fare] [decimal](18, 2) NULL,
	[Amnt_Lost] [decimal](18, 2) NULL,
	[Full_Fare_Svngs] [decimal](18, 2) NULL,
	[Contract_Svngs] [decimal](18, 2) NULL,
	[Fare_Bfr_Dscnt] [decimal](18, 2) NULL,
	[Fare_Cmpr2] [decimal](18, 2) NULL,
	[Fare_Cmpr3] [decimal](18, 2) NULL,
	[Fare_Cmpr4] [decimal](18, 2) NULL,
	[Fare_Cmpr5] [decimal](18, 2) NULL,
	[Fare_Cmpr6] [decimal](18, 2) NULL,
	[CST_CNTR_ION] [nvarchar](15) NULL,
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_AIRFARE_DETAIL_NA] PRIMARY KEY CLUSTERED 
(
	[Ticket_Num] ASC,
	[Invoice_Num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AllTables_Cnt1_1]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllTables_Cnt1_1](
	[DBName] [nvarchar](200) NULL,
	[SchemaName] [nvarchar](200) NULL,
	[TableName] [nvarchar](200) NULL,
	[RowsCount] [bigint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AUFK]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AUFK](
	[MANDT] [varchar](3) NULL,
	[AUFNR] [varchar](12) NOT NULL,
	[AUART] [varchar](4) NULL,
	[AUTYP] [decimal](2, 0) NULL,
	[REFNR] [varchar](12) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[KTEXT] [varchar](40) NULL,
	[LTEXT] [varchar](1) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL,
	[CCKEY] [varchar](23) NULL,
	[KOSTV] [varchar](10) NULL,
	[STORT] [varchar](10) NULL,
	[SOWRK] [varchar](4) NULL,
	[ASTKZ] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[ASTNR] [varchar](48) NULL,
	[STDAT] [date] NULL,
	[ESTNR] [decimal](2, 0) NULL,
	[PHAS0] [varchar](1) NULL,
	[PHAS1] [varchar](1) NULL,
	[PHAS2] [varchar](1) NULL,
	[PHAS3] [varchar](1) NULL,
	[PDAT1] [varchar](24) NULL,
	[PDAT2] [varchar](24) NULL,
	[PDAT3] [varchar](24) NULL,
	[IDAT1] [varchar](24) NULL,
	[IDAT2] [varchar](24) NULL,
	[IDAT3] [varchar](24) NULL,
	[OBJID] [varchar](1) NULL,
	[VOGRP] [varchar](4) NULL,
	[LOEKZ] [varchar](1) NULL,
	[PLGKZ] [varchar](1) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KALSM] [varchar](6) NULL,
	[ZSCHL] [varchar](6) NULL,
	[ABKRS] [decimal](2, 0) NULL,
	[KSTAR] [varchar](10) NULL,
	[KOSTL] [varchar](10) NULL,
	[SAKNR] [varchar](10) NULL,
	[SETNM] [varchar](12) NULL,
	[CYCLE] [varchar](10) NULL,
	[SDATE] [varchar](24) NULL,
	[SEQNR] [decimal](4, 0) NULL,
	[USER0] [varchar](20) NULL,
	[USER1] [varchar](20) NULL,
	[USER2] [varchar](20) NULL,
	[USER3] [varchar](20) NULL,
	[USER4] [decimal](11, 2) NULL,
	[USER5] [varchar](24) NULL,
	[USER6] [varchar](15) NULL,
	[USER7] [varchar](24) NULL,
	[USER8] [varchar](24) NULL,
	[USER9] [varchar](1) NULL,
	[OBJNR] [varchar](22) NULL,
	[PRCTR] [varchar](10) NULL,
	[PSPEL] [varchar](48) NULL,
	[AWSLS] [varchar](6) NULL,
	[ABGSL] [varchar](6) NULL,
	[TXJCD] [varchar](15) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[PLINT] [varchar](1) NULL,
	[KDAUF] [varchar](10) NULL,
	[KDPOS] [decimal](6, 0) NULL,
	[AUFEX] [varchar](20) NULL,
	[IVPRO] [varchar](6) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[FLG_MLTPS] [varchar](1) NULL,
	[ABUKR] [varchar](4) NULL,
	[AKSTL] [varchar](10) NULL,
	[SIZECL] [varchar](2) NULL,
	[IZWEK] [varchar](2) NULL,
	[UMWKZ] [varchar](5) NULL,
	[KSTEMPF] [varchar](1) NULL,
	[ZSCHM] [varchar](7) NULL,
	[PKOSA] [varchar](12) NULL,
	[ANFAUFNR] [varchar](12) NULL,
	[PROCNR] [varchar](48) NULL,
	[PROTY] [varchar](4) NULL,
	[RSORD] [varchar](1) NULL,
	[BEMOT] [varchar](2) NULL,
	[ADRNRA] [varchar](10) NULL,
	[ERFZEIT] [time](7) NULL,
	[AEZEIT] [time](7) NULL,
	[CSTG_VRNT] [varchar](4) NULL,
	[COSTESTNR] [decimal](12, 0) NULL,
	[VERAA_USER] [varchar](12) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[OTYPE] [varchar](4) NULL,
	[JV_JIBCL] [varchar](3) NULL,
	[JV_JIBSA] [varchar](5) NULL,
	[JV_OCO] [varchar](1) NULL,
	[/CUM/INDCU] [varchar](1) NULL,
	[/CUM/CMNUM] [varchar](12) NULL,
	[/CUM/AUEST] [varchar](1) NULL,
	[/CUM/DESNUM] [varchar](12) NULL,
	[VAPLZ] [varchar](8) NULL,
	[WAWRK] [varchar](4) NULL,
	[FERC_IND] [varchar](4) NULL,
	[CLAIM_CONTROL] [varchar](1) NULL,
	[UPDATE_NEEDED] [varchar](1) NULL,
	[UPDATE_CONTROL] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[AUFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BB_DETAIL]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BB_DETAIL](
	[CO Area] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[PERIOD] [int] NULL,
	[BUZEI] [decimal](3, 0) NOT NULL,
	[Total Value in Transaction] [decimal](15, 2) NULL,
	[Total Value in Object] [decimal](15, 2) NULL,
	[Total Value in CO Area] [decimal](15, 2) NULL,
	[Total quantity entered] [decimal](15, 3) NULL,
	[Ledger for Controlling Objects] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[Fiscal Year] [int] NULL,
	[VALUETYPE] [varchar](2) NULL,
	[Cost Element] [varchar](10) NULL,
	[VRGNG] [varchar](4) NULL,
	[Debit/credit indicator] [varchar](1) NULL,
	[Transaction Currency] [varchar](5) NULL,
	[Currency Key] [varchar](5) NULL,
	[Doc Item No] [int] NULL,
	[Offsetting Account Number] [varchar](10) NULL,
	[Offsetting Account Type] [varchar](1) NULL,
	[PLANT] [varchar](4) NULL,
	[Purchasing DocNo] [varchar](10) NULL,
	[ITEM] [int] NULL,
	[Vendor No] [varchar](10) NULL,
	[Vendor Name] [varchar](35) NULL,
	[Invoice Party No] [varchar](10) NULL,
	[Invoice Party Name] [varchar](35) NULL,
	[Order Number] [varchar](12) NULL,
	[Order Type] [varchar](4) NULL,
	[Order category] [decimal](2, 0) NULL,
	[ORDERNAME] [varchar](40) NULL,
	[Responsible costcenter] [varchar](10) NULL,
	[Settlement Cost Element] [varchar](10) NULL,
	[Settlement Cost center] [varchar](10) NULL,
	[G/L account settlement] [varchar](10) NULL,
	[Person responsible] [varchar](20) NULL,
	[PRCTR] [varchar](10) NULL,
	[Profit Center Name] [varchar](20) NULL,
	[Company Code] [varchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[CO Area] ASC,
	[BELNR] ASC,
	[BUZEI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BB_DETAIL_FINAL]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BB_DETAIL_FINAL](
	[CO_AREA] [varchar](4) NOT NULL,
	[PD] [int] NULL,
	[TOT_VAL_TRANS_CURR] [decimal](15, 2) NULL,
	[TOT_VAL_OBJ_CURR] [decimal](15, 2) NULL,
	[TOT_VAL_CNTL_AREA_CURR] [decimal](15, 2) NULL,
	[TOT_QTY_ENTR] [decimal](15, 3) NULL,
	[LED_CNTL_OBJ] [varchar](2) NULL,
	[OBJ_NBR] [varchar](22) NULL,
	[FISC_YR] [int] NULL,
	[VAL_TYP] [varchar](2) NULL,
	[COST_ELE] [varchar](10) NULL,
	[CO_BUS_TRANS] [varchar](4) NULL,
	[DB_CR_IND] [varchar](1) NULL,
	[TXN_CURR] [varchar](5) NULL,
	[CURR_KEY] [varchar](5) NULL,
	[DOC_ITM_NBR] [int] NULL,
	[OFFSET_ACCT_NBR] [varchar](10) NULL,
	[OFFSET_ACCT_TYP] [varchar](1) NULL,
	[PLANT] [varchar](4) NULL,
	[PUR_DOC_NBR] [varchar](10) NULL,
	[ITM_NBR_PUR_DOC] [int] NULL,
	[VEND_NBR] [varchar](10) NULL,
	[VEND_NM] [varchar](35) NULL,
	[INVC_PRT_NBR] [varchar](10) NULL,
	[INVC_PRT_NM] [varchar](35) NULL,
	[ORDR_NBR] [varchar](12) NULL,
	[ORDR_TYP] [varchar](4) NULL,
	[ORDR_CATG] [decimal](2, 0) NULL,
	[ORDR_NM] [varchar](40) NULL,
	[RESP_COST_CTR] [varchar](10) NULL,
	[SETT_COST_ELE] [varchar](10) NULL,
	[SETT_COST_CTR] [varchar](10) NULL,
	[GL_ACCT_SETT] [varchar](10) NULL,
	[PERS_RESP] [varchar](20) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[PROFIT_CTR_NM] [varchar](20) NULL,
	[CO_CD] [varchar](4) NULL,
	[DOC_NBR] [varchar](10) NOT NULL,
	[POST_ROW] [decimal](3, 0) NOT NULL,
	[ACCT_DESC] [varchar](60) NULL,
	[ACCT_CATEG] [varchar](40) NULL,
	[ACCT_SUB_CATEG] [varchar](40) NULL,
	[CC_DESC] [varchar](50) NULL,
	[LEVEL0_DESC] [varchar](15) NULL,
	[LEVEL1_DESC] [varchar](75) NULL,
	[LEVEL1_CD] [varchar](12) NULL,
	[LEVEL2_DESC] [varchar](75) NULL,
	[LEVEL2_CD] [varchar](12) NULL,
	[LEVEL3_DESC] [varchar](75) NULL,
	[LEVEL3_CD] [varchar](12) NULL,
	[LEVEL4_DESC] [varchar](75) NULL,
	[LEVEL4_CD] [varchar](12) NULL,
	[LEVEL5_DESC] [varchar](75) NULL,
	[LEVEL5_CD] [varchar](12) NULL,
	[LEVEL6_DESC] [varchar](75) NULL,
	[LEVEL6_CD] [varchar](12) NULL,
 CONSTRAINT [PK_BB_Detail_Final] PRIMARY KEY CLUSTERED 
(
	[CO_AREA] ASC,
	[DOC_NBR] ASC,
	[POST_ROW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BB_Detail_Trial]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BB_Detail_Trial](
	[CO Area] [varchar](4) NULL,
	[PERIOD] [int] NULL,
	[Total Value in Transaction] [decimal](15, 2) NULL,
	[Total Value in Object] [decimal](15, 2) NULL,
	[Total Value in CO Area] [decimal](15, 2) NULL,
	[Total quantity entered] [decimal](15, 3) NULL,
	[Ledger for Controlling Objects] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[Fiscal Year] [int] NULL,
	[VALUETYPE] [varchar](2) NULL,
	[Cost Element] [varchar](10) NULL,
	[VRGNG] [varchar](4) NULL,
	[Debit/credit indicator] [varchar](1) NULL,
	[Transaction Currency] [varchar](5) NULL,
	[Currency Key] [varchar](5) NULL,
	[Doc Item No] [int] NULL,
	[Offsetting Account Number] [varchar](10) NULL,
	[Offsetting Account Type] [varchar](1) NULL,
	[PLANT] [varchar](4) NULL,
	[Purchasing DocNo] [varchar](10) NULL,
	[ITEM] [int] NULL,
	[Vendor No] [varchar](10) NULL,
	[Vendor Name] [varchar](35) NULL,
	[Invoice Pary No] [varchar](10) NULL,
	[Invoice Paty Name] [varchar](35) NULL,
	[Order Number] [varchar](12) NULL,
	[Order Type] [varchar](4) NULL,
	[Order category] [decimal](2, 0) NULL,
	[ORDERNAME] [varchar](40) NULL,
	[Responsible costcenter] [varchar](10) NULL,
	[Settlement Cost Element] [varchar](10) NULL,
	[Settlement Cost center] [varchar](10) NULL,
	[G/L account settlement] [varchar](10) NULL,
	[Person responsible] [varchar](20) NULL,
	[PRCTR] [varchar](10) NULL,
	[Company COde] [varchar](4) NULL,
	[Profit Center Name] [varchar](20) NULL,
	[BELNR] [varchar](10) NOT NULL,
	[BUZEI] [decimal](3, 0) NOT NULL,
	[Doc_Hdr_Txt] [varchar](50) NULL,
	[COBK_User_Name] [varchar](12) NULL,
	[Posting_Dt] [date] NULL,
	[Acct_category] [char](40) NULL,
	[Acct_sub_Category] [char](40) NULL,
	[Level1_desc] [char](75) NULL,
	[Level1_cd] [char](12) NULL,
	[Level2_desc] [char](75) NULL,
	[Level2_cd] [char](12) NULL,
	[Level3_desc] [char](75) NULL,
	[Level3_cd] [char](12) NULL,
	[Level4_desc] [char](75) NULL,
	[Level4_cd] [char](12) NULL,
	[Level5_desc] [char](75) NULL,
	[Level5_cd] [char](12) NULL,
	[Level6_desc] [char](75) NULL,
	[Level6_cd] [char](12) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAR_RENT_DETAIL_NA]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAR_RENT_DETAIL_NA](
	[Client_Name] [nvarchar](30) NULL,
	[Record_Key] [nvarchar](50) NULL,
	[GCN] [nvarchar](10) NULL,
	[Client_Cd] [nvarchar](15) NULL,
	[Lctr] [nvarchar](30) NULL,
	[Trvlr] [nvarchar](50) NULL,
	[Invoice_Dt] [date] NULL,
	[Invoice_Num] [int] NULL,
	[Agency] [nvarchar](30) NULL,
	[Agency_Num] [nvarchar](10) NULL,
	[Booking_Src] [nvarchar](30) NULL,
	[Booking_Agnt_ID] [nvarchar](20) NULL,
	[Local_Rsn_Cd] [nvarchar](10) NULL,
	[Local_Rsn_Cd_Desc] [nvarchar](255) NULL,
	[Glbl_Rsn_Cd] [nvarchar](10) NULL,
	[glbl_rsn_cd_desc] [nvarchar](255) NULL,
	[Refund_Indctr] [nvarchar](10) NULL,
	[Exchange_Indctr] [nvarchar](10) NULL,
	[Original_docnum] [nvarchar](25) NULL,
	[Int_Dom] [nvarchar](20) NULL,
	[Trvl_Sctr] [nvarchar](50) NULL,
	[Traveler_Cntry] [nvarchar](30) NULL,
	[Ticketing_Cntry] [nvarchar](30) NULL,
	[No_Of_Cars] [nvarchar](25) NULL,
	[No_Of_days] [nvarchar](10) NULL,
	[Pickup_Dt] [date] NULL,
	[Drop_Off_Dt] [date] NULL,
	[Confrmtn_Num] [nvarchar](50) NOT NULL,
	[Chain_Cd] [nvarchar](10) NULL,
	[Chain_Name] [nvarchar](50) NULL,
	[Cty_Name] [nvarchar](50) NULL,
	[State_Province] [nvarchar](50) NULL,
	[Cntry_Name] [nvarchar](50) NULL,
	[Car_Typ_Cd] [nvarchar](20) NULL,
	[Car_Typ_Desc] [nvarchar](255) NULL,
	[Daily_Rate] [decimal](18, 2) NULL,
	[Total_Amnt] [decimal](18, 2) NULL,
	[CST_CNTR_ION] [nvarchar](25) NULL,
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_CAR_RENT_DETAIL_NA] PRIMARY KEY CLUSTERED 
(
	[Confrmtn_Num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CEPC]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEPC](
	[MANDT] [varchar](3) NULL,
	[PRCTR] [varchar](10) NOT NULL,
	[DATBI] [date] NOT NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[DATAB] [date] NULL,
	[ERSDA] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[MERKMAL] [varchar](30) NULL,
	[ABTEI] [varchar](12) NULL,
	[VERAK] [varchar](20) NULL,
	[VERAK_USER] [varchar](12) NULL,
	[WAERS] [varchar](5) NULL,
	[NPRCTR] [varchar](10) NULL,
	[LAND1] [varchar](3) NULL,
	[ANRED] [varchar](15) NULL,
	[NAME1] [varchar](35) NULL,
	[NAME2] [varchar](35) NULL,
	[NAME3] [varchar](35) NULL,
	[NAME4] [varchar](35) NULL,
	[ORT01] [varchar](35) NULL,
	[ORT02] [varchar](35) NULL,
	[STRAS] [varchar](35) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTLZ] [varchar](10) NULL,
	[PSTL2] [varchar](10) NULL,
	[SPRAS] [varchar](1) NULL,
	[TELBX] [varchar](15) NULL,
	[TELF1] [varchar](16) NULL,
	[TELF2] [varchar](16) NULL,
	[TELFX] [varchar](31) NULL,
	[TELTX] [varchar](30) NULL,
	[TELX1] [varchar](30) NULL,
	[DATLT] [varchar](14) NULL,
	[DRNAM] [varchar](4) NULL,
	[KHINR] [varchar](12) NULL,
	[BUKRS] [varchar](4) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[TXJCD] [varchar](15) NULL,
	[REGIO] [varchar](3) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KALSM] [varchar](6) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[LOCK_IND] [varchar](1) NULL,
	[PCA_TEMPLATE] [varchar](10) NULL,
	[SEGMENT] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRCTR] ASC,
	[DATBI] ASC,
	[KOKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CEPCT]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEPCT](
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NOT NULL,
	[PRCTR] [varchar](10) NOT NULL,
	[DATBI] [varchar](24) NOT NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[KTEXT] [varchar](20) NULL,
	[LTEXT] [varchar](40) NULL,
	[MCTXT] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[SPRAS] ASC,
	[PRCTR] ASC,
	[DATBI] ASC,
	[KOKRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COBK]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COBK](
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[VERSN] [varchar](3) NULL,
	[VRGNG] [varchar](4) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[PERAB] [decimal](3, 0) NULL,
	[PERBI] [decimal](3, 0) NULL,
	[BLDAT] [date] NULL,
	[BUDAT] [date] NULL,
	[CPUDT] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[BLTXT] [varchar](50) NULL,
	[STFLG] [varchar](1) NULL,
	[STOKZ] [varchar](1) NULL,
	[REFBT] [varchar](1) NULL,
	[REFBN] [varchar](10) NULL,
	[REFBK] [varchar](4) NULL,
	[REFGJ] [decimal](4, 0) NULL,
	[BLART] [varchar](2) NULL,
	[ORGVG] [varchar](4) NULL,
	[SUMBZ] [decimal](3, 0) NULL,
	[DELBZ] [decimal](3, 0) NULL,
	[WSDAT] [date] NULL,
	[KURST] [varchar](4) NULL,
	[VARNR] [varchar](5) NULL,
	[KWAER] [varchar](5) NULL,
	[CTYP1] [varchar](2) NULL,
	[CTYP2] [varchar](2) NULL,
	[CTYP3] [varchar](2) NULL,
	[CTYP4] [varchar](2) NULL,
	[AWTYP] [varchar](5) NULL,
	[AWORG] [varchar](10) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[CPUTM] [time](7) NULL,
	[ALEBZ] [decimal](3, 0) NULL,
	[ALEBN] [varchar](10) NULL,
	[AWSYS] [varchar](10) NULL,
	[AWREF_REV] [varchar](10) NULL,
	[AWORG_REV] [varchar](10) NULL,
	[VALDT] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[KOKRS] ASC,
	[BELNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COEP]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COEP](
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[BUZEI] [decimal](3, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NULL,
	[WTGBTR] [decimal](15, 2) NULL,
	[WOGBTR] [decimal](15, 2) NULL,
	[WKGBTR] [decimal](15, 2) NULL,
	[WKFBTR] [decimal](15, 2) NULL,
	[PAGBTR] [decimal](15, 2) NULL,
	[PAFBTR] [decimal](15, 2) NULL,
	[MEGBTR] [decimal](15, 3) NULL,
	[MEFBTR] [decimal](15, 3) NULL,
	[MBGBTR] [decimal](15, 3) NULL,
	[MBFBTR] [decimal](15, 3) NULL,
	[LEDNR] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[WRTTP] [varchar](2) NULL,
	[VERSN] [varchar](3) NULL,
	[KSTAR] [varchar](10) NULL,
	[HRKFT] [varchar](14) NULL,
	[VRGNG] [varchar](4) NULL,
	[PAROB] [varchar](22) NULL,
	[PAROB1] [varchar](22) NULL,
	[USPOB] [varchar](22) NULL,
	[VBUND] [varchar](6) NULL,
	[PARGB] [varchar](4) NULL,
	[BEKNZ] [varchar](1) NULL,
	[TWAER] [varchar](5) NULL,
	[OWAER] [varchar](5) NULL,
	[MEINH] [varchar](3) NULL,
	[MEINB] [varchar](3) NULL,
	[MVFLG] [varchar](1) NULL,
	[SGTXT] [varchar](50) NULL,
	[REFBZ] [decimal](3, 0) NULL,
	[ZLENR] [decimal](3, 0) NULL,
	[BW_REFBZ] [decimal](3, 0) NULL,
	[GKONT] [varchar](10) NULL,
	[GKOAR] [varchar](1) NULL,
	[WERKS] [varchar](4) NULL,
	[MATNR] [varchar](18) NULL,
	[RBEST] [decimal](3, 0) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[ZEKKN] [decimal](2, 0) NULL,
	[ERLKZ] [varchar](1) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[BTRKL] [decimal](2, 0) NULL,
	[OBJNR_N1] [varchar](22) NULL,
	[OBJNR_N2] [varchar](22) NULL,
	[OBJNR_N3] [varchar](22) NULL,
	[PAOBJNR] [decimal](10, 0) NULL,
	[BELTP] [decimal](1, 0) NULL,
	[BUKRS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[FKBER] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[LOGSYSO] [varchar](10) NULL,
	[PKSTAR] [varchar](10) NULL,
	[PBUKRS] [varchar](4) NULL,
	[PFKBER] [varchar](16) NULL,
	[PSCOPE] [varchar](2) NULL,
	[LOGSYSP] [varchar](10) NULL,
	[DABRZ] [date] NULL,
	[BWSTRAT] [varchar](1) NULL,
	[OBJNR_HK] [varchar](22) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[QMNUM] [varchar](12) NULL,
	[GEBER] [varchar](10) NULL,
	[PGEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[PGRANT_NBR] [varchar](20) NULL,
	[REFBZ_FI] [decimal](3, 0) NULL,
	[SEGMENT] [varchar](10) NULL,
	[PSEGMENT] [varchar](10) NULL,
	[BUDGET_PD] [varchar](10) NULL,
	[PBUDGET_PD] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[KOKRS] ASC,
	[BELNR] ASC,
	[BUZEI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cost_Center_Hierarchy]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cost_Center_Hierarchy](
	[ID] [varchar](50) NULL,
	[Cost_Center_ID_ Desc] [varchar](50) NULL,
	[Cost_Center_ID] [varchar](50) NULL,
	[Cost_Center_Desc] [varchar](50) NULL,
	[ZBB_Parent_Level_0] [varchar](50) NULL,
	[ZBB_Parent_Level_1_Region] [varchar](50) NULL,
	[Level_1_Code] [varchar](50) NULL,
	[ZBB_Parent_Level_2_Country] [varchar](50) NULL,
	[Level_2_Code] [varchar](50) NULL,
	[ZBB_Parent_Level_3_BU__Entity] [varchar](50) NULL,
	[Level_3_Code] [varchar](50) NULL,
	[ZBB_Parent_Level_4_Function_Location_ID_Desc] [varchar](500) NULL,
	[Level_4_Code] [varchar](50) NULL,
	[ZBB_Parent_Level_5_Sub_Function_ID_Desc] [varchar](500) NULL,
	[Level_5_Code] [varchar](50) NULL,
	[ZBB_Parent_Level_6_Cost_Center] [varchar](50) NULL,
	[Level_6_Code] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSKA]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKA](
	[MANDT] [varchar](3) NULL,
	[KTOPL] [varchar](4) NOT NULL,
	[KSTAR] [varchar](10) NOT NULL,
	[ERSDA] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[STEKZ] [varchar](1) NULL,
	[ZAHKZ] [varchar](1) NULL,
	[KSTSN] [varchar](10) NULL,
	[FUNC_AREA] [varchar](16) NULL,
PRIMARY KEY CLUSTERED 
(
	[KTOPL] ASC,
	[KSTAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSKS]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKS](
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[KOSTL] [varchar](10) NOT NULL,
	[DATBI] [date] NOT NULL,
	[DATAB] [date] NULL,
	[BKZKP] [varchar](1) NULL,
	[PKZKP] [varchar](1) NULL,
	[BUKRS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[KOSAR] [varchar](1) NULL,
	[VERAK] [varchar](20) NULL,
	[VERAK_USER] [varchar](12) NULL,
	[WAERS] [varchar](5) NULL,
	[KALSM] [varchar](6) NULL,
	[TXJCD] [varchar](15) NULL,
	[PRCTR] [varchar](10) NULL,
	[WERKS] [varchar](4) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[ERSDA] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[BKZKS] [varchar](1) NULL,
	[BKZER] [varchar](1) NULL,
	[BKZOB] [varchar](1) NULL,
	[PKZKS] [varchar](1) NULL,
	[PKZER] [varchar](1) NULL,
	[VMETH] [varchar](2) NULL,
	[MGEFL] [varchar](1) NULL,
	[ABTEI] [varchar](12) NULL,
	[NKOST] [varchar](10) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KOSZSCHL] [varchar](6) NULL,
	[LAND1] [varchar](3) NULL,
	[ANRED] [varchar](15) NULL,
	[NAME1] [varchar](35) NULL,
	[NAME2] [varchar](35) NULL,
	[NAME3] [varchar](35) NULL,
	[NAME4] [varchar](35) NULL,
	[ORT01] [varchar](35) NULL,
	[ORT02] [varchar](35) NULL,
	[STRAS] [varchar](35) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTLZ] [varchar](10) NULL,
	[PSTL2] [varchar](10) NULL,
	[REGIO] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[TELBX] [varchar](15) NULL,
	[TELF1] [varchar](16) NULL,
	[TELF2] [varchar](16) NULL,
	[TELFX] [varchar](31) NULL,
	[TELTX] [varchar](30) NULL,
	[TELX1] [varchar](30) NULL,
	[DATLT] [varchar](14) NULL,
	[DRNAM] [varchar](4) NULL,
	[KHINR] [varchar](12) NULL,
	[CCKEY] [varchar](23) NULL,
	[KOMPL] [varchar](1) NULL,
	[STAKZ] [varchar](1) NULL,
	[OBJNR] [varchar](22) NULL,
	[FUNKT] [varchar](3) NULL,
	[AFUNK] [varchar](3) NULL,
	[CPI_TEMPL] [varchar](10) NULL,
	[CPD_TEMPL] [varchar](10) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[SCI_TEMPL] [varchar](10) NULL,
	[SCD_TEMPL] [varchar](10) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[JV_OTYPE] [varchar](4) NULL,
	[JV_JIBCL] [varchar](3) NULL,
	[JV_JIBSA] [varchar](5) NULL,
	[FERC_IND] [varchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[KOKRS] ASC,
	[KOSTL] ASC,
	[DATBI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSKT]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKT](
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NOT NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[KOSTL] [varchar](10) NOT NULL,
	[DATBI] [date] NOT NULL,
	[KTEXT] [varchar](20) NULL,
	[LTEXT] [varchar](40) NULL,
	[MCTXT] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[SPRAS] ASC,
	[KOKRS] ASC,
	[KOSTL] ASC,
	[DATBI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSKU]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSKU](
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NOT NULL,
	[KTOPL] [varchar](4) NOT NULL,
	[KSTAR] [varchar](10) NOT NULL,
	[KTEXT] [varchar](20) NULL,
	[LTEXT] [varchar](40) NULL,
	[MCTXT] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[SPRAS] ASC,
	[KTOPL] ASC,
	[KSTAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DAYLIGHT]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DAYLIGHT](
	[START_DATE] [datetime] NULL,
	[END_DATE] [datetime] NULL,
	[TIME_TYPE] [nvarchar](3) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DB_Metric_Detail]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB_Metric_Detail](
	[DBName] [nvarchar](100) NOT NULL,
	[SchemaName] [nvarchar](100) NOT NULL,
	[TABLEName] [nvarchar](100) NOT NULL,
	[RowsCount] [bigint] NULL,
	[Region] [nvarchar](100) NULL,
	[Poll_Date] [date] NULL,
 CONSTRAINT [PK_DB_Metric_Detail] PRIMARY KEY CLUSTERED 
(
	[DBName] ASC,
	[SchemaName] ASC,
	[TABLEName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DB_Metric_Detail_History]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB_Metric_Detail_History](
	[DBName] [nvarchar](100) NOT NULL,
	[SchemaName] [nvarchar](100) NOT NULL,
	[TABLEName] [nvarchar](100) NOT NULL,
	[RowsCount] [bigint] NULL,
	[Region] [nvarchar](100) NULL,
	[Poll_Date] [date] NOT NULL,
 CONSTRAINT [PK_DB_Metric_Detail_History] PRIMARY KEY CLUSTERED 
(
	[DBName] ASC,
	[SchemaName] ASC,
	[TABLEName] ASC,
	[Poll_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DB_Metric_Detail_Raw]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB_Metric_Detail_Raw](
	[DBName] [nvarchar](100) NULL,
	[SchemaName] [nvarchar](100) NULL,
	[TABLEName] [nvarchar](100) NULL,
	[RowsCount] [bigint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DB_Metric_Summary]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB_Metric_Summary](
	[Region] [nvarchar](100) NOT NULL,
	[Poll_Date] [date] NULL,
	[DB_Count] [bigint] NULL,
	[Schema_Count] [bigint] NULL,
	[Record_Count] [bigint] NULL,
 CONSTRAINT [PK_DB_Metric_Summary] PRIMARY KEY CLUSTERED 
(
	[Region] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DB_Metric_Summary_History]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB_Metric_Summary_History](
	[Region] [nvarchar](100) NOT NULL,
	[Poll_Date] [date] NOT NULL,
	[DB_Count] [bigint] NULL,
	[Schema_Count] [bigint] NULL,
	[Record_Count] [bigint] NULL,
 CONSTRAINT [PK_DB_Metric_Summary_History] PRIMARY KEY CLUSTERED 
(
	[Region] ASC,
	[Poll_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DB_Size_Metric_Detail]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB_Size_Metric_Detail](
	[DBName] [nvarchar](100) NOT NULL,
	[Region] [nvarchar](100) NULL,
	[PollDate] [date] NULL,
	[FileSizeMB] [bigint] NULL,
	[UsedSpaceMB] [bigint] NULL,
	[FreeSpaceMB] [bigint] NULL,
 CONSTRAINT [PK_DB_Size_Metric_Detail] PRIMARY KEY CLUSTERED 
(
	[DBName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DB_Size_Metric_Detail_History]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB_Size_Metric_Detail_History](
	[DBName] [nvarchar](100) NOT NULL,
	[Region] [nvarchar](100) NULL,
	[PollDate] [date] NOT NULL,
	[FileSizeMB] [bigint] NULL,
	[UsedSpaceMB] [bigint] NULL,
	[FreeSpaceMB] [bigint] NULL,
 CONSTRAINT [PK_DB_Size_Metric_Detail_History] PRIMARY KEY CLUSTERED 
(
	[DBName] ASC,
	[PollDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DB_Size_Metric_Detail_Raw]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DB_Size_Metric_Detail_Raw](
	[ServerName] [varchar](100) NULL,
	[DatabaseName] [varchar](100) NULL,
	[FileSizeMB] [bigint] NULL,
	[LogicalFileName] [sysname] NOT NULL,
	[PhysicalFileName] [nvarchar](520) NULL,
	[Status] [sysname] NOT NULL,
	[Updateability] [sysname] NOT NULL,
	[RecoveryMode] [sysname] NOT NULL,
	[FreeSpaceMB] [bigint] NULL,
	[FreeSpacePct] [varchar](7) NULL,
	[FreeSpacePages] [bigint] NULL,
	[PollDate] [datetime] NULL,
	[UsedSpaceMB] [bigint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DB_Size_Metric_Summary]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB_Size_Metric_Summary](
	[Region] [nvarchar](100) NOT NULL,
	[Poll_Date] [date] NOT NULL,
	[Total_Alloc_Space_MB] [bigint] NULL,
	[Total_Used_Space_MB] [bigint] NULL,
	[Total_Free_Space_MB] [bigint] NULL,
 CONSTRAINT [PK_DB_Size_Metric_Summary] PRIMARY KEY CLUSTERED 
(
	[Region] ASC,
	[Poll_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DB_Size_Metric_Summary_History]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB_Size_Metric_Summary_History](
	[Region] [nvarchar](100) NOT NULL,
	[Poll_Date] [date] NOT NULL,
	[Total_Alloc_Space_MB] [bigint] NULL,
	[Total_Used_Space_MB] [bigint] NULL,
	[Total_Free_Space_MB] [bigint] NULL,
 CONSTRAINT [PK_DB_Size_Metric_Summary_History] PRIMARY KEY CLUSTERED 
(
	[Region] ASC,
	[Poll_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EKKO]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EKKO](
	[MANDT] [varchar](3) NOT NULL,
	[EBELN] [varchar](10) NOT NULL,
	[BUKRS] [varchar](4) NULL,
	[BSTYP] [varchar](1) NULL,
	[BSART] [varchar](4) NULL,
	[BSAKZ] [varchar](1) NULL,
	[LOEKZ] [varchar](1) NULL,
	[STATU] [varchar](1) NULL,
	[AEDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[PINCR] [decimal](5, 0) NULL,
	[LPONR] [decimal](5, 0) NULL,
	[LIFNR] [varchar](10) NULL,
	[SPRAS] [varchar](1) NULL,
	[ZTERM] [varchar](4) NULL,
	[ZBD1T] [decimal](3, 0) NULL,
	[ZBD2T] [decimal](3, 0) NULL,
	[ZBD3T] [decimal](3, 0) NULL,
	[ZBD1P] [decimal](5, 3) NULL,
	[ZBD2P] [decimal](5, 3) NULL,
	[EKORG] [varchar](4) NULL,
	[EKGRP] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[WKURS] [decimal](9, 5) NULL,
	[KUFIX] [varchar](1) NULL,
	[BEDAT] [date] NULL,
	[KDATB] [date] NULL,
	[KDATE] [date] NULL,
	[BWBDT] [date] NULL,
	[ANGDT] [date] NULL,
	[BNDDT] [date] NULL,
	[GWLDT] [date] NULL,
	[AUSNR] [varchar](10) NULL,
	[ANGNR] [varchar](10) NULL,
	[IHRAN] [date] NULL,
	[IHREZ] [varchar](12) NULL,
	[VERKF] [varchar](30) NULL,
	[TELF1] [varchar](16) NULL,
	[LLIEF] [varchar](10) NULL,
	[KUNNR] [varchar](10) NULL,
	[KONNR] [varchar](10) NULL,
	[ABGRU] [varchar](2) NULL,
	[AUTLF] [varchar](1) NULL,
	[WEAKT] [varchar](1) NULL,
	[RESWK] [varchar](4) NULL,
	[LBLIF] [varchar](10) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[KTWRT] [decimal](15, 2) NULL,
	[SUBMI] [varchar](10) NULL,
	[KNUMV] [varchar](10) NULL,
	[KALSM] [varchar](6) NULL,
	[STAFO] [varchar](6) NULL,
	[LIFRE] [varchar](10) NULL,
	[EXNUM] [varchar](10) NULL,
	[UNSEZ] [varchar](12) NULL,
	[LOGSY] [varchar](10) NULL,
	[UPINC] [decimal](5, 0) NULL,
	[STAKO] [varchar](1) NULL,
	[FRGGR] [varchar](2) NULL,
	[FRGSX] [varchar](2) NULL,
	[FRGKE] [varchar](1) NULL,
	[FRGZU] [varchar](8) NULL,
	[FRGRL] [varchar](1) NULL,
	[LANDS] [varchar](3) NULL,
	[LPHIS] [varchar](1) NULL,
	[ADRNR] [varchar](10) NULL,
	[STCEG_L] [varchar](3) NULL,
	[STCEG] [varchar](20) NULL,
	[ABSGR] [decimal](2, 0) NULL,
	[ADDNR] [varchar](10) NULL,
	[KORNR] [varchar](1) NULL,
	[MEMORY] [varchar](1) NULL,
	[PROCSTAT] [varchar](2) NULL,
	[RLWRT] [decimal](15, 2) NULL,
	[REVNO] [varchar](8) NULL,
	[SCMPROC] [varchar](1) NULL,
	[REASON_CODE] [varchar](4) NULL,
	[MEMORYTYPE] [varchar](1) NULL,
	[RETTP] [varchar](1) NULL,
	[RETPC] [decimal](5, 2) NULL,
	[DPTYP] [varchar](4) NULL,
	[DPPCT] [decimal](5, 2) NULL,
	[DPAMT] [decimal](11, 2) NULL,
	[DPDAT] [varchar](24) NULL,
	[MSR_ID] [varchar](10) NULL,
	[HIERARCHY_EXISTS] [varchar](1) NULL,
	[THRESHOLD_EXISTS] [varchar](1) NULL,
	[LEGAL_CONTRACT] [varchar](40) NULL,
	[DESCRIPTION] [varchar](40) NULL,
	[RELEASE_DATE] [varchar](24) NULL,
	[FORCE_ID] [varchar](32) NULL,
	[FORCE_CNT] [decimal](6, 0) NULL,
	[RELOC_ID] [varchar](10) NULL,
	[RELOC_SEQ_ID] [varchar](4) NULL,
	[SOURCE_LOGSYS] [varchar](10) NULL,
	[ZZPRESETDATE] [varchar](24) NULL,
	[ZZPRESETTIME] [varchar](24) NULL,
	[ZZCUTOFF] [varchar](24) NULL,
	[ZZCUTOFF_TIME] [varchar](24) NULL,
	[ZZETA] [varchar](24) NULL,
	[ZZETD] [varchar](24) NULL,
	[ZZBOOKING] [varchar](30) NULL,
	[ZZORIGIN_PORT] [varchar](40) NULL,
	[ZZORI_LOC_QUAL] [varchar](2) NULL,
	[ZZORI_LOC_ID] [varchar](30) NULL,
	[ZZDEST_PORT] [varchar](40) NULL,
	[ZZDEST_LOC_QUAL] [varchar](2) NULL,
	[ZZDEST_LOC_ID] [varchar](30) NULL,
	[ZZVESSEL_NAME] [varchar](30) NULL,
	[ZZVOYAGE_ID] [varchar](10) NULL,
	[ZZSTEAMSHIP] [varchar](30) NULL,
	[ZZOCEANSCAC] [varchar](4) NULL,
	[ZZPARENTSHIP] [varchar](10) NULL,
	[ZZSERV_TYPE] [varchar](2) NULL,
	[ZZDIS_POOL_NAME] [varchar](40) NULL,
	[ZZDIS_POOL_QUAL] [varchar](2) NULL,
	[ZZDIS_POOL_ID] [varchar](30) NULL,
	[ZZREC_PLACE_NAME] [varchar](40) NULL,
	[ZZREC_PLACE_QUAL] [varchar](2) NULL,
	[ZZREC_PLACE_ID] [varchar](30) NULL,
	[ZZTEMP_MIN] [varchar](4) NULL,
	[ZZTEMP_MIN_UOM] [varchar](2) NULL,
	[ZZTEMP_MAX] [varchar](4) NULL,
	[ZZTEMP_MAX_UOM] [varchar](2) NULL,
	[ZZVENT_SET_CODE] [varchar](1) NULL,
	[ZZSPEC_EQP] [varchar](30) NULL,
	[ZZCONFPICKDT] [date] NULL,
	[ZZMODE_TMS] [varchar](5) NULL,
	[ZZBOLNR_TMS] [varchar](20) NULL,
	[ZZMELOADNO_TMS] [varchar](20) NULL,
	[ZZTIMESTAMP_TMS] [varchar](14) NULL,
	[ZZUPD_TMS] [varchar](12) NULL,
	[ZZEMG_TMS] [varchar](1) NULL,
	[ZZSCAC_TMS] [varchar](4) NULL,
	[ZZADDTL_DATA1] [varchar](20) NULL,
	[ZZADDTL_DATA2] [varchar](20) NULL,
	[ZZADDTL_DATA3] [varchar](20) NULL,
	[ZZRESDOC] [varchar](1) NULL,
	[ZZDOCCUTOFF] [date] NULL,
	[ZZPORTCUTOFF] [date] NULL,
	[ZZDRAYAGESCAC] [varchar](4) NULL,
	[ZZEQPSIZE] [varchar](40) NULL,
	[ZZOCN] [varchar](20) NULL,
	[ZZSHIPTOPO] [varchar](35) NULL,
	[ZWERKS] [varchar](4) NULL,
	[TKNUM] [varchar](10) NULL,
	[DLX_SEND] [varchar](1) NULL,
	[POHF_TYPE] [varchar](1) NULL,
	[EQ_EINDT] [date] NULL,
	[EQ_WERKS] [varchar](4) NULL,
	[FIXPO] [varchar](1) NULL,
	[EKGRP_ALLOW] [varchar](1) NULL,
	[WERKS_ALLOW] [varchar](1) NULL,
	[CONTRACT_ALLOW] [varchar](1) NULL,
	[PSTYP_ALLOW] [varchar](1) NULL,
	[FIXPO_ALLOW] [varchar](1) NULL,
	[KEY_ID_ALLOW] [varchar](1) NULL,
	[AUREL_ALLOW] [varchar](1) NULL,
	[DELPER_ALLOW] [varchar](1) NULL,
	[EINDT_ALLOW] [varchar](1) NULL,
	[LTSNR_ALLOW] [varchar](1) NULL,
	[OTB_LEVEL] [varchar](1) NULL,
	[OTB_COND_TYPE] [varchar](4) NULL,
	[KEY_ID] [decimal](16, 0) NULL,
	[OTB_VALUE] [decimal](17, 2) NULL,
	[OTB_CURR] [varchar](5) NULL,
	[OTB_RES_VALUE] [decimal](17, 2) NULL,
	[OTB_SPEC_VALUE] [decimal](17, 2) NULL,
	[SPR_RSN_PROFILE] [varchar](4) NULL,
	[BUDG_TYPE] [varchar](2) NULL,
	[OTB_STATUS] [varchar](1) NULL,
	[OTB_REASON] [varchar](3) NULL,
	[CHECK_TYPE] [varchar](1) NULL,
	[CON_OTB_REQ] [varchar](1) NULL,
	[CON_PREBOOK_LEV] [varchar](1) NULL,
	[CON_DISTR_LEV] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANDT] ASC,
	[EBELN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EKPO]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EKPO](
	[MANDT] [varchar](3) NULL,
	[EBELN] [varchar](10) NOT NULL,
	[EBELP] [decimal](5, 0) NOT NULL,
	[LOEKZ] [varchar](1) NULL,
	[STATU] [varchar](1) NULL,
	[AEDAT] [date] NULL,
	[TXZ01] [varchar](40) NULL,
	[MATNR] [varchar](18) NULL,
	[EMATN] [varchar](18) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[LGORT] [varchar](4) NULL,
	[BEDNR] [varchar](10) NULL,
	[MATKL] [varchar](9) NULL,
	[INFNR] [varchar](10) NULL,
	[IDNLF] [varchar](35) NULL,
	[KTMNG] [decimal](13, 3) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[MEINS] [varchar](3) NULL,
	[BPRME] [varchar](3) NULL,
	[BPUMZ] [decimal](5, 0) NULL,
	[BPUMN] [decimal](5, 0) NULL,
	[UMREZ] [decimal](5, 0) NULL,
	[UMREN] [decimal](5, 0) NULL,
	[NETPR] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[NETWR] [decimal](13, 2) NULL,
	[BRTWR] [decimal](13, 2) NULL,
	[AGDAT] [date] NULL,
	[WEBAZ] [decimal](3, 0) NULL,
	[MWSKZ] [varchar](2) NULL,
	[BONUS] [varchar](2) NULL,
	[INSMK] [varchar](1) NULL,
	[SPINF] [varchar](1) NULL,
	[PRSDR] [varchar](1) NULL,
	[SCHPR] [varchar](1) NULL,
	[MAHNZ] [decimal](3, 0) NULL,
	[MAHN1] [decimal](3, 0) NULL,
	[MAHN2] [decimal](3, 0) NULL,
	[MAHN3] [decimal](3, 0) NULL,
	[UEBTO] [decimal](3, 1) NULL,
	[UEBTK] [varchar](1) NULL,
	[UNTTO] [decimal](3, 1) NULL,
	[BWTAR] [varchar](10) NULL,
	[BWTTY] [varchar](1) NULL,
	[ABSKZ] [varchar](1) NULL,
	[AGMEM] [varchar](3) NULL,
	[ELIKZ] [varchar](1) NULL,
	[EREKZ] [varchar](1) NULL,
	[PSTYP] [varchar](1) NULL,
	[KNTTP] [varchar](1) NULL,
	[KZVBR] [varchar](1) NULL,
	[VRTKZ] [varchar](1) NULL,
	[TWRKZ] [varchar](1) NULL,
	[WEPOS] [varchar](1) NULL,
	[WEUNB] [varchar](1) NULL,
	[REPOS] [varchar](1) NULL,
	[WEBRE] [varchar](1) NULL,
	[KZABS] [varchar](1) NULL,
	[LABNR] [varchar](20) NULL,
	[KONNR] [varchar](10) NULL,
	[KTPNR] [decimal](5, 0) NULL,
	[ABDAT] [date] NULL,
	[ABFTZ] [decimal](13, 3) NULL,
	[ETFZ1] [decimal](3, 0) NULL,
	[ETFZ2] [decimal](3, 0) NULL,
	[KZSTU] [varchar](1) NULL,
	[NOTKZ] [varchar](1) NULL,
	[LMEIN] [varchar](3) NULL,
	[EVERS] [varchar](2) NULL,
	[ZWERT] [decimal](13, 2) NULL,
	[NAVNW] [decimal](13, 2) NULL,
	[ABMNG] [decimal](13, 3) NULL,
	[PRDAT] [date] NULL,
	[BSTYP] [varchar](1) NULL,
	[EFFWR] [decimal](13, 2) NULL,
	[XOBLR] [varchar](1) NULL,
	[KUNNR] [varchar](10) NULL,
	[ADRNR] [varchar](10) NULL,
	[EKKOL] [varchar](4) NULL,
	[SKTOF] [varchar](1) NULL,
	[STAFO] [varchar](6) NULL,
	[PLIFZ] [decimal](3, 0) NULL,
	[NTGEW] [decimal](13, 3) NULL,
	[GEWEI] [varchar](3) NULL,
	[TXJCD] [varchar](15) NULL,
	[ETDRK] [varchar](1) NULL,
	[SOBKZ] [varchar](1) NULL,
	[ARSNR] [decimal](10, 0) NULL,
	[ARSPS] [decimal](4, 0) NULL,
	[INSNC] [varchar](1) NULL,
	[SSQSS] [varchar](8) NULL,
	[ZGTYP] [varchar](4) NULL,
	[EAN11] [varchar](18) NULL,
	[BSTAE] [varchar](4) NULL,
	[REVLV] [varchar](2) NULL,
	[GEBER] [varchar](10) NULL,
	[FISTL] [varchar](16) NULL,
	[FIPOS] [varchar](14) NULL,
	[KO_GSBER] [varchar](4) NULL,
	[KO_PARGB] [varchar](4) NULL,
	[KO_PRCTR] [varchar](10) NULL,
	[KO_PPRCTR] [varchar](10) NULL,
	[MEPRF] [varchar](1) NULL,
	[BRGEW] [decimal](13, 3) NULL,
	[VOLUM] [decimal](13, 3) NULL,
	[VOLEH] [varchar](3) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[VORAB] [varchar](1) NULL,
	[KOLIF] [varchar](10) NULL,
	[LTSNR] [varchar](6) NULL,
	[PACKNO] [decimal](10, 0) NULL,
	[FPLNR] [varchar](10) NULL,
	[GNETWR] [decimal](13, 2) NULL,
	[STAPO] [varchar](1) NULL,
	[UEBPO] [decimal](5, 0) NULL,
	[LEWED] [date] NULL,
	[EMLIF] [varchar](10) NULL,
	[LBLKZ] [varchar](1) NULL,
	[SATNR] [varchar](18) NULL,
	[ATTYP] [varchar](2) NULL,
	[KANBA] [varchar](1) NULL,
	[ADRN2] [varchar](10) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[XERSY] [varchar](1) NULL,
	[EILDT] [date] NULL,
	[DRDAT] [date] NULL,
	[DRUHR] [time](7) NULL,
	[DRUNR] [decimal](4, 0) NULL,
	[AKTNR] [varchar](10) NULL,
	[ABELN] [varchar](10) NULL,
	[ABELP] [decimal](5, 0) NULL,
	[ANZPU] [decimal](13, 3) NULL,
	[PUNEI] [varchar](3) NULL,
	[SAISO] [varchar](4) NULL,
	[SAISJ] [varchar](4) NULL,
	[EBON2] [varchar](2) NULL,
	[EBON3] [varchar](2) NULL,
	[EBONF] [varchar](1) NULL,
	[MLMAA] [varchar](1) NULL,
	[MHDRZ] [decimal](4, 0) NULL,
	[ANFNR] [varchar](10) NULL,
	[ANFPS] [decimal](5, 0) NULL,
	[KZKFG] [varchar](1) NULL,
	[USEQU] [varchar](1) NULL,
	[UMSOK] [varchar](1) NULL,
	[BANFN] [varchar](10) NULL,
	[BNFPO] [decimal](5, 0) NULL,
	[MTART] [varchar](4) NULL,
	[UPTYP] [varchar](1) NULL,
	[UPVOR] [varchar](1) NULL,
	[KZWI1] [decimal](13, 2) NULL,
	[KZWI2] [decimal](13, 2) NULL,
	[KZWI3] [decimal](13, 2) NULL,
	[KZWI4] [decimal](13, 2) NULL,
	[KZWI5] [decimal](13, 2) NULL,
	[KZWI6] [decimal](13, 2) NULL,
	[SIKGR] [varchar](3) NULL,
	[MFZHI] [decimal](15, 3) NULL,
	[FFZHI] [decimal](15, 3) NULL,
	[RETPO] [varchar](1) NULL,
	[AUREL] [varchar](1) NULL,
	[BSGRU] [varchar](3) NULL,
	[LFRET] [varchar](4) NULL,
	[MFRGR] [varchar](8) NULL,
	[NRFHG] [varchar](1) NULL,
	[J_1BNBM] [varchar](16) NULL,
	[J_1BMATUSE] [varchar](1) NULL,
	[J_1BMATORG] [varchar](1) NULL,
	[J_1BOWNPRO] [varchar](1) NULL,
	[J_1BINDUST] [varchar](2) NULL,
	[ABUEB] [varchar](4) NULL,
	[NLABD] [date] NULL,
	[NFABD] [date] NULL,
	[KZBWS] [varchar](1) NULL,
	[BONBA] [decimal](13, 2) NULL,
	[FABKZ] [varchar](1) NULL,
	[J_1AINDXP] [varchar](5) NULL,
	[J_1AIDATEP] [date] NULL,
	[MPROF] [varchar](4) NULL,
	[EGLKZ] [varchar](1) NULL,
	[KZTLF] [varchar](1) NULL,
	[KZFME] [varchar](1) NULL,
	[RDPRF] [varchar](4) NULL,
	[TECHS] [varchar](12) NULL,
	[CHG_SRV] [varchar](1) NULL,
	[CHG_FPLNR] [varchar](1) NULL,
	[MFRPN] [varchar](40) NULL,
	[MFRNR] [varchar](10) NULL,
	[EMNFR] [varchar](10) NULL,
	[NOVET] [varchar](1) NULL,
	[AFNAM] [varchar](12) NULL,
	[TZONRC] [varchar](6) NULL,
	[IPRKZ] [varchar](1) NULL,
	[LEBRE] [varchar](1) NULL,
	[BERID] [varchar](10) NULL,
	[XCONDITIONS] [varchar](1) NULL,
	[APOMS] [varchar](1) NULL,
	[CCOMP] [varchar](1) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[FKBER] [varchar](16) NULL,
	[STATUS] [varchar](1) NULL,
	[RESLO] [varchar](4) NULL,
	[KBLNR] [varchar](10) NULL,
	[KBLPOS] [decimal](3, 0) NULL,
	[WEORA] [varchar](1) NULL,
	[SRV_BAS_COM] [varchar](1) NULL,
	[PRIO_URG] [decimal](2, 0) NULL,
	[PRIO_REQ] [decimal](3, 0) NULL,
	[EMPST] [varchar](25) NULL,
	[SPE_ABGRU] [varchar](2) NULL,
	[SPE_CRM_SO] [varchar](10) NULL,
	[SPE_CRM_SO_ITEM] [decimal](6, 0) NULL,
	[SPE_CRM_REF_SO] [varchar](35) NULL,
	[SPE_CRM_REF_ITEM] [varchar](6) NULL,
	[SPE_CHNG_SYS] [varchar](1) NULL,
	[SPE_INSMK_SRC] [varchar](1) NULL,
	[SPE_CQ_CTRLTYPE] [varchar](1) NULL,
	[SPE_CQ_NOCQ] [varchar](1) NULL,
	[REASON_CODE] [varchar](4) NULL,
	[CQU_SAR] [decimal](15, 3) NULL,
	[ANZSN] [int] NULL,
	[SPE_EWM_DTC] [varchar](1) NULL,
	[EXLIN] [varchar](40) NULL,
	[EXSNR] [decimal](5, 0) NULL,
	[EHTYP] [varchar](4) NULL,
	[RETPC] [decimal](5, 2) NULL,
	[DPTYP] [varchar](4) NULL,
	[DPPCT] [decimal](5, 2) NULL,
	[DPAMT] [decimal](11, 2) NULL,
	[DPDAT] [date] NULL,
	[FLS_RSTO] [varchar](1) NULL,
	[EXT_RFX_NUMBER] [varchar](35) NULL,
	[EXT_RFX_ITEM] [varchar](10) NULL,
	[EXT_RFX_SYSTEM] [varchar](10) NULL,
	[SRM_CONTRACT_ID] [varchar](10) NULL,
	[SRM_CONTRACT_ITM] [decimal](10, 0) NULL,
	[ITCONS] [varchar](1) NULL,
	[/BEV1/NEGEN_ITEM] [varchar](1) NULL,
	[/BEV1/NEDEPFREE] [varchar](1) NULL,
	[/BEV1/NESTRUCCAT] [varchar](1) NULL,
	[ADVCODE] [varchar](2) NULL,
	[BUDGET_PD] [varchar](10) NULL,
	[EXCPE] [decimal](2, 0) NULL,
	[IUID_RELEVANT] [varchar](1) NULL,
	[REFSITE] [varchar](4) NULL,
	[SERRU] [varchar](1) NULL,
	[SERNP] [varchar](4) NULL,
	[DISUB_SOBKZ] [varchar](1) NULL,
	[DISUB_PSPNR] [decimal](8, 0) NULL,
	[DISUB_KUNNR] [varchar](10) NULL,
	[DISUB_VBELN] [varchar](10) NULL,
	[DISUB_POSNR] [decimal](6, 0) NULL,
	[DISUB_OWNER] [varchar](10) NULL,
	[REF_ITEM] [decimal](5, 0) NULL,
	[SOURCE_ID] [varchar](3) NULL,
	[SOURCE_KEY] [varchar](32) NULL,
	[PUT_BACK] [varchar](1) NULL,
	[POL_ID] [varchar](10) NULL,
	[CONS_ORDER] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC,
	[EBELP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FISCAL_WEEK]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FISCAL_WEEK](
	[FISCAL_YEAR_WEEK] [decimal](7, 0) NULL,
	[CHANGED_FLAG] [varchar](1) NULL,
	[FIRST_CALENDAR_DAY_OF_WEEK] [date] NULL,
	[LAST_CALENDAR_DAY_OF_WEEK] [date] NULL,
	[FISCAL_YEAR_QUARTER] [decimal](10, 0) NULL,
	[FISCAL_YEAR] [decimal](4, 0) NULL,
	[FISCAL_WEEK] [decimal](3, 0) NULL,
	[FISCAL_MONTH] [decimal](3, 0) NULL,
	[FISCAL_QUARTER] [decimal](3, 0) NULL,
	[FISCAL_YEAR_HALF] [decimal](7, 0) NULL,
	[FISCAL_HALF] [decimal](3, 0) NULL,
	[FISCAL_YEAR_MONTH] [decimal](7, 0) NULL,
	[SOURCE] [varchar](20) NULL,
	[DW_CREATED_TS] [datetime2](7) NULL,
	[DW_CREATED_BY] [varchar](75) NULL,
	[DW_MODIFIED_TS] [datetime2](7) NULL,
	[DW_MODIFIED_BY] [varchar](75) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FISCAL_WEEK_SRM]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[FISCAL_WEEK_SRM](
	[Fiscal_Year_week] [decimal](7, 0) NOT NULL,
	[Changed_Flag] [varchar](1) NULL,
	[First_Calendar_Day_of_Week] [date] NULL,
	[Last_Calendar_Day_Of_Week] [date] NULL,
	[Fiscal_Year_Quarter] [decimal](7, 0) NULL,
	[Fiscal_Year] [decimal](4, 0) NULL,
	[Fiscal_Week] [decimal](3, 0) NULL,
	[Fiscal_Month] [decimal](3, 0) NULL,
	[Fiscal_Quarter] [decimal](3, 0) NULL,
	[Fiscal_Year_Half] [decimal](7, 0) NULL,
	[Fiscal_Half] [decimal](3, 0) NULL,
	[Fiscal_Year_Month] [decimal](7, 0) NULL,
	[SOURCE] [varchar](20) NULL,
	[DW_Created_TS] [datetime] NOT NULL,
	[DW_Created_By] [varchar](75) NOT NULL,
	[DW_Modified_TS] [datetime] NULL,
	[DW_Modified_By] [varchar](75) NULL,
 CONSTRAINT [PK_FISCAL_WEEK_SRM] PRIMARY KEY CLUSTERED 
(
	[Fiscal_Year_week] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FISCAL_WEEK_SRM1]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FISCAL_WEEK_SRM1](
	[Fiscal_Year_week] [decimal](7, 0) NOT NULL,
	[Changed_Flag] [varchar](1) NULL,
	[First_Calendar_Day_of_Week] [date] NULL,
	[Last_Calendar_Day_Of_Week] [date] NULL,
	[Fiscal_Year_Quarter] [decimal](7, 0) NULL,
	[Fiscal_Year] [decimal](4, 0) NULL,
	[Fiscal_Week] [decimal](3, 0) NULL,
	[Fiscal_Month] [decimal](3, 0) NULL,
	[Fiscal_Quarter] [decimal](3, 0) NULL,
	[Fiscal_Year_Half] [decimal](7, 0) NULL,
	[Fiscal_Half] [decimal](3, 0) NULL,
	[Fiscal_Year_Month] [decimal](7, 0) NULL,
	[SOURCE] [varchar](20) NULL,
	[DW_Created_TS] [datetime] NOT NULL,
	[DW_Created_By] [varchar](75) NOT NULL,
	[DW_Modified_TS] [datetime] NULL,
	[DW_Modified_By] [varchar](75) NULL,
 CONSTRAINT [PK_FISCAL_WEEK_SRM1] PRIMARY KEY CLUSTERED 
(
	[Fiscal_Year_week] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HOTEL_FARE_DETAIL_NA]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOTEL_FARE_DETAIL_NA](
	[Client_Name] [nvarchar](50) NULL,
	[Record_Key] [nvarchar](50) NULL,
	[GCN] [nvarchar](10) NULL,
	[Client_Cd] [nvarchar](15) NULL,
	[Lctr] [nvarchar](30) NULL,
	[Trvlr] [nvarchar](50) NULL,
	[Invoice_Dt] [date] NULL,
	[Invoice_Num] [int] NOT NULL,
	[Agency] [nvarchar](30) NULL,
	[Agency_Num] [nvarchar](10) NULL,
	[Booking_Src] [nvarchar](10) NULL,
	[Booking_Agnt_ID] [nvarchar](15) NULL,
	[Local_HtlRsn_Cd] [nvarchar](10) NULL,
	[Local_HtlRsn_Cd_Desc] [nvarchar](255) NULL,
	[Glbl_HtlRsn_Cd] [nvarchar](10) NULL,
	[glbl_Htlrsn_cd_desc] [nvarchar](255) NULL,
	[Refund_Indctr] [nvarchar](10) NULL,
	[Exchange_Indctr] [nvarchar](10) NULL,
	[Original_docnum] [nvarchar](25) NULL,
	[Int_Dom] [nvarchar](30) NULL,
	[Trvl_Sctr] [nvarchar](50) NULL,
	[Traveler_Cntry] [nvarchar](30) NULL,
	[Ticketing_Cntry] [nvarchar](30) NULL,
	[Check_In_Dt] [date] NOT NULL,
	[Check_Out_Dt] [date] NULL,
	[Cnfrmtn_Num] [nvarchar](30) NOT NULL,
	[Htl_Mstr_ChainName] [nvarchar](100) NULL,
	[Htl_Chain_Cd] [nvarchar](10) NULL,
	[Htl_Chain_Name] [nvarchar](100) NULL,
	[Prprty_Name] [nvarchar](255) NULL,
	[Address1] [nvarchar](255) NULL,
	[Address2] [nvarchar](255) NULL,
	[Htl_Cty] [nvarchar](100) NULL,
	[Cty_Cd] [nvarchar](10) NULL,
	[Major_Cty] [nvarchar](50) NULL,
	[State] [nvarchar](10) NULL,
	[Postal_cd] [nvarchar](50) NULL,
	[Cntry_cd] [nvarchar](10) NULL,
	[Country] [nvarchar](50) NULL,
	[Cntry_ph] [nvarchar](25) NULL,
	[No_Of_Rooms] [nvarchar](25) NULL,
	[No_Of_Nights] [nvarchar](25) NULL,
	[Room_Typ_cd] [nvarchar](10) NULL,
	[Room_Typ] [nvarchar](50) NULL,
	[Rate_Ctgry] [nvarchar](25) NULL,
	[Room_Rate] [decimal](18, 2) NULL,
	[Tot_Amnt] [decimal](18, 2) NULL,
	[Compare_Rate1] [decimal](18, 2) NULL,
	[Diff_to_Rate1] [decimal](18, 2) NULL,
	[Tot_Diff_to_Rate1] [decimal](18, 2) NULL,
	[Compare_Rate2] [decimal](18, 2) NULL,
	[Diff_to_Rate2] [decimal](18, 2) NULL,
	[Tot_Diff_to_Rate2] [decimal](18, 2) NULL,
	[Htl_Pref_Ind] [nvarchar](50) NULL,
	[CST_CNTR_ION] [nvarchar](15) NULL,
 CONSTRAINT [PK_HOTEL_FARE_DETAIL_NA] PRIMARY KEY CLUSTERED 
(
	[Cnfrmtn_Num] ASC,
	[Invoice_Num] ASC,
	[Check_In_Dt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[INTEVENT_DETAIL_NA]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INTEVENT_DETAIL_NA](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Event_ID] [bigint] NULL,
	[Cst_Cntr] [nvarchar](25) NULL,
	[Event_Name] [nvarchar](150) NULL,
	[Venue] [nvarchar](150) NULL,
	[Start_Dt] [date] NULL,
	[End_Dt] [date] NULL,
	[Expense_Ctgry] [nvarchar](50) NULL,
	[Expense] [nvarchar](50) NULL,
	[Original_Qty] [int] NULL,
	[Cntrctd_Qty] [int] NULL,
	[Quoted_Rate] [decimal](18, 2) NULL,
	[Cntract_Rate] [decimal](18, 2) NULL,
	[Original_Cst] [decimal](18, 2) NULL,
	[Negotiated_Cst] [decimal](18, 2) NULL,
	[Savings] [decimal](18, 2) NULL,
	[Value_Added_Csts] [decimal](18, 2) NULL,
 CONSTRAINT [PK_INTEVENT_DETAIL_NA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[INTEVENT_SUMMARY_NA]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INTEVENT_SUMMARY_NA](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Event_ID] [bigint] NOT NULL,
	[Cst_Cntr] [nvarchar](25) NULL,
	[HB_Src] [nvarchar](100) NULL,
	[Hotel_Brnd] [nvarchar](50) NULL,
	[Property] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](25) NULL,
	[Event_Name] [nvarchar](100) NULL,
	[Start_Dt] [date] NULL,
	[End_Dt] [date] NULL,
	[Rm_Nights] [int] NULL,
	[Rm_Savings] [decimal](18, 2) NULL,
	[Meeting_Svngs] [decimal](18, 2) NULL,
	[Othr_Svngs] [decimal](18, 2) NULL,
	[Orgnl_Costs] [decimal](18, 2) NULL,
	[Ngttd_Costs] [decimal](18, 2) NULL,
	[Ngttd_Rm_Costs] [decimal](18, 2) NULL,
	[Tot_Svngs] [decimal](18, 2) NULL,
	[Tot_Val_Added] [decimal](18, 2) NULL,
	[Actual_Attendees] [int] NULL,
 CONSTRAINT [PK_INTEVENT_SUMMARY_NA] PRIMARY KEY CLUSTERED 
(
	[Event_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LAST_ACCESS]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LAST_ACCESS](
	[DATABASENAME] [varchar](128) NULL,
	[LAST_USER_UPDATE] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LFA1]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LFA1](
	[MANDT] [varchar](3) NULL,
	[LIFNR] [varchar](10) NOT NULL,
	[LAND1] [varchar](3) NULL,
	[NAME1] [varchar](35) NULL,
	[NAME2] [varchar](35) NULL,
	[NAME3] [varchar](35) NULL,
	[NAME4] [varchar](35) NULL,
	[ORT01] [varchar](35) NULL,
	[ORT02] [varchar](35) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTL2] [varchar](10) NULL,
	[PSTLZ] [varchar](10) NULL,
	[REGIO] [varchar](3) NULL,
	[SORTL] [varchar](10) NULL,
	[STRAS] [varchar](35) NULL,
	[ADRNR] [varchar](10) NULL,
	[MCOD1] [varchar](25) NULL,
	[MCOD2] [varchar](25) NULL,
	[MCOD3] [varchar](25) NULL,
	[ANRED] [varchar](15) NULL,
	[BAHNS] [varchar](25) NULL,
	[BBBNR] [decimal](7, 0) NULL,
	[BBSNR] [decimal](5, 0) NULL,
	[BEGRU] [varchar](4) NULL,
	[BRSCH] [varchar](4) NULL,
	[BUBKZ] [decimal](1, 0) NULL,
	[DATLT] [varchar](14) NULL,
	[DTAMS] [varchar](1) NULL,
	[DTAWS] [varchar](2) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[ESRNR] [varchar](11) NULL,
	[KONZS] [varchar](10) NULL,
	[KTOKK] [varchar](4) NULL,
	[KUNNR] [varchar](10) NULL,
	[LNRZA] [varchar](10) NULL,
	[LOEVM] [varchar](1) NULL,
	[SPERR] [varchar](1) NULL,
	[SPERM] [varchar](1) NULL,
	[SPRAS] [varchar](1) NULL,
	[STCD1] [varchar](16) NULL,
	[STCD2] [varchar](11) NULL,
	[STKZA] [varchar](1) NULL,
	[STKZU] [varchar](1) NULL,
	[TELBX] [varchar](15) NULL,
	[TELF1] [varchar](16) NULL,
	[TELF2] [varchar](16) NULL,
	[TELFX] [varchar](31) NULL,
	[TELTX] [varchar](30) NULL,
	[TELX1] [varchar](30) NULL,
	[XCPDK] [varchar](1) NULL,
	[XZEMP] [varchar](1) NULL,
	[VBUND] [varchar](6) NULL,
	[FISKN] [varchar](10) NULL,
	[STCEG] [varchar](20) NULL,
	[STKZN] [varchar](1) NULL,
	[SPERQ] [varchar](2) NULL,
	[GBORT] [varchar](25) NULL,
	[GBDAT] [date] NULL,
	[SEXKZ] [varchar](1) NULL,
	[KRAUS] [varchar](11) NULL,
	[REVDB] [date] NULL,
	[QSSYS] [varchar](4) NULL,
	[KTOCK] [varchar](4) NULL,
	[PFORT] [varchar](35) NULL,
	[WERKS] [varchar](4) NULL,
	[LTSNA] [varchar](1) NULL,
	[WERKR] [varchar](1) NULL,
	[PLKAL] [varchar](2) NULL,
	[DUEFL] [varchar](1) NULL,
	[TXJCD] [varchar](15) NULL,
	[SPERZ] [varchar](1) NULL,
	[SCACD] [varchar](4) NULL,
	[SFRGR] [varchar](4) NULL,
	[LZONE] [varchar](10) NULL,
	[XLFZA] [varchar](1) NULL,
	[DLGRP] [varchar](4) NULL,
	[FITYP] [varchar](2) NULL,
	[STCDT] [varchar](2) NULL,
	[REGSS] [varchar](1) NULL,
	[ACTSS] [varchar](3) NULL,
	[STCD3] [varchar](18) NULL,
	[STCD4] [varchar](18) NULL,
	[IPISP] [varchar](1) NULL,
	[TAXBS] [decimal](1, 0) NULL,
	[PROFS] [varchar](30) NULL,
	[STGDL] [varchar](2) NULL,
	[EMNFR] [varchar](10) NULL,
	[LFURL] [varchar](132) NULL,
	[J_1KFREPRE] [varchar](10) NULL,
	[J_1KFTBUS] [varchar](30) NULL,
	[J_1KFTIND] [varchar](30) NULL,
	[CONFS] [varchar](1) NULL,
	[UPDAT] [date] NULL,
	[UPTIM] [time](7) NULL,
	[NODEL] [varchar](1) NULL,
	[QSSYSDAT] [date] NULL,
	[PODKZB] [varchar](1) NULL,
	[FISKU] [varchar](10) NULL,
	[STENR] [varchar](18) NULL,
	[CARRIER_CONF] [varchar](1) NULL,
	[J_SC_CAPITAL] [decimal](15, 2) NULL,
	[J_SC_CURRENCY] [varchar](5) NULL,
	[ALC] [varchar](8) NULL,
	[PMT_OFFICE] [varchar](5) NULL,
	[PPA_RELEVANT] [varchar](1) NULL,
	[PSOFG] [varchar](10) NULL,
	[PSOIS] [varchar](20) NULL,
	[PSON1] [varchar](35) NULL,
	[PSON2] [varchar](35) NULL,
	[PSON3] [varchar](35) NULL,
	[PSOVN] [varchar](35) NULL,
	[PSOTL] [varchar](20) NULL,
	[PSOHS] [varchar](6) NULL,
	[PSOST] [varchar](28) NULL,
	[TRANSPORT_CHAIN] [varchar](10) NULL,
	[STAGING_TIME] [decimal](3, 0) NULL,
	[SCHEDULING_TYPE] [varchar](1) NULL,
	[SUBMI_RELEVANT] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[LIFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LKP_CAL_PERIOD]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LKP_CAL_PERIOD](
	[MANDT] [varchar](3) NOT NULL,
	[PERIV] [varchar](2) NOT NULL,
	[BDATJ] [decimal](4, 0) NOT NULL,
	[BUMON] [decimal](2, 0) NOT NULL,
	[BUTAG] [decimal](2, 0) NOT NULL,
	[POPER] [decimal](3, 0) NULL,
	[RELJR] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANDT] ASC,
	[PERIV] ASC,
	[BDATJ] ASC,
	[BUMON] ASC,
	[BUTAG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBB_2015_GLA]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBB_2015_GLA](
	[CO AREA] [varchar](4) NULL,
	[DOCUMENT NO] [varchar](10) NULL,
	[POSTING ROW] [decimal](3, 0) NULL,
	[PERIOD] [decimal](3, 0) NULL,
	[TOTAL VALUE IN TRANSACTION] [decimal](15, 2) NULL,
	[TOTAL VALUE IN OBJECT] [decimal](15, 2) NULL,
	[TOTAL VALUE IN CO AREA] [decimal](15, 2) NULL,
	[TOTAL QTY ENTERED] [decimal](15, 3) NULL,
	[CO LEDGER] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[FISCAL YEAR] [decimal](4, 0) NULL,
	[VALUE TYPE] [varchar](2) NULL,
	[VERSION] [varchar](3) NULL,
	[COST ELEMENT] [varchar](10) NULL,
	[COST ELEMENT NAME] [varchar](20) NULL,
	[CO BUSINESS TRAN] [varchar](4) NULL,
	[DEBIT CREDIT INDICATOR] [varchar](1) NULL,
	[TRANSACTION CURRENCY] [varchar](5) NULL,
	[CURRENCY KEY] [varchar](5) NULL,
	[SEGMENT TEXT] [varchar](50) NULL,
	[REF POSTING ROW] [decimal](3, 0) NULL,
	[DOC ITEM NO] [decimal](3, 0) NULL,
	[OFFSET ACCT NO] [varchar](10) NULL,
	[OFFSET ACCT TYPE] [varchar](1) NULL,
	[PLANT] [varchar](4) NULL,
	[PURCHASING DOC NO] [varchar](10) NULL,
	[PURCHASE DOC ITEM] [decimal](5, 0) NULL,
	[PURCHASE ORDER ITEM TXT] [varchar](40) NULL,
	[VENDOR NO] [varchar](10) NULL,
	[VENDOR NAME] [varchar](35) NULL,
	[INVOICE PARTY NO] [varchar](10) NULL,
	[INVOICE PARTY NAME] [varchar](35) NULL,
	[COST CENTER] [varchar](22) NULL,
	[COST CENTER NAME] [varchar](20) NULL,
	[PROFIT CENTER] [varchar](10) NULL,
	[PROFIT CENTER NAME] [varchar](20) NULL,
	[COMPANY CODE] [varchar](4) NULL,
	[FUNCTIONAL AREA] [varchar](16) NULL,
	[OBJECT CLASS] [varchar](2) NULL,
	[DOC HEADER TXT] [varchar](50) NULL,
	[USER NAME] [varchar](12) NULL,
	[DOCUMENT_TYPE] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBB_DETAIL]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBB_DETAIL](
	[CO AREA] [varchar](4) NULL,
	[DOCUMENT NO] [varchar](10) NULL,
	[POSTING ROW] [decimal](3, 0) NULL,
	[PERIOD] [decimal](3, 0) NULL,
	[TOTAL VALUE IN TRANSACTION] [decimal](15, 2) NULL,
	[TOTAL VALUE IN OBJECT] [decimal](15, 2) NULL,
	[TOTAL VALUE IN CO AREA] [decimal](15, 2) NULL,
	[TOTAL QTY ENTERED] [decimal](15, 3) NULL,
	[CO LEDGER] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[FISCAL YEAR] [decimal](4, 0) NULL,
	[VALUE TYPE] [varchar](2) NULL,
	[VERSION] [varchar](3) NULL,
	[COST ELEMENT] [varchar](10) NULL,
	[COST ELEMENT NAME] [varchar](20) NULL,
	[CO BUSINESS TRAN] [varchar](4) NULL,
	[DEBIT CREDIT INDICATOR] [varchar](1) NULL,
	[TRANSACTION CURRENCY] [varchar](5) NULL,
	[CURRENCY KEY] [varchar](5) NULL,
	[SEGMENT TEXT] [varchar](50) NULL,
	[REF POSTING ROW] [decimal](3, 0) NULL,
	[DOC ITEM NO] [decimal](3, 0) NULL,
	[OFFSET ACCT NO] [varchar](10) NULL,
	[OFFSET ACCT TYPE] [varchar](1) NULL,
	[PLANT] [varchar](4) NULL,
	[PURCHASING DOC NO] [varchar](10) NULL,
	[PURCHASE DOC ITEM] [decimal](5, 0) NULL,
	[PURCHASE ORDER ITEM TXT] [varchar](40) NULL,
	[VENDOR NO] [varchar](10) NULL,
	[VENDOR NAME] [varchar](35) NULL,
	[INVOICE PARTY NO] [varchar](10) NULL,
	[INVOICE PARTY NAME] [varchar](35) NULL,
	[COST CENTER] [varchar](22) NULL,
	[COST CENTER NAME] [varchar](20) NULL,
	[PROFIT CENTER] [varchar](10) NULL,
	[PROFIT CENTER NAME] [varchar](20) NULL,
	[COMPANY CODE] [varchar](4) NULL,
	[FUNCTIONAL AREA] [varchar](16) NULL,
	[OBJECT CLASS] [varchar](2) NULL,
	[DOC HEADER TXT] [varchar](50) NULL,
	[USER NAME] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBB_DETAIL_FINAL]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBB_DETAIL_FINAL](
	[CO_AREA] [varchar](4) NOT NULL,
	[DOC_NBR] [varchar](10) NOT NULL,
	[POST_ROW] [decimal](3, 0) NOT NULL,
	[PD] [decimal](3, 0) NULL,
	[TOTAL_VAL_TRANS] [decimal](15, 2) NULL,
	[TOT_VAL_OBJ] [decimal](15, 2) NULL,
	[TOT_VAL_CO_AREA] [decimal](15, 2) NULL,
	[TOT_QTY_ENTR] [decimal](15, 3) NULL,
	[CO_LED] [varchar](2) NULL,
	[OBJ_NBR] [varchar](22) NULL,
	[FISC_YR] [decimal](4, 0) NULL,
	[VAL_TYP] [varchar](2) NULL,
	[VERSION] [varchar](3) NULL,
	[COST_ELE] [varchar](10) NULL,
	[COST_ELE_NM] [varchar](20) NULL,
	[CO_BUS_TRANS] [varchar](4) NULL,
	[DB_CR_IND] [varchar](1) NULL,
	[TXN_CURR] [varchar](5) NULL,
	[CURR_KEY] [varchar](5) NULL,
	[SEG_TXT] [varchar](50) NULL,
	[REF_POST_ROW] [decimal](3, 0) NULL,
	[DOC_ITM_NBR] [decimal](3, 0) NULL,
	[OFFSET_ACCT_NBR] [varchar](10) NULL,
	[OFFSET_ACCT_TYP] [varchar](1) NULL,
	[PLANT] [varchar](4) NULL,
	[PUR_DOC_NBR] [varchar](10) NULL,
	[PUR_DOC_ITM] [decimal](5, 0) NULL,
	[PO_ITM_TXT] [varchar](40) NULL,
	[VEND_NBR] [varchar](10) NULL,
	[VEND_NM] [varchar](35) NULL,
	[INVC_PRT_NBR] [varchar](10) NULL,
	[INVC_PRT_NM] [varchar](35) NULL,
	[COST_CTR] [varchar](22) NULL,
	[COST_CTR_NM] [varchar](20) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[PROFIT_CTR_NM] [varchar](20) NULL,
	[CO_CD] [varchar](4) NULL,
	[FCN_AREA] [varchar](16) NULL,
	[OBJ_CLAS] [varchar](2) NULL,
	[DOC_HDR_TXT] [varchar](50) NULL,
	[USR_NM] [varchar](12) NULL,
	[ACCT_DESC] [varchar](60) NULL,
	[ACCT_CATEG] [varchar](255) NULL,
	[ACCT_SUB_CATEG] [varchar](255) NULL,
	[CC_DESC] [varchar](50) NULL,
	[LEVEL0_DESC] [varchar](15) NULL,
	[LEVEL1_DESC] [varchar](75) NULL,
	[LEVEL1_CD] [varchar](12) NULL,
	[LEVEL2_DESC] [varchar](75) NULL,
	[LEVEL2_CD] [varchar](12) NULL,
	[LEVEL3_DESC] [varchar](75) NULL,
	[LEVEL3_CD] [varchar](12) NULL,
	[LEVEL4_DESC] [varchar](75) NULL,
	[LEVEL4_CD] [varchar](12) NULL,
	[LEVEL5_DESC] [varchar](75) NULL,
	[LEVEL5_CD] [varchar](12) NULL,
	[LEVEL6_DESC] [varchar](75) NULL,
	[LEVEL6_CD] [varchar](12) NULL,
	[DOC_TYPE] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[CO_AREA] ASC,
	[DOC_NBR] ASC,
	[POST_ROW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBB_Detail_Trial]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBB_Detail_Trial](
	[CO AREA] [varchar](4) NULL,
	[DOCUMENT NO] [varchar](10) NULL,
	[POSTING ROW] [decimal](3, 0) NULL,
	[PERIOD] [decimal](3, 0) NULL,
	[TOTAL VALUE IN TRANSACTION] [decimal](15, 2) NULL,
	[TOTAL VALUE IN OBJECT] [decimal](15, 2) NULL,
	[TOTAL VALUE IN CO AREA] [decimal](15, 2) NULL,
	[TOTAL QTY ENTERED] [decimal](15, 3) NULL,
	[CO LEDGER] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[FISCAL YEAR] [decimal](4, 0) NULL,
	[VALUE TYPE] [varchar](2) NULL,
	[VERSION] [varchar](3) NULL,
	[COST ELEMENT] [varchar](10) NULL,
	[COST ELEMENT NAME] [varchar](20) NULL,
	[CO BUSINESS TRAN] [varchar](4) NULL,
	[DEBIT CREDIT INDICATOR] [varchar](1) NULL,
	[TRANSACTION CURRENCY] [varchar](5) NULL,
	[CURRENCY KEY] [varchar](5) NULL,
	[SEGMENT TEXT] [varchar](50) NULL,
	[REF POSTING ROW] [decimal](3, 0) NULL,
	[DOC ITEM NO] [decimal](3, 0) NULL,
	[OFFSET ACCT NO] [varchar](10) NULL,
	[OFFSET ACCT TYPE] [varchar](1) NULL,
	[PLANT] [varchar](4) NULL,
	[PURCHASING DOC NO] [varchar](10) NULL,
	[PURCHASE DOC ITEM] [decimal](5, 0) NULL,
	[PURCHASE ORDER ITEM TXT] [varchar](40) NULL,
	[VENDOR NO] [varchar](10) NULL,
	[VENDOR NAME] [varchar](35) NULL,
	[INVOICE PARTY NO] [varchar](10) NULL,
	[INVOICE PARTY NAME] [varchar](35) NULL,
	[COST CENTER] [varchar](22) NULL,
	[COST CENTER NAME] [varchar](20) NULL,
	[PROFIT CENTER] [varchar](10) NULL,
	[PROFIT CENTER NAME] [varchar](20) NULL,
	[COMPANY CODE] [varchar](4) NULL,
	[FUNCTIONAL AREA] [varchar](16) NULL,
	[OBJECT CLASS] [varchar](2) NULL,
	[DOC HEADER TXT] [varchar](50) NULL,
	[USER NAME] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBB_Detial]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBB_Detial](
	[CO AREA] [varchar](4) NULL,
	[DOCUMENT NO] [varchar](10) NULL,
	[POSTING ROW] [decimal](3, 0) NULL,
	[PERIOD] [decimal](3, 0) NULL,
	[TOTAL VALUE IN TRANSACTION] [decimal](15, 2) NULL,
	[TOTAL VALUE IN OBJECT] [decimal](15, 2) NULL,
	[TOTAL VALUE IN CO AREA] [decimal](15, 2) NULL,
	[TOTAL QTY ENTERED] [decimal](15, 3) NULL,
	[CO LEDGER] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[FISCAL YEAR] [decimal](4, 0) NULL,
	[VALUE TYPE] [varchar](2) NULL,
	[VERSION] [varchar](3) NULL,
	[COST ELEMENT] [varchar](10) NULL,
	[COST ELEMENT NAME] [varchar](20) NULL,
	[CO BUSINESS TRAN] [varchar](4) NULL,
	[DEBIT CREDIT INDICATOR] [varchar](1) NULL,
	[TRANSACTION CURRENCY] [varchar](5) NULL,
	[CURRENCY KEY] [varchar](5) NULL,
	[SEGMENT TEXT] [varchar](50) NULL,
	[REF POSTING ROW] [decimal](3, 0) NULL,
	[DOC ITEM NO] [decimal](3, 0) NULL,
	[OFFSET ACCT NO] [varchar](10) NULL,
	[OFFSET ACCT TYPE] [varchar](1) NULL,
	[PLANT] [varchar](4) NULL,
	[PURCHASING DOC NO] [varchar](10) NULL,
	[PURCHASE DOC ITEM] [decimal](5, 0) NULL,
	[PURCHASE ORDER ITEM TXT] [varchar](40) NULL,
	[VENDOR NO] [varchar](10) NULL,
	[VENDOR NAME] [varchar](35) NULL,
	[INVOICE PARTY NO] [varchar](10) NULL,
	[INVOICE PARTY NAME] [varchar](35) NULL,
	[COST CENTER] [varchar](22) NULL,
	[COST CENTER NAME] [varchar](20) NULL,
	[PROFIT CENTER] [varchar](10) NULL,
	[PROFIT CENTER NAME] [varchar](20) NULL,
	[COMPANY CODE] [varchar](4) NULL,
	[FUNCTIONAL AREA] [varchar](16) NULL,
	[OBJECT CLASS] [varchar](2) NULL,
	[DOC HEADER TXT] [varchar](50) NULL,
	[USER NAME] [varchar](12) NULL,
	[Posting_Dt] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NEW_SPEND_NA]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NEW_SPEND_NA](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PD] [nvarchar](10) NULL,
	[Year] [nvarchar](10) NULL,
	[Loc_Name] [nvarchar](255) NULL,
	[Loc_Cd] [nvarchar](255) NULL,
	[Pstn_Title] [nvarchar](255) NULL,
	[no_of_Grds] [int] NULL,
	[Stright_Time] [decimal](18, 2) NULL,
	[Bllng_Rt_Strght] [decimal](18, 2) NULL,
	[Premium_Hours] [decimal](18, 2) NULL,
	[Premium_Billing_Rt] [decimal](18, 2) NULL,
	[Total_Billed] [decimal](18, 2) NULL,
	[Cost_Center] [nvarchar](50) NULL,
	[GL] [nvarchar](50) NULL,
 CONSTRAINT [PK_NEW_SPEND_NA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PA0001]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PA0001](
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NOT NULL,
	[SUBTY] [varchar](4) NOT NULL,
	[OBJPS] [varchar](2) NOT NULL,
	[SPRPS] [varchar](1) NOT NULL,
	[ENDDA] [date] NOT NULL,
	[BEGDA] [date] NOT NULL,
	[SEQNR] [decimal](3, 0) NOT NULL,
	[AEDTM] [date] NULL,
	[UNAME] [varchar](12) NULL,
	[HISTO] [varchar](1) NULL,
	[ITXEX] [varchar](1) NULL,
	[REFEX] [varchar](1) NULL,
	[ORDEX] [varchar](1) NULL,
	[ITBLD] [varchar](2) NULL,
	[PREAS] [varchar](2) NULL,
	[FLAG1] [varchar](1) NULL,
	[FLAG2] [varchar](1) NULL,
	[FLAG3] [varchar](1) NULL,
	[FLAG4] [varchar](1) NULL,
	[RESE1] [varchar](2) NULL,
	[RESE2] [varchar](2) NULL,
	[GRPVL] [varchar](4) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[PERSG] [varchar](1) NULL,
	[PERSK] [varchar](2) NULL,
	[VDSK1] [varchar](14) NULL,
	[GSBER] [varchar](4) NULL,
	[BTRTL] [varchar](4) NULL,
	[JUPER] [varchar](4) NULL,
	[ABKRS] [varchar](2) NULL,
	[ANSVH] [varchar](2) NULL,
	[KOSTL] [varchar](10) NULL,
	[ORGEH] [decimal](8, 0) NULL,
	[PLANS] [decimal](8, 0) NULL,
	[STELL] [decimal](8, 0) NULL,
	[MSTBR] [varchar](8) NULL,
	[SACHA] [varchar](3) NULL,
	[SACHP] [varchar](3) NULL,
	[SACHZ] [varchar](3) NULL,
	[SNAME] [varchar](30) NULL,
	[ENAME] [varchar](40) NULL,
	[OTYPE] [varchar](2) NULL,
	[SBMOD] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL,
	[FISTL] [varchar](16) NULL,
	[GEBER] [varchar](10) NULL,
	[FKBER] [varchar](16) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[SGMNT] [varchar](10) NULL,
	[BUDGET_PD] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[PERNR] ASC,
	[SUBTY] ASC,
	[OBJPS] ASC,
	[SPRPS] ASC,
	[ENDDA] ASC,
	[BEGDA] ASC,
	[SEQNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PA0002]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PA0002](
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NOT NULL,
	[SUBTY] [varchar](4) NOT NULL,
	[OBJPS] [varchar](2) NOT NULL,
	[SPRPS] [varchar](1) NOT NULL,
	[ENDDA] [date] NOT NULL,
	[BEGDA] [date] NOT NULL,
	[SEQNR] [decimal](3, 0) NOT NULL,
	[AEDTM] [date] NULL,
	[UNAME] [varchar](12) NULL,
	[HISTO] [varchar](1) NULL,
	[ITXEX] [varchar](1) NULL,
	[REFEX] [varchar](1) NULL,
	[ORDEX] [varchar](1) NULL,
	[ITBLD] [varchar](2) NULL,
	[PREAS] [varchar](2) NULL,
	[FLAG1] [varchar](1) NULL,
	[FLAG2] [varchar](1) NULL,
	[FLAG3] [varchar](1) NULL,
	[FLAG4] [varchar](1) NULL,
	[RESE1] [varchar](2) NULL,
	[RESE2] [varchar](2) NULL,
	[GRPVL] [varchar](4) NULL,
	[INITS] [varchar](10) NULL,
	[NACHN] [varchar](40) NULL,
	[NAME2] [varchar](40) NULL,
	[NACH2] [varchar](40) NULL,
	[VORNA] [varchar](40) NULL,
	[CNAME] [varchar](80) NULL,
	[TITEL] [varchar](15) NULL,
	[TITL2] [varchar](15) NULL,
	[NAMZU] [varchar](15) NULL,
	[VORSW] [varchar](15) NULL,
	[VORS2] [varchar](15) NULL,
	[RUFNM] [varchar](40) NULL,
	[MIDNM] [varchar](40) NULL,
	[KNZNM] [decimal](2, 0) NULL,
	[ANRED] [varchar](1) NULL,
	[GESCH] [varchar](1) NULL,
	[GBDAT] [date] NULL,
	[GBLND] [varchar](3) NULL,
	[GBDEP] [varchar](3) NULL,
	[GBORT] [varchar](40) NULL,
	[NATIO] [varchar](3) NULL,
	[NATI2] [varchar](3) NULL,
	[NATI3] [varchar](3) NULL,
	[SPRSL] [varchar](1) NULL,
	[KONFE] [varchar](2) NULL,
	[FAMST] [varchar](1) NULL,
	[FAMDT] [date] NULL,
	[ANZKD] [decimal](3, 0) NULL,
	[NACON] [varchar](1) NULL,
	[PERMO] [varchar](2) NULL,
	[PERID] [varchar](20) NULL,
	[GBPAS] [date] NULL,
	[FNAMK] [varchar](40) NULL,
	[LNAMK] [varchar](40) NULL,
	[FNAMR] [varchar](40) NULL,
	[LNAMR] [varchar](40) NULL,
	[NABIK] [varchar](40) NULL,
	[NABIR] [varchar](40) NULL,
	[NICKK] [varchar](40) NULL,
	[NICKR] [varchar](40) NULL,
	[GBJHR] [decimal](4, 0) NULL,
	[GBMON] [decimal](2, 0) NULL,
	[GBTAG] [decimal](2, 0) NULL,
	[NCHMC] [varchar](25) NULL,
	[VNAMC] [varchar](25) NULL,
	[NAMZ2] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[PERNR] ASC,
	[SUBTY] ASC,
	[OBJPS] ASC,
	[SPRPS] ASC,
	[ENDDA] ASC,
	[BEGDA] ASC,
	[SEQNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRINTER_LXK_SUMM]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRINTER_LXK_SUMM](
	[Header_Detail] [nvarchar](10) NULL,
	[Pmt_Mthd] [nvarchar](50) NULL,
	[Pmt_Mthd_Supl] [nvarchar](50) NULL,
	[Currency] [nvarchar](10) NULL,
	[Pmt_Terms] [nvarchar](100) NULL,
	[Posting_Dt] [date] NULL,
	[Header_Cmpny_cd] [nvarchar](25) NULL,
	[Post_Key21_Credit31_inv] [int] NULL,
	[Vendor_NO] [nvarchar](25) NULL,
	[Invc_Dt] [date] NULL,
	[Invc_NO] [nvarchar](50) NOT NULL,
	[Doc_Header_Txt] [nvarchar](255) NULL,
	[Vendor_Txt] [nvarchar](255) NULL,
	[Invc_tot] [decimal](18, 2) NULL,
	[Tax_Amnt] [decimal](18, 2) NULL,
	[Cmpny_cd] [nvarchar](10) NULL,
	[GL_accnt] [nvarchar](25) NULL,
	[Cst_Cntr] [nvarchar](25) NULL,
	[ION_order] [nvarchar](50) NULL,
	[Item_Amount] [decimal](18, 2) NULL,
	[PK40_Debit_50_Crdt] [decimal](18, 2) NULL,
	[Tax_Cd] [nvarchar](25) NULL,
	[Tax_Jrsdctn] [nvarchar](255) NULL,
	[Dtl_Txt] [nvarchar](255) NULL,
 CONSTRAINT [PK_PRINTER_LXK_SUMM] PRIMARY KEY CLUSTERED 
(
	[Invc_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PRINTERS_LXK]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRINTERS_LXK](
	[Master_Inv] [nvarchar](30) NULL,
	[Bill_To_Inv] [nvarchar](30) NULL,
	[Cust_Inv] [nvarchar](50) NULL,
	[Rpt_Hier_1] [nvarchar](30) NULL,
	[Rpt_Hier_2] [nvarchar](30) NULL,
	[Rpt_Hier_3] [nvarchar](30) NULL,
	[Rpt_Hier_4] [nvarchar](30) NULL,
	[Rpt_Hier_5] [nvarchar](30) NULL,
	[Cost_Center] [nvarchar](30) NULL,
	[Addr_Name] [nvarchar](100) NULL,
	[Install_Addr_Line1] [nvarchar](50) NULL,
	[Install_Addr_Line2] [nvarchar](50) NULL,
	[City_Suburb] [nvarchar](30) NULL,
	[State_Province] [nvarchar](50) NULL,
	[Country] [nvarchar](10) NULL,
	[Postal_Code] [nvarchar](25) NULL,
	[Physical_Loc_1] [nvarchar](50) NULL,
	[Asset_Tag] [nvarchar](30) NULL,
	[Manufacturer] [nvarchar](30) NULL,
	[Device] [nvarchar](50) NULL,
	[Serial_NO] [nvarchar](30) NOT NULL,
	[IP_Addr] [nvarchar](30) NULL,
	[Charge_Typ] [nvarchar](50) NULL,
	[Recurring_Amt] [decimal](18, 2) NULL,
	[Meas] [nvarchar](100) NULL,
	[Start_Meter_Read] [nvarchar](20) NULL,
	[End_Meter_Read] [nvarchar](20) NULL,
	[Curr_Perd_Bllbl_Usg] [nvarchar](20) NULL,
	[Usage_Rt] [decimal](18, 2) NULL,
	[Usage_Amnt] [decimal](18, 2) NULL,
	[Tot_Charge_exclTax] [decimal](18, 2) NULL,
	[Sales_Tax] [decimal](18, 2) NULL,
	[Tot_Charge_IncTax] [decimal](18, 2) NULL,
	[meas_code] [nvarchar](25) NOT NULL,
	[charge_typ_cd] [nvarchar](25) NOT NULL,
	[invc_dt] [date] NOT NULL,
 CONSTRAINT [PRINTERS_LXK_STG] PRIMARY KEY CLUSTERED 
(
	[charge_typ_cd] ASC,
	[meas_code] ASC,
	[Serial_NO] ASC,
	[invc_dt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PTRV_HEAD]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTRV_HEAD](
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NOT NULL,
	[REINR] [decimal](10, 0) NOT NULL,
	[HDVRS] [decimal](2, 0) NOT NULL,
	[MOLGA] [varchar](2) NULL,
	[MOREI] [varchar](2) NULL,
	[SCHEM] [varchar](2) NULL,
	[KZREA] [varchar](1) NULL,
	[BEREI] [varchar](1) NULL,
	[KZTKT] [varchar](1) NULL,
	[ZORT1] [varchar](59) NULL,
	[ZLAND] [varchar](3) NULL,
	[HRGIO] [varchar](5) NULL,
	[NDNST] [varchar](25) NULL,
	[KUNDE] [varchar](59) NULL,
	[DATV1] [date] NULL,
	[UHRV1] [time](7) NULL,
	[DATB1] [date] NULL,
	[UHRB1] [time](7) NULL,
	[DATH1] [date] NULL,
	[UHRH1] [time](7) NULL,
	[DATR1] [date] NULL,
	[UHRR1] [time](7) NULL,
	[AGRZ1] [varchar](3) NULL,
	[GRGIO] [varchar](5) NULL,
	[GRBER] [varchar](1) NULL,
	[UZKVG] [varchar](1) NULL,
	[ZUSAG] [varchar](25) NULL,
	[ENDRG] [date] NULL,
	[DEPAR] [varchar](1) NULL,
	[ARRVL] [varchar](1) NULL,
	[RETRN] [varchar](1) NULL,
	[DATES] [date] NULL,
	[TIMES] [time](7) NULL,
	[UNAME] [varchar](12) NULL,
	[REPID] [varchar](40) NULL,
	[DANTN] [decimal](10, 0) NULL,
	[FINTN] [decimal](10, 0) NULL,
	[REQUEST] [varchar](1) NULL,
	[TRAVEL_PLAN] [varchar](1) NULL,
	[EXPENSES] [varchar](1) NULL,
	[ST_TRGTG] [date] NULL,
	[ST_TRGALL] [date] NULL,
	[PERIODENART] [varchar](1) NULL,
	[DAT_REDUC1] [date] NULL,
	[DAT_REDUC2] [date] NULL,
	[DATV1_DIENST] [date] NULL,
	[UHRV1_DIENST] [time](7) NULL,
	[DATB1_DIENST] [date] NULL,
	[UHRB1_DIENST] [time](7) NULL,
	[ABORDNUNG] [decimal](10, 0) NULL,
	[ST_TRG_TYP] [varchar](1) NULL,
	[ST_WOHN_TYP] [varchar](1) NULL,
	[KEIN_REISEGELD] [varchar](1) NULL,
	[TAX_PER_DIEM] [varchar](1) NULL,
	[TAX_PD_MAN] [varchar](1) NULL,
	[TAX_OV_MAN] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[PERNR] ASC,
	[REINR] ASC,
	[HDVRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PTRV_PERIO]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTRV_PERIO](
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NOT NULL,
	[REINR] [decimal](10, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NOT NULL,
	[PDVRS] [decimal](2, 0) NOT NULL,
	[HDVRS] [decimal](2, 0) NULL,
	[PDATV] [date] NULL,
	[PUHRV] [time](7) NULL,
	[PDATB] [date] NULL,
	[PUHRB] [time](7) NULL,
	[DRUCK] [varchar](1) NULL,
	[ANTRG] [varchar](1) NULL,
	[ABREC] [varchar](1) NULL,
	[UEBLG] [varchar](1) NULL,
	[UEBRF] [varchar](1) NULL,
	[UEBDT] [varchar](1) NULL,
	[TLOCK] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[ABRJ1] [decimal](4, 0) NULL,
	[ABRP1] [decimal](2, 0) NULL,
	[PERM1] [varchar](2) NULL,
	[ABKR1] [varchar](2) NULL,
	[BEGP1] [date] NULL,
	[ENDP1] [date] NULL,
	[ABRJ2] [decimal](4, 0) NULL,
	[ABRP2] [decimal](2, 0) NULL,
	[PERM2] [varchar](2) NULL,
	[ABKR2] [varchar](2) NULL,
	[BEGP2] [date] NULL,
	[ENDP2] [date] NULL,
	[ACCDT] [date] NULL,
	[ACCTM] [time](7) NULL,
	[RUNID] [decimal](10, 0) NULL,
	[VERPA] [varchar](1) NULL,
	[UEBKZ] [varchar](1) NULL,
	[ANUEP] [decimal](2, 0) NULL,
	[NO_MILES] [varchar](1) NULL,
	[LSTAY] [varchar](1) NULL,
	[TR_DOPP_ANZAHL] [decimal](3, 0) NULL,
	[TR_EINF_ANZAHL] [decimal](3, 0) NULL,
	[TR_ENTFERNUNG] [decimal](5, 0) NULL,
	[VU_EA_DOPP_ANZ] [decimal](3, 0) NULL,
	[VU_EA_EINF_ANZ] [decimal](3, 0) NULL,
	[VU_EA_ENTFERN] [decimal](5, 0) NULL,
	[VU_EA_KM_SATZ] [decimal](10, 2) NULL,
	[NU_EA_DOPP_ANZ] [decimal](3, 0) NULL,
	[NU_EA_EINF_ANZ] [decimal](3, 0) NULL,
	[NU_EA_ENTFERN] [decimal](5, 0) NULL,
	[NU_EA_KM_SATZ] [decimal](10, 2) NULL,
	[V_UNENTGELTLICH] [varchar](1) NULL,
	[U_UNENTGELTLICH] [varchar](1) NULL,
	[REDUC_ERGRU] [varchar](2) NULL,
	[NOT_PAID] [varchar](1) NULL,
	[WEG_ERH_MAX] [varchar](1) NULL,
	[ERH_DIENST_INT] [varchar](1) NULL,
	[ENTF_WO_DO] [varchar](1) NULL,
	[DRITTMITTEL] [varchar](1) NULL,
	[ANTRAG_GWE] [varchar](1) NULL,
	[POLICY_VIOLATION] [varchar](1) NULL,
	[EXCEPTION_FLAG] [varchar](1) NULL,
	[NR_RECEIPTS] [decimal](3, 0) NULL,
	[PERM_TRIP_APPR] [varchar](1) NULL,
	[TR_NR_FROM_HOME] [decimal](3, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[PERNR] ASC,
	[REINR] ASC,
	[PERIO] ASC,
	[PDVRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PTRV_PERIOD]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTRV_PERIOD](
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NOT NULL,
	[REINR] [decimal](10, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NOT NULL,
	[PDVRS] [decimal](2, 0) NOT NULL,
	[HDVRS] [decimal](2, 0) NULL,
	[PDATV] [date] NULL,
	[PUHRV] [time](7) NULL,
	[PDATB] [date] NULL,
	[PUHRB] [time](7) NULL,
	[DRUCK] [varchar](1) NULL,
	[ANTRG] [varchar](1) NULL,
	[ABREC] [varchar](1) NULL,
	[UEBLG] [varchar](1) NULL,
	[UEBRF] [varchar](1) NULL,
	[UEBDT] [varchar](1) NULL,
	[TLOCK] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[ABRJ1] [decimal](4, 0) NULL,
	[ABRP1] [decimal](2, 0) NULL,
	[PERM1] [varchar](2) NULL,
	[ABKR1] [varchar](2) NULL,
	[BEGP1] [date] NULL,
	[ENDP1] [date] NULL,
	[ABRJ2] [decimal](4, 0) NULL,
	[ABRP2] [decimal](2, 0) NULL,
	[PERM2] [varchar](2) NULL,
	[ABKR2] [varchar](2) NULL,
	[BEGP2] [date] NULL,
	[ENDP2] [date] NULL,
	[ACCDT] [date] NULL,
	[ACCTM] [time](7) NULL,
	[RUNID] [decimal](10, 0) NULL,
	[VERPA] [varchar](1) NULL,
	[UEBKZ] [varchar](1) NULL,
	[ANUEP] [decimal](2, 0) NULL,
	[NO_MILES] [varchar](1) NULL,
	[LSTAY] [varchar](1) NULL,
	[TR_DOPP_ANZAHL] [decimal](3, 0) NULL,
	[TR_EINF_ANZAHL] [decimal](3, 0) NULL,
	[TR_ENTFERNUNG] [decimal](5, 0) NULL,
	[VU_EA_DOPP_ANZ] [decimal](3, 0) NULL,
	[VU_EA_EINF_ANZ] [decimal](3, 0) NULL,
	[VU_EA_ENTFERN] [decimal](5, 0) NULL,
	[VU_EA_KM_SATZ] [decimal](10, 2) NULL,
	[NU_EA_DOPP_ANZ] [decimal](3, 0) NULL,
	[NU_EA_EINF_ANZ] [decimal](3, 0) NULL,
	[NU_EA_ENTFERN] [decimal](5, 0) NULL,
	[NU_EA_KM_SATZ] [decimal](10, 2) NULL,
	[V_UNENTGELTLICH] [varchar](1) NULL,
	[U_UNENTGELTLICH] [varchar](1) NULL,
	[REDUC_ERGRU] [varchar](2) NULL,
	[NOT_PAID] [varchar](1) NULL,
	[WEG_ERH_MAX] [varchar](1) NULL,
	[ERH_DIENST_INT] [varchar](1) NULL,
	[ENTF_WO_DO] [varchar](1) NULL,
	[DRITTMITTEL] [varchar](1) NULL,
	[ANTRAG_GWE] [varchar](1) NULL,
	[POLICY_VIOLATION] [varchar](1) NULL,
	[EXCEPTION_FLAG] [varchar](1) NULL,
	[NR_RECEIPTS] [decimal](3, 0) NULL,
	[PERM_TRIP_APPR] [varchar](1) NULL,
	[TR_NR_FROM_HOME] [decimal](3, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[PERNR] ASC,
	[REINR] ASC,
	[PERIO] ASC,
	[PDVRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PTRV_SADD]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTRV_SADD](
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NOT NULL,
	[REINR] [decimal](10, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NOT NULL,
	[RECEIPTNO] [varchar](3) NOT NULL,
	[NO_BRFT] [decimal](2, 0) NULL,
	[COUNTRY] [varchar](3) NULL,
	[REGION] [varchar](5) NULL,
	[TT_COMSP] [varchar](1) NULL,
	[FROM_DATE] [date] NULL,
	[TO_DATE] [date] NULL,
	[MULTIPLI] [decimal](3, 0) NULL,
	[DESCRIPT] [varchar](50) NULL,
	[LOCATION] [varchar](50) NULL,
	[BUS_PURPO] [varchar](50) NULL,
	[BUS_REASON] [varchar](50) NULL,
	[CCOMP] [varchar](2) NULL,
	[C_DOC] [varchar](20) NULL,
	[C_TXT] [varchar](50) NULL,
	[P_CTG] [varchar](1) NULL,
	[P_PRV] [varchar](3) NULL,
	[P_DOC] [varchar](20) NULL,
	[N_STF] [varchar](3) NULL,
	[N_PTN] [varchar](3) NULL,
	[N_GST] [varchar](3) NULL,
	[ANZLU_DEC] [decimal](3, 0) NULL,
	[ANZDI_DEC] [decimal](3, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[PERNR] ASC,
	[REINR] ASC,
	[PERIO] ASC,
	[RECEIPTNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PTRV_SCOS]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTRV_SCOS](
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NOT NULL,
	[REINR] [decimal](10, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NOT NULL,
	[COSTSEQNO] [decimal](2, 0) NOT NULL,
	[COMP_CODE] [varchar](4) NULL,
	[BUS_AREA] [varchar](4) NULL,
	[CO_AREA] [varchar](4) NULL,
	[COSTCENTER] [varchar](10) NULL,
	[INTERNAL_ORDER] [varchar](12) NULL,
	[COST_OBJ] [varchar](12) NULL,
	[WBS_ELEMT] [varchar](24) NULL,
	[NETWORK] [varchar](12) NULL,
	[ACTIVITY] [varchar](4) NULL,
	[SALES_ORD] [varchar](10) NULL,
	[S_ORD_ITEM] [decimal](6, 0) NULL,
	[CO_BUSPROC] [varchar](12) NULL,
	[FUNDS_CTR] [varchar](16) NULL,
	[CMMT_ITEM] [varchar](14) NULL,
	[FUND] [varchar](10) NULL,
	[ALLOC_AMOUNT] [decimal](15, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[CMMT_ITEM_LONG] [varchar](24) NULL,
	[PROJECT_GUID] [varchar](32) NULL,
	[PROJECT_EXT_ID] [varchar](24) NULL,
	[TASK_ROLE_GUID] [varchar](32) NULL,
	[TASK_ROLE_EXT_ID] [varchar](24) NULL,
	[OBJECT_TYPE] [varchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[PERNR] ASC,
	[REINR] ASC,
	[PERIO] ASC,
	[COSTSEQNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PTRV_SHDR]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTRV_SHDR](
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NOT NULL,
	[REINR] [decimal](10, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NOT NULL,
	[SEQNO] [decimal](2, 0) NOT NULL,
	[ADDIT_AMNT] [decimal](13, 2) NULL,
	[SUM_REIMBU] [decimal](13, 2) NULL,
	[SUM_ADVANC] [decimal](13, 2) NULL,
	[SUM_PAYOUT] [decimal](13, 2) NULL,
	[SUM_PAIDCO] [decimal](13, 2) NULL,
	[TRIP_TOTAL] [decimal](13, 2) NULL,
	[PD_FOOD] [decimal](13, 2) NULL,
	[PD_HOUSING] [decimal](13, 2) NULL,
	[PD_MILEAGE] [decimal](13, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[M_TOTAL] [decimal](5, 0) NULL,
	[TRIPDUR] [decimal](4, 0) NULL,
	[CHNGDATE] [date] NULL,
	[CHNGTIME] [time](7) NULL,
	[TXF_FOOD] [decimal](13, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[PERNR] ASC,
	[REINR] ASC,
	[PERIO] ASC,
	[SEQNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PTRV_SREC]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTRV_SREC](
	[MANDT] [varchar](3) NULL,
	[PERNR] [decimal](8, 0) NOT NULL,
	[REINR] [decimal](10, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NOT NULL,
	[RECEIPTNO] [varchar](3) NOT NULL,
	[SEQNO] [decimal](2, 0) NOT NULL,
	[DED_FLAG] [varchar](1) NULL,
	[PAID_COM] [varchar](1) NULL,
	[EXP_TYPE] [varchar](4) NULL,
	[REC_AMOUNT] [decimal](13, 2) NULL,
	[REC_CURR] [varchar](5) NULL,
	[REC_RATE] [decimal](9, 5) NULL,
	[LOC_AMOUNT] [decimal](13, 2) NULL,
	[LOC_CURR] [varchar](5) NULL,
	[TAX_CODE] [varchar](2) NULL,
	[REC_DATE] [date] NULL,
	[SHORTTXT] [varchar](10) NULL,
	[ABOVE_LIMIT] [varchar](1) NULL,
	[PAPER_RECEIPT] [varchar](1) NULL,
	[RECEIPT_OK] [varchar](1) NULL,
	[PAYOT] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[PERNR] ASC,
	[REINR] ASC,
	[PERIO] ASC,
	[RECEIPTNO] ASC,
	[SEQNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sample_ex]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sample_ex](
	[name] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAMPLE_TABLE]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAMPLE_TABLE](
	[MANDT] [varchar](3) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [int] NULL,
	[ETENR] [int] NULL,
	[EINDT] [datetime2](7) NULL,
	[SLFDT] [datetime2](7) NULL,
	[LPEIN] [varchar](1) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[AMENG] [decimal](13, 3) NULL,
	[WEMNG] [decimal](13, 3) NULL,
	[WAMNG] [decimal](13, 3) NULL,
	[UZEIT] [datetime2](7) NULL,
	[BANFN] [varchar](10) NULL,
	[BNFPO] [int] NULL,
	[ESTKZ] [varchar](1) NULL,
	[QUNUM] [varchar](10) NULL,
	[QUPOS] [int] NULL,
	[MAHNZ] [int] NULL,
	[BEDAT] [datetime2](7) NULL,
	[RSNUM] [decimal](10, 0) NULL,
	[SERNR] [varchar](8) NULL,
	[FIXKZ] [varchar](1) NULL,
	[GLMNG] [decimal](13, 3) NULL,
	[DABMG] [decimal](13, 3) NULL,
	[CHARG] [varchar](10) NULL,
	[LICHA] [varchar](15) NULL,
	[CHKOM] [varchar](1) NULL,
	[VERID] [varchar](4) NULL,
	[ABART] [varchar](1) NULL,
	[MNG02] [decimal](13, 3) NULL,
	[DAT01] [datetime2](7) NULL,
	[ALTDT] [datetime2](7) NULL,
	[AULWE] [varchar](10) NULL,
	[MBDAT] [datetime2](7) NULL,
	[MBUHR] [datetime2](7) NULL,
	[LDDAT] [datetime2](7) NULL,
	[LDUHR] [datetime2](7) NULL,
	[TDDAT] [datetime2](7) NULL,
	[TDUHR] [datetime2](7) NULL,
	[WADAT] [datetime2](7) NULL,
	[WAUHR] [datetime2](7) NULL,
	[ELDAT] [datetime2](7) NULL,
	[ELUHR] [datetime2](7) NULL,
	[ANZSN] [decimal](28, 0) NULL,
	[NODISP] [varchar](1) NULL,
	[KEY_ID] [decimal](16, 0) NULL,
	[OTB_VALUE] [decimal](17, 2) NULL,
	[OTB_CURR] [varchar](5) NULL,
	[OTB_RES_VALUE] [decimal](17, 2) NULL,
	[OTB_SPEC_VALUE] [decimal](17, 2) NULL,
	[SPR_RSN_PROFILE] [varchar](4) NULL,
	[BUDG_TYPE] [varchar](2) NULL,
	[OTB_STATUS] [varchar](1) NULL,
	[OTB_REASON] [varchar](3) NULL,
	[CHECK_TYPE] [varchar](1) NULL,
	[DL_ID] [varchar](22) NULL,
	[HANDOVER_DATE] [datetime2](7) NULL,
	[NO_SCEM] [varchar](1) NULL,
	[DNG_DATE] [datetime2](7) NULL,
	[DNG_TIME] [datetime2](7) NULL,
	[CNCL_ANCMNT_DONE] [varchar](1) NULL,
	[DATESHIFT_NUMBER] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sample1]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sample1](
	[sample_Columns] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STG_AUFK]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_AUFK](
	[MANDT] [varchar](3) NULL,
	[AUFNR] [varchar](12) NOT NULL,
	[AUART] [varchar](4) NULL,
	[AUTYP] [decimal](2, 0) NULL,
	[REFNR] [varchar](12) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[KTEXT] [varchar](40) NULL,
	[LTEXT] [varchar](1) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL,
	[CCKEY] [varchar](23) NULL,
	[KOSTV] [varchar](10) NULL,
	[STORT] [varchar](10) NULL,
	[SOWRK] [varchar](4) NULL,
	[ASTKZ] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[ASTNR] [varchar](48) NULL,
	[STDAT] [date] NULL,
	[ESTNR] [decimal](2, 0) NULL,
	[PHAS0] [varchar](1) NULL,
	[PHAS1] [varchar](1) NULL,
	[PHAS2] [varchar](1) NULL,
	[PHAS3] [varchar](1) NULL,
	[PDAT1] [varchar](24) NULL,
	[PDAT2] [varchar](24) NULL,
	[PDAT3] [varchar](24) NULL,
	[IDAT1] [varchar](24) NULL,
	[IDAT2] [varchar](24) NULL,
	[IDAT3] [varchar](24) NULL,
	[OBJID] [varchar](1) NULL,
	[VOGRP] [varchar](4) NULL,
	[LOEKZ] [varchar](1) NULL,
	[PLGKZ] [varchar](1) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KALSM] [varchar](6) NULL,
	[ZSCHL] [varchar](6) NULL,
	[ABKRS] [decimal](2, 0) NULL,
	[KSTAR] [varchar](10) NULL,
	[KOSTL] [varchar](10) NULL,
	[SAKNR] [varchar](10) NULL,
	[SETNM] [varchar](12) NULL,
	[CYCLE] [varchar](10) NULL,
	[SDATE] [varchar](24) NULL,
	[SEQNR] [decimal](4, 0) NULL,
	[USER0] [varchar](20) NULL,
	[USER1] [varchar](20) NULL,
	[USER2] [varchar](20) NULL,
	[USER3] [varchar](20) NULL,
	[USER4] [decimal](11, 2) NULL,
	[USER5] [date] NULL,
	[USER6] [varchar](15) NULL,
	[USER7] [date] NULL,
	[USER8] [date] NULL,
	[USER9] [varchar](1) NULL,
	[OBJNR] [varchar](22) NULL,
	[PRCTR] [varchar](10) NULL,
	[PSPEL] [decimal](8, 0) NULL,
	[AWSLS] [varchar](6) NULL,
	[ABGSL] [varchar](6) NULL,
	[TXJCD] [varchar](15) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[PLINT] [varchar](1) NULL,
	[KDAUF] [varchar](10) NULL,
	[KDPOS] [decimal](6, 0) NULL,
	[AUFEX] [varchar](20) NULL,
	[IVPRO] [varchar](6) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[FLG_MLTPS] [varchar](1) NULL,
	[ABUKR] [varchar](4) NULL,
	[AKSTL] [varchar](10) NULL,
	[SIZECL] [varchar](2) NULL,
	[IZWEK] [varchar](2) NULL,
	[UMWKZ] [varchar](5) NULL,
	[KSTEMPF] [varchar](1) NULL,
	[ZSCHM] [varchar](7) NULL,
	[PKOSA] [varchar](12) NULL,
	[ANFAUFNR] [varchar](12) NULL,
	[PROCNR] [decimal](12, 0) NULL,
	[PROTY] [varchar](4) NULL,
	[RSORD] [varchar](1) NULL,
	[BEMOT] [varchar](2) NULL,
	[ADRNRA] [varchar](10) NULL,
	[ERFZEIT] [time](7) NULL,
	[AEZEIT] [time](7) NULL,
	[CSTG_VRNT] [varchar](4) NULL,
	[COSTESTNR] [decimal](12, 0) NULL,
	[VERAA_USER] [varchar](12) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[OTYPE] [varchar](4) NULL,
	[JV_JIBCL] [varchar](3) NULL,
	[JV_JIBSA] [varchar](5) NULL,
	[JV_OCO] [varchar](1) NULL,
	[/CUM/INDCU] [varchar](1) NULL,
	[/CUM/CMNUM] [varchar](12) NULL,
	[/CUM/AUEST] [varchar](1) NULL,
	[/CUM/DESNUM] [varchar](12) NULL,
	[VAPLZ] [varchar](8) NULL,
	[WAWRK] [varchar](4) NULL,
	[FERC_IND] [varchar](4) NULL,
	[CLAIM_CONTROL] [varchar](1) NULL,
	[UPDATE_NEEDED] [varchar](1) NULL,
	[UPDATE_CONTROL] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[AUFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_COBK]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_COBK](
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[VERSN] [varchar](3) NULL,
	[VRGNG] [varchar](4) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[PERAB] [decimal](3, 0) NULL,
	[PERBI] [decimal](3, 0) NULL,
	[BLDAT] [date] NULL,
	[BUDAT] [date] NULL,
	[CPUDT] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[BLTXT] [varchar](50) NULL,
	[STFLG] [varchar](1) NULL,
	[STOKZ] [varchar](1) NULL,
	[REFBT] [varchar](1) NULL,
	[REFBN] [varchar](10) NULL,
	[REFBK] [varchar](4) NULL,
	[REFGJ] [decimal](4, 0) NULL,
	[BLART] [varchar](2) NULL,
	[ORGVG] [varchar](4) NULL,
	[SUMBZ] [decimal](3, 0) NULL,
	[DELBZ] [decimal](3, 0) NULL,
	[WSDAT] [date] NULL,
	[KURST] [varchar](4) NULL,
	[VARNR] [varchar](5) NULL,
	[KWAER] [varchar](5) NULL,
	[CTYP1] [varchar](2) NULL,
	[CTYP2] [varchar](2) NULL,
	[CTYP3] [varchar](2) NULL,
	[CTYP4] [varchar](2) NULL,
	[AWTYP] [varchar](5) NULL,
	[AWORG] [varchar](10) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[CPUTM] [time](7) NULL,
	[ALEBZ] [decimal](3, 0) NULL,
	[ALEBN] [varchar](10) NULL,
	[AWSYS] [varchar](10) NULL,
	[AWREF_REV] [varchar](10) NULL,
	[AWORG_REV] [varchar](10) NULL,
	[VALDT] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[KOKRS] ASC,
	[BELNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_COEP]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_COEP](
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[BUZEI] [decimal](3, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NULL,
	[WTGBTR] [decimal](15, 2) NULL,
	[WOGBTR] [decimal](15, 2) NULL,
	[WKGBTR] [decimal](15, 2) NULL,
	[WKFBTR] [decimal](15, 2) NULL,
	[PAGBTR] [decimal](15, 2) NULL,
	[PAFBTR] [decimal](15, 2) NULL,
	[MEGBTR] [decimal](15, 3) NULL,
	[MEFBTR] [decimal](15, 3) NULL,
	[MBGBTR] [decimal](15, 3) NULL,
	[MBFBTR] [decimal](15, 3) NULL,
	[LEDNR] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[WRTTP] [varchar](2) NULL,
	[VERSN] [varchar](3) NULL,
	[KSTAR] [varchar](10) NULL,
	[HRKFT] [varchar](14) NULL,
	[VRGNG] [varchar](4) NULL,
	[PAROB] [varchar](22) NULL,
	[PAROB1] [varchar](22) NULL,
	[USPOB] [varchar](22) NULL,
	[VBUND] [varchar](6) NULL,
	[PARGB] [varchar](4) NULL,
	[BEKNZ] [varchar](1) NULL,
	[TWAER] [varchar](5) NULL,
	[OWAER] [varchar](5) NULL,
	[MEINH] [varchar](3) NULL,
	[MEINB] [varchar](3) NULL,
	[MVFLG] [varchar](1) NULL,
	[SGTXT] [varchar](50) NULL,
	[REFBZ] [decimal](3, 0) NULL,
	[ZLENR] [decimal](3, 0) NULL,
	[BW_REFBZ] [decimal](3, 0) NULL,
	[GKONT] [varchar](10) NULL,
	[GKOAR] [varchar](1) NULL,
	[WERKS] [varchar](4) NULL,
	[MATNR] [varchar](18) NULL,
	[RBEST] [decimal](3, 0) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[ZEKKN] [decimal](2, 0) NULL,
	[ERLKZ] [varchar](1) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[BTRKL] [decimal](2, 0) NULL,
	[OBJNR_N1] [varchar](22) NULL,
	[OBJNR_N2] [varchar](22) NULL,
	[OBJNR_N3] [varchar](22) NULL,
	[PAOBJNR] [decimal](10, 0) NULL,
	[BELTP] [decimal](1, 0) NULL,
	[BUKRS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[FKBER] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[LOGSYSO] [varchar](10) NULL,
	[PKSTAR] [varchar](10) NULL,
	[PBUKRS] [varchar](4) NULL,
	[PFKBER] [varchar](16) NULL,
	[PSCOPE] [varchar](2) NULL,
	[LOGSYSP] [varchar](10) NULL,
	[DABRZ] [date] NULL,
	[BWSTRAT] [varchar](1) NULL,
	[OBJNR_HK] [varchar](22) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[QMNUM] [varchar](12) NULL,
	[GEBER] [varchar](10) NULL,
	[PGEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[PGRANT_NBR] [varchar](20) NULL,
	[REFBZ_FI] [decimal](3, 0) NULL,
	[SEGMENT] [varchar](10) NULL,
	[PSEGMENT] [varchar](10) NULL,
	[BUDGET_PD] [varchar](10) NULL,
	[PBUDGET_PD] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[KOKRS] ASC,
	[BELNR] ASC,
	[BUZEI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_EKKO]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_EKKO](
	[MANDT] [varchar](3) NULL,
	[EBELN] [varchar](10) NOT NULL,
	[BUKRS] [varchar](4) NULL,
	[BSTYP] [varchar](1) NULL,
	[BSART] [varchar](4) NULL,
	[BSAKZ] [varchar](1) NULL,
	[LOEKZ] [varchar](1) NULL,
	[STATU] [varchar](1) NULL,
	[AEDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[PINCR] [decimal](5, 0) NULL,
	[LPONR] [decimal](5, 0) NULL,
	[LIFNR] [varchar](10) NULL,
	[SPRAS] [varchar](1) NULL,
	[ZTERM] [varchar](4) NULL,
	[ZBD1T] [decimal](3, 0) NULL,
	[ZBD2T] [decimal](3, 0) NULL,
	[ZBD3T] [decimal](3, 0) NULL,
	[ZBD1P] [decimal](5, 3) NULL,
	[ZBD2P] [decimal](5, 3) NULL,
	[EKORG] [varchar](4) NULL,
	[EKGRP] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[WKURS] [decimal](9, 5) NULL,
	[KUFIX] [varchar](1) NULL,
	[BEDAT] [date] NULL,
	[KDATB] [date] NULL,
	[KDATE] [date] NULL,
	[BWBDT] [date] NULL,
	[ANGDT] [date] NULL,
	[BNDDT] [date] NULL,
	[GWLDT] [date] NULL,
	[AUSNR] [varchar](10) NULL,
	[ANGNR] [varchar](10) NULL,
	[IHRAN] [date] NULL,
	[IHREZ] [varchar](12) NULL,
	[VERKF] [varchar](30) NULL,
	[TELF1] [varchar](16) NULL,
	[LLIEF] [varchar](10) NULL,
	[KUNNR] [varchar](10) NULL,
	[KONNR] [varchar](10) NULL,
	[ABGRU] [varchar](2) NULL,
	[AUTLF] [varchar](1) NULL,
	[WEAKT] [varchar](1) NULL,
	[RESWK] [varchar](4) NULL,
	[LBLIF] [varchar](10) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[KTWRT] [decimal](15, 2) NULL,
	[SUBMI] [varchar](10) NULL,
	[KNUMV] [varchar](10) NULL,
	[KALSM] [varchar](6) NULL,
	[STAFO] [varchar](6) NULL,
	[LIFRE] [varchar](10) NULL,
	[EXNUM] [varchar](10) NULL,
	[UNSEZ] [varchar](12) NULL,
	[LOGSY] [varchar](10) NULL,
	[UPINC] [decimal](5, 0) NULL,
	[STAKO] [varchar](1) NULL,
	[FRGGR] [varchar](2) NULL,
	[FRGSX] [varchar](2) NULL,
	[FRGKE] [varchar](1) NULL,
	[FRGZU] [varchar](8) NULL,
	[FRGRL] [varchar](1) NULL,
	[LANDS] [varchar](3) NULL,
	[LPHIS] [varchar](1) NULL,
	[ADRNR] [varchar](10) NULL,
	[STCEG_L] [varchar](3) NULL,
	[STCEG] [varchar](20) NULL,
	[ABSGR] [decimal](2, 0) NULL,
	[ADDNR] [varchar](10) NULL,
	[KORNR] [varchar](1) NULL,
	[MEMORY] [varchar](1) NULL,
	[PROCSTAT] [varchar](2) NULL,
	[RLWRT] [decimal](15, 2) NULL,
	[REVNO] [varchar](8) NULL,
	[SCMPROC] [varchar](1) NULL,
	[REASON_CODE] [varchar](4) NULL,
	[MEMORYTYPE] [varchar](1) NULL,
	[RETTP] [varchar](1) NULL,
	[RETPC] [decimal](5, 2) NULL,
	[DPTYP] [varchar](4) NULL,
	[DPPCT] [decimal](5, 2) NULL,
	[DPAMT] [decimal](11, 2) NULL,
	[DPDAT] [date] NULL,
	[MSR_ID] [varchar](10) NULL,
	[HIERARCHY_EXISTS] [varchar](1) NULL,
	[THRESHOLD_EXISTS] [varchar](1) NULL,
	[LEGAL_CONTRACT] [varchar](40) NULL,
	[DESCRIPTION] [varchar](40) NULL,
	[RELEASE_DATE] [date] NULL,
	[FORCE_ID] [varchar](32) NULL,
	[FORCE_CNT] [decimal](6, 0) NULL,
	[RELOC_ID] [varchar](10) NULL,
	[RELOC_SEQ_ID] [varchar](4) NULL,
	[SOURCE_LOGSYS] [varchar](10) NULL,
	[ZZPRESETDATE] [date] NULL,
	[ZZPRESETTIME] [time](7) NULL,
	[ZZCUTOFF] [date] NULL,
	[ZZCUTOFF_TIME] [time](7) NULL,
	[ZZETA] [date] NULL,
	[ZZETD] [date] NULL,
	[ZZBOOKING] [varchar](30) NULL,
	[ZZORIGIN_PORT] [varchar](40) NULL,
	[ZZORI_LOC_QUAL] [varchar](2) NULL,
	[ZZORI_LOC_ID] [varchar](30) NULL,
	[ZZDEST_PORT] [varchar](40) NULL,
	[ZZDEST_LOC_QUAL] [varchar](2) NULL,
	[ZZDEST_LOC_ID] [varchar](30) NULL,
	[ZZVESSEL_NAME] [varchar](30) NULL,
	[ZZVOYAGE_ID] [varchar](10) NULL,
	[ZZSTEAMSHIP] [varchar](30) NULL,
	[ZZOCEANSCAC] [varchar](4) NULL,
	[ZZPARENTSHIP] [varchar](10) NULL,
	[ZZSERV_TYPE] [varchar](2) NULL,
	[ZZDIS_POOL_NAME] [varchar](40) NULL,
	[ZZDIS_POOL_QUAL] [varchar](2) NULL,
	[ZZDIS_POOL_ID] [varchar](30) NULL,
	[ZZREC_PLACE_NAME] [varchar](40) NULL,
	[ZZREC_PLACE_QUAL] [varchar](2) NULL,
	[ZZREC_PLACE_ID] [varchar](30) NULL,
	[ZZTEMP_MIN] [varchar](4) NULL,
	[ZZTEMP_MIN_UOM] [varchar](2) NULL,
	[ZZTEMP_MAX] [varchar](4) NULL,
	[ZZTEMP_MAX_UOM] [varchar](2) NULL,
	[ZZVENT_SET_CODE] [varchar](1) NULL,
	[ZZSPEC_EQP] [varchar](30) NULL,
	[ZZCONFPICKDT] [date] NULL,
	[ZWERKS] [varchar](4) NULL,
	[TKNUM] [varchar](10) NULL,
	[DLX_SEND] [varchar](1) NULL,
	[POHF_TYPE] [varchar](1) NULL,
	[EQ_EINDT] [date] NULL,
	[EQ_WERKS] [varchar](4) NULL,
	[FIXPO] [varchar](1) NULL,
	[EKGRP_ALLOW] [varchar](1) NULL,
	[WERKS_ALLOW] [varchar](1) NULL,
	[CONTRACT_ALLOW] [varchar](1) NULL,
	[PSTYP_ALLOW] [varchar](1) NULL,
	[FIXPO_ALLOW] [varchar](1) NULL,
	[KEY_ID_ALLOW] [varchar](1) NULL,
	[AUREL_ALLOW] [varchar](1) NULL,
	[DELPER_ALLOW] [varchar](1) NULL,
	[EINDT_ALLOW] [varchar](1) NULL,
	[LTSNR_ALLOW] [varchar](1) NULL,
	[OTB_LEVEL] [varchar](1) NULL,
	[OTB_COND_TYPE] [varchar](4) NULL,
	[KEY_ID] [decimal](16, 0) NULL,
	[OTB_VALUE] [decimal](17, 2) NULL,
	[OTB_CURR] [varchar](5) NULL,
	[OTB_RES_VALUE] [decimal](17, 2) NULL,
	[OTB_SPEC_VALUE] [decimal](17, 2) NULL,
	[SPR_RSN_PROFILE] [varchar](4) NULL,
	[BUDG_TYPE] [varchar](2) NULL,
	[OTB_STATUS] [varchar](1) NULL,
	[OTB_REASON] [varchar](3) NULL,
	[CHECK_TYPE] [varchar](1) NULL,
	[CON_OTB_REQ] [varchar](1) NULL,
	[CON_PREBOOK_LEV] [varchar](1) NULL,
	[CON_DISTR_LEV] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_EKPO]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_EKPO](
	[MANDT] [varchar](3) NULL,
	[EBELN] [varchar](10) NOT NULL,
	[EBELP] [decimal](5, 0) NOT NULL,
	[LOEKZ] [varchar](1) NULL,
	[STATU] [varchar](1) NULL,
	[AEDAT] [date] NULL,
	[TXZ01] [varchar](40) NULL,
	[MATNR] [varchar](18) NULL,
	[EMATN] [varchar](18) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[LGORT] [varchar](4) NULL,
	[BEDNR] [varchar](10) NULL,
	[MATKL] [varchar](9) NULL,
	[INFNR] [varchar](10) NULL,
	[IDNLF] [varchar](35) NULL,
	[KTMNG] [decimal](13, 3) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[MEINS] [varchar](3) NULL,
	[BPRME] [varchar](3) NULL,
	[BPUMZ] [decimal](5, 0) NULL,
	[BPUMN] [decimal](5, 0) NULL,
	[UMREZ] [decimal](5, 0) NULL,
	[UMREN] [decimal](5, 0) NULL,
	[NETPR] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[NETWR] [decimal](13, 2) NULL,
	[BRTWR] [decimal](13, 2) NULL,
	[AGDAT] [date] NULL,
	[WEBAZ] [decimal](3, 0) NULL,
	[MWSKZ] [varchar](2) NULL,
	[BONUS] [varchar](2) NULL,
	[INSMK] [varchar](1) NULL,
	[SPINF] [varchar](1) NULL,
	[PRSDR] [varchar](1) NULL,
	[SCHPR] [varchar](1) NULL,
	[MAHNZ] [decimal](3, 0) NULL,
	[MAHN1] [decimal](3, 0) NULL,
	[MAHN2] [decimal](3, 0) NULL,
	[MAHN3] [decimal](3, 0) NULL,
	[UEBTO] [decimal](3, 1) NULL,
	[UEBTK] [varchar](1) NULL,
	[UNTTO] [decimal](3, 1) NULL,
	[BWTAR] [varchar](10) NULL,
	[BWTTY] [varchar](1) NULL,
	[ABSKZ] [varchar](1) NULL,
	[AGMEM] [varchar](3) NULL,
	[ELIKZ] [varchar](1) NULL,
	[EREKZ] [varchar](1) NULL,
	[PSTYP] [varchar](1) NULL,
	[KNTTP] [varchar](1) NULL,
	[KZVBR] [varchar](1) NULL,
	[VRTKZ] [varchar](1) NULL,
	[TWRKZ] [varchar](1) NULL,
	[WEPOS] [varchar](1) NULL,
	[WEUNB] [varchar](1) NULL,
	[REPOS] [varchar](1) NULL,
	[WEBRE] [varchar](1) NULL,
	[KZABS] [varchar](1) NULL,
	[LABNR] [varchar](20) NULL,
	[KONNR] [varchar](10) NULL,
	[KTPNR] [decimal](5, 0) NULL,
	[ABDAT] [date] NULL,
	[ABFTZ] [decimal](13, 3) NULL,
	[ETFZ1] [decimal](3, 0) NULL,
	[ETFZ2] [decimal](3, 0) NULL,
	[KZSTU] [varchar](1) NULL,
	[NOTKZ] [varchar](1) NULL,
	[LMEIN] [varchar](3) NULL,
	[EVERS] [varchar](2) NULL,
	[ZWERT] [decimal](13, 2) NULL,
	[NAVNW] [decimal](13, 2) NULL,
	[ABMNG] [decimal](13, 3) NULL,
	[PRDAT] [date] NULL,
	[BSTYP] [varchar](1) NULL,
	[EFFWR] [decimal](13, 2) NULL,
	[XOBLR] [varchar](1) NULL,
	[KUNNR] [varchar](10) NULL,
	[ADRNR] [varchar](10) NULL,
	[EKKOL] [varchar](4) NULL,
	[SKTOF] [varchar](1) NULL,
	[STAFO] [varchar](6) NULL,
	[PLIFZ] [decimal](3, 0) NULL,
	[NTGEW] [decimal](13, 3) NULL,
	[GEWEI] [varchar](3) NULL,
	[TXJCD] [varchar](15) NULL,
	[ETDRK] [varchar](1) NULL,
	[SOBKZ] [varchar](1) NULL,
	[ARSNR] [decimal](10, 0) NULL,
	[ARSPS] [decimal](4, 0) NULL,
	[INSNC] [varchar](1) NULL,
	[SSQSS] [varchar](8) NULL,
	[ZGTYP] [varchar](4) NULL,
	[EAN11] [varchar](18) NULL,
	[BSTAE] [varchar](4) NULL,
	[REVLV] [varchar](2) NULL,
	[GEBER] [varchar](10) NULL,
	[FISTL] [varchar](16) NULL,
	[FIPOS] [varchar](14) NULL,
	[KO_GSBER] [varchar](4) NULL,
	[KO_PARGB] [varchar](4) NULL,
	[KO_PRCTR] [varchar](10) NULL,
	[KO_PPRCTR] [varchar](10) NULL,
	[MEPRF] [varchar](1) NULL,
	[BRGEW] [decimal](13, 3) NULL,
	[VOLUM] [decimal](13, 3) NULL,
	[VOLEH] [varchar](3) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[VORAB] [varchar](1) NULL,
	[KOLIF] [varchar](10) NULL,
	[LTSNR] [varchar](6) NULL,
	[PACKNO] [decimal](10, 0) NULL,
	[FPLNR] [varchar](10) NULL,
	[GNETWR] [decimal](13, 2) NULL,
	[STAPO] [varchar](1) NULL,
	[UEBPO] [decimal](5, 0) NULL,
	[LEWED] [date] NULL,
	[EMLIF] [varchar](10) NULL,
	[LBLKZ] [varchar](1) NULL,
	[SATNR] [varchar](18) NULL,
	[ATTYP] [varchar](2) NULL,
	[KANBA] [varchar](1) NULL,
	[ADRN2] [varchar](10) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[XERSY] [varchar](1) NULL,
	[EILDT] [date] NULL,
	[DRDAT] [date] NULL,
	[DRUHR] [time](7) NULL,
	[DRUNR] [decimal](4, 0) NULL,
	[AKTNR] [varchar](10) NULL,
	[ABELN] [varchar](10) NULL,
	[ABELP] [decimal](5, 0) NULL,
	[ANZPU] [decimal](13, 3) NULL,
	[PUNEI] [varchar](3) NULL,
	[SAISO] [varchar](4) NULL,
	[SAISJ] [varchar](4) NULL,
	[EBON2] [varchar](2) NULL,
	[EBON3] [varchar](2) NULL,
	[EBONF] [varchar](1) NULL,
	[MLMAA] [varchar](1) NULL,
	[MHDRZ] [decimal](4, 0) NULL,
	[ANFNR] [varchar](10) NULL,
	[ANFPS] [decimal](5, 0) NULL,
	[KZKFG] [varchar](1) NULL,
	[USEQU] [varchar](1) NULL,
	[UMSOK] [varchar](1) NULL,
	[BANFN] [varchar](10) NULL,
	[BNFPO] [decimal](5, 0) NULL,
	[MTART] [varchar](4) NULL,
	[UPTYP] [varchar](1) NULL,
	[UPVOR] [varchar](1) NULL,
	[KZWI1] [decimal](13, 2) NULL,
	[KZWI2] [decimal](13, 2) NULL,
	[KZWI3] [decimal](13, 2) NULL,
	[KZWI4] [decimal](13, 2) NULL,
	[KZWI5] [decimal](13, 2) NULL,
	[KZWI6] [decimal](13, 2) NULL,
	[SIKGR] [varchar](3) NULL,
	[MFZHI] [decimal](15, 3) NULL,
	[FFZHI] [decimal](15, 3) NULL,
	[RETPO] [varchar](1) NULL,
	[AUREL] [varchar](1) NULL,
	[BSGRU] [varchar](3) NULL,
	[LFRET] [varchar](4) NULL,
	[MFRGR] [varchar](8) NULL,
	[NRFHG] [varchar](1) NULL,
	[J_1BNBM] [varchar](16) NULL,
	[J_1BMATUSE] [varchar](1) NULL,
	[J_1BMATORG] [varchar](1) NULL,
	[J_1BOWNPRO] [varchar](1) NULL,
	[J_1BINDUST] [varchar](2) NULL,
	[ABUEB] [varchar](4) NULL,
	[NLABD] [date] NULL,
	[NFABD] [date] NULL,
	[KZBWS] [varchar](1) NULL,
	[BONBA] [decimal](13, 2) NULL,
	[FABKZ] [varchar](1) NULL,
	[J_1AINDXP] [varchar](5) NULL,
	[J_1AIDATEP] [date] NULL,
	[MPROF] [varchar](4) NULL,
	[EGLKZ] [varchar](1) NULL,
	[KZTLF] [varchar](1) NULL,
	[KZFME] [varchar](1) NULL,
	[RDPRF] [varchar](4) NULL,
	[TECHS] [varchar](12) NULL,
	[CHG_SRV] [varchar](1) NULL,
	[CHG_FPLNR] [varchar](1) NULL,
	[MFRPN] [varchar](40) NULL,
	[MFRNR] [varchar](10) NULL,
	[EMNFR] [varchar](10) NULL,
	[NOVET] [varchar](1) NULL,
	[AFNAM] [varchar](12) NULL,
	[TZONRC] [varchar](6) NULL,
	[IPRKZ] [varchar](1) NULL,
	[LEBRE] [varchar](1) NULL,
	[BERID] [varchar](10) NULL,
	[XCONDITIONS] [varchar](1) NULL,
	[APOMS] [varchar](1) NULL,
	[CCOMP] [varchar](1) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[FKBER] [varchar](16) NULL,
	[STATUS] [varchar](1) NULL,
	[RESLO] [varchar](4) NULL,
	[KBLNR] [varchar](10) NULL,
	[KBLPOS] [decimal](3, 0) NULL,
	[WEORA] [varchar](1) NULL,
	[SRV_BAS_COM] [varchar](1) NULL,
	[PRIO_URG] [decimal](2, 0) NULL,
	[PRIO_REQ] [decimal](3, 0) NULL,
	[EMPST] [varchar](25) NULL,
	[SPE_ABGRU] [varchar](2) NULL,
	[SPE_CRM_SO] [varchar](10) NULL,
	[SPE_CRM_SO_ITEM] [decimal](6, 0) NULL,
	[SPE_CRM_REF_SO] [varchar](35) NULL,
	[SPE_CRM_REF_ITEM] [varchar](6) NULL,
	[SPE_CHNG_SYS] [varchar](1) NULL,
	[SPE_INSMK_SRC] [varchar](1) NULL,
	[SPE_CQ_CTRLTYPE] [varchar](1) NULL,
	[SPE_CQ_NOCQ] [varchar](1) NULL,
	[REASON_CODE] [varchar](4) NULL,
	[CQU_SAR] [decimal](15, 3) NULL,
	[ANZSN] [int] NULL,
	[SPE_EWM_DTC] [varchar](1) NULL,
	[EXLIN] [varchar](40) NULL,
	[EXSNR] [decimal](5, 0) NULL,
	[EHTYP] [varchar](4) NULL,
	[RETPC] [decimal](5, 2) NULL,
	[DPTYP] [varchar](4) NULL,
	[DPPCT] [decimal](5, 2) NULL,
	[DPAMT] [decimal](11, 2) NULL,
	[DPDAT] [date] NULL,
	[FLS_RSTO] [varchar](1) NULL,
	[EXT_RFX_NUMBER] [varchar](35) NULL,
	[EXT_RFX_ITEM] [varchar](10) NULL,
	[EXT_RFX_SYSTEM] [varchar](10) NULL,
	[SRM_CONTRACT_ID] [varchar](10) NULL,
	[SRM_CONTRACT_ITM] [decimal](10, 0) NULL,
	[ITCONS] [varchar](1) NULL,
	[/BEV1/NEGEN_ITEM] [varchar](1) NULL,
	[/BEV1/NEDEPFREE] [varchar](1) NULL,
	[/BEV1/NESTRUCCAT] [varchar](1) NULL,
	[ADVCODE] [varchar](2) NULL,
	[BUDGET_PD] [varchar](10) NULL,
	[EXCPE] [decimal](2, 0) NULL,
	[IUID_RELEVANT] [varchar](1) NULL,
	[REFSITE] [varchar](4) NULL,
	[SERRU] [varchar](1) NULL,
	[SERNP] [varchar](4) NULL,
	[DISUB_SOBKZ] [varchar](1) NULL,
	[DISUB_PSPNR] [decimal](8, 0) NULL,
	[DISUB_KUNNR] [varchar](10) NULL,
	[DISUB_VBELN] [varchar](10) NULL,
	[DISUB_POSNR] [decimal](6, 0) NULL,
	[DISUB_OWNER] [varchar](10) NULL,
	[REF_ITEM] [decimal](5, 0) NULL,
	[SOURCE_ID] [varchar](3) NULL,
	[SOURCE_KEY] [varchar](32) NULL,
	[PUT_BACK] [varchar](1) NULL,
	[POL_ID] [varchar](10) NULL,
	[CONS_ORDER] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC,
	[EBELP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubCat_Hierarchy]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubCat_Hierarchy](
	[Account #] [varchar](50) NULL,
	[Acct Desc] [varchar](50) NULL,
	[Scope] [varchar](50) NULL,
	[Package] [varchar](50) NULL,
	[Sub-Package] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T513S]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T513S](
	[MANDT] [varchar](3) NULL,
	[SPRSL] [varchar](1) NULL,
	[STELL] [decimal](8, 0) NULL,
	[ENDDA] [varchar](24) NULL,
	[BEGDA] [varchar](24) NULL,
	[STLTX] [varchar](25) NULL,
	[MAINT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T528T]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T528T](
	[MANDT] [varchar](3) NULL,
	[SPRSL] [varchar](1) NULL,
	[OTYPE] [varchar](2) NULL,
	[PLANS] [decimal](8, 0) NULL,
	[ENDDA] [varchar](24) NULL,
	[BEGDA] [varchar](24) NULL,
	[PLSTX] [varchar](25) NULL,
	[MAINT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_COBK]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_COBK](
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[VERSN] [varchar](3) NULL,
	[VRGNG] [varchar](4) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[PERAB] [decimal](3, 0) NULL,
	[PERBI] [decimal](3, 0) NULL,
	[BLDAT] [date] NULL,
	[BUDAT] [date] NULL,
	[CPUDT] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[BLTXT] [varchar](50) NULL,
	[STFLG] [varchar](1) NULL,
	[STOKZ] [varchar](1) NULL,
	[REFBT] [varchar](1) NULL,
	[REFBN] [varchar](10) NULL,
	[REFBK] [varchar](4) NULL,
	[REFGJ] [decimal](4, 0) NULL,
	[BLART] [varchar](2) NULL,
	[ORGVG] [varchar](4) NULL,
	[SUMBZ] [decimal](3, 0) NULL,
	[DELBZ] [decimal](3, 0) NULL,
	[WSDAT] [date] NULL,
	[KURST] [varchar](4) NULL,
	[VARNR] [varchar](5) NULL,
	[KWAER] [varchar](5) NULL,
	[CTYP1] [varchar](2) NULL,
	[CTYP2] [varchar](2) NULL,
	[CTYP3] [varchar](2) NULL,
	[CTYP4] [varchar](2) NULL,
	[AWTYP] [varchar](5) NULL,
	[AWORG] [varchar](10) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[CPUTM] [time](7) NULL,
	[ALEBZ] [decimal](3, 0) NULL,
	[ALEBN] [varchar](10) NULL,
	[AWSYS] [varchar](10) NULL,
	[AWREF_REV] [varchar](10) NULL,
	[AWORG_REV] [varchar](10) NULL,
	[VALDT] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[KOKRS] ASC,
	[BELNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_COBK_1]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_COBK_1](
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[VERSN] [varchar](3) NULL,
	[VRGNG] [varchar](4) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[PERAB] [decimal](3, 0) NULL,
	[PERBI] [decimal](3, 0) NULL,
	[BLDAT] [date] NULL,
	[BUDAT] [date] NULL,
	[CPUDT] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[BLTXT] [varchar](50) NULL,
	[STFLG] [varchar](1) NULL,
	[STOKZ] [varchar](1) NULL,
	[REFBT] [varchar](1) NULL,
	[REFBN] [varchar](10) NULL,
	[REFBK] [varchar](4) NULL,
	[REFGJ] [decimal](4, 0) NULL,
	[BLART] [varchar](2) NULL,
	[ORGVG] [varchar](4) NULL,
	[SUMBZ] [decimal](3, 0) NULL,
	[DELBZ] [decimal](3, 0) NULL,
	[WSDAT] [date] NULL,
	[KURST] [varchar](4) NULL,
	[VARNR] [varchar](5) NULL,
	[KWAER] [varchar](5) NULL,
	[CTYP1] [varchar](2) NULL,
	[CTYP2] [varchar](2) NULL,
	[CTYP3] [varchar](2) NULL,
	[CTYP4] [varchar](2) NULL,
	[AWTYP] [varchar](5) NULL,
	[AWORG] [varchar](10) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[CPUTM] [time](7) NULL,
	[ALEBZ] [decimal](3, 0) NULL,
	[ALEBN] [varchar](10) NULL,
	[AWSYS] [varchar](10) NULL,
	[AWREF_REV] [varchar](10) NULL,
	[AWORG_REV] [varchar](10) NULL,
	[VALDT] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[KOKRS] ASC,
	[BELNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_ORA]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_ORA](
	[MANDT] [varchar](3) NULL,
	[KTOPL] [varchar](4) NULL,
	[KSTAR] [varchar](10) NULL,
	[ERSDA] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[STEKZ] [varchar](1) NULL,
	[ZAHKZ] [varchar](1) NULL,
	[KSTSN] [varchar](10) NULL,
	[FUNC_AREA] [varchar](16) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST1]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST1](
	[MOD Material] [varchar](18) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Sum Component COP$] [decimal](16, 3) NULL,
	[Component COP Currency] [varchar](5) NULL,
	[MOD Std Price Adjustment] [decimal](16, 3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Mod Changed Flag] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST2]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST2](
	[MOD Material] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Year] [varchar](4) NULL,
	[Standard Price] [decimal](17, 2) NULL,
	[Component Quantity] [decimal](16, 3) NULL,
	[Component COP$] [decimal](16, 3) NULL,
	[Distributed COP$] [decimal](16, 4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[PERCENT] [decimal](10, 3) NULL,
	[Mod Changed Flag] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST3]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST3](
	[MOD Material] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Year] [varchar](4) NULL,
	[Standard Price] [decimal](17, 2) NULL,
	[Component Quantity] [decimal](16, 3) NULL,
	[Component COP$] [decimal](16, 3) NULL,
	[Distributed COP$] [decimal](16, 3) NULL,
	[Sum of Component and Distributed COP$] [decimal](16, 3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Mod Changed Flag] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TIMESTAMP_TEST]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TIMESTAMP_TEST](
	[KOKRS] [varchar](4) NULL,
	[PERIO] [int] NULL,
	[WTGBTR] [decimal](15, 2) NULL,
	[WOGBTR] [decimal](15, 2) NULL,
	[WKGBTR] [decimal](15, 2) NULL,
	[MBGBTR] [decimal](15, 3) NULL,
	[LEDNR] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[GJAHR] [int] NULL,
	[WRTTP] [varchar](2) NULL,
	[KSTAR] [varchar](10) NULL,
	[VRGNG] [varchar](4) NULL,
	[BEKNZ] [varchar](1) NULL,
	[TWAER] [varchar](5) NULL,
	[OWAER] [varchar](5) NULL,
	[ZLENR] [int] NULL,
	[GKONT] [varchar](10) NULL,
	[GKOAR] [varchar](1) NULL,
	[WERKS] [varchar](4) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [int] NULL,
	[LIFNR] [varchar](10) NULL,
	[LIFRE] [varchar](10) NULL,
	[VENDOR NAME] [varchar](35) NULL,
	[BUKRS] [varchar](4) NULL,
	[INVOICE PARTY NAME] [varchar](35) NULL,
	[BELNR] [varchar](10) NULL,
	[BUZEI] [decimal](3, 0) NULL,
	[TIMESTMP] [varchar](48) NULL,
	[SYSTEM_USERNAME] [varchar](50) NULL,
	[E_DATE] [date] NULL,
	[E_TIME] [time](7) NULL,
	[AL_RFC_RETCODE] [varchar](256) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TNE_DETAIL]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TNE_DETAIL](
	[PERSONNEL_NO] [decimal](8, 0) NULL,
	[FIRST_NAME] [varchar](4) NULL,
	[LAST_NAME] [varchar](4) NULL,
	[JOB_TITLE] [varchar](4) NULL,
	[POSITION_TITLE] [varchar](4) NULL,
	[TRIP_NO] [decimal](10, 0) NULL,
	[SEQ_NO_FOR_TRIP_TOTALS] [decimal](2, 0) NULL,
	[TRIP_TYPE] [varchar](1) NULL,
	[TRIP_ACTIVITY_TYPE] [varchar](1) NULL,
	[REASON_FOR_TRIP] [varchar](59) NULL,
	[PAYROLL_YEAR] [decimal](4, 0) NULL,
	[PAYROLL_PERIOD] [decimal](2, 0) NULL,
	[ADDTL_AMT_OF_TRIP] [decimal](13, 2) NULL,
	[PAYMENT_AMOUNT] [decimal](13, 2) NULL,
	[TRAVEL_EXP_PAID_BY_COMPANY] [decimal](13, 2) NULL,
	[TOTAL_COST_OF_TRIP] [decimal](13, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[COMPANY_CODE] [varchar](4) NULL,
	[COSTCENTER] [varchar](10) NULL,
	[ORDER_NUMBER] [varchar](12) NULL,
	[FUNCTIONAL_AREA] [varchar](16) NULL,
	[EXPENSE_TYPE] [varchar](4) NULL,
	[RECEIPT_NO] [varchar](3) NULL,
	[INDIVIDUAL_RECEPIT_AMT] [decimal](13, 2) NULL,
	[RECEIPT_CURRENCY] [varchar](5) NULL,
	[DESCRIPTION] [varchar](50) NULL,
	[BUSINESS_PURPOSE] [varchar](50) NULL,
	[CREDIT_CARD_DOC_NO] [varchar](20) NULL,
	[CREDIT_CARD_DESCRIPTION] [varchar](50) NULL,
	[REC_DATE] [date] NULL,
	[FROM_DATE] [date] NULL,
	[TO_DATE] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TNE_DETAIL_FINAL]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TNE_DETAIL_FINAL](
	[CO_AREA] [varchar](4) NOT NULL,
	[DOC_NBR] [varchar](10) NOT NULL,
	[POST_ROW] [decimal](3, 0) NOT NULL,
	[PD] [decimal](3, 0) NULL,
	[TOTAL_VAL_TRANS] [decimal](15, 2) NULL,
	[TOT_VAL_OBJ] [decimal](15, 2) NULL,
	[TOT_VAL_CO_AREA] [decimal](15, 2) NULL,
	[TOT_QTY_ENTR] [decimal](15, 3) NULL,
	[CO_LED] [varchar](2) NULL,
	[OBJ_NBR] [varchar](22) NULL,
	[FISC_YR] [decimal](4, 0) NULL,
	[VAL_TYP] [varchar](2) NULL,
	[VERSION] [varchar](3) NULL,
	[COST_ELE] [varchar](10) NULL,
	[COST_ELE_NM] [varchar](20) NULL,
	[CO_BUS_TRANS] [varchar](4) NULL,
	[DB_CR_IND] [varchar](1) NULL,
	[TXN_CURR] [varchar](5) NULL,
	[CURR_KEY] [varchar](5) NULL,
	[SEG_TXT] [varchar](50) NULL,
	[TRIP_NO] [decimal](10, 0) NULL,
	[REF_POST_ROW] [decimal](3, 0) NULL,
	[DOC_ITM_NBR] [decimal](3, 0) NULL,
	[OFFSET_ACCT_NBR] [varchar](10) NULL,
	[OFFSET_ACCT_TYP] [varchar](1) NULL,
	[PLANT] [varchar](4) NULL,
	[PUR_DOC_NBR] [varchar](10) NULL,
	[PUR_DOC_ITM] [decimal](5, 0) NULL,
	[PO_ITM_TXT] [varchar](40) NULL,
	[VEND_NBR] [varchar](10) NULL,
	[VEND_NM] [varchar](35) NULL,
	[INVC_PRT_NBR] [varchar](10) NULL,
	[INVC_PRT_NM] [varchar](35) NULL,
	[COST_CTR] [varchar](22) NULL,
	[COST_CTR_NM] [varchar](20) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[PROFIT_CTR_NM] [varchar](20) NULL,
	[CO_CD] [varchar](4) NULL,
	[FCN_AREA] [varchar](16) NULL,
	[OBJ_CLAS] [varchar](2) NULL,
	[DOC_HDR_TXT] [varchar](50) NULL,
	[USR_NM] [varchar](12) NULL,
	[ACCT_DESC] [varchar](60) NULL,
	[ACCT_CATEG] [varchar](255) NULL,
	[ACCT_SUB_CATEG] [varchar](255) NULL,
	[CC_DESC] [varchar](50) NULL,
	[LEVEL0_DESC] [varchar](15) NULL,
	[LEVEL1_DESC] [varchar](75) NULL,
	[LEVEL1_CD] [varchar](12) NULL,
	[LEVEL2_DESC] [varchar](75) NULL,
	[LEVEL2_CD] [varchar](12) NULL,
	[LEVEL3_DESC] [varchar](75) NULL,
	[LEVEL3_CD] [varchar](12) NULL,
	[LEVEL4_DESC] [varchar](75) NULL,
	[LEVEL4_CD] [varchar](12) NULL,
	[LEVEL5_DESC] [varchar](75) NULL,
	[LEVEL5_CD] [varchar](12) NULL,
	[LEVEL6_DESC] [varchar](75) NULL,
	[LEVEL6_CD] [varchar](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[CO_AREA] ASC,
	[DOC_NBR] ASC,
	[POST_ROW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TRIP_DETAIL]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TRIP_DETAIL](
	[PERSONNEL_NO] [decimal](8, 0) NULL,
	[FIRST_NAME] [varchar](40) NULL,
	[LAST_NAME] [varchar](40) NULL,
	[JOB_TITLE] [varchar](25) NULL,
	[POSITION_TITLE] [varchar](25) NULL,
	[TRIP_NO] [decimal](10, 0) NULL,
	[SEQ_NO_FOR_TRIP_TOTALS] [decimal](2, 0) NULL,
	[TRIP_TYPE] [varchar](1) NULL,
	[TRIP_ACTIVITY_TYPE] [varchar](1) NULL,
	[REASON_FOR_TRIP] [varchar](59) NULL,
	[PAYROLL_YEAR] [decimal](4, 0) NULL,
	[PAYROLL_PERIOD] [decimal](2, 0) NULL,
	[ADDTL_AMT_OF_TRIP] [decimal](13, 2) NULL,
	[PAYMENT_AMOUNT] [decimal](13, 2) NULL,
	[TRAVEL_EXP_PAID_BY_COMPANY] [decimal](13, 2) NULL,
	[TOTAL_COST_OF_TRIP] [decimal](13, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[COMPANY_CODE] [varchar](4) NULL,
	[COSTCENTER] [varchar](10) NULL,
	[ORDER_NUMBER] [varchar](12) NULL,
	[FUNCTIONAL_AREA] [varchar](16) NULL,
	[EXPENSE_TYPE] [varchar](4) NULL,
	[RECEIPT_NO] [varchar](3) NULL,
	[INDIVIDUAL_RECEPIT_AMT] [decimal](13, 2) NULL,
	[RECEIPT_CURRENCY] [varchar](5) NULL,
	[DESCRIPTION] [varchar](50) NULL,
	[BUSINESS_PURPOSE] [varchar](50) NULL,
	[CREDIT_CARD_DOC_NO] [varchar](20) NULL,
	[CREDIT_CARD_DESCRIPTION] [varchar](50) NULL,
	[REC_DATE] [date] NULL,
	[FROM_DATE] [date] NULL,
	[TO_DATE] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VBAP_SC_KNA]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VBAP_SC_KNA](
	[SOURCE_SYSTEM] [varchar](20) NULL,
	[MANDT] [varchar](3) NULL,
	[VBELN] [varchar](10) NULL,
	[POSNR] [decimal](6, 0) NULL,
	[MATNR] [varchar](18) NULL,
	[MATWA] [varchar](18) NULL,
	[PMATN] [varchar](18) NULL,
	[CHARG] [varchar](10) NULL,
	[MATKL] [varchar](9) NULL,
	[ARKTX] [varchar](40) NULL,
	[PSTYV] [varchar](4) NULL,
	[POSAR] [varchar](1) NULL,
	[LFREL] [varchar](1) NULL,
	[FKREL] [varchar](1) NULL,
	[UEPOS] [decimal](6, 0) NULL,
	[GRPOS] [decimal](6, 0) NULL,
	[ABGRU] [varchar](2) NULL,
	[PRODH] [varchar](18) NULL,
	[ZWERT] [decimal](13, 2) NULL,
	[ZMENG] [decimal](13, 3) NULL,
	[ZIEME] [varchar](3) NULL,
	[UMZIZ] [decimal](5, 0) NULL,
	[UMZIN] [decimal](5, 0) NULL,
	[MEINS] [varchar](3) NULL,
	[SMENG] [decimal](13, 3) NULL,
	[ABLFZ] [decimal](13, 3) NULL,
	[ABDAT] [date] NULL,
	[ABSFZ] [decimal](13, 3) NULL,
	[POSEX] [varchar](6) NULL,
	[KDMAT] [varchar](35) NULL,
	[KBVER] [decimal](3, 0) NULL,
	[KEVER] [decimal](3, 0) NULL,
	[VKGRU] [varchar](3) NULL,
	[VKAUS] [varchar](3) NULL,
	[GRKOR] [decimal](3, 0) NULL,
	[FMENG] [varchar](1) NULL,
	[UEBTK] [varchar](1) NULL,
	[UEBTO] [decimal](3, 1) NULL,
	[UNTTO] [decimal](3, 1) NULL,
	[FAKSP] [varchar](2) NULL,
	[ATPKZ] [varchar](1) NULL,
	[RKFKF] [varchar](1) NULL,
	[SPART] [varchar](2) NULL,
	[GSBER] [varchar](4) NULL,
	[NETWR] [decimal](15, 2) NULL,
	[WAERK] [varchar](5) NULL,
	[ANTLF] [decimal](1, 0) NULL,
	[KZTLF] [varchar](1) NULL,
	[CHSPL] [varchar](1) NULL,
	[KWMENG] [decimal](15, 3) NULL,
	[LSMENG] [decimal](15, 3) NULL,
	[KBMENG] [decimal](15, 3) NULL,
	[KLMENG] [decimal](15, 3) NULL,
	[VRKME] [varchar](3) NULL,
	[UMVKZ] [decimal](5, 0) NULL,
	[UMVKN] [decimal](5, 0) NULL,
	[BRGEW] [decimal](15, 3) NULL,
	[NTGEW] [decimal](15, 3) NULL,
	[GEWEI] [varchar](3) NULL,
	[VOLUM] [decimal](15, 3) NULL,
	[VOLEH] [varchar](3) NULL,
	[VBELV] [varchar](10) NULL,
	[POSNV] [decimal](6, 0) NULL,
	[VGBEL] [varchar](10) NULL,
	[VGPOS] [decimal](6, 0) NULL,
	[VOREF] [varchar](1) NULL,
	[UPFLU] [varchar](1) NULL,
	[ERLRE] [varchar](1) NULL,
	[LPRIO] [decimal](2, 0) NULL,
	[WERKS] [varchar](4) NULL,
	[LGORT] [varchar](4) NULL,
	[VSTEL] [varchar](4) NULL,
	[ROUTE] [varchar](6) NULL,
	[STKEY] [varchar](1) NULL,
	[STDAT] [date] NULL,
	[STLNR] [varchar](8) NULL,
	[STPOS] [decimal](5, 0) NULL,
	[AWAHR] [decimal](3, 0) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[ERZET] [time](7) NULL,
	[TAXM1] [varchar](1) NULL,
	[TAXM2] [varchar](1) NULL,
	[TAXM3] [varchar](1) NULL,
	[TAXM4] [varchar](1) NULL,
	[TAXM5] [varchar](1) NULL,
	[TAXM6] [varchar](1) NULL,
	[TAXM7] [varchar](1) NULL,
	[TAXM8] [varchar](1) NULL,
	[TAXM9] [varchar](1) NULL,
	[VBEAF] [decimal](5, 2) NULL,
	[VBEAV] [decimal](5, 2) NULL,
	[VGREF] [varchar](1) NULL,
	[NETPR] [decimal](11, 2) NULL,
	[KPEIN] [decimal](5, 0) NULL,
	[KMEIN] [varchar](3) NULL,
	[SHKZG] [varchar](1) NULL,
	[SKTOF] [varchar](1) NULL,
	[MTVFP] [varchar](2) NULL,
	[SUMBD] [varchar](1) NULL,
	[KONDM] [varchar](2) NULL,
	[KTGRM] [varchar](2) NULL,
	[BONUS] [varchar](2) NULL,
	[PROVG] [varchar](2) NULL,
	[EANNR] [varchar](13) NULL,
	[PRSOK] [varchar](1) NULL,
	[BWTAR] [varchar](10) NULL,
	[BWTEX] [varchar](1) NULL,
	[XCHPF] [varchar](1) NULL,
	[XCHAR] [varchar](1) NULL,
	[LFMNG] [decimal](13, 3) NULL,
	[STAFO] [varchar](6) NULL,
	[WAVWR] [decimal](13, 2) NULL,
	[KZWI1] [decimal](13, 2) NULL,
	[KZWI2] [decimal](13, 2) NULL,
	[KZWI3] [decimal](13, 2) NULL,
	[KZWI4] [decimal](13, 2) NULL,
	[KZWI5] [decimal](13, 2) NULL,
	[KZWI6] [decimal](13, 2) NULL,
	[STCUR] [decimal](9, 5) NULL,
	[AEDAT] [date] NULL,
	[EAN11] [varchar](18) NULL,
	[FIXMG] [varchar](1) NULL,
	[PRCTR] [varchar](10) NULL,
	[MVGR1] [varchar](3) NULL,
	[MVGR2] [varchar](3) NULL,
	[MVGR3] [varchar](3) NULL,
	[MVGR4] [varchar](3) NULL,
	[MVGR5] [varchar](3) NULL,
	[KMPMG] [decimal](13, 3) NULL,
	[SUGRD] [varchar](4) NULL,
	[SOBKZ] [varchar](1) NULL,
	[VPZUO] [varchar](1) NULL,
	[PAOBJNR] [decimal](10, 0) NULL,
	[PS_PSP_PNR] [decimal](8, 0) NULL,
	[AUFNR] [varchar](12) NULL,
	[VPMAT] [varchar](18) NULL,
	[VPWRK] [varchar](4) NULL,
	[PRBME] [varchar](3) NULL,
	[UMREF] [float] NULL,
	[KNTTP] [varchar](1) NULL,
	[KZVBR] [varchar](1) NULL,
	[SERNR] [varchar](8) NULL,
	[OBJNR] [varchar](22) NULL,
	[ABGRS] [varchar](6) NULL,
	[BEDAE] [varchar](4) NULL,
	[CMPRE] [decimal](11, 2) NULL,
	[CMTFG] [varchar](1) NULL,
	[CMPNT] [varchar](1) NULL,
	[CMKUA] [decimal](9, 5) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[CUOBJ_CH] [decimal](18, 0) NULL,
	[CEPOK] [varchar](1) NULL,
	[KOUPD] [varchar](1) NULL,
	[SERAIL] [varchar](4) NULL,
	[ANZSN] [int] NULL,
	[NACHL] [varchar](1) NULL,
	[MAGRV] [varchar](4) NULL,
	[MPROK] [varchar](1) NULL,
	[VGTYP] [varchar](1) NULL,
	[PROSA] [varchar](1) NULL,
	[UEPVW] [varchar](1) NULL,
	[KALNR] [decimal](12, 0) NULL,
	[KLVAR] [varchar](4) NULL,
	[SPOSN] [varchar](4) NULL,
	[KOWRR] [varchar](1) NULL,
	[STADAT] [date] NULL,
	[EXART] [varchar](2) NULL,
	[PREFE] [varchar](1) NULL,
	[KNUMH] [varchar](10) NULL,
	[CLINT] [decimal](10, 0) NULL,
	[CHMVS] [decimal](3, 0) NULL,
	[STLTY] [varchar](1) NULL,
	[STLKN] [decimal](8, 0) NULL,
	[STPOZ] [decimal](8, 0) NULL,
	[STMAN] [varchar](1) NULL,
	[ZSCHL_K] [varchar](6) NULL,
	[KALSM_K] [varchar](6) NULL,
	[KALVAR] [varchar](4) NULL,
	[KOSCH] [varchar](18) NULL,
	[UPMAT] [varchar](18) NULL,
	[UKONM] [varchar](2) NULL,
	[MFRGR] [varchar](8) NULL,
	[PLAVO] [varchar](4) NULL,
	[KANNR] [varchar](35) NULL,
	[CMPRE_FLT] [float] NULL,
	[ABFOR] [varchar](2) NULL,
	[ABGES] [float] NULL,
	[J_1BCFOP] [varchar](10) NULL,
	[J_1BTAXLW1] [varchar](3) NULL,
	[J_1BTAXLW2] [varchar](3) NULL,
	[J_1BTXSDC] [varchar](2) NULL,
	[WKTNR] [varchar](10) NULL,
	[WKTPS] [decimal](6, 0) NULL,
	[SKOPF] [varchar](18) NULL,
	[KZBWS] [varchar](1) NULL,
	[WGRU1] [varchar](18) NULL,
	[WGRU2] [varchar](18) NULL,
	[KNUMA_PI] [varchar](10) NULL,
	[KNUMA_AG] [varchar](10) NULL,
	[KZFME] [varchar](1) NULL,
	[LSTANR] [varchar](1) NULL,
	[TECHS] [varchar](12) NULL,
	[MWSBP] [decimal](13, 2) NULL,
	[BERID] [varchar](10) NULL,
	[PCTRF] [varchar](10) NULL,
	[LOGSYS_EXT] [varchar](10) NULL,
	[J_1BTAXLW3] [varchar](3) NULL,
	[J_1BTAXLW4] [varchar](3) NULL,
	[J_1BTAXLW5] [varchar](3) NULL,
	[STOCKLOC] [varchar](20) NULL,
	[SLOCTYPE] [varchar](4) NULL,
	[MSR_RET_REASON] [varchar](3) NULL,
	[MSR_REFUND_CODE] [varchar](3) NULL,
	[MSR_APPROV_BLOCK] [varchar](1) NULL,
	[/BEV1/SRFUND] [varchar](2) NULL,
	[AUFPL_OLC] [decimal](10, 0) NULL,
	[APLZL_OLC] [decimal](8, 0) NULL,
	[FERC_IND] [varchar](4) NULL,
	[KOSTL] [varchar](10) NULL,
	[FONDS] [varchar](10) NULL,
	[FISTL] [varchar](16) NULL,
	[FKBER] [varchar](16) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[BUDGET_PD] [varchar](10) NULL,
	[IUID_RELEVANT] [varchar](1) NULL,
	[MILL_SE_GPOSN] [decimal](6, 0) NULL,
	[PRS_OBJNR] [varchar](22) NULL,
	[ARSNUM] [decimal](10, 0) NULL,
	[ARSPOS] [decimal](4, 0) NULL,
	[WTYSC_CLMITEM] [varchar](16) NULL,
	[ZZKWMENG_OR] [decimal](15, 3) NULL,
	[ZZKBMENG_OR] [decimal](15, 3) NULL,
	[ZZKLMENG_OR] [decimal](15, 3) NULL,
	[ZZCAWS_OR] [decimal](15, 3) NULL,
	[ZZCASES_OR] [decimal](15, 3) NULL,
	[ZZPALLETS_OR] [decimal](15, 3) NULL,
	[ZZSUL_OR] [decimal](15, 3) NULL,
	[ZZCAWS] [decimal](15, 3) NULL,
	[ZZCASES] [decimal](15, 3) NULL,
	[ZZPALLETS] [decimal](15, 3) NULL,
	[ZZSUL] [decimal](15, 3) NULL,
	[ZZKELLOGGQTY] [decimal](15, 3) NULL,
	[ZZCUSTOMERQTY] [decimal](15, 3) NULL,
	[ZZATP_CUT] [varchar](25) NULL,
	[ZZALL_CUT] [varchar](25) NULL,
	[ZZDLX_CUT] [varchar](25) NULL,
	[ZZATP_CUT_CM] [varchar](25) NULL,
	[ZZALL_CUT_CM] [varchar](25) NULL,
	[ZZDLX_CUT_CM] [varchar](25) NULL,
	[ZMATNR] [varchar](35) NULL,
	[ZMEINS] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZBB_ACCT_HIERARCHY_LOAD]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZBB_ACCT_HIERARCHY_LOAD](
	[Account No] [decimal](10, 0) NULL,
	[Acct Desc] [varchar](60) NULL,
	[SCOPE] [varchar](10) NULL,
	[PACKAGE] [varchar](255) NULL,
	[Sub-Package] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZBB_BB_COEP]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZBB_BB_COEP](
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NULL,
	[BELNR] [varchar](10) NULL,
	[BUZEI] [decimal](3, 0) NULL,
	[PERIO] [decimal](3, 0) NULL,
	[WTGBTR] [decimal](15, 2) NULL,
	[WOGBTR] [decimal](15, 2) NULL,
	[WKGBTR] [decimal](15, 2) NULL,
	[WKFBTR] [decimal](15, 2) NULL,
	[PAGBTR] [decimal](15, 2) NULL,
	[PAFBTR] [decimal](15, 2) NULL,
	[MEGBTR] [decimal](15, 3) NULL,
	[MEFBTR] [decimal](15, 3) NULL,
	[MBGBTR] [decimal](15, 3) NULL,
	[MBFBTR] [decimal](15, 3) NULL,
	[LEDNR] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[WRTTP] [varchar](2) NULL,
	[VERSN] [varchar](3) NULL,
	[KSTAR] [varchar](10) NULL,
	[HRKFT] [varchar](14) NULL,
	[VRGNG] [varchar](4) NULL,
	[PAROB] [varchar](22) NULL,
	[PAROB1] [varchar](22) NULL,
	[USPOB] [varchar](22) NULL,
	[VBUND] [varchar](6) NULL,
	[PARGB] [varchar](4) NULL,
	[BEKNZ] [varchar](1) NULL,
	[TWAER] [varchar](5) NULL,
	[OWAER] [varchar](5) NULL,
	[MEINH] [varchar](3) NULL,
	[MEINB] [varchar](3) NULL,
	[MVFLG] [varchar](1) NULL,
	[SGTXT] [varchar](50) NULL,
	[REFBZ] [decimal](3, 0) NULL,
	[ZLENR] [decimal](3, 0) NULL,
	[BW_REFBZ] [decimal](3, 0) NULL,
	[GKONT] [varchar](10) NULL,
	[GKOAR] [varchar](1) NULL,
	[WERKS] [varchar](4) NULL,
	[MATNR] [varchar](18) NULL,
	[RBEST] [decimal](3, 0) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[ZEKKN] [decimal](2, 0) NULL,
	[ERLKZ] [varchar](1) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[BTRKL] [decimal](2, 0) NULL,
	[OBJNR_N1] [varchar](22) NULL,
	[OBJNR_N2] [varchar](22) NULL,
	[OBJNR_N3] [varchar](22) NULL,
	[PAOBJNR] [decimal](10, 0) NULL,
	[BELTP] [decimal](1, 0) NULL,
	[BUKRS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[FKBER] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[LOGSYSO] [varchar](10) NULL,
	[PKSTAR] [varchar](10) NULL,
	[PBUKRS] [varchar](4) NULL,
	[PFKBER] [varchar](16) NULL,
	[PSCOPE] [varchar](2) NULL,
	[LOGSYSP] [varchar](10) NULL,
	[DABRZ] [date] NULL,
	[BWSTRAT] [varchar](1) NULL,
	[OBJNR_HK] [varchar](22) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[QMNUM] [varchar](12) NULL,
	[GEBER] [varchar](10) NULL,
	[PGEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[PGRANT_NBR] [varchar](20) NULL,
	[REFBZ_FI] [decimal](3, 0) NULL,
	[SEGMENT] [varchar](10) NULL,
	[PSEGMENT] [varchar](10) NULL,
	[BUDGET_PD] [varchar](10) NULL,
	[PBUDGET_PD] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZBB_BB_LOAD]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZBB_BB_LOAD](
	[CO Area] [varchar](4) NULL,
	[PERIOD] [int] NULL,
	[Total Value in Transaction] [decimal](15, 2) NULL,
	[Total Value in Object] [decimal](15, 2) NULL,
	[Total Value in CO Area] [decimal](15, 2) NULL,
	[Total quantity entered] [decimal](15, 3) NULL,
	[Ledger for Controlling Objects] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[Fiscal Year] [int] NULL,
	[VALUETYPE] [varchar](2) NULL,
	[Cost Element] [varchar](10) NULL,
	[VRGNG] [varchar](4) NULL,
	[Debit/credit indicator] [varchar](1) NULL,
	[Transaction Currency] [varchar](5) NULL,
	[Currency Key] [varchar](5) NULL,
	[Doc Item No] [int] NULL,
	[Offsetting Account Number] [varchar](10) NULL,
	[Offsetting Account Type] [varchar](1) NULL,
	[PLANT] [varchar](4) NULL,
	[Purchasing DocNo] [varchar](10) NULL,
	[ITEM] [int] NULL,
	[Vendor No] [varchar](10) NULL,
	[Vendor Name] [varchar](35) NULL,
	[Invoice Pary No] [varchar](10) NULL,
	[Invoice Paty Name] [varchar](35) NULL,
	[Order Number] [varchar](12) NULL,
	[Order Type] [varchar](4) NULL,
	[Order category] [decimal](2, 0) NULL,
	[ORDERNAME] [varchar](40) NULL,
	[Responsible costcenter] [varchar](10) NULL,
	[Settlement Cost Element] [varchar](10) NULL,
	[Settlement Cost center] [varchar](10) NULL,
	[G/L account settlement] [varchar](10) NULL,
	[Person responsible] [varchar](20) NULL,
	[PRCTR] [varchar](10) NULL,
	[Company COde] [varchar](4) NULL,
	[Profit Center Name] [varchar](20) NULL,
	[BELNR] [varchar](10) NOT NULL,
	[BUZEI] [decimal](3, 0) NOT NULL,
	[Doc_Hdr_Txt] [varchar](50) NULL,
	[COBK_User_Name] [varchar](12) NULL,
	[Posting_Dt] [date] NULL,
	[Acct_category] [char](40) NULL,
	[Acct_sub_Category] [char](40) NULL,
	[Level1_desc] [char](75) NULL,
	[Level1_cd] [char](12) NULL,
	[Level2_desc] [char](75) NULL,
	[Level2_cd] [char](12) NULL,
	[Level3_desc] [char](75) NULL,
	[Level3_cd] [char](12) NULL,
	[Level4_desc] [char](75) NULL,
	[Level4_cd] [char](12) NULL,
	[Level5_desc] [char](75) NULL,
	[Level5_cd] [char](12) NULL,
	[Level6_desc] [char](75) NULL,
	[Level6_cd] [char](12) NULL,
 CONSTRAINT [PK_ZBB_BB_LOAD] PRIMARY KEY CLUSTERED 
(
	[BELNR] ASC,
	[BUZEI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZBB_BB_LOAD_1]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZBB_BB_LOAD_1](
	[CO Area] [varchar](4) NULL,
	[PERIOD] [int] NULL,
	[Total Value in Transaction] [decimal](15, 2) NULL,
	[Total Value in Object] [decimal](15, 2) NULL,
	[Total Value in CO Area] [decimal](15, 2) NULL,
	[Total quantity entered] [decimal](15, 3) NULL,
	[Ledger for Controlling Objects] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[Fiscal Year] [int] NULL,
	[ValueType] [varchar](2) NULL,
	[Cost Element] [varchar](10) NULL,
	[VRGNG] [varchar](4) NULL,
	[Debit/credit indicator] [varchar](1) NULL,
	[Transaction Currency] [varchar](5) NULL,
	[Currency Key] [varchar](5) NULL,
	[Doc Item No] [int] NULL,
	[Offsetting Account Number] [varchar](10) NULL,
	[Offsetting Account Type] [varchar](1) NULL,
	[Plant] [varchar](4) NULL,
	[Purchasing DocNo] [varchar](10) NULL,
	[Item] [int] NULL,
	[Vendor No] [varchar](10) NULL,
	[Vendor Name] [varchar](35) NULL,
	[Invoice Party No] [varchar](10) NULL,
	[Invoice Party Name] [varchar](35) NULL,
	[Order Number] [varchar](12) NULL,
	[Order Type] [varchar](4) NULL,
	[Order category] [decimal](2, 0) NULL,
	[OrderName] [varchar](40) NULL,
	[Responsible costcenter] [varchar](10) NULL,
	[Settlement Cost Element] [varchar](10) NULL,
	[Settlement Cost center] [varchar](10) NULL,
	[G/L account settlement] [varchar](10) NULL,
	[Person responsible] [varchar](20) NULL,
	[PRCTR] [varchar](10) NULL,
	[Profit Center Name] [varchar](20) NULL,
	[Company Code] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZBB_BB_LOAD1]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZBB_BB_LOAD1](
	[CO Area] [varchar](4) NULL,
	[PERIOD] [int] NULL,
	[Total Value in Transaction] [decimal](15, 2) NULL,
	[Total Value in Object] [decimal](15, 2) NULL,
	[Total Value in CO Area] [decimal](15, 2) NULL,
	[Total quantity entered] [decimal](15, 3) NULL,
	[Ledger for Controlling Objects] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[Fiscal Year] [int] NULL,
	[VALUETYPE] [varchar](2) NULL,
	[Cost Element] [varchar](10) NULL,
	[VRGNG] [varchar](4) NULL,
	[Debit/credit indicator] [varchar](1) NULL,
	[Transaction Currency] [varchar](5) NULL,
	[Currency Key] [varchar](5) NULL,
	[Doc Item No] [int] NULL,
	[Offsetting Account Number] [varchar](10) NULL,
	[Offsetting Account Type] [varchar](1) NULL,
	[PLANT] [varchar](4) NULL,
	[Purchasing DocNo] [varchar](10) NULL,
	[ITEM] [int] NULL,
	[Vendor No] [varchar](10) NULL,
	[Vendor Name] [varchar](35) NULL,
	[Invoice Pary No] [varchar](10) NULL,
	[Invoice Paty Name] [varchar](35) NULL,
	[Order Number] [varchar](12) NULL,
	[Order Type] [varchar](4) NULL,
	[Order category] [decimal](2, 0) NULL,
	[ORDERNAME] [varchar](40) NULL,
	[Responsible costcenter] [varchar](10) NULL,
	[Settlement Cost Element] [varchar](10) NULL,
	[Settlement Cost center] [varchar](10) NULL,
	[G/L account settlement] [varchar](10) NULL,
	[Person responsible] [varchar](20) NULL,
	[PRCTR] [varchar](10) NULL,
	[Company COde] [varchar](4) NULL,
	[Profit Center Name] [varchar](20) NULL,
	[BELNR] [varchar](10) NULL,
	[BUZEI] [decimal](3, 0) NULL,
	[CostCenter Id] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZBB_BB_LOAD2]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZBB_BB_LOAD2](
	[CO Area] [varchar](4) NULL,
	[PERIOD] [int] NULL,
	[Total Value in Transaction] [decimal](15, 2) NULL,
	[Total Value in Object] [decimal](15, 2) NULL,
	[Total Value in CO Area] [decimal](15, 2) NULL,
	[Total quantity entered] [decimal](15, 3) NULL,
	[Ledger for Controlling Objects] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[Fiscal Year] [int] NULL,
	[VALUETYPE] [varchar](2) NULL,
	[Cost Element] [varchar](10) NULL,
	[VRGNG] [varchar](4) NULL,
	[Debit/credit indicator] [varchar](1) NULL,
	[Transaction Currency] [varchar](5) NULL,
	[Currency Key] [varchar](5) NULL,
	[Doc Item No] [int] NULL,
	[Offsetting Account Number] [varchar](10) NULL,
	[Offsetting Account Type] [varchar](1) NULL,
	[PLANT] [varchar](4) NULL,
	[Purchasing DocNo] [varchar](10) NULL,
	[ITEM] [int] NULL,
	[Vendor No] [varchar](10) NULL,
	[Vendor Name] [varchar](35) NULL,
	[Invoice Pary No] [varchar](10) NULL,
	[Invoice Paty Name] [varchar](35) NULL,
	[Order Number] [varchar](12) NULL,
	[Order Type] [varchar](4) NULL,
	[Order category] [decimal](2, 0) NULL,
	[ORDERNAME] [varchar](40) NULL,
	[Responsible costcenter] [varchar](10) NULL,
	[Settlement Cost Element] [varchar](10) NULL,
	[Settlement Cost center] [varchar](10) NULL,
	[G/L account settlement] [varchar](10) NULL,
	[Person responsible] [varchar](20) NULL,
	[PRCTR] [varchar](10) NULL,
	[Company COde] [varchar](4) NULL,
	[Profit Center Name] [varchar](20) NULL,
	[BELNR] [varchar](10) NULL,
	[BUZEI] [decimal](3, 0) NULL,
	[CostCenter Id] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZBB_BB_NBB_COEP]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZBB_BB_NBB_COEP](
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NULL,
	[BELNR] [varchar](10) NULL,
	[BUZEI] [decimal](3, 0) NULL,
	[PERIO] [decimal](3, 0) NULL,
	[WTGBTR] [decimal](15, 2) NULL,
	[WOGBTR] [decimal](15, 2) NULL,
	[WKGBTR] [decimal](15, 2) NULL,
	[WKFBTR] [decimal](15, 2) NULL,
	[PAGBTR] [decimal](15, 2) NULL,
	[PAFBTR] [decimal](15, 2) NULL,
	[MEGBTR] [decimal](15, 3) NULL,
	[MEFBTR] [decimal](15, 3) NULL,
	[MBGBTR] [decimal](15, 3) NULL,
	[MBFBTR] [decimal](15, 3) NULL,
	[LEDNR] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[WRTTP] [varchar](2) NULL,
	[VERSN] [varchar](3) NULL,
	[KSTAR] [varchar](10) NULL,
	[HRKFT] [varchar](14) NULL,
	[VRGNG] [varchar](4) NULL,
	[PAROB] [varchar](22) NULL,
	[PAROB1] [varchar](22) NULL,
	[USPOB] [varchar](22) NULL,
	[VBUND] [varchar](6) NULL,
	[PARGB] [varchar](4) NULL,
	[BEKNZ] [varchar](1) NULL,
	[TWAER] [varchar](5) NULL,
	[OWAER] [varchar](5) NULL,
	[MEINH] [varchar](3) NULL,
	[MEINB] [varchar](3) NULL,
	[MVFLG] [varchar](1) NULL,
	[SGTXT] [varchar](50) NULL,
	[REFBZ] [decimal](3, 0) NULL,
	[ZLENR] [decimal](3, 0) NULL,
	[BW_REFBZ] [decimal](3, 0) NULL,
	[GKONT] [varchar](10) NULL,
	[GKOAR] [varchar](1) NULL,
	[WERKS] [varchar](4) NULL,
	[MATNR] [varchar](18) NULL,
	[RBEST] [decimal](3, 0) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[ZEKKN] [decimal](2, 0) NULL,
	[ERLKZ] [varchar](1) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[BTRKL] [decimal](2, 0) NULL,
	[OBJNR_N1] [varchar](22) NULL,
	[OBJNR_N2] [varchar](22) NULL,
	[OBJNR_N3] [varchar](22) NULL,
	[PAOBJNR] [decimal](10, 0) NULL,
	[BELTP] [decimal](1, 0) NULL,
	[BUKRS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[FKBER] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[LOGSYSO] [varchar](10) NULL,
	[PKSTAR] [varchar](10) NULL,
	[PBUKRS] [varchar](4) NULL,
	[PFKBER] [varchar](16) NULL,
	[PSCOPE] [varchar](2) NULL,
	[LOGSYSP] [varchar](10) NULL,
	[DABRZ] [date] NULL,
	[BWSTRAT] [varchar](1) NULL,
	[OBJNR_HK] [varchar](22) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[QMNUM] [varchar](12) NULL,
	[GEBER] [varchar](10) NULL,
	[PGEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[PGRANT_NBR] [varchar](20) NULL,
	[REFBZ_FI] [decimal](3, 0) NULL,
	[SEGMENT] [varchar](10) NULL,
	[PSEGMENT] [varchar](10) NULL,
	[BUDGET_PD] [varchar](10) NULL,
	[PBUDGET_PD] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZBB_BB_PD_TEST]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZBB_BB_PD_TEST](
	[CO Area] [varchar](4) NULL,
	[PERIOD] [int] NULL,
	[Total Value in Transaction] [decimal](15, 2) NULL,
	[Total Value in Object] [decimal](15, 2) NULL,
	[Total Value in CO Area] [decimal](15, 2) NULL,
	[Total quantity entered] [decimal](15, 3) NULL,
	[Ledger for Controlling Objects] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[Fiscal Year] [int] NULL,
	[VALUETYPE] [varchar](2) NULL,
	[Cost Element] [varchar](10) NULL,
	[VRGNG] [varchar](4) NULL,
	[Debit/credit indicator] [varchar](1) NULL,
	[Transaction Currency] [varchar](5) NULL,
	[Currency Key] [varchar](5) NULL,
	[Doc Item No] [int] NULL,
	[Offsetting Account Number] [varchar](10) NULL,
	[Offsetting Account Type] [varchar](1) NULL,
	[PLANT] [varchar](4) NULL,
	[Purchasing DocNo] [varchar](10) NULL,
	[ITEM] [int] NULL,
	[Vendor No] [varchar](10) NULL,
	[Vendor Name] [varchar](35) NULL,
	[Invoice Pary No] [varchar](10) NULL,
	[Invoice Paty Name] [varchar](35) NULL,
	[Order Number] [varchar](12) NULL,
	[Order Type] [varchar](4) NULL,
	[Order category] [decimal](2, 0) NULL,
	[ORDERNAME] [varchar](40) NULL,
	[Responsible costcenter] [varchar](10) NULL,
	[Settlement Cost Element] [varchar](10) NULL,
	[Settlement Cost center] [varchar](10) NULL,
	[G/L account settlement] [varchar](10) NULL,
	[Person responsible] [varchar](20) NULL,
	[PRCTR] [varchar](10) NULL,
	[Company COde] [varchar](4) NULL,
	[Profit Center Name] [varchar](20) NULL,
	[BELNR] [varchar](10) NULL,
	[BUZEI] [decimal](3, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZBB_CC_HIERARCHY_LOAD]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZBB_CC_HIERARCHY_LOAD](
	[ID] [varchar](255) NULL,
	[Cost Center (ID & Desc)] [varchar](255) NULL,
	[Cost Center (ID)] [varchar](255) NULL,
	[Cost Center (Desc)] [varchar](255) NULL,
	[ZBB Parent Level 0] [varchar](255) NULL,
	[ZBB Parent Level 1 (Region)] [varchar](255) NULL,
	[Level 1 Code] [varchar](255) NULL,
	[ZBB Parent Level 2 (Country)] [varchar](255) NULL,
	[Level 2 Code] [varchar](255) NULL,
	[ZBB Parent Level 3 (BU/Entity)] [varchar](255) NULL,
	[Level 3 Code] [varchar](255) NULL,
	[ZBB Parent Level 4 (Function-Location ID & Desc)] [varchar](255) NULL,
	[Level 4 Code] [varchar](255) NULL,
	[ZBB Parent Level 5 (Sub-Function ID & Desc)] [varchar](255) NULL,
	[Level 5 Code] [varchar](255) NULL,
	[ZBB Parent Level 6 (Cost Center)] [varchar](255) NULL,
	[Level 6 Code] [varchar](255) NULL,
	[BLANK HEADER] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZBB_LKP_AUFK]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZBB_LKP_AUFK](
	[AUFNR] [varchar](12) NULL,
	[AUART] [varchar](4) NULL,
	[AUTYP] [decimal](2, 0) NULL,
	[KTEXT] [varchar](40) NULL,
	[KOSTV] [varchar](10) NULL,
	[KSTAR] [varchar](10) NULL,
	[KOSTL] [varchar](10) NULL,
	[SAKNR] [varchar](10) NULL,
	[USER2] [varchar](20) NULL,
	[PRCTR] [varchar](10) NULL,
	[OBJNR] [varchar](22) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZBB_LKP_CEPCT]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZBB_LKP_CEPCT](
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[PRCTR] [varchar](10) NULL,
	[DATBI] [varchar](24) NULL,
	[KOKRS] [varchar](4) NULL,
	[KTEXT] [varchar](20) NULL,
	[LTEXT] [varchar](40) NULL,
	[MCTXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZBB_LKP_CSKA]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZBB_LKP_CSKA](
	[MANDT] [varchar](3) NULL,
	[KTOPL] [varchar](4) NULL,
	[KSTAR] [varchar](10) NULL,
	[ERSDA] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[STEKZ] [varchar](1) NULL,
	[ZAHKZ] [varchar](1) NULL,
	[KSTSN] [varchar](10) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[KTEXT] [varchar](20) NULL,
	[LTEXT] [varchar](40) NULL,
	[MCTXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZBB_LKP_CSKS]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZBB_LKP_CSKS](
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NULL,
	[KOSTL] [varchar](10) NULL,
	[DATBI] [date] NULL,
	[DATAB] [date] NULL,
	[BKZKP] [varchar](1) NULL,
	[PKZKP] [varchar](1) NULL,
	[BUKRS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[KOSAR] [varchar](1) NULL,
	[VERAK] [varchar](20) NULL,
	[VERAK_USER] [varchar](12) NULL,
	[WAERS] [varchar](5) NULL,
	[KALSM] [varchar](6) NULL,
	[TXJCD] [varchar](15) NULL,
	[PRCTR] [varchar](10) NULL,
	[WERKS] [varchar](4) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[ERSDA] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[BKZKS] [varchar](1) NULL,
	[BKZER] [varchar](1) NULL,
	[BKZOB] [varchar](1) NULL,
	[PKZKS] [varchar](1) NULL,
	[PKZER] [varchar](1) NULL,
	[VMETH] [varchar](2) NULL,
	[MGEFL] [varchar](1) NULL,
	[ABTEI] [varchar](12) NULL,
	[NKOST] [varchar](10) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KOSZSCHL] [varchar](6) NULL,
	[LAND1] [varchar](3) NULL,
	[ANRED] [varchar](15) NULL,
	[NAME1] [varchar](35) NULL,
	[NAME2] [varchar](35) NULL,
	[NAME3] [varchar](35) NULL,
	[NAME4] [varchar](35) NULL,
	[ORT01] [varchar](35) NULL,
	[ORT02] [varchar](35) NULL,
	[STRAS] [varchar](35) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTLZ] [varchar](10) NULL,
	[PSTL2] [varchar](10) NULL,
	[REGIO] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[TELBX] [varchar](15) NULL,
	[TELF1] [varchar](16) NULL,
	[TELF2] [varchar](16) NULL,
	[TELFX] [varchar](31) NULL,
	[TELTX] [varchar](30) NULL,
	[TELX1] [varchar](30) NULL,
	[DATLT] [varchar](14) NULL,
	[DRNAM] [varchar](4) NULL,
	[KHINR] [varchar](12) NULL,
	[CCKEY] [varchar](23) NULL,
	[KOMPL] [varchar](1) NULL,
	[STAKZ] [varchar](1) NULL,
	[OBJNR] [varchar](22) NULL,
	[FUNKT] [varchar](3) NULL,
	[AFUNK] [varchar](3) NULL,
	[CPI_TEMPL] [varchar](10) NULL,
	[CPD_TEMPL] [varchar](10) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[SCI_TEMPL] [varchar](10) NULL,
	[SCD_TEMPL] [varchar](10) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[JV_OTYPE] [varchar](4) NULL,
	[JV_JIBCL] [varchar](3) NULL,
	[JV_JIBSA] [varchar](5) NULL,
	[FERC_IND] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZBB_LKP_CSKT]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZBB_LKP_CSKT](
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KOKRS] [varchar](4) NULL,
	[KOSTL] [varchar](10) NULL,
	[DATBI] [date] NULL,
	[KTEXT] [varchar](20) NULL,
	[LTEXT] [varchar](40) NULL,
	[MCTXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZBB_LKP_CSKU]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZBB_LKP_CSKU](
	[MANDT] [varchar](3) NULL,
	[SPRAS] [varchar](1) NULL,
	[KTOPL] [varchar](4) NULL,
	[KSTAR] [varchar](10) NULL,
	[KTEXT] [varchar](20) NULL,
	[LTEXT] [varchar](40) NULL,
	[MCTXT] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZBB_LKP_EKKO]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZBB_LKP_EKKO](
	[EBELN] [varchar](10) NULL,
	[BUKRS] [varchar](4) NULL,
	[LIFNR] [varchar](10) NULL,
	[LIFRE] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZBB_LKP_LFA1]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZBB_LKP_LFA1](
	[MANDT] [varchar](3) NULL,
	[LIFNR] [varchar](10) NULL,
	[LAND1] [varchar](3) NULL,
	[NAME1] [varchar](35) NULL,
	[NAME2] [varchar](35) NULL,
	[NAME3] [varchar](35) NULL,
	[NAME4] [varchar](35) NULL,
	[ORT01] [varchar](35) NULL,
	[ORT02] [varchar](35) NULL,
	[PFACH] [varchar](10) NULL,
	[PSTL2] [varchar](10) NULL,
	[PSTLZ] [varchar](10) NULL,
	[REGIO] [varchar](3) NULL,
	[SORTL] [varchar](10) NULL,
	[STRAS] [varchar](35) NULL,
	[ADRNR] [varchar](10) NULL,
	[MCOD1] [varchar](25) NULL,
	[MCOD2] [varchar](25) NULL,
	[MCOD3] [varchar](25) NULL,
	[ANRED] [varchar](15) NULL,
	[BAHNS] [varchar](25) NULL,
	[BBBNR] [decimal](7, 0) NULL,
	[BBSNR] [decimal](5, 0) NULL,
	[BEGRU] [varchar](4) NULL,
	[BRSCH] [varchar](4) NULL,
	[BUBKZ] [decimal](1, 0) NULL,
	[DATLT] [varchar](14) NULL,
	[DTAMS] [varchar](1) NULL,
	[DTAWS] [varchar](2) NULL,
	[ERDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[ESRNR] [varchar](11) NULL,
	[KONZS] [varchar](10) NULL,
	[KTOKK] [varchar](4) NULL,
	[KUNNR] [varchar](10) NULL,
	[LNRZA] [varchar](10) NULL,
	[LOEVM] [varchar](1) NULL,
	[SPERR] [varchar](1) NULL,
	[SPERM] [varchar](1) NULL,
	[SPRAS] [varchar](1) NULL,
	[STCD1] [varchar](16) NULL,
	[STCD2] [varchar](11) NULL,
	[STKZA] [varchar](1) NULL,
	[STKZU] [varchar](1) NULL,
	[TELBX] [varchar](15) NULL,
	[TELF1] [varchar](16) NULL,
	[TELF2] [varchar](16) NULL,
	[TELFX] [varchar](31) NULL,
	[TELTX] [varchar](30) NULL,
	[TELX1] [varchar](30) NULL,
	[XCPDK] [varchar](1) NULL,
	[XZEMP] [varchar](1) NULL,
	[VBUND] [varchar](6) NULL,
	[FISKN] [varchar](10) NULL,
	[STCEG] [varchar](20) NULL,
	[STKZN] [varchar](1) NULL,
	[SPERQ] [varchar](2) NULL,
	[GBORT] [varchar](25) NULL,
	[GBDAT] [date] NULL,
	[SEXKZ] [varchar](1) NULL,
	[KRAUS] [varchar](11) NULL,
	[REVDB] [date] NULL,
	[QSSYS] [varchar](4) NULL,
	[KTOCK] [varchar](4) NULL,
	[PFORT] [varchar](35) NULL,
	[WERKS] [varchar](4) NULL,
	[LTSNA] [varchar](1) NULL,
	[WERKR] [varchar](1) NULL,
	[PLKAL] [varchar](2) NULL,
	[DUEFL] [varchar](1) NULL,
	[TXJCD] [varchar](15) NULL,
	[SPERZ] [varchar](1) NULL,
	[SCACD] [varchar](4) NULL,
	[SFRGR] [varchar](4) NULL,
	[LZONE] [varchar](10) NULL,
	[XLFZA] [varchar](1) NULL,
	[DLGRP] [varchar](4) NULL,
	[FITYP] [varchar](2) NULL,
	[STCDT] [varchar](2) NULL,
	[REGSS] [varchar](1) NULL,
	[ACTSS] [varchar](3) NULL,
	[STCD3] [varchar](18) NULL,
	[STCD4] [varchar](18) NULL,
	[IPISP] [varchar](1) NULL,
	[TAXBS] [decimal](1, 0) NULL,
	[PROFS] [varchar](30) NULL,
	[STGDL] [varchar](2) NULL,
	[EMNFR] [varchar](10) NULL,
	[LFURL] [varchar](132) NULL,
	[J_1KFREPRE] [varchar](10) NULL,
	[J_1KFTBUS] [varchar](30) NULL,
	[J_1KFTIND] [varchar](30) NULL,
	[CONFS] [varchar](1) NULL,
	[UPDAT] [date] NULL,
	[UPTIM] [time](7) NULL,
	[NODEL] [varchar](1) NULL,
	[QSSYSDAT] [date] NULL,
	[PODKZB] [varchar](1) NULL,
	[FISKU] [varchar](10) NULL,
	[STENR] [varchar](18) NULL,
	[CARRIER_CONF] [varchar](1) NULL,
	[J_SC_CAPITAL] [decimal](15, 2) NULL,
	[J_SC_CURRENCY] [varchar](5) NULL,
	[ALC] [varchar](8) NULL,
	[PMT_OFFICE] [varchar](5) NULL,
	[PPA_RELEVANT] [varchar](1) NULL,
	[PSOFG] [varchar](10) NULL,
	[PSOIS] [varchar](20) NULL,
	[PSON1] [varchar](35) NULL,
	[PSON2] [varchar](35) NULL,
	[PSON3] [varchar](35) NULL,
	[PSOVN] [varchar](35) NULL,
	[PSOTL] [varchar](20) NULL,
	[PSOHS] [varchar](6) NULL,
	[PSOST] [varchar](28) NULL,
	[TRANSPORT_CHAIN] [varchar](10) NULL,
	[STAGING_TIME] [decimal](3, 0) NULL,
	[SCHEDULING_TYPE] [varchar](1) NULL,
	[SUBMI_RELEVANT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZBB_LKP_NBB_GLACCTS]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZBB_LKP_NBB_GLACCTS](
	[KSTAR] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZBB_NBB_COBK]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZBB_NBB_COBK](
	[KOKRS] [varchar](4) NULL,
	[BELNR] [varchar](10) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[BLTXT] [varchar](50) NULL,
	[USNAM] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZBB_NBB_COEP]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZBB_NBB_COEP](
	[KOKRS] [varchar](4) NULL,
	[BELNR] [varchar](10) NULL,
	[BUZEI] [decimal](3, 0) NULL,
	[PERIO] [decimal](3, 0) NULL,
	[WTGBTR] [decimal](15, 2) NULL,
	[WOGBTR] [decimal](15, 2) NULL,
	[WKGBTR] [decimal](15, 2) NULL,
	[MBGBTR] [decimal](15, 3) NULL,
	[LEDNR] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[WRTTP] [varchar](2) NULL,
	[VERSN] [varchar](3) NULL,
	[KSTAR] [varchar](10) NULL,
	[VRGNG] [varchar](4) NULL,
	[BEKNZ] [varchar](1) NULL,
	[TWAER] [varchar](5) NULL,
	[OWAER] [varchar](5) NULL,
	[SGTXT] [varchar](50) NULL,
	[REFBZ] [decimal](3, 0) NULL,
	[ZLENR] [decimal](3, 0) NULL,
	[GKONT] [varchar](10) NULL,
	[GKOAR] [varchar](1) NULL,
	[WERKS] [varchar](4) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[BUKRS] [varchar](4) NULL,
	[FKBER] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZBB_NBB_EKPO]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZBB_NBB_EKPO](
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[TXZ01] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZBB_NBB_LOAD]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZBB_NBB_LOAD](
	[CO AREA] [varchar](4) NULL,
	[DOCUMENT NO] [varchar](10) NULL,
	[POSTING ROW] [decimal](3, 0) NULL,
	[PERIOD] [decimal](3, 0) NULL,
	[TOTAL VALUE IN TRANSACTION] [decimal](15, 2) NULL,
	[TOTAL VALUE IN OBJECT] [decimal](15, 2) NULL,
	[TOTAL VALUE IN CO AREA] [decimal](15, 2) NULL,
	[TOTAL QTY ENTERED] [decimal](15, 3) NULL,
	[CO LEDGER] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[FISCAL YEAR] [decimal](4, 0) NULL,
	[VALUE TYPE] [varchar](2) NULL,
	[VERSION] [varchar](3) NULL,
	[COST ELEMENT] [varchar](10) NULL,
	[COST ELEMENT NAME] [varchar](20) NULL,
	[CO BUSINESS TRAN] [varchar](4) NULL,
	[DEBIT CREDIT INDICATOR] [varchar](1) NULL,
	[TRANSACTION CURRENCY] [varchar](5) NULL,
	[CURRENCY KEY] [varchar](5) NULL,
	[SEGMENT TEXT] [varchar](50) NULL,
	[REF POSTING ROW] [decimal](3, 0) NULL,
	[DOC ITEM NO] [decimal](3, 0) NULL,
	[OFFSET ACCT NO] [varchar](10) NULL,
	[OFFSET ACCT TYPE] [varchar](1) NULL,
	[PLANT] [varchar](4) NULL,
	[PURCHASING DOC NO] [varchar](10) NULL,
	[PURCHASE DOC ITEM] [decimal](5, 0) NULL,
	[PURCHASE ORDER ITEM TXT] [varchar](40) NULL,
	[VENDOR NO] [varchar](10) NULL,
	[VENDOR NAME] [varchar](35) NULL,
	[INVOICE PARTY NO] [varchar](10) NULL,
	[INVOICE PARTY NAME] [varchar](35) NULL,
	[COST CENTER] [varchar](22) NULL,
	[COST CENTER NAME] [varchar](20) NULL,
	[PROFIT CENTER] [varchar](10) NULL,
	[PROFIT CENTER NAME] [varchar](20) NULL,
	[COMPANY CODE] [varchar](4) NULL,
	[FUNCTIONAL AREA] [varchar](16) NULL,
	[OBJECT CLASS] [varchar](2) NULL,
	[DOC HEADER TXT] [varchar](50) NULL,
	[USER NAME] [varchar](12) NULL,
	[Posting_Dt] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZBB_TNE_LOAD]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZBB_TNE_LOAD](
	[PERSONNEL_NO] [decimal](8, 0) NULL,
	[FIRST_NAME] [varchar](4) NULL,
	[LAST_NAME] [varchar](4) NULL,
	[JOB_TITLE] [varchar](4) NULL,
	[POSITION_TITLE] [varchar](4) NULL,
	[TRIP_NO] [decimal](10, 0) NULL,
	[SEQ_NO_FOR_TRIP_TOTALS] [decimal](2, 0) NULL,
	[TRIP_TYPE] [varchar](1) NULL,
	[TRIP_ACTIVITY_TYPE] [varchar](1) NULL,
	[REASON_FOR_TRIP] [varchar](59) NULL,
	[PAYROLL_YEAR] [decimal](4, 0) NULL,
	[PAYROLL_PERIOD] [decimal](2, 0) NULL,
	[ADDTL_AMT_OF_TRIP] [decimal](13, 2) NULL,
	[PAYMENT_AMOUNT] [decimal](13, 2) NULL,
	[TRAVEL_EXP_PAID_BY_COMPANY] [decimal](13, 2) NULL,
	[TOTAL_COST_OF_TRIP] [decimal](13, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[COMPANY_CODE] [varchar](4) NULL,
	[COSTCENTER] [varchar](10) NULL,
	[ORDER_NUMBER] [varchar](12) NULL,
	[FUNCTIONAL_AREA] [varchar](16) NULL,
	[EXPENSE_TYPE] [varchar](4) NULL,
	[RECEIPT_NO] [varchar](3) NULL,
	[INDIVIDUAL_RECEPIT_AMT] [decimal](13, 2) NULL,
	[RECEIPT_CURRENCY] [varchar](5) NULL,
	[DESCRIPTION] [varchar](50) NULL,
	[BUSINESS_PURPOSE] [varchar](50) NULL,
	[CREDIT_CARD_DOC_NO] [varchar](20) NULL,
	[CREDIT_CARD_DESCRIPTION] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [EDW].[BB_Mappings]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EDW].[BB_Mappings](
	[CO_Area] [nvarchar](4) NULL,
	[Period] [int] NULL,
	[Tot_Val_In_Transaction] [money] NULL,
	[Tot_Val_In_Obj] [money] NULL,
	[Tot_Val_In_CO_Area] [money] NULL,
	[Tot_Qty_Entered] [int] NULL,
	[Ledger_Ctrl_Obj] [nvarchar](2) NULL,
	[Obj_Num] [nvarchar](22) NULL,
	[Fiscal_Year] [int] NULL,
	[Val_Type] [nvarchar](2) NULL,
	[Cost_Element] [nvarchar](10) NULL,
	[VRGNG] [nvarchar](4) NULL,
	[Debit_Credit_Indicator] [nvarchar](1) NULL,
	[Transaction_Currency] [int] NULL,
	[Currency_Key] [int] NULL,
	[Doc_Item_Num] [int] NULL,
	[Offsetting_Acc_Num] [nvarchar](10) NULL,
	[Offsetting_Acc_Type] [nvarchar](1) NULL,
	[Plant] [nvarchar](4) NULL,
	[Purchasing_Doc_No] [nvarchar](10) NULL,
	[Item] [int] NULL,
	[Vendor_No] [nvarchar](10) NULL,
	[Vendor_Name] [nvarchar](35) NULL,
	[Invoice_Pary_No] [nvarchar](10) NULL,
	[Invoice_Paty_Name] [nvarchar](35) NULL,
	[Order_Num] [nvarchar](12) NULL,
	[Order_Type] [nvarchar](4) NULL,
	[Order_Category] [int] NULL,
	[Order_Name] [nvarchar](40) NULL,
	[Responsible_Cost_Center] [nvarchar](10) NULL,
	[Settlement_Cost_Element] [nvarchar](10) NULL,
	[Settlement_Cost_Center] [nvarchar](10) NULL,
	[GL_Acc_Settlement] [nvarchar](10) NULL,
	[Person_Responsible] [nvarchar](20) NULL,
	[PRCTR] [nvarchar](10) NULL,
	[Profit_Ceter_Name] [nvarchar](20) NULL,
	[Company_Code] [nvarchar](4) NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [nvarchar](100) NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [EDW].[Non_BB_Mappings]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EDW].[Non_BB_Mappings](
	[CO_Area] [nvarchar](4) NULL,
	[Doc_No] [nvarchar](10) NULL,
	[Posting_Row] [int] NULL,
	[Period] [int] NULL,
	[Tot_Val_In_Transaction] [money] NULL,
	[Tot_Val_In_Obj] [money] NULL,
	[Tot_Val_In_CO_Area] [money] NULL,
	[Tot_Qty_Entered] [int] NULL,
	[CO_Ledger] [nvarchar](2) NULL,
	[OBJNR] [nvarchar](22) NULL,
	[Fiscal_Year] [int] NULL,
	[Val_Type] [nvarchar](2) NULL,
	[Version] [nvarchar](3) NULL,
	[Cost_Element] [nvarchar](10) NULL,
	[Cost_Element_Name] [nvarchar](50) NULL,
	[CO_Business_Tran] [nvarchar](4) NULL,
	[Debit_Credit_Indicator] [nvarchar](1) NULL,
	[Transaction_Currency] [int] NULL,
	[Currency_Key] [int] NULL,
	[Segment_Text] [nvarchar](50) NULL,
	[Refernce_Posting_Row] [int] NULL,
	[Doc_Item_No] [int] NULL,
	[Offsetting_Acc_Num] [nvarchar](10) NULL,
	[Offsetting_Acc_Type] [nvarchar](1) NULL,
	[Plant] [nvarchar](4) NULL,
	[Purchasing_Doc_No] [nvarchar](10) NULL,
	[Purchase_Doc_Item] [int] NULL,
	[Purchase_Oder_Item_Text] [nvarchar](40) NULL,
	[Vendor_No] [nvarchar](10) NULL,
	[Vendor_Name] [nvarchar](35) NULL,
	[Invoice_Pary_No] [nvarchar](10) NULL,
	[Invoice_Paty_Name] [nvarchar](35) NULL,
	[Cost_Center] [nvarchar](22) NULL,
	[Cost_Center_Name] [nvarchar](20) NULL,
	[Profit_Center] [nvarchar](10) NULL,
	[Profit_Center_Name] [nvarchar](20) NULL,
	[Company_Code] [nvarchar](4) NULL,
	[Functional_Area] [nvarchar](16) NULL,
	[Obj_Class] [nvarchar](2) NULL,
	[Doc_Header_Text] [nvarchar](50) NULL,
	[User_Name] [nvarchar](12) NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [nvarchar](100) NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [EDW].[Time_And_Expenses]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EDW].[Time_And_Expenses](
	[Personnel_Number] [int] NULL,
	[First_Name] [nvarchar](40) NULL,
	[Last_Name] [nvarchar](40) NULL,
	[Job_Title] [int] NULL,
	[Position_Title] [int] NULL,
	[Trip_Number] [int] NULL,
	[Seq_No_For_Trip_Totals] [int] NULL,
	[Trip_Type] [nvarchar](1) NULL,
	[Trip_Activity_Type] [nvarchar](1) NULL,
	[Reason_For_Trip] [nvarchar](59) NULL,
	[Payroll_Year] [int] NULL,
	[Payroll_Period] [int] NULL,
	[Addtl_Amt_Of_A_Trip] [numeric](13, 2) NULL,
	[Payment_Amt] [numeric](13, 2) NULL,
	[Travel_Ex_Paid_By_Comp] [numeric](13, 2) NULL,
	[Total_Cost_Of_Trip] [numeric](13, 2) NULL,
	[Currency] [int] NULL,
	[Company_Code] [nvarchar](4) NULL,
	[Cost_Center] [nvarchar](10) NULL,
	[Order_Number] [nvarchar](12) NULL,
	[Functional_Area] [nvarchar](16) NULL,
	[Expense_Type] [nvarchar](4) NULL,
	[Receipt_No] [nvarchar](3) NULL,
	[Individual_Receipt_Amt] [numeric](13, 2) NULL,
	[Receipt_Currency] [int] NULL,
	[Description] [nvarchar](50) NULL,
	[Business_Purpose] [nvarchar](50) NULL,
	[Credit_Card_DocNo] [nvarchar](20) NULL,
	[Desc_Of_A_Credit_Card] [nvarchar](50) NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [nvarchar](100) NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [EXT].[Acct_Hrchy_ZBB]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [EXT].[Acct_Hrchy_ZBB](
	[Acct_Nbr] [char](10) NOT NULL,
	[Acct_Desc] [nchar](60) NULL,
	[Scope_Ind] [char](10) NULL,
	[Acct_Categ] [char](40) NULL,
	[Acct_Sub_Categ] [char](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[Acct_Nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [EXT].[Acct_Hrchy_ZBB_Trial]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [EXT].[Acct_Hrchy_ZBB_Trial](
	[Acct_Nbr] [char](10) NOT NULL,
	[Acct_Desc] [nchar](60) NULL,
	[Scope_Ind] [char](10) NULL,
	[Acct_Categ] [char](40) NULL,
	[Acct_Sub_Categ] [char](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [EXT].[CC_Hrchy_ZBB]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [EXT].[CC_Hrchy_ZBB](
	[CC_Nbr] [char](10) NOT NULL,
	[CC_Desc] [varchar](50) NULL,
	[Level0_Desc] [char](15) NULL,
	[Level1_Desc] [char](75) NULL,
	[Level1_Cd] [char](12) NOT NULL,
	[Level2_Desc] [char](75) NULL,
	[Level2_Cd] [char](12) NOT NULL,
	[Level3_Desc] [char](75) NULL,
	[Level3_Cd] [char](12) NOT NULL,
	[Level4_Desc] [char](75) NULL,
	[Level4_Cd] [char](12) NOT NULL,
	[Level5_Desc] [char](75) NULL,
	[Level5_Cd] [char](12) NOT NULL,
	[Level6_Desc] [char](75) NULL,
	[Level6_Cd] [char](12) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CC_Nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [EXT].[CC_Hrchy_ZBB_trial]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [EXT].[CC_Hrchy_ZBB_trial](
	[CC_Nbr] [char](10) NOT NULL,
	[CC_Desc] [varchar](50) NULL,
	[Level0_Desc] [char](15) NULL,
	[Level1_Desc] [char](75) NULL,
	[Level1_Cd] [char](12) NOT NULL,
	[Level2_Desc] [char](75) NULL,
	[Level2_Cd] [char](12) NOT NULL,
	[Level3_Desc] [char](75) NULL,
	[Level3_Cd] [char](12) NOT NULL,
	[Level4_Desc] [char](75) NULL,
	[Level4_Cd] [char](12) NOT NULL,
	[Level5_Desc] [char](75) NULL,
	[Level5_Cd] [char](12) NOT NULL,
	[Level6_Desc] [char](75) NULL,
	[Level6_Cd] [char](12) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [EXT].[CSKA]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [EXT].[CSKA](
	[MANDT] [varchar](3) NULL,
	[KTOPL] [varchar](4) NULL,
	[KSTAR] [varchar](10) NULL,
	[ERSDA] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[STEKZ] [varchar](1) NULL,
	[ZAHKZ] [varchar](1) NULL,
	[KSTSN] [varchar](10) NULL,
	[FUNC_AREA] [varchar](16) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [EXT].[ZBB_LKP_NBB_GLACCTS]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [EXT].[ZBB_LKP_NBB_GLACCTS](
	[KSTAR] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [src].[TBL_T513S]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [src].[TBL_T513S](
	[MANDT] [nvarchar](3) NULL,
	[SPRSL] [nvarchar](1) NULL,
	[STELL] [int] NULL,
	[ENDDA] [date] NULL,
	[BEGDA] [date] NULL,
	[STLTX] [nvarchar](25) NULL,
	[MAINT] [nvarchar](1) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [src].[TBL_T528T]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [src].[TBL_T528T](
	[MANDT] [nvarchar](3) NULL,
	[SPRSL] [nvarchar](1) NULL,
	[OTYPE] [nvarchar](2) NULL,
	[PLANS] [int] NULL,
	[ENDDA] [date] NULL,
	[BEGDA] [date] NULL,
	[PLSTX] [nvarchar](25) NULL,
	[MAINT] [nvarchar](1) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [STG].[ACCT_HRCHY_ZBB_STG]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ACCT_HRCHY_ZBB_STG](
	[ACCT_NBR] [varchar](10) NULL,
	[ACCT_DESC] [varchar](60) NULL,
	[SCOPE_IND] [varchar](10) NULL,
	[ACCT_CATEG] [varchar](40) NULL,
	[ACCT_SUB_CATEG] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AIRFARE_DETAIL_CA_STG]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AIRFARE_DETAIL_CA_STG](
	[Client_Name] [nvarchar](255) NULL,
	[Record_Key] [nvarchar](255) NULL,
	[GCN] [nvarchar](255) NULL,
	[Client_Cd] [nvarchar](255) NULL,
	[Lctr] [nvarchar](255) NULL,
	[Trvlr] [nvarchar](255) NULL,
	[Invoice_Dt] [nvarchar](255) NULL,
	[Invoice_Num] [nvarchar](255) NULL,
	[Agency] [nvarchar](255) NULL,
	[Agency_Num] [nvarchar](255) NULL,
	[Booking_Src] [nvarchar](255) NULL,
	[Booking_Agnt_ID] [nvarchar](255) NULL,
	[Local_Air_Rsn_Cd] [nvarchar](255) NULL,
	[Local_Air_Rsn_Cd_Desc] [varchar](100) NULL,
	[Glbl_Air_Rsn_Cd] [nvarchar](255) NULL,
	[glbl_Air_rsn_cd_desc] [varchar](100) NULL,
	[Fare_Accptd_Cd] [nvarchar](255) NULL,
	[Fare_Accptd_Cd_desc] [varchar](100) NULL,
	[CreditCrd_Num] [nvarchar](255) NULL,
	[CreditCrd_Typ] [nvarchar](255) NULL,
	[Creditcrd_exprtn] [nvarchar](255) NULL,
	[Refund_Indctr] [nvarchar](255) NULL,
	[Exchange_Indctr] [nvarchar](255) NULL,
	[True_Tckt_Cnt] [nvarchar](255) NULL,
	[Round_Trp_Indctr] [nvarchar](255) NULL,
	[Short_Long_Hl_Indctr] [nvarchar](255) NULL,
	[Original_docnum] [nvarchar](255) NULL,
	[Int_Dom] [nvarchar](255) NULL,
	[Trvl_Sctr] [nvarchar](255) NULL,
	[Traveler_Cntry] [nvarchar](255) NULL,
	[Ticketing_Cntry] [nvarchar](255) NULL,
	[Trip_Lgth] [nvarchar](255) NULL,
	[Travel_Strt_dt] [nvarchar](255) NULL,
	[Ticket_Num] [nvarchar](255) NULL,
	[Carrier_cd] [nvarchar](255) NULL,
	[Carrier_Name] [nvarchar](255) NULL,
	[Orgn_Airport_Cd] [nvarchar](255) NULL,
	[Origin_Cty] [nvarchar](255) NULL,
	[Origin_Airport] [nvarchar](255) NULL,
	[Origin_Cntry] [nvarchar](255) NULL,
	[Dstntn_Airport_cd] [nvarchar](255) NULL,
	[Dstntn_Cty] [nvarchar](255) NULL,
	[Dstntn_Airport] [nvarchar](255) NULL,
	[Dstntn_Cntry] [nvarchar](255) NULL,
	[Routing] [nvarchar](255) NULL,
	[Booking_Clss_Smmry] [nvarchar](255) NULL,
	[Fare_Basis_Smmry] [nvarchar](255) NULL,
	[Cabin] [nvarchar](255) NULL,
	[Tour_Cd] [nvarchar](255) NULL,
	[Booking_Dt] [nvarchar](255) NULL,
	[Days_Adv_Booking] [nvarchar](255) NULL,
	[Days_Adv_Booking_grp] [nvarchar](255) NULL,
	[Days_Adv_Prchs] [nvarchar](255) NULL,
	[Days_Adv_PrchsGrp] [nvarchar](255) NULL,
	[Mileage] [nvarchar](255) NULL,
	[Cost_Per_Mile] [nvarchar](255) NULL,
	[Tax_amnt] [nvarchar](255) NULL,
	[Ticket_Amt_Mns_Txs] [nvarchar](255) NULL,
	[Total_Ticket_amnt] [nvarchar](255) NULL,
	[Low_Fare] [nvarchar](255) NULL,
	[Full_Fare] [nvarchar](255) NULL,
	[Amnt_Lost] [nvarchar](255) NULL,
	[Full_Fare_Svngs] [nvarchar](255) NULL,
	[Contract_Svngs] [nvarchar](255) NULL,
	[Fare_Bfr_Dscnt] [nvarchar](255) NULL,
	[Fare_Cmpr2] [nvarchar](255) NULL,
	[Fare_Cmpr3] [nvarchar](255) NULL,
	[Fare_Cmpr4] [nvarchar](255) NULL,
	[Fare_Cmpr5] [nvarchar](255) NULL,
	[Fare_Cmpr6] [nvarchar](255) NULL,
	[CST_CNTR_ION] [nvarchar](255) NULL,
	[Error_Flag] [char](1) NULL,
	[Warning_Flag] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AIRFARE_DETAIL_US_STG]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AIRFARE_DETAIL_US_STG](
	[Client_Name] [nvarchar](255) NULL,
	[Record_Key] [nvarchar](255) NULL,
	[GCN] [nvarchar](255) NULL,
	[Client_Cd] [nvarchar](255) NULL,
	[Lctr] [nvarchar](255) NULL,
	[Trvlr] [nvarchar](255) NULL,
	[Invoice_Dt] [nvarchar](255) NULL,
	[Invoice_Num] [nvarchar](255) NULL,
	[Agency] [nvarchar](255) NULL,
	[Agency_Num] [nvarchar](255) NULL,
	[Booking_Src] [nvarchar](255) NULL,
	[Booking_Agnt_ID] [nvarchar](255) NULL,
	[Local_Air_Rsn_Cd] [nvarchar](255) NULL,
	[Local_Air_Rsn_Cd_Desc] [varchar](100) NULL,
	[Glbl_Air_Rsn_Cd] [nvarchar](255) NULL,
	[glbl_Air_rsn_cd_desc] [varchar](100) NULL,
	[Fare_Accptd_Cd] [nvarchar](255) NULL,
	[Fare_Accptd_Cd_desc] [varchar](100) NULL,
	[CreditCrd_Num] [nvarchar](255) NULL,
	[CreditCrd_Typ] [nvarchar](255) NULL,
	[Creditcrd_exprtn] [nvarchar](255) NULL,
	[Refund_Indctr] [nvarchar](255) NULL,
	[Exchange_Indctr] [nvarchar](255) NULL,
	[True_Tckt_Cnt] [nvarchar](255) NULL,
	[Round_Trp_Indctr] [nvarchar](255) NULL,
	[Short_Long_Hl_Indctr] [nvarchar](255) NULL,
	[Original_docnum] [nvarchar](255) NULL,
	[Int_Dom] [nvarchar](255) NULL,
	[Trvl_Sctr] [nvarchar](255) NULL,
	[Traveler_Cntry] [nvarchar](255) NULL,
	[Ticketing_Cntry] [nvarchar](255) NULL,
	[Trip_Lgth] [nvarchar](255) NULL,
	[Travel_Strt_dt] [nvarchar](255) NULL,
	[Ticket_Num] [nvarchar](255) NULL,
	[Carrier_cd] [nvarchar](255) NULL,
	[Carrier_Name] [nvarchar](255) NULL,
	[Orgn_Airport_Cd] [nvarchar](255) NULL,
	[Origin_Cty] [nvarchar](255) NULL,
	[Origin_Airport] [nvarchar](255) NULL,
	[Origin_Cntry] [nvarchar](255) NULL,
	[Dstntn_Airport_cd] [nvarchar](255) NULL,
	[Dstntn_Cty] [nvarchar](255) NULL,
	[Dstntn_Airport] [nvarchar](255) NULL,
	[Dstntn_Cntry] [nvarchar](255) NULL,
	[Routing] [nvarchar](255) NULL,
	[Booking_Clss_Smmry] [nvarchar](255) NULL,
	[Fare_Basis_Smmry] [nvarchar](255) NULL,
	[Cabin] [nvarchar](255) NULL,
	[Tour_Cd] [nvarchar](255) NULL,
	[Booking_Dt] [nvarchar](255) NULL,
	[Days_Adv_Booking] [nvarchar](255) NULL,
	[Days_Adv_Booking_grp] [nvarchar](255) NULL,
	[Days_Adv_Prchs] [nvarchar](255) NULL,
	[Days_Adv_PrchsGrp] [nvarchar](255) NULL,
	[Mileage] [nvarchar](255) NULL,
	[Cost_Per_Mile] [nvarchar](255) NULL,
	[Tax_amnt] [nvarchar](255) NULL,
	[Ticket_Amt_Mns_Txs] [nvarchar](255) NULL,
	[Total_Ticket_amnt] [nvarchar](255) NULL,
	[Low_Fare] [nvarchar](255) NULL,
	[Full_Fare] [nvarchar](255) NULL,
	[Amnt_Lost] [nvarchar](255) NULL,
	[Full_Fare_Svngs] [nvarchar](255) NULL,
	[Contract_Svngs] [nvarchar](255) NULL,
	[Fare_Bfr_Dscnt] [nvarchar](255) NULL,
	[Fare_Cmpr2] [nvarchar](255) NULL,
	[Fare_Cmpr3] [nvarchar](255) NULL,
	[Fare_Cmpr4] [nvarchar](255) NULL,
	[Fare_Cmpr5] [nvarchar](255) NULL,
	[Fare_Cmpr6] [nvarchar](255) NULL,
	[CST_CNTR_ION] [nvarchar](255) NULL,
	[Error_Flag] [char](1) NULL,
	[Warning_Flag] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[AUFK]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[AUFK](
	[MANDT] [varchar](3) NULL,
	[AUFNR] [varchar](12) NOT NULL,
	[AUART] [varchar](4) NULL,
	[AUTYP] [decimal](2, 0) NULL,
	[REFNR] [varchar](12) NULL,
	[ERNAM] [varchar](12) NULL,
	[ERDAT] [date] NULL,
	[AENAM] [varchar](12) NULL,
	[AEDAT] [date] NULL,
	[KTEXT] [varchar](40) NULL,
	[LTEXT] [varchar](1) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL,
	[CCKEY] [varchar](23) NULL,
	[KOSTV] [varchar](10) NULL,
	[STORT] [varchar](10) NULL,
	[SOWRK] [varchar](4) NULL,
	[ASTKZ] [varchar](1) NULL,
	[WAERS] [varchar](5) NULL,
	[ASTNR] [varchar](48) NULL,
	[STDAT] [date] NULL,
	[ESTNR] [decimal](2, 0) NULL,
	[PHAS0] [varchar](1) NULL,
	[PHAS1] [varchar](1) NULL,
	[PHAS2] [varchar](1) NULL,
	[PHAS3] [varchar](1) NULL,
	[PDAT1] [varchar](24) NULL,
	[PDAT2] [varchar](24) NULL,
	[PDAT3] [varchar](24) NULL,
	[IDAT1] [varchar](24) NULL,
	[IDAT2] [varchar](24) NULL,
	[IDAT3] [varchar](24) NULL,
	[OBJID] [varchar](1) NULL,
	[VOGRP] [varchar](4) NULL,
	[LOEKZ] [varchar](1) NULL,
	[PLGKZ] [varchar](1) NULL,
	[KVEWE] [varchar](1) NULL,
	[KAPPL] [varchar](2) NULL,
	[KALSM] [varchar](6) NULL,
	[ZSCHL] [varchar](6) NULL,
	[ABKRS] [decimal](2, 0) NULL,
	[KSTAR] [varchar](10) NULL,
	[KOSTL] [varchar](10) NULL,
	[SAKNR] [varchar](10) NULL,
	[SETNM] [varchar](12) NULL,
	[CYCLE] [varchar](10) NULL,
	[SDATE] [varchar](24) NULL,
	[SEQNR] [decimal](4, 0) NULL,
	[USER0] [varchar](20) NULL,
	[USER1] [varchar](20) NULL,
	[USER2] [varchar](20) NULL,
	[USER3] [varchar](20) NULL,
	[USER4] [decimal](11, 2) NULL,
	[USER5] [date] NULL,
	[USER6] [varchar](15) NULL,
	[USER7] [date] NULL,
	[USER8] [date] NULL,
	[USER9] [varchar](1) NULL,
	[OBJNR] [varchar](22) NULL,
	[PRCTR] [varchar](10) NULL,
	[PSPEL] [decimal](8, 0) NULL,
	[AWSLS] [varchar](6) NULL,
	[ABGSL] [varchar](6) NULL,
	[TXJCD] [varchar](15) NULL,
	[FUNC_AREA] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[PLINT] [varchar](1) NULL,
	[KDAUF] [varchar](10) NULL,
	[KDPOS] [decimal](6, 0) NULL,
	[AUFEX] [varchar](20) NULL,
	[IVPRO] [varchar](6) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[FLG_MLTPS] [varchar](1) NULL,
	[ABUKR] [varchar](4) NULL,
	[AKSTL] [varchar](10) NULL,
	[SIZECL] [varchar](2) NULL,
	[IZWEK] [varchar](2) NULL,
	[UMWKZ] [varchar](5) NULL,
	[KSTEMPF] [varchar](1) NULL,
	[ZSCHM] [varchar](7) NULL,
	[PKOSA] [varchar](12) NULL,
	[ANFAUFNR] [varchar](12) NULL,
	[PROCNR] [decimal](12, 0) NULL,
	[PROTY] [varchar](4) NULL,
	[RSORD] [varchar](1) NULL,
	[BEMOT] [varchar](2) NULL,
	[ADRNRA] [varchar](10) NULL,
	[ERFZEIT] [time](7) NULL,
	[AEZEIT] [time](7) NULL,
	[CSTG_VRNT] [varchar](4) NULL,
	[COSTESTNR] [decimal](12, 0) NULL,
	[VERAA_USER] [varchar](12) NULL,
	[VNAME] [varchar](6) NULL,
	[RECID] [varchar](2) NULL,
	[ETYPE] [varchar](3) NULL,
	[OTYPE] [varchar](4) NULL,
	[JV_JIBCL] [varchar](3) NULL,
	[JV_JIBSA] [varchar](5) NULL,
	[JV_OCO] [varchar](1) NULL,
	[/CUM/INDCU] [varchar](1) NULL,
	[/CUM/CMNUM] [varchar](12) NULL,
	[/CUM/AUEST] [varchar](1) NULL,
	[/CUM/DESNUM] [varchar](12) NULL,
	[VAPLZ] [varchar](8) NULL,
	[WAWRK] [varchar](4) NULL,
	[FERC_IND] [varchar](4) NULL,
	[CLAIM_CONTROL] [varchar](1) NULL,
	[UPDATE_NEEDED] [varchar](1) NULL,
	[UPDATE_CONTROL] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[AUFNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[CAR_RENT_DETAIL_CA_STG]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[CAR_RENT_DETAIL_CA_STG](
	[Client_Name] [nvarchar](255) NULL,
	[Record_Key] [nvarchar](255) NULL,
	[GCN] [nvarchar](255) NULL,
	[Client_Cd] [nvarchar](255) NULL,
	[Lctr] [nvarchar](255) NULL,
	[Trvlr] [nvarchar](255) NULL,
	[Invoice_Dt] [nvarchar](255) NOT NULL,
	[Invoice_Num] [nvarchar](255) NOT NULL,
	[Agency] [nvarchar](255) NULL,
	[Agency_Num] [nvarchar](255) NULL,
	[Booking_Src] [nvarchar](255) NULL,
	[Booking_Agnt_ID] [nvarchar](255) NULL,
	[Local_Rsn_Cd] [nvarchar](255) NULL,
	[Local_Rsn_Cd_Desc] [nvarchar](255) NULL,
	[Glbl_Rsn_Cd] [nvarchar](255) NULL,
	[glbl_rsn_cd_desc] [nvarchar](255) NULL,
	[Refund_Indctr] [nvarchar](255) NULL,
	[Exchange_Indctr] [nvarchar](255) NULL,
	[Original_docnum] [nvarchar](255) NULL,
	[Int_Dom] [nvarchar](255) NULL,
	[Trvl_Sctr] [nvarchar](255) NULL,
	[Traveler_Cntry] [nvarchar](255) NULL,
	[Ticketing_Cntry] [nvarchar](255) NULL,
	[No_Of_Cars] [nvarchar](225) NULL,
	[No_Of_days] [nvarchar](255) NULL,
	[Pickup_Dt] [nvarchar](255) NULL,
	[Drop_Off_Dt] [nvarchar](255) NULL,
	[Confrmtn_Num] [nvarchar](255) NULL,
	[Chain_Cd] [nvarchar](255) NULL,
	[Chain_Name] [nvarchar](255) NULL,
	[Cty_Name] [nvarchar](255) NULL,
	[State_Province] [nvarchar](255) NULL,
	[Cntry_Name] [nvarchar](255) NULL,
	[Car_Typ_Cd] [nvarchar](255) NULL,
	[Car_Typ_Desc] [nvarchar](255) NULL,
	[Daily_Rate] [nvarchar](255) NULL,
	[Total_Amnt] [nvarchar](255) NULL,
	[CST_CNTR_ION] [nvarchar](255) NULL,
	[Error_Flag] [char](1) NULL,
	[Warning_Flag] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[CAR_RENT_DETAIL_US_STG]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[CAR_RENT_DETAIL_US_STG](
	[Client_Name] [nvarchar](255) NULL,
	[Record_Key] [nvarchar](255) NULL,
	[GCN] [nvarchar](255) NULL,
	[Client_Cd] [nvarchar](255) NULL,
	[Lctr] [nvarchar](255) NULL,
	[Trvlr] [nvarchar](255) NULL,
	[Invoice_Dt] [nvarchar](255) NOT NULL,
	[Invoice_Num] [nvarchar](255) NOT NULL,
	[Agency] [nvarchar](255) NULL,
	[Agency_Num] [nvarchar](255) NULL,
	[Booking_Src] [nvarchar](255) NULL,
	[Booking_Agnt_ID] [nvarchar](255) NULL,
	[Local_Rsn_Cd] [nvarchar](255) NULL,
	[Local_Rsn_Cd_Desc] [nvarchar](255) NULL,
	[Glbl_Rsn_Cd] [nvarchar](255) NULL,
	[glbl_rsn_cd_desc] [nvarchar](255) NULL,
	[Refund_Indctr] [nvarchar](255) NULL,
	[Exchange_Indctr] [nvarchar](255) NULL,
	[Original_docnum] [nvarchar](255) NULL,
	[Int_Dom] [nvarchar](255) NULL,
	[Trvl_Sctr] [nvarchar](255) NULL,
	[Traveler_Cntry] [nvarchar](255) NULL,
	[Ticketing_Cntry] [nvarchar](255) NULL,
	[No_Of_Cars] [nvarchar](255) NULL,
	[No_Of_days] [nvarchar](255) NULL,
	[Pickup_Dt] [nvarchar](255) NULL,
	[Drop_Off_Dt] [nvarchar](255) NULL,
	[Confrmtn_Num] [nvarchar](255) NULL,
	[Chain_Cd] [nvarchar](255) NULL,
	[Chain_Name] [nvarchar](255) NULL,
	[Cty_Name] [nvarchar](255) NULL,
	[State_Province] [nvarchar](255) NULL,
	[Cntry_Name] [nvarchar](255) NULL,
	[Car_Typ_Cd] [nvarchar](255) NULL,
	[Car_Typ_Desc] [nvarchar](255) NULL,
	[Daily_Rate] [nvarchar](255) NULL,
	[Total_Amnt] [nvarchar](255) NULL,
	[CST_CNTR_ION] [nvarchar](255) NULL,
	[Error_Flag] [char](1) NULL,
	[Warning_Flag] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[CC_HRCHY_ZBB_STG]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[CC_HRCHY_ZBB_STG](
	[CC_NBR] [varchar](10) NOT NULL,
	[CC_DESC] [varchar](50) NULL,
	[LEVEL0_DESC] [varchar](15) NULL,
	[LEVEL1_DESC] [varchar](75) NULL,
	[LEVEL1_CD] [varchar](12) NULL,
	[LEVEL2_DESC] [varchar](75) NULL,
	[LEVEL2_CD] [varchar](12) NULL,
	[LEVEL3_DESC] [varchar](75) NULL,
	[LEVEL3_CD] [varchar](12) NULL,
	[LEVEL4_DESC] [varchar](75) NULL,
	[LEVEL4_CD] [varchar](12) NULL,
	[LEVEL5_DESC] [varchar](75) NULL,
	[LEVEL5_CD] [varchar](12) NULL,
	[LEVEL6_DESC] [varchar](75) NULL,
	[LEVEL6_CD] [varchar](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[CC_NBR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[COBK]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[COBK](
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[VERSN] [varchar](3) NULL,
	[VRGNG] [varchar](4) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[PERAB] [decimal](3, 0) NULL,
	[PERBI] [decimal](3, 0) NULL,
	[BLDAT] [date] NULL,
	[BUDAT] [date] NULL,
	[CPUDT] [date] NULL,
	[USNAM] [varchar](12) NULL,
	[BLTXT] [varchar](50) NULL,
	[STFLG] [varchar](1) NULL,
	[STOKZ] [varchar](1) NULL,
	[REFBT] [varchar](1) NULL,
	[REFBN] [varchar](10) NULL,
	[REFBK] [varchar](4) NULL,
	[REFGJ] [decimal](4, 0) NULL,
	[BLART] [varchar](2) NULL,
	[ORGVG] [varchar](4) NULL,
	[SUMBZ] [decimal](3, 0) NULL,
	[DELBZ] [decimal](3, 0) NULL,
	[WSDAT] [date] NULL,
	[KURST] [varchar](4) NULL,
	[VARNR] [varchar](5) NULL,
	[KWAER] [varchar](5) NULL,
	[CTYP1] [varchar](2) NULL,
	[CTYP2] [varchar](2) NULL,
	[CTYP3] [varchar](2) NULL,
	[CTYP4] [varchar](2) NULL,
	[AWTYP] [varchar](5) NULL,
	[AWORG] [varchar](10) NULL,
	[LOGSYSTEM] [varchar](10) NULL,
	[CPUTM] [time](7) NULL,
	[ALEBZ] [decimal](3, 0) NULL,
	[ALEBN] [varchar](10) NULL,
	[AWSYS] [varchar](10) NULL,
	[AWREF_REV] [varchar](10) NULL,
	[AWORG_REV] [varchar](10) NULL,
	[VALDT] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[KOKRS] ASC,
	[BELNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[COEP]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[COEP](
	[MANDT] [varchar](3) NULL,
	[KOKRS] [varchar](4) NOT NULL,
	[BELNR] [varchar](10) NOT NULL,
	[BUZEI] [decimal](3, 0) NOT NULL,
	[PERIO] [decimal](3, 0) NULL,
	[WTGBTR] [decimal](15, 2) NULL,
	[WOGBTR] [decimal](15, 2) NULL,
	[WKGBTR] [decimal](15, 2) NULL,
	[WKFBTR] [decimal](15, 2) NULL,
	[PAGBTR] [decimal](15, 2) NULL,
	[PAFBTR] [decimal](15, 2) NULL,
	[MEGBTR] [decimal](15, 3) NULL,
	[MEFBTR] [decimal](15, 3) NULL,
	[MBGBTR] [decimal](15, 3) NULL,
	[MBFBTR] [decimal](15, 3) NULL,
	[LEDNR] [varchar](2) NULL,
	[OBJNR] [varchar](22) NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[WRTTP] [varchar](2) NULL,
	[VERSN] [varchar](3) NULL,
	[KSTAR] [varchar](10) NULL,
	[HRKFT] [varchar](14) NULL,
	[VRGNG] [varchar](4) NULL,
	[PAROB] [varchar](22) NULL,
	[PAROB1] [varchar](22) NULL,
	[USPOB] [varchar](22) NULL,
	[VBUND] [varchar](6) NULL,
	[PARGB] [varchar](4) NULL,
	[BEKNZ] [varchar](1) NULL,
	[TWAER] [varchar](5) NULL,
	[OWAER] [varchar](5) NULL,
	[MEINH] [varchar](3) NULL,
	[MEINB] [varchar](3) NULL,
	[MVFLG] [varchar](1) NULL,
	[SGTXT] [varchar](50) NULL,
	[REFBZ] [decimal](3, 0) NULL,
	[ZLENR] [decimal](3, 0) NULL,
	[BW_REFBZ] [decimal](3, 0) NULL,
	[GKONT] [varchar](10) NULL,
	[GKOAR] [varchar](1) NULL,
	[WERKS] [varchar](4) NULL,
	[MATNR] [varchar](18) NULL,
	[RBEST] [decimal](3, 0) NULL,
	[EBELN] [varchar](10) NULL,
	[EBELP] [decimal](5, 0) NULL,
	[ZEKKN] [decimal](2, 0) NULL,
	[ERLKZ] [varchar](1) NULL,
	[PERNR] [decimal](8, 0) NULL,
	[BTRKL] [decimal](2, 0) NULL,
	[OBJNR_N1] [varchar](22) NULL,
	[OBJNR_N2] [varchar](22) NULL,
	[OBJNR_N3] [varchar](22) NULL,
	[PAOBJNR] [decimal](10, 0) NULL,
	[BELTP] [decimal](1, 0) NULL,
	[BUKRS] [varchar](4) NULL,
	[GSBER] [varchar](4) NULL,
	[FKBER] [varchar](16) NULL,
	[SCOPE] [varchar](2) NULL,
	[LOGSYSO] [varchar](10) NULL,
	[PKSTAR] [varchar](10) NULL,
	[PBUKRS] [varchar](4) NULL,
	[PFKBER] [varchar](16) NULL,
	[PSCOPE] [varchar](2) NULL,
	[LOGSYSP] [varchar](10) NULL,
	[DABRZ] [date] NULL,
	[BWSTRAT] [varchar](1) NULL,
	[OBJNR_HK] [varchar](22) NULL,
	[TIMESTMP] [decimal](16, 0) NULL,
	[QMNUM] [varchar](12) NULL,
	[GEBER] [varchar](10) NULL,
	[PGEBER] [varchar](10) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[PGRANT_NBR] [varchar](20) NULL,
	[REFBZ_FI] [decimal](3, 0) NULL,
	[SEGMENT] [varchar](10) NULL,
	[PSEGMENT] [varchar](10) NULL,
	[BUDGET_PD] [varchar](10) NULL,
	[PBUDGET_PD] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[KOKRS] ASC,
	[BELNR] ASC,
	[BUZEI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[EKKO]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[EKKO](
	[MANDT] [varchar](3) NULL,
	[EBELN] [varchar](10) NOT NULL,
	[BUKRS] [varchar](4) NULL,
	[BSTYP] [varchar](1) NULL,
	[BSART] [varchar](4) NULL,
	[BSAKZ] [varchar](1) NULL,
	[LOEKZ] [varchar](1) NULL,
	[STATU] [varchar](1) NULL,
	[AEDAT] [date] NULL,
	[ERNAM] [varchar](12) NULL,
	[PINCR] [decimal](5, 0) NULL,
	[LPONR] [decimal](5, 0) NULL,
	[LIFNR] [varchar](10) NULL,
	[SPRAS] [varchar](1) NULL,
	[ZTERM] [varchar](4) NULL,
	[ZBD1T] [decimal](3, 0) NULL,
	[ZBD2T] [decimal](3, 0) NULL,
	[ZBD3T] [decimal](3, 0) NULL,
	[ZBD1P] [decimal](5, 3) NULL,
	[ZBD2P] [decimal](5, 3) NULL,
	[EKORG] [varchar](4) NULL,
	[EKGRP] [varchar](3) NULL,
	[WAERS] [varchar](5) NULL,
	[WKURS] [decimal](9, 5) NULL,
	[KUFIX] [varchar](1) NULL,
	[BEDAT] [date] NULL,
	[KDATB] [date] NULL,
	[KDATE] [date] NULL,
	[BWBDT] [date] NULL,
	[ANGDT] [date] NULL,
	[BNDDT] [date] NULL,
	[GWLDT] [date] NULL,
	[AUSNR] [varchar](10) NULL,
	[ANGNR] [varchar](10) NULL,
	[IHRAN] [date] NULL,
	[IHREZ] [varchar](12) NULL,
	[VERKF] [varchar](30) NULL,
	[TELF1] [varchar](16) NULL,
	[LLIEF] [varchar](10) NULL,
	[KUNNR] [varchar](10) NULL,
	[KONNR] [varchar](10) NULL,
	[ABGRU] [varchar](2) NULL,
	[AUTLF] [varchar](1) NULL,
	[WEAKT] [varchar](1) NULL,
	[RESWK] [varchar](4) NULL,
	[LBLIF] [varchar](10) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[KTWRT] [decimal](15, 2) NULL,
	[SUBMI] [varchar](10) NULL,
	[KNUMV] [varchar](10) NULL,
	[KALSM] [varchar](6) NULL,
	[STAFO] [varchar](6) NULL,
	[LIFRE] [varchar](10) NULL,
	[EXNUM] [varchar](10) NULL,
	[UNSEZ] [varchar](12) NULL,
	[LOGSY] [varchar](10) NULL,
	[UPINC] [decimal](5, 0) NULL,
	[STAKO] [varchar](1) NULL,
	[FRGGR] [varchar](2) NULL,
	[FRGSX] [varchar](2) NULL,
	[FRGKE] [varchar](1) NULL,
	[FRGZU] [varchar](8) NULL,
	[FRGRL] [varchar](1) NULL,
	[LANDS] [varchar](3) NULL,
	[LPHIS] [varchar](1) NULL,
	[ADRNR] [varchar](10) NULL,
	[STCEG_L] [varchar](3) NULL,
	[STCEG] [varchar](20) NULL,
	[ABSGR] [decimal](2, 0) NULL,
	[ADDNR] [varchar](10) NULL,
	[KORNR] [varchar](1) NULL,
	[MEMORY] [varchar](1) NULL,
	[PROCSTAT] [varchar](2) NULL,
	[RLWRT] [decimal](15, 2) NULL,
	[REVNO] [varchar](8) NULL,
	[SCMPROC] [varchar](1) NULL,
	[REASON_CODE] [varchar](4) NULL,
	[MEMORYTYPE] [varchar](1) NULL,
	[RETTP] [varchar](1) NULL,
	[RETPC] [decimal](5, 2) NULL,
	[DPTYP] [varchar](4) NULL,
	[DPPCT] [decimal](5, 2) NULL,
	[DPAMT] [decimal](11, 2) NULL,
	[DPDAT] [date] NULL,
	[MSR_ID] [varchar](10) NULL,
	[HIERARCHY_EXISTS] [varchar](1) NULL,
	[THRESHOLD_EXISTS] [varchar](1) NULL,
	[LEGAL_CONTRACT] [varchar](40) NULL,
	[DESCRIPTION] [varchar](40) NULL,
	[RELEASE_DATE] [date] NULL,
	[FORCE_ID] [varchar](32) NULL,
	[FORCE_CNT] [decimal](6, 0) NULL,
	[RELOC_ID] [varchar](10) NULL,
	[RELOC_SEQ_ID] [varchar](4) NULL,
	[SOURCE_LOGSYS] [varchar](10) NULL,
	[ZZPRESETDATE] [date] NULL,
	[ZZPRESETTIME] [time](7) NULL,
	[ZZCUTOFF] [date] NULL,
	[ZZCUTOFF_TIME] [time](7) NULL,
	[ZZETA] [date] NULL,
	[ZZETD] [date] NULL,
	[ZZBOOKING] [varchar](30) NULL,
	[ZZORIGIN_PORT] [varchar](40) NULL,
	[ZZORI_LOC_QUAL] [varchar](2) NULL,
	[ZZORI_LOC_ID] [varchar](30) NULL,
	[ZZDEST_PORT] [varchar](40) NULL,
	[ZZDEST_LOC_QUAL] [varchar](2) NULL,
	[ZZDEST_LOC_ID] [varchar](30) NULL,
	[ZZVESSEL_NAME] [varchar](30) NULL,
	[ZZVOYAGE_ID] [varchar](10) NULL,
	[ZZSTEAMSHIP] [varchar](30) NULL,
	[ZZOCEANSCAC] [varchar](4) NULL,
	[ZZPARENTSHIP] [varchar](10) NULL,
	[ZZSERV_TYPE] [varchar](2) NULL,
	[ZZDIS_POOL_NAME] [varchar](40) NULL,
	[ZZDIS_POOL_QUAL] [varchar](2) NULL,
	[ZZDIS_POOL_ID] [varchar](30) NULL,
	[ZZREC_PLACE_NAME] [varchar](40) NULL,
	[ZZREC_PLACE_QUAL] [varchar](2) NULL,
	[ZZREC_PLACE_ID] [varchar](30) NULL,
	[ZZTEMP_MIN] [varchar](4) NULL,
	[ZZTEMP_MIN_UOM] [varchar](2) NULL,
	[ZZTEMP_MAX] [varchar](4) NULL,
	[ZZTEMP_MAX_UOM] [varchar](2) NULL,
	[ZZVENT_SET_CODE] [varchar](1) NULL,
	[ZZSPEC_EQP] [varchar](30) NULL,
	[ZZCONFPICKDT] [date] NULL,
	[ZWERKS] [varchar](4) NULL,
	[TKNUM] [varchar](10) NULL,
	[DLX_SEND] [varchar](1) NULL,
	[POHF_TYPE] [varchar](1) NULL,
	[EQ_EINDT] [date] NULL,
	[EQ_WERKS] [varchar](4) NULL,
	[FIXPO] [varchar](1) NULL,
	[EKGRP_ALLOW] [varchar](1) NULL,
	[WERKS_ALLOW] [varchar](1) NULL,
	[CONTRACT_ALLOW] [varchar](1) NULL,
	[PSTYP_ALLOW] [varchar](1) NULL,
	[FIXPO_ALLOW] [varchar](1) NULL,
	[KEY_ID_ALLOW] [varchar](1) NULL,
	[AUREL_ALLOW] [varchar](1) NULL,
	[DELPER_ALLOW] [varchar](1) NULL,
	[EINDT_ALLOW] [varchar](1) NULL,
	[LTSNR_ALLOW] [varchar](1) NULL,
	[OTB_LEVEL] [varchar](1) NULL,
	[OTB_COND_TYPE] [varchar](4) NULL,
	[KEY_ID] [decimal](16, 0) NULL,
	[OTB_VALUE] [decimal](17, 2) NULL,
	[OTB_CURR] [varchar](5) NULL,
	[OTB_RES_VALUE] [decimal](17, 2) NULL,
	[OTB_SPEC_VALUE] [decimal](17, 2) NULL,
	[SPR_RSN_PROFILE] [varchar](4) NULL,
	[BUDG_TYPE] [varchar](2) NULL,
	[OTB_STATUS] [varchar](1) NULL,
	[OTB_REASON] [varchar](3) NULL,
	[CHECK_TYPE] [varchar](1) NULL,
	[CON_OTB_REQ] [varchar](1) NULL,
	[CON_PREBOOK_LEV] [varchar](1) NULL,
	[CON_DISTR_LEV] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[EKPO]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[EKPO](
	[MANDT] [varchar](3) NULL,
	[EBELN] [varchar](10) NOT NULL,
	[EBELP] [decimal](5, 0) NOT NULL,
	[LOEKZ] [varchar](1) NULL,
	[STATU] [varchar](1) NULL,
	[AEDAT] [date] NULL,
	[TXZ01] [varchar](40) NULL,
	[MATNR] [varchar](18) NULL,
	[EMATN] [varchar](18) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[LGORT] [varchar](4) NULL,
	[BEDNR] [varchar](10) NULL,
	[MATKL] [varchar](9) NULL,
	[INFNR] [varchar](10) NULL,
	[IDNLF] [varchar](35) NULL,
	[KTMNG] [decimal](13, 3) NULL,
	[MENGE] [decimal](13, 3) NULL,
	[MEINS] [varchar](3) NULL,
	[BPRME] [varchar](3) NULL,
	[BPUMZ] [decimal](5, 0) NULL,
	[BPUMN] [decimal](5, 0) NULL,
	[UMREZ] [decimal](5, 0) NULL,
	[UMREN] [decimal](5, 0) NULL,
	[NETPR] [decimal](11, 2) NULL,
	[PEINH] [decimal](5, 0) NULL,
	[NETWR] [decimal](13, 2) NULL,
	[BRTWR] [decimal](13, 2) NULL,
	[AGDAT] [date] NULL,
	[WEBAZ] [decimal](3, 0) NULL,
	[MWSKZ] [varchar](2) NULL,
	[BONUS] [varchar](2) NULL,
	[INSMK] [varchar](1) NULL,
	[SPINF] [varchar](1) NULL,
	[PRSDR] [varchar](1) NULL,
	[SCHPR] [varchar](1) NULL,
	[MAHNZ] [decimal](3, 0) NULL,
	[MAHN1] [decimal](3, 0) NULL,
	[MAHN2] [decimal](3, 0) NULL,
	[MAHN3] [decimal](3, 0) NULL,
	[UEBTO] [decimal](3, 1) NULL,
	[UEBTK] [varchar](1) NULL,
	[UNTTO] [decimal](3, 1) NULL,
	[BWTAR] [varchar](10) NULL,
	[BWTTY] [varchar](1) NULL,
	[ABSKZ] [varchar](1) NULL,
	[AGMEM] [varchar](3) NULL,
	[ELIKZ] [varchar](1) NULL,
	[EREKZ] [varchar](1) NULL,
	[PSTYP] [varchar](1) NULL,
	[KNTTP] [varchar](1) NULL,
	[KZVBR] [varchar](1) NULL,
	[VRTKZ] [varchar](1) NULL,
	[TWRKZ] [varchar](1) NULL,
	[WEPOS] [varchar](1) NULL,
	[WEUNB] [varchar](1) NULL,
	[REPOS] [varchar](1) NULL,
	[WEBRE] [varchar](1) NULL,
	[KZABS] [varchar](1) NULL,
	[LABNR] [varchar](20) NULL,
	[KONNR] [varchar](10) NULL,
	[KTPNR] [decimal](5, 0) NULL,
	[ABDAT] [date] NULL,
	[ABFTZ] [decimal](13, 3) NULL,
	[ETFZ1] [decimal](3, 0) NULL,
	[ETFZ2] [decimal](3, 0) NULL,
	[KZSTU] [varchar](1) NULL,
	[NOTKZ] [varchar](1) NULL,
	[LMEIN] [varchar](3) NULL,
	[EVERS] [varchar](2) NULL,
	[ZWERT] [decimal](13, 2) NULL,
	[NAVNW] [decimal](13, 2) NULL,
	[ABMNG] [decimal](13, 3) NULL,
	[PRDAT] [date] NULL,
	[BSTYP] [varchar](1) NULL,
	[EFFWR] [decimal](13, 2) NULL,
	[XOBLR] [varchar](1) NULL,
	[KUNNR] [varchar](10) NULL,
	[ADRNR] [varchar](10) NULL,
	[EKKOL] [varchar](4) NULL,
	[SKTOF] [varchar](1) NULL,
	[STAFO] [varchar](6) NULL,
	[PLIFZ] [decimal](3, 0) NULL,
	[NTGEW] [decimal](13, 3) NULL,
	[GEWEI] [varchar](3) NULL,
	[TXJCD] [varchar](15) NULL,
	[ETDRK] [varchar](1) NULL,
	[SOBKZ] [varchar](1) NULL,
	[ARSNR] [decimal](10, 0) NULL,
	[ARSPS] [decimal](4, 0) NULL,
	[INSNC] [varchar](1) NULL,
	[SSQSS] [varchar](8) NULL,
	[ZGTYP] [varchar](4) NULL,
	[EAN11] [varchar](18) NULL,
	[BSTAE] [varchar](4) NULL,
	[REVLV] [varchar](2) NULL,
	[GEBER] [varchar](10) NULL,
	[FISTL] [varchar](16) NULL,
	[FIPOS] [varchar](14) NULL,
	[KO_GSBER] [varchar](4) NULL,
	[KO_PARGB] [varchar](4) NULL,
	[KO_PRCTR] [varchar](10) NULL,
	[KO_PPRCTR] [varchar](10) NULL,
	[MEPRF] [varchar](1) NULL,
	[BRGEW] [decimal](13, 3) NULL,
	[VOLUM] [decimal](13, 3) NULL,
	[VOLEH] [varchar](3) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[VORAB] [varchar](1) NULL,
	[KOLIF] [varchar](10) NULL,
	[LTSNR] [varchar](6) NULL,
	[PACKNO] [decimal](10, 0) NULL,
	[FPLNR] [varchar](10) NULL,
	[GNETWR] [decimal](13, 2) NULL,
	[STAPO] [varchar](1) NULL,
	[UEBPO] [decimal](5, 0) NULL,
	[LEWED] [date] NULL,
	[EMLIF] [varchar](10) NULL,
	[LBLKZ] [varchar](1) NULL,
	[SATNR] [varchar](18) NULL,
	[ATTYP] [varchar](2) NULL,
	[KANBA] [varchar](1) NULL,
	[ADRN2] [varchar](10) NULL,
	[CUOBJ] [decimal](18, 0) NULL,
	[XERSY] [varchar](1) NULL,
	[EILDT] [date] NULL,
	[DRDAT] [date] NULL,
	[DRUHR] [time](7) NULL,
	[DRUNR] [decimal](4, 0) NULL,
	[AKTNR] [varchar](10) NULL,
	[ABELN] [varchar](10) NULL,
	[ABELP] [decimal](5, 0) NULL,
	[ANZPU] [decimal](13, 3) NULL,
	[PUNEI] [varchar](3) NULL,
	[SAISO] [varchar](4) NULL,
	[SAISJ] [varchar](4) NULL,
	[EBON2] [varchar](2) NULL,
	[EBON3] [varchar](2) NULL,
	[EBONF] [varchar](1) NULL,
	[MLMAA] [varchar](1) NULL,
	[MHDRZ] [decimal](4, 0) NULL,
	[ANFNR] [varchar](10) NULL,
	[ANFPS] [decimal](5, 0) NULL,
	[KZKFG] [varchar](1) NULL,
	[USEQU] [varchar](1) NULL,
	[UMSOK] [varchar](1) NULL,
	[BANFN] [varchar](10) NULL,
	[BNFPO] [decimal](5, 0) NULL,
	[MTART] [varchar](4) NULL,
	[UPTYP] [varchar](1) NULL,
	[UPVOR] [varchar](1) NULL,
	[KZWI1] [decimal](13, 2) NULL,
	[KZWI2] [decimal](13, 2) NULL,
	[KZWI3] [decimal](13, 2) NULL,
	[KZWI4] [decimal](13, 2) NULL,
	[KZWI5] [decimal](13, 2) NULL,
	[KZWI6] [decimal](13, 2) NULL,
	[SIKGR] [varchar](3) NULL,
	[MFZHI] [decimal](15, 3) NULL,
	[FFZHI] [decimal](15, 3) NULL,
	[RETPO] [varchar](1) NULL,
	[AUREL] [varchar](1) NULL,
	[BSGRU] [varchar](3) NULL,
	[LFRET] [varchar](4) NULL,
	[MFRGR] [varchar](8) NULL,
	[NRFHG] [varchar](1) NULL,
	[J_1BNBM] [varchar](16) NULL,
	[J_1BMATUSE] [varchar](1) NULL,
	[J_1BMATORG] [varchar](1) NULL,
	[J_1BOWNPRO] [varchar](1) NULL,
	[J_1BINDUST] [varchar](2) NULL,
	[ABUEB] [varchar](4) NULL,
	[NLABD] [date] NULL,
	[NFABD] [date] NULL,
	[KZBWS] [varchar](1) NULL,
	[BONBA] [decimal](13, 2) NULL,
	[FABKZ] [varchar](1) NULL,
	[J_1AINDXP] [varchar](5) NULL,
	[J_1AIDATEP] [date] NULL,
	[MPROF] [varchar](4) NULL,
	[EGLKZ] [varchar](1) NULL,
	[KZTLF] [varchar](1) NULL,
	[KZFME] [varchar](1) NULL,
	[RDPRF] [varchar](4) NULL,
	[TECHS] [varchar](12) NULL,
	[CHG_SRV] [varchar](1) NULL,
	[CHG_FPLNR] [varchar](1) NULL,
	[MFRPN] [varchar](40) NULL,
	[MFRNR] [varchar](10) NULL,
	[EMNFR] [varchar](10) NULL,
	[NOVET] [varchar](1) NULL,
	[AFNAM] [varchar](12) NULL,
	[TZONRC] [varchar](6) NULL,
	[IPRKZ] [varchar](1) NULL,
	[LEBRE] [varchar](1) NULL,
	[BERID] [varchar](10) NULL,
	[XCONDITIONS] [varchar](1) NULL,
	[APOMS] [varchar](1) NULL,
	[CCOMP] [varchar](1) NULL,
	[GRANT_NBR] [varchar](20) NULL,
	[FKBER] [varchar](16) NULL,
	[STATUS] [varchar](1) NULL,
	[RESLO] [varchar](4) NULL,
	[KBLNR] [varchar](10) NULL,
	[KBLPOS] [decimal](3, 0) NULL,
	[WEORA] [varchar](1) NULL,
	[SRV_BAS_COM] [varchar](1) NULL,
	[PRIO_URG] [decimal](2, 0) NULL,
	[PRIO_REQ] [decimal](3, 0) NULL,
	[EMPST] [varchar](25) NULL,
	[SPE_ABGRU] [varchar](2) NULL,
	[SPE_CRM_SO] [varchar](10) NULL,
	[SPE_CRM_SO_ITEM] [decimal](6, 0) NULL,
	[SPE_CRM_REF_SO] [varchar](35) NULL,
	[SPE_CRM_REF_ITEM] [varchar](6) NULL,
	[SPE_CHNG_SYS] [varchar](1) NULL,
	[SPE_INSMK_SRC] [varchar](1) NULL,
	[SPE_CQ_CTRLTYPE] [varchar](1) NULL,
	[SPE_CQ_NOCQ] [varchar](1) NULL,
	[REASON_CODE] [varchar](4) NULL,
	[CQU_SAR] [decimal](15, 3) NULL,
	[ANZSN] [int] NULL,
	[SPE_EWM_DTC] [varchar](1) NULL,
	[EXLIN] [varchar](40) NULL,
	[EXSNR] [decimal](5, 0) NULL,
	[EHTYP] [varchar](4) NULL,
	[RETPC] [decimal](5, 2) NULL,
	[DPTYP] [varchar](4) NULL,
	[DPPCT] [decimal](5, 2) NULL,
	[DPAMT] [decimal](11, 2) NULL,
	[DPDAT] [date] NULL,
	[FLS_RSTO] [varchar](1) NULL,
	[EXT_RFX_NUMBER] [varchar](35) NULL,
	[EXT_RFX_ITEM] [varchar](10) NULL,
	[EXT_RFX_SYSTEM] [varchar](10) NULL,
	[SRM_CONTRACT_ID] [varchar](10) NULL,
	[SRM_CONTRACT_ITM] [decimal](10, 0) NULL,
	[ITCONS] [varchar](1) NULL,
	[/BEV1/NEGEN_ITEM] [varchar](1) NULL,
	[/BEV1/NEDEPFREE] [varchar](1) NULL,
	[/BEV1/NESTRUCCAT] [varchar](1) NULL,
	[ADVCODE] [varchar](2) NULL,
	[BUDGET_PD] [varchar](10) NULL,
	[EXCPE] [decimal](2, 0) NULL,
	[IUID_RELEVANT] [varchar](1) NULL,
	[REFSITE] [varchar](4) NULL,
	[SERRU] [varchar](1) NULL,
	[SERNP] [varchar](4) NULL,
	[DISUB_SOBKZ] [varchar](1) NULL,
	[DISUB_PSPNR] [decimal](8, 0) NULL,
	[DISUB_KUNNR] [varchar](10) NULL,
	[DISUB_VBELN] [varchar](10) NULL,
	[DISUB_POSNR] [decimal](6, 0) NULL,
	[DISUB_OWNER] [varchar](10) NULL,
	[REF_ITEM] [decimal](5, 0) NULL,
	[SOURCE_ID] [varchar](3) NULL,
	[SOURCE_KEY] [varchar](32) NULL,
	[PUT_BACK] [varchar](1) NULL,
	[POL_ID] [varchar](10) NULL,
	[CONS_ORDER] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[EBELN] ASC,
	[EBELP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[HOTEL_FARE_DETAIL_CA_STG]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[HOTEL_FARE_DETAIL_CA_STG](
	[Client_Name] [nvarchar](255) NULL,
	[Record_Key] [nvarchar](255) NULL,
	[GCN] [nvarchar](255) NULL,
	[Client_Cd] [nvarchar](255) NULL,
	[Lctr] [nvarchar](255) NULL,
	[Trvlr] [nvarchar](255) NULL,
	[Invoice_Dt] [nvarchar](255) NOT NULL,
	[Invoice_Num] [nvarchar](255) NOT NULL,
	[Agency] [nvarchar](255) NULL,
	[Agency_Num] [nvarchar](255) NULL,
	[Booking_Src] [nvarchar](255) NULL,
	[Booking_Agnt_ID] [nvarchar](255) NULL,
	[Local_HtlRsn_Cd] [nvarchar](255) NULL,
	[Local_HtlRsn_Cd_Desc] [nvarchar](255) NULL,
	[Glbl_HtlRsn_Cd] [nvarchar](255) NULL,
	[glbl_Htlrsn_cd_desc] [nvarchar](255) NULL,
	[Refund_Indctr] [nvarchar](255) NULL,
	[Exchange_Indctr] [nvarchar](255) NULL,
	[Original_docnum] [nvarchar](255) NULL,
	[Int_Dom] [nvarchar](255) NULL,
	[Trvl_Sctr] [nvarchar](255) NULL,
	[Traveler_Cntry] [nvarchar](255) NULL,
	[Ticketing_Cntry] [nvarchar](255) NULL,
	[Check_In_Dt] [nvarchar](255) NULL,
	[Check_Out_Dt] [nvarchar](255) NULL,
	[Cnfrmtn_Num] [nvarchar](255) NULL,
	[Htl_Mstr_ChainName] [nvarchar](255) NULL,
	[Htl_Chain_Cd] [nvarchar](255) NULL,
	[Htl_Chain_Name] [nvarchar](255) NULL,
	[Prprty_Name] [nvarchar](255) NULL,
	[Address1] [nvarchar](255) NULL,
	[Address2] [nvarchar](255) NULL,
	[Htl_Cty] [nvarchar](255) NULL,
	[Cty_Cd] [nvarchar](255) NULL,
	[Major_Cty] [nvarchar](255) NULL,
	[State] [nvarchar](255) NULL,
	[Postal_cd] [nvarchar](255) NULL,
	[Cntry_cd] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL,
	[Cntry_ph] [nvarchar](255) NULL,
	[No_Of_Rooms] [nvarchar](255) NULL,
	[No_Of_Nights] [nvarchar](255) NULL,
	[Room_Typ_cd] [nvarchar](255) NULL,
	[Room_Typ] [nvarchar](255) NULL,
	[Rate_Ctgry] [nvarchar](255) NULL,
	[Room_Rate] [nvarchar](255) NULL,
	[Tot_Amnt] [nvarchar](255) NULL,
	[Compare_Rate1] [nvarchar](255) NULL,
	[Diff_to_Rate1] [nvarchar](255) NULL,
	[Tot_Diff_to_Rate1] [nvarchar](255) NULL,
	[Compare_Rate2] [nvarchar](255) NULL,
	[Diff_to_Rate2] [nvarchar](255) NULL,
	[Tot_Diff_to_Rate2] [nvarchar](255) NULL,
	[Htl_Pref_Ind] [nvarchar](255) NULL,
	[CST_CNTR_ION] [nvarchar](255) NULL,
	[Error_Flag] [char](1) NULL,
	[Warning_Flag] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[HOTEL_FARE_DETAIL_US_STG]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[HOTEL_FARE_DETAIL_US_STG](
	[Client_Name] [nvarchar](255) NULL,
	[Record_Key] [nvarchar](255) NULL,
	[GCN] [nvarchar](255) NULL,
	[Client_Cd] [nvarchar](255) NULL,
	[Lctr] [nvarchar](255) NULL,
	[Trvlr] [nvarchar](255) NULL,
	[Invoice_Dt] [nvarchar](255) NOT NULL,
	[Invoice_Num] [nvarchar](255) NOT NULL,
	[Agency] [nvarchar](255) NULL,
	[Agency_Num] [nvarchar](255) NULL,
	[Booking_Src] [nvarchar](255) NULL,
	[Booking_Agnt_ID] [nvarchar](255) NULL,
	[Local_HtlRsn_Cd] [nvarchar](255) NULL,
	[Local_HtlRsn_Cd_Desc] [nvarchar](255) NULL,
	[Glbl_HtlRsn_Cd] [nvarchar](255) NULL,
	[glbl_Htlrsn_cd_desc] [nvarchar](255) NULL,
	[Refund_Indctr] [nvarchar](255) NULL,
	[Exchange_Indctr] [nvarchar](255) NULL,
	[Original_docnum] [nvarchar](255) NULL,
	[Int_Dom] [nvarchar](255) NULL,
	[Trvl_Sctr] [nvarchar](255) NULL,
	[Traveler_Cntry] [nvarchar](255) NULL,
	[Ticketing_Cntry] [nvarchar](255) NULL,
	[Check_In_Dt] [nvarchar](255) NULL,
	[Check_Out_Dt] [nvarchar](255) NULL,
	[Cnfrmtn_Num] [nvarchar](255) NULL,
	[Htl_Mstr_ChainName] [nvarchar](255) NULL,
	[Htl_Chain_Cd] [nvarchar](255) NULL,
	[Htl_Chain_Name] [nvarchar](255) NULL,
	[Prprty_Name] [nvarchar](255) NULL,
	[Address1] [nvarchar](255) NULL,
	[Address2] [nvarchar](255) NULL,
	[Htl_Cty] [nvarchar](255) NULL,
	[Cty_Cd] [nvarchar](255) NULL,
	[Major_Cty] [nvarchar](255) NULL,
	[State] [nvarchar](255) NULL,
	[Postal_cd] [nvarchar](255) NULL,
	[Cntry_cd] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL,
	[Cntry_ph] [nvarchar](255) NULL,
	[No_Of_Rooms] [nvarchar](255) NULL,
	[No_Of_Nights] [nvarchar](255) NULL,
	[Room_Typ_cd] [nvarchar](255) NULL,
	[Room_Typ] [nvarchar](255) NULL,
	[Rate_Ctgry] [nvarchar](255) NULL,
	[Room_Rate] [nvarchar](255) NULL,
	[Tot_Amnt] [nvarchar](255) NULL,
	[Compare_Rate1] [nvarchar](255) NULL,
	[Diff_to_Rate1] [nvarchar](255) NULL,
	[Tot_Diff_to_Rate1] [nvarchar](255) NULL,
	[Compare_Rate2] [nvarchar](255) NULL,
	[Diff_to_Rate2] [nvarchar](255) NULL,
	[Tot_Diff_to_Rate2] [nvarchar](255) NULL,
	[Htl_Pref_Ind] [nvarchar](255) NULL,
	[CST_CNTR_ION] [nvarchar](255) NULL,
	[Error_Flag] [char](1) NULL,
	[Warning_Flag] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[INTEVENT_DETAIL_CA_STG]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[INTEVENT_DETAIL_CA_STG](
	[Event_ID] [nvarchar](255) NULL,
	[Cst_Cntr] [nvarchar](255) NULL,
	[Event_Name] [nvarchar](255) NULL,
	[Venue] [nvarchar](255) NULL,
	[Start_Dt] [nvarchar](255) NULL,
	[End_Dt] [nvarchar](255) NULL,
	[Expense_Ctgry] [nvarchar](255) NULL,
	[Expense] [nvarchar](255) NULL,
	[Original_Qty] [nvarchar](255) NULL,
	[Cntrctd_Qty] [nvarchar](255) NULL,
	[Quoted_Rate] [nvarchar](255) NULL,
	[Cntract_Rate] [nvarchar](255) NULL,
	[Original_Cst] [nvarchar](255) NULL,
	[Negotiated_Cst] [nvarchar](255) NULL,
	[Savings] [nvarchar](255) NULL,
	[Value_Added_Csts] [nvarchar](255) NULL,
	[Error_Flag] [char](1) NULL,
	[Warning_Flag] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[INTEVENT_DETAIL_US_STG]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[INTEVENT_DETAIL_US_STG](
	[Event_ID] [nvarchar](255) NULL,
	[Cst_Cntr] [nvarchar](255) NULL,
	[Event_Name] [nvarchar](255) NULL,
	[Venue] [nvarchar](255) NULL,
	[Start_Dt] [nvarchar](255) NULL,
	[End_Dt] [nvarchar](255) NULL,
	[Expense_Ctgry] [nvarchar](255) NULL,
	[Expense] [nvarchar](255) NULL,
	[Original_Qty] [nvarchar](255) NULL,
	[Cntrctd_Qty] [nvarchar](255) NULL,
	[Quoted_Rate] [nvarchar](255) NULL,
	[Cntract_Rate] [nvarchar](255) NULL,
	[Original_Cst] [nvarchar](255) NULL,
	[Negotiated_Cst] [nvarchar](255) NULL,
	[Savings] [nvarchar](255) NULL,
	[Value_Added_Csts] [nvarchar](255) NULL,
	[Error_Flag] [char](1) NULL,
	[Warning_Flag] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[INTEVENT_SUMMARY_CA_STG]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[INTEVENT_SUMMARY_CA_STG](
	[Event_ID] [nvarchar](255) NULL,
	[Cst_Cntr] [nvarchar](255) NULL,
	[HB_Src] [nvarchar](255) NULL,
	[Hotel_Brnd] [nvarchar](255) NULL,
	[Property] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[State] [nvarchar](255) NULL,
	[Event_Name] [nvarchar](255) NULL,
	[Start_Dt] [nvarchar](255) NULL,
	[End_Dt] [nvarchar](255) NULL,
	[Rm_Nights] [nvarchar](255) NULL,
	[Rm_Savings] [nvarchar](255) NULL,
	[Meeting_Svngs] [nvarchar](255) NULL,
	[Othr_Svngs] [nvarchar](255) NULL,
	[Orgnl_Costs] [nvarchar](255) NULL,
	[Ngttd_Costs] [nvarchar](255) NULL,
	[Ngttd_Rm_Costs] [nvarchar](255) NULL,
	[Tot_Svngs] [nvarchar](255) NULL,
	[Tot_Val_Added] [nvarchar](255) NULL,
	[Actual_Attendees] [nvarchar](255) NULL,
	[Error_Flag] [char](1) NULL,
	[Warning_Flag] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[INTEVENT_SUMMARY_US_STG]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[INTEVENT_SUMMARY_US_STG](
	[Event_ID] [nvarchar](255) NULL,
	[Cst_Cntr] [nvarchar](255) NULL,
	[HB_Src] [nvarchar](255) NULL,
	[Hotel_Brnd] [nvarchar](255) NULL,
	[Property] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[State] [nvarchar](255) NULL,
	[Event_Name] [nvarchar](255) NULL,
	[Start_Dt] [nvarchar](255) NULL,
	[End_Dt] [nvarchar](255) NULL,
	[Rm_Nights] [nvarchar](255) NULL,
	[Rm_Savings] [nvarchar](255) NULL,
	[Meeting_Svngs] [nvarchar](255) NULL,
	[Othr_Svngs] [nvarchar](255) NULL,
	[Orgnl_Costs] [nvarchar](255) NULL,
	[Ngttd_Costs] [nvarchar](255) NULL,
	[Ngttd_Rm_Costs] [nvarchar](255) NULL,
	[Tot_Svngs] [nvarchar](255) NULL,
	[Tot_Val_Added] [nvarchar](255) NULL,
	[Actual_Attendees] [nvarchar](255) NULL,
	[Error_Flag] [char](1) NULL,
	[Warning_Flag] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[NEW_SPEND_CA_STG]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[NEW_SPEND_CA_STG](
	[PD] [nvarchar](255) NULL,
	[Year] [nvarchar](255) NULL,
	[Loc_Name] [nvarchar](255) NULL,
	[Loc_Cd] [nvarchar](255) NULL,
	[Pstn_Title] [nvarchar](255) NULL,
	[no_of_Grds] [nvarchar](255) NULL,
	[Stright_Time] [nvarchar](255) NULL,
	[Bllng_Rt_Strght] [nvarchar](255) NULL,
	[Premium_Hours] [nvarchar](255) NULL,
	[Premium_Billing_Rt] [nvarchar](255) NULL,
	[Total_Billed] [nvarchar](255) NULL,
	[Cost_Center] [nvarchar](255) NULL,
	[GL] [nvarchar](255) NULL,
	[Error_Flag] [char](1) NULL,
	[Warning_Flag] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[NEW_SPEND_US_STG]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[NEW_SPEND_US_STG](
	[PD] [nvarchar](255) NULL,
	[Year] [nvarchar](255) NULL,
	[Loc_Name] [nvarchar](255) NULL,
	[Loc_Cd] [nvarchar](255) NULL,
	[Pstn_Title] [nvarchar](255) NULL,
	[no_of_Grds] [nvarchar](255) NULL,
	[Stright_Time] [nvarchar](255) NULL,
	[Bllng_Rt_Strght] [nvarchar](255) NULL,
	[Premium_Hours] [nvarchar](255) NULL,
	[Premium_Billing_Rt] [nvarchar](255) NULL,
	[Total_Billed] [nvarchar](255) NULL,
	[Cost_Center] [nvarchar](255) NULL,
	[GL] [nvarchar](255) NULL,
	[Error_Flag] [char](1) NULL,
	[Warning_Flag] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[PRINTER_LXK_SUMM_STG]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[PRINTER_LXK_SUMM_STG](
	[Header_Detail] [nvarchar](255) NULL,
	[Pmt_Mthd] [nvarchar](255) NULL,
	[Pmt_Mthd_Supl] [nvarchar](255) NULL,
	[Currency] [nvarchar](255) NULL,
	[Pmt_Terms] [nvarchar](255) NULL,
	[Posting_Dt] [nvarchar](255) NULL,
	[Header_Cmpny_cd] [nvarchar](255) NULL,
	[Post_Key21_Credit31_inv] [nvarchar](255) NULL,
	[Vendor_NO] [nvarchar](255) NULL,
	[Invc_Dt] [nvarchar](255) NULL,
	[Invc_NO] [nvarchar](255) NULL,
	[Doc_Header_Txt] [nvarchar](255) NULL,
	[Vendor_Txt] [nvarchar](255) NULL,
	[Invc_tot] [nvarchar](255) NULL,
	[Tax_Amnt] [nvarchar](255) NULL,
	[Cmpny_cd] [nvarchar](255) NULL,
	[GL_accnt] [nvarchar](255) NULL,
	[Cst_Cntr] [nvarchar](255) NULL,
	[ION_order] [nvarchar](255) NULL,
	[Item_Amount] [nvarchar](255) NULL,
	[PK40_Debit_50_Crdt] [nvarchar](255) NULL,
	[Tax_Cd] [nvarchar](255) NULL,
	[Tax_Jrsdctn] [nvarchar](255) NULL,
	[Dtl_Txt] [nvarchar](255) NULL,
	[Error_Flag] [char](1) NULL,
	[Warning_Flag] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[PRINTERS_LXK_STG]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[PRINTERS_LXK_STG](
	[Master_Inv] [nvarchar](255) NULL,
	[Bill_To_Inv] [nvarchar](255) NULL,
	[Cust_Inv] [nvarchar](255) NULL,
	[Rpt_Hier_1] [nvarchar](255) NULL,
	[Rpt_Hier_2] [nvarchar](255) NULL,
	[Rpt_Hier_3] [nvarchar](255) NULL,
	[Rpt_Hier_4] [nvarchar](255) NULL,
	[Rpt_Hier_5] [nvarchar](255) NULL,
	[Cost_Center] [nvarchar](255) NULL,
	[Addr_Name] [nvarchar](255) NULL,
	[Install_Addr_Line1] [nvarchar](255) NULL,
	[Install_Addr_Line2] [nvarchar](255) NULL,
	[City_Suburb] [nvarchar](255) NULL,
	[State_Province] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL,
	[Postal_Code] [nvarchar](255) NULL,
	[Physical_Loc_1] [nvarchar](255) NULL,
	[Asset_Tag] [nvarchar](255) NULL,
	[Manufacturer] [nvarchar](255) NULL,
	[Device] [nvarchar](255) NULL,
	[Serial_NO] [nvarchar](255) NULL,
	[IP_Addr] [nvarchar](255) NULL,
	[Charge_Typ] [nvarchar](255) NULL,
	[Recurring_Amt] [nvarchar](255) NULL,
	[Meas] [nvarchar](255) NULL,
	[Start_Meter_Read] [nvarchar](255) NULL,
	[End_Meter_Read] [nvarchar](255) NULL,
	[Curr_Perd_Bllbl_Usg] [nvarchar](255) NULL,
	[Usage_Rt] [nvarchar](255) NULL,
	[Usage_Amnt] [nvarchar](255) NULL,
	[Tot_Charge_exclTax] [nvarchar](255) NULL,
	[Sales_Tax] [nvarchar](255) NULL,
	[Tot_Charge_IncTax] [nvarchar](255) NULL,
	[meas_code] [nvarchar](255) NULL,
	[charge_typ_cd] [nvarchar](255) NULL,
	[Error_Flag] [char](1) NULL,
	[Warning_Flag] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_B]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_B](
	[ION_CD] [varchar](12) NULL,
	[ION_CURR_TYP] [varchar](3) NULL,
	[ACCT_CD] [varchar](10) NULL,
	[PD] [varchar](10) NULL,
	[AMT] [decimal](15, 3) NULL,
	[VER] [varchar](10) NULL,
	[ERROR_FLAG] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_OHB]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_OHB](
	[COST_CTR_CD] [varchar](10) NULL,
	[COST_CURR_TYP] [varchar](3) NULL,
	[ACCT_CD] [varchar](10) NULL,
	[PD] [varchar](10) NULL,
	[AMT] [decimal](15, 3) NULL,
	[VER] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[UVW_BB_DETAIL_FINAL]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[UVW_BB_DETAIL_FINAL]
AS
SELECT
	[CO_AREA],
	[PD],
	[TOT_VAL_TRANS_CURR],
	[TOT_VAL_OBJ_CURR]  ,
	[TOT_VAL_CNTL_AREA_CURR]  ,
	[TOT_QTY_ENTR]  ,
	[LED_CNTL_OBJ]  ,
	[OBJ_NBR]  ,
	[FISC_YR]  ,
	[VAL_TYP]  ,
	[COST_ELE]  ,
	[CO_BUS_TRANS]  ,
	[DB_CR_IND]  ,
	[TXN_CURR]  ,
	[CURR_KEY]  ,
	[DOC_ITM_NBR]  ,
	[OFFSET_ACCT_NBR]  ,
	[OFFSET_ACCT_TYP]  ,
	[PLANT]  ,
	[PUR_DOC_NBR]  ,
	[ITM_NBR_PUR_DOC]  ,
	[VEND_NBR]  ,
	[VEND_NM]  ,
	[INVC_PRT_NBR]  ,
	[INVC_PRT_NM]  ,
	[ORDR_NBR]  ,
	[ORDR_TYP]  ,
	[ORDR_CATG]  ,
	[ORDR_NM]  ,
	[RESP_COST_CTR]  ,
	[SETT_COST_ELE]  ,
	[SETT_COST_CTR]  ,
	[GL_ACCT_SETT]  ,
	[PERS_RESP]  ,
	[PROFIT_CTR]  ,
	[PROFIT_CTR_NM]  ,
	[CO_CD]  ,
	[DOC_NBR]   ,
	[POST_ROW]   ,
	AH.[ACCT_DESC]  as [ACCT_DESC],
	AH.[ACCT_CATEG] as [ACCT_CATEG]  ,
	AH.[ACCT_SUB_CATEG] as [ACCT_SUB_CATEG]  ,
	CH.[CC_DESC] as [CC_DESC]  ,
	CH.[LEVEL0_DESC] as [LEVEL0_DESC]  ,
	CH.[LEVEL1_DESC] as [LEVEL1_DESC]  ,
	CH.[LEVEL1_CD] as [LEVEL1_CD]  ,
	CH.[LEVEL2_DESC] as [LEVEL2_DESC]  ,
	CH.[LEVEL2_CD] as [LEVEL2_CD]  ,
	CH.[LEVEL3_DESC] as [LEVEL3_DESC]  ,
	CH.[LEVEL3_CD] as [LEVEL3_CD]  ,
	CH.[LEVEL4_DESC] as [LEVEL4_DESC]  ,
	CH.[LEVEL4_CD] as [LEVEL4_CD]  ,
	CH.[LEVEL5_DESC] as [LEVEL5_DESC]  ,
	CH.[LEVEL5_CD] as [LEVEL5_CD]  ,
	CH.[LEVEL6_DESC] as [LEVEL6_DESC]  ,
	CH.[LEVEL6_CD] as [LEVEL6_CD]  

FROM [dbo].[BB_DETAIL_FINAL] BDF
INNER JOIN [EXT].[Acct_Hrchy_ZBB] AH
ON AH.Acct_Nbr = BDF.COST_ELE
INNER JOIN [EXT].[CC_Hrchy_ZBB] CH
on CH.CC_Nbr = BDF.RESP_COST_CTR

WHERE 1 = 1


GO
/****** Object:  View [dbo].[UVW_INTERNAL_EVENT_DETAIL_FINAL]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[UVW_INTERNAL_EVENT_DETAIL_FINAL] as
/*
SELECT [IED].[EVENT_ID] 
      ,[DIVISION]
      ,[EVENT_NAME]
      ,[VENUE]
	  ,[IES].[HB_SOURCE]
      ,[IES].[HOTEL_BRAND]
      ,[IES].[PROPERTY]
      ,[IES].[CITY]
      ,[IES].[STATE]
      ,[Start_ Date]
      ,IED.[END_DATE]
      ,[EXP_CATEGORY]
      ,[EXPENSE]
      ,[ORG_QTY]
      ,[CONTRACTED_QTY]
      ,[QUOTED_RATE]
      ,[CONTRACT_RATE]
      ,[ORG_COST]
      ,[NEG_COST]
      ,[SAVINGS]
	  ,[CC_Desc]
	  ,[Level0_Desc]
	  ,[Level1_Desc]
	  ,[Level1_Cd]
	  ,[Level2_Desc]
	  ,[Level2_Cd]
	  ,[Level3_Desc]
	  ,[Level3_Cd]
	  ,[Level4_Desc]
	  ,[Level4_Cd]
	  ,[Level5_Desc]
	  ,[Level5_Cd]
	  ,[Level6_Desc]
	  ,[Level6_Cd]
  FROM [TRL].[INTERNAL_EVENT_DETAIL_FINAL] IED
  INNER JOIN TRL.INTERNAL_EVENT_SUMMARY IES
    ON [IED].[EVENT_ID] = [IES].[EVENT_ID]
  AND [IED].[DIVISION] = [IES].[COST_CENTER]
  AND ISNULL([IED].[START_ DATE],'') = ISNULL([IES].[START_DATE],'')
  AND ISNULL([IED].[END_DATE],'') = ISNULL([IES].[END_DATE],'')
  LEFT JOIN EXT.CC_Hrchy_ZBB CHZ
	ON CAST(IED.DIVISION AS INT) = CAST(CHZ.CC_Nbr AS INT)
  WHERE IED.EVENT_ID NOT LIKE '%TOTAL%'
  */

  SELECT [IED].[EVENT_ID] 
      ,IED.[Cst_Cntr] as [DIVISION]
      ,ied.[Event_Name] as [EVENT_NAME]
      ,ied.[Venue] as [VENUE]
	  ,[IES].HB_Src as [HB_SOURCE]
      ,[IES].Hotel_Brnd as [HOTEL_BRAND]
      ,[IES].[PROPERTY] as [PROPERTY]
      ,[IES].[CITY] as [CITY]
      ,[IES].[STATE] as [STATE]
      ,ied.Start_Dt as [Start_ Date]
      ,IED.End_Dt as [END_DATE]
      ,ied.[Expense_Ctgry] as [EXP_CATEGORY]
      ,ied.[Expense] as [EXPENSE]
      ,ied.[Original_Qty] as [ORG_QTY]
      ,ied.[Cntrctd_Qty] as [CONTRACTED_QTY]
      ,ied.[Quoted_Rate] as [QUOTED_RATE]
      ,ied.[Cntract_Rate] as [CONTRACT_RATE]
      ,ied.[Original_Cst] as [ORG_COST]
      ,ied.[Negotiated_Cst] as [NEG_COST]
      ,ied.[Savings] as [SAVINGS]
	  ,[CC_Desc]
	  ,[Level0_Desc]
	  ,[Level1_Desc]
	  ,[Level1_Cd]
	  ,[Level2_Desc]
	  ,[Level2_Cd]
	  ,[Level3_Desc]
	  ,[Level3_Cd]
	  ,[Level4_Desc]
	  ,[Level4_Cd]
	  ,[Level5_Desc]
	  ,[Level5_Cd]
	  ,[Level6_Desc]
	  ,[Level6_Cd]
  FROM dbo.INTEVENT_DETAIL_NA IED with (nolock)
  INNER JOIN dbo.INTEVENT_SUMMARY_NA IES with (nolock)
    ON [IED].[EVENT_ID] = [IES].[EVENT_ID]
  AND [IED].[Cst_Cntr] = [IES].[Cst_Cntr]
  AND ISNULL([IED].Start_Dt,'') = ISNULL([IES].Start_Dt,'')
  AND ISNULL([IED].End_Dt,'') = ISNULL([IES].End_Dt,'')
  LEFT JOIN EXT.CC_Hrchy_ZBB CHZ
	ON CAST(IED.[Cst_Cntr] AS INT) = CAST(CHZ.CC_Nbr AS INT)
  WHERE IED.EVENT_ID NOT LIKE '%TOTAL%'
  



GO
/****** Object:  View [dbo].[UVW_NBB_DETAIL_FINAL]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[UVW_NBB_DETAIL_FINAL]
AS
SELECT
	[CO_AREA],
	[DOC_NBR],
	[POST_ROW],
	[PD],
	[TOTAL_VAL_TRANS],
	[TOT_VAL_OBJ]  ,
	[TOT_VAL_CO_AREA]  ,
	[TOT_QTY_ENTR]  ,
	[CO_LED]  ,
	[OBJ_NBR]  ,
	[FISC_YR]  ,
	[VAL_TYP]  ,
	[VERSION],
	[COST_ELE]  ,
	[COST_ELE_NM],
	[CO_BUS_TRANS]  ,
	[DB_CR_IND]  ,
	[TXN_CURR]  ,
	[CURR_KEY]  ,
	[SEG_TXT],
	[REF_POST_ROW],
	[DOC_ITM_NBR]  ,
	[OFFSET_ACCT_NBR]  ,
	[OFFSET_ACCT_TYP]  ,
	[PLANT]  ,
	[PUR_DOC_NBR]  ,
	[PUR_DOC_ITM],
	[PO_ITM_TXT],
	[VEND_NBR]  ,
	[VEND_NM]  ,
	[INVC_PRT_NBR]  ,
	[INVC_PRT_NM]  ,
	[COST_CTR]  ,
	[COST_CTR_NM],
	[PROFIT_CTR]  ,
	[PROFIT_CTR_NM]  ,
	[CO_CD]  ,
	[FCN_AREA],
	[OBJ_CLAS],
	[DOC_HDR_TXT],
	[USR_NM],
	[DOC_TYPE],
	AH.[ACCT_DESC]  as [ACCT_DESC],
	AH.[ACCT_CATEG] as [ACCT_CATEG]  ,
	AH.[ACCT_SUB_CATEG] as [ACCT_SUB_CATEG]  ,
	CH.[CC_DESC] as [CC_DESC]  ,
	CH.[LEVEL0_DESC] as [LEVEL0_DESC]  ,
	CH.[LEVEL1_DESC] as [LEVEL1_DESC]  ,
	CH.[LEVEL1_CD] as [LEVEL1_CD]  ,
	CH.[LEVEL2_DESC] as [LEVEL2_DESC]  ,
	CH.[LEVEL2_CD] as [LEVEL2_CD]  ,
	CH.[LEVEL3_DESC] as [LEVEL3_DESC]  ,
	CH.[LEVEL3_CD] as [LEVEL3_CD]  ,
	CH.[LEVEL4_DESC] as [LEVEL4_DESC]  ,
	CH.[LEVEL4_CD] as [LEVEL4_CD]  ,
	CH.[LEVEL5_DESC] as [LEVEL5_DESC]  ,
	CH.[LEVEL5_CD] as [LEVEL5_CD]  ,
	CH.[LEVEL6_DESC] as [LEVEL6_DESC]  ,
	CH.[LEVEL6_CD] as [LEVEL6_CD]  

FROM [dbo].[NBB_DETAIL_FINAL] BDF
INNER JOIN [EXT].[Acct_Hrchy_ZBB] AH
ON AH.Acct_Nbr = BDF.COST_ELE
INNER JOIN [EXT].[CC_Hrchy_ZBB] CH
on CH.CC_Nbr = BDF.COST_CTR

WHERE 1 = 1


GO
/****** Object:  View [dbo].[UVW_PRINTERS_LEXMARK_CNT_FINAL]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[UVW_PRINTERS_LEXMARK_CNT_FINAL]
AS
/*
select 
[SERIAL_NUMBER]
,[Invoice Date]
--,MEAS_NO
,count(DISTINCT [SERIAL_NUMBER]) AS CNT_PRINTER
from [TRL].[PRINTERS_LEXMARK_FINAL]
group by SERIAL_NUMBER
,[Invoice Date]
--,MEAS_NO

*/

select 
[Serial_NO] as [SERIAL_NUMBER]
,Invc_Dt as [Invoice Date]
--,MEAS_NO
,count(DISTINCT [Serial_NO]) AS CNT_PRINTER
from [dbo].[PRINTERS_LXK]
group by [Serial_NO]
,Invc_Dt
--,MEAS_NO


GO
/****** Object:  View [dbo].[UVW_PRINTERS_LEXMARK_FINAL]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE view [dbo].[UVW_PRINTERS_LEXMARK_FINAL] AS

/*
SELECT [MASTER_INVOICE]
      ,[BILL_TO_INVOICE]
      ,[CUSTOMER_INVOICE]
      ,[RPT_HIER_1]
      ,[RPT_HIER_2]
      ,[RPT_HIER_3]
	  ,CASE [RPT_HIER_4] WHEN 'DSD' Then 'Warehouse-DSD'
							WHEN 'NSD' Then 'Warehouse-NSD'
							WHEN 'NSD/Warehouse' Then 'Warehouse-NSD'
							WHEN 'Office' Then 'Office'
							WHEN 'Office - VIP' Then 'Office'
							When 'Sales Office' Then 'Office'
							When 'Campus' Then 'Office'
							When 'Closed' Then 'Office'
							When 'Office - Sales' Then 'Office'
							When 'Sales' Then 'Office'
							When 'USA' Then 'Office'
							When 'Plant' Then 'Plant'
						Else 'Other'
		END as [RPT_HIER_4]
      ,[RPT_HIER_5]
      ,[COST_CENTER]
      ,[ADDRESS_NAME]
      ,[INSTALL_ADDRESS_LINE1]
      ,[INSTALL_ADDRESS_LINE2]
      ,[CITY_SUBURB]
      ,[STATE_PROVINCE]
      ,[COUNTRY]
      ,[POSTAL_CODE]
      ,[PHYSICAL_LOC_1]
      ,[ASSET_TAG]
      ,[MANUFACTURER]
      ,[DEVICE]
      ,[SERIAL_NUMBER]
      ,[IP_ADDRESS]
      ,[CHARGE_TYPE]
      ,[RECURRING_AMT]
      ,[MEAS_NO]
     -- ,cast([START_METER_READ] as bigint)
	  ,CAST(replace([START_METER_READ],',','') as DECIMAL(17,3)) as [START_METER_READ]
     -- ,cast([END_METER_READ] as bigint)
	  ,CAST([END_METER_READ]  AS DECIMAL(17,3)) as [END_METER_READ]
      ,[CURRENT_PERIOD_BILLABLE_USAGE]
      ,[USAGE_RATE]
      ,[USAGE_AMOUNT]
      ,[TOTAL_CHARGE_EXCL_TAX]
      ,[SALES_TAX]
      ,[TOTAL_CHARGE_INC_TAX]
	  ,[CC_Desc]
      ,[Level0_Desc]
      ,[Level1_Desc]
      ,[Level1_Cd]
      ,[Level2_Desc]
      ,[Level2_Cd]
      ,[Level3_Desc]
      ,[Level3_Cd]
      ,[Level4_Desc]
      ,[Level4_Cd]
      ,[Level5_Desc]
      ,[Level5_Cd]
      ,[Level6_Desc]
      ,[Level6_Cd]
      ,[PD]
      ,[FISC_YR]
      ,[Invoice Date]
	  ,count(DISTINCT [DEVICE]) AS CNT_PRINTER
  FROM [TRL].[PRINTERS_LEXMARK_FINAL] PL
   LEFT JOIN EXT.CC_Hrchy_ZBB CHZ
   ON CAST(PL.[COST_CENTER] AS bigINT) = CAST(CHZ.CC_Nbr AS bigINT)
   group by 
[MASTER_INVOICE]
      ,[BILL_TO_INVOICE]
      ,[CUSTOMER_INVOICE]
      ,[RPT_HIER_1]
      ,[RPT_HIER_2]
      ,[RPT_HIER_3]
	  ,[RPT_HIER_4]
	  ,[RPT_HIER_5]
      ,[COST_CENTER]
      ,[ADDRESS_NAME]
      ,[INSTALL_ADDRESS_LINE1]
      ,[INSTALL_ADDRESS_LINE2]
      ,[CITY_SUBURB]
      ,[STATE_PROVINCE]
      ,[COUNTRY]
      ,[POSTAL_CODE]
      ,[PHYSICAL_LOC_1]
      ,[ASSET_TAG]
      ,[MANUFACTURER]
      ,[DEVICE]
      ,[SERIAL_NUMBER]
      ,[IP_ADDRESS]
      ,[CHARGE_TYPE]
      ,[RECURRING_AMT]
      ,[MEAS_NO]
	  ,[START_METER_READ]
	  ,[END_METER_READ]
      ,[CURRENT_PERIOD_BILLABLE_USAGE]
      ,[USAGE_RATE]
      ,[USAGE_AMOUNT]
      ,[TOTAL_CHARGE_EXCL_TAX]
      ,[SALES_TAX]
      ,[TOTAL_CHARGE_INC_TAX]
	  ,[CC_Desc]
      ,[Level0_Desc]
      ,[Level1_Desc]
      ,[Level1_Cd]
      ,[Level2_Desc]
      ,[Level2_Cd]
      ,[Level3_Desc]
      ,[Level3_Cd]
      ,[Level4_Desc]
      ,[Level4_Cd]
      ,[Level5_Desc]
      ,[Level5_Cd]
      ,[Level6_Desc]
      ,[Level6_Cd]
      ,[PD]
      ,[FISC_YR]
      ,[Invoice Date]
*/

SELECT  pl.Master_Inv as [MASTER_INVOICE]
      , pl.Bill_To_Inv  as [BILL_TO_INVOICE]
      ,pl.Cust_Inv   as [CUSTOMER_INVOICE]
      ,pl.Rpt_Hier_1   as [RPT_HIER_1]
      , pl.Rpt_Hier_2  as [RPT_HIER_2]
      ,pl.Rpt_Hier_3   as [RPT_HIER_3]
	  ,CASE pl.[RPT_HIER_4] WHEN 'DSD' Then 'Warehouse-DSD'
							WHEN 'NSD' Then 'Warehouse-NSD'
							WHEN 'NSD/Warehouse' Then 'Warehouse-NSD'
							WHEN 'Office' Then 'Office'
							WHEN 'Office - VIP' Then 'Office'
							When 'Sales Office' Then 'Office'
							When 'Campus' Then 'Office'
							When 'Closed' Then 'Office'
							When 'Office - Sales' Then 'Office'
							When 'Sales' Then 'Office'
							When 'USA' Then 'Office'
							When 'Plant' Then 'Plant'
						Else 'Other'
		END as [RPT_HIER_4]
      , pl.Rpt_Hier_5  as [RPT_HIER_5]
      , pl.Cost_Center  as [COST_CENTER]
      , pl.Addr_Name  as [ADDRESS_NAME]
      , pl.Install_Addr_Line1  as [INSTALL_ADDRESS_LINE1]
      , pl.Install_Addr_Line2  as [INSTALL_ADDRESS_LINE2]
      , pl.City_Suburb  as [CITY_SUBURB]
      ,pl.State_Province   as [STATE_PROVINCE]
      ,pl.Country   as [COUNTRY]
      ,pl.Postal_Code   as [POSTAL_CODE]
      ,pl.Physical_Loc_1   as [PHYSICAL_LOC_1]
      , pl.Asset_Tag  as [ASSET_TAG]
      ,pl.Manufacturer   as [MANUFACTURER]
      ,pl.Device   as [DEVICE]
      , pl.Serial_NO  as [SERIAL_NUMBER]
      ,pl.IP_Addr   as [IP_ADDRESS]
      , pl.Charge_Typ  as [CHARGE_TYPE]
      , pl.Recurring_Amt  as [RECURRING_AMT]
      , pl.Meas  as [MEAS_NO]
     -- ,cast([START_METER_READ] as bigint)
	  ,CAST(replace(pl.[START_METER_READ],',','') as DECIMAL(17,3)) as [START_METER_READ]
     -- ,cast([END_METER_READ] as bigint)
	  ,CAST(pl.[END_METER_READ]  AS DECIMAL(17,3)) as [END_METER_READ]
      ,pl.Curr_Perd_Bllbl_Usg   as [CURRENT_PERIOD_BILLABLE_USAGE]
      ,pl.Usage_Rt   as [USAGE_RATE]
      ,pl.Usage_Amnt   as [USAGE_AMOUNT]
      ,pl.Tot_Charge_exclTax   as [TOTAL_CHARGE_EXCL_TAX]
      ,pl.Sales_Tax   as [SALES_TAX]
      ,pl.Tot_Charge_IncTax   as [TOTAL_CHARGE_INC_TAX]
	  ,[CC_Desc]
      ,[Level0_Desc]
      ,[Level1_Desc]
      ,[Level1_Cd]
      ,[Level2_Desc]
      ,[Level2_Cd]
      ,[Level3_Desc]
      ,[Level3_Cd]
      ,[Level4_Desc]
      ,[Level4_Cd]
      ,[Level5_Desc]
      ,[Level5_Cd]
      ,[Level6_Desc]
      ,[Level6_Cd]
      , month(invc_dt) as  [PD]
      , year(invc_dt) as [FISC_YR]
      ,pl.invc_dt AS [Invoice Date]
	  ,count(DISTINCT [DEVICE]) AS CNT_PRINTER
  FROM dbo.[PRINTERS_LXK] PL
   LEFT JOIN EXT.CC_Hrchy_ZBB CHZ
   ON CAST(PL.[COST_CENTER] AS bigINT) = CAST(CHZ.CC_Nbr AS bigINT)
   group by 
 pl.Master_Inv 
      , pl.Bill_To_Inv 
      ,pl.Cust_Inv  
      ,pl.Rpt_Hier_1   
      , pl.Rpt_Hier_2 
      ,pl.Rpt_Hier_3 
	  ,pl.[RPT_HIER_4]
      , pl.Rpt_Hier_5 
      , pl.Cost_Center 
      , pl.Addr_Name 
      , pl.Install_Addr_Line1 
      , pl.Install_Addr_Line2 
      , pl.City_Suburb 
      ,pl.State_Province  
      ,pl.Country  
      ,pl.Postal_Code 
      ,pl.Physical_Loc_1  
      , pl.Asset_Tag 
      ,pl.Manufacturer 
      ,pl.Device  
      , pl.Serial_NO
      ,pl.IP_Addr 
      , pl.Charge_Typ 
      , pl.Recurring_Amt 
      , pl.Meas
     -- ,cast([START_METER_READ] as bigint)
	  ,pl.[START_METER_READ]
     -- ,cast([END_METER_READ] as bigint)
	  ,pl.[END_METER_READ] 
      ,pl.Curr_Perd_Bllbl_Usg
      ,pl.Usage_Rt 
      ,pl.Usage_Amnt 
      ,pl.Tot_Charge_exclTax 
      ,pl.Sales_Tax  
      ,pl.Tot_Charge_IncTax
	  ,[CC_Desc]
      ,[Level0_Desc]
      ,[Level1_Desc]
      ,[Level1_Cd]
      ,[Level2_Desc]
      ,[Level2_Cd]
      ,[Level3_Desc]
      ,[Level3_Cd]
      ,[Level4_Desc]
      ,[Level4_Cd]
      ,[Level5_Desc]
      ,[Level5_Cd]
      ,[Level6_Desc]
      ,[Level6_Cd],
	   month(invc_dt)
      , year(invc_dt)
      ,pl.invc_dt
     



	  



GO
/****** Object:  View [dbo].[UVW_SECURITY]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE view [dbo].[UVW_SECURITY]
as
/*
SELECT [ID]
      ,[PD]
      ,[YEAR]
      ,[LOCATION_NAME]
      ,[LOCATION_CODE]
      ,[POSITION_TITLE]
      ,[NO_OF_GUARDS]
      ,[STRIGHT_TIME]
      ,[BILLING_RATE_STRAIGHT]
      ,[PREMIUM_HOURS]
      ,[PREMIUM_BILLING_RATE]
      ,[TOTAL_BILLED]
	  ,[COST_CENTER] as [GL]
	  ,[CC_Desc]
	  ,[GL] as [COST_CENTER]
	  ,[Acct_Desc]
	  ,[Acct_Categ]
	  ,[Acct_Sub_Categ]
      ,[Level0_Desc]
      ,[Level1_Desc]
      ,[Level1_Cd]
      ,[Level2_Desc]
      ,[Level2_Cd]
      ,[Level3_Desc]
      ,[Level3_Cd]
      ,[Level4_Desc]
      ,[Level4_Cd]
      ,[Level5_Desc]
      ,[Level5_Cd]
      ,[Level6_Desc]
      ,[Level6_Cd]
  FROM [dbo].[SECURITY_FINAL] SF
 INNER JOIN EXT.CC_Hrchy_ZBB CHZ
        ON CAST(ISNULL(SF.[COST_CENTER],0) AS bigint) = CAST(ISNULL(CHZ.CC_Nbr,0) AS bigint)
INNER JOIN [EXT].[Acct_Hrchy_ZBB] AHZ
		ON RTRIM(SF.[GL]) = AHZ.Acct_Nbr
		*/

		
SELECT [ID]
      ,[PD]
      ,[YEAR]
      ,sf.[Loc_Name] as [LOCATION_NAME]
      ,sf.[Loc_Cd] as [LOCATION_CODE]
      ,sf.[Pstn_Title] as [POSITION_TITLE]
      ,sf.[no_of_Grds] as [NO_OF_GUARDS]
      ,sf.[Stright_Time] as [STRIGHT_TIME]
      ,sf.[Bllng_Rt_Strght] as [BILLING_RATE_STRAIGHT]
      ,sf.[Premium_Hours] as [PREMIUM_HOURS]
      ,sf.[Premium_Billing_Rt] as [PREMIUM_BILLING_RATE]
      ,sf.[Total_Billed] as [TOTAL_BILLED]
	  ,sf.Cost_Center as [GL]
	  ,[CC_Desc]
	  ,sf.GL as [COST_CENTER]
	  ,[Acct_Desc]
	  ,[Acct_Categ]
	  ,[Acct_Sub_Categ]
      ,[Level0_Desc]
      ,[Level1_Desc]
      ,[Level1_Cd]
      ,[Level2_Desc]
      ,[Level2_Cd]
      ,[Level3_Desc]
      ,[Level3_Cd]
      ,[Level4_Desc]
      ,[Level4_Cd]
      ,[Level5_Desc]
      ,[Level5_Cd]
      ,[Level6_Desc]
      ,[Level6_Cd]
  FROM [dbo].[NEW_SPEND_NA] SF
 INNER JOIN EXT.CC_Hrchy_ZBB CHZ
        ON cast(cast(isnull(Cost_Center,0) as decimal(18,2)) as bigint)  = cast(cast(isnull(CHZ.CC_Nbr,0) as decimal(18,2)) as bigint)
INNER JOIN [EXT].[Acct_Hrchy_ZBB] AHZ
		ON RTRIM(SF.[GL]) = AHZ.Acct_Nbr






GO
/****** Object:  View [dbo].[VW_AIRFARE_DETAIL_FINAL]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VW_AIRFARE_DETAIL_FINAL]
AS
/*
commented BCD old structure as part of implementing new structure
SELECT [ID]
      ,[Client Name]
      ,[Record Key]
      ,[GCN Number]
      ,[Client Code]
      ,[LOCATOR]
      ,[TRAVELER]
      ,[Invoice Date]
      ,[Invoice Number]
      ,SUBSTRING([AGENCY],5,LEN([AGENCY])-4) AS [AGENCY]
      ,[Agency Number]
      ,[Booking Source]
      ,[Booking Agent ID]
      ,[Local Air Reason Code]
      ,[Local Air Reason Code Description]
      ,[Global Air Reason Code]
      ,[Global Air Reason Code Description]
      ,[Fare Accepted Code]
      ,[Fare Accepted Code Description]
      ,[Credit Card Number]
      ,[Credit Card Type]
      ,[Credit Card Expiration]
      ,[Refund Indicator]
      ,[Exchange Indicator]
      ,[True Ticket Count]
      ,[Round Trip Indicator]
      ,[Short/Long Haul Indicator]
      ,[Original Document Number]
      ,[Int Dom]
      ,[Travel Sector]
      ,[Traveler Country]
      ,[Ticketing Country]
      ,[Trip Length]
      ,[Travel Start Date]
      ,[Ticket Number]
      ,[Carrier Code]
      ,[Carrier Name]
      ,[Origin Airport Code]
      ,[Origin City]
      ,[Origin Airport]
      ,[Origin Country]
      ,[Destination Airport Code]
      ,[Destination City]
      ,[Destination Airport]
      ,[Destination Country]
      ,[ROUTING]
      ,[Booking Class Summary]
      ,[Fare Basis Summary]
      ,[CABIN]
      ,[Tour Code]
      ,[Booking Date]
      ,[Days Advance Booking]
      ,[Days Advance Booking Group]
      ,[Days Advance Purchase]
      ,[Days Advance Purchase Group]
      ,[MILEAGE]
      ,[Cost Per Mile (USD)]
      ,[Tax Amount (USD)]
      ,[Ticket Amt Minus Taxes (USD)]
      ,[Total Ticket Amount (USD)]
      ,[Low Fare (USD)]
      ,[Full Fare (USD)]
      ,[Amount Lost (USD)]
      ,[Full Fare Savings (USD)]
      ,[Contract Savings (USD)]
      ,[Fare Before Discount (USD)]
      ,[Fare Compare 2 (USD)]
      ,[Fare Compare 3 (USD)]
      ,[Fare Compare 4 (USD)]
      ,[Fare Compare 5 (USD)]
      ,[Fare Compare 6 (USD)]
      ,[COST CENTER / ION]
      ,[CC_Desc]
      ,[Level0_Desc]
      ,[Level1_Desc]
      ,[Level1_Cd]
      ,[Level2_Desc]
      ,[Level2_Cd]
      ,[Level3_Desc]
      ,[Level3_Cd]
      ,[Level4_Desc]
      ,[Level4_Cd]
      ,[Level5_Desc]
      ,[Level5_Cd]
      ,[Level6_Desc]
      ,[Level6_Cd]
  FROM [TRL].[AIRFARE_DETAIL_FINAL]*/
  
SELECT b.id as [ID]
     ,b.client_name as [Client Name]
      ,b.record_key as [Record Key]
      ,b.gcn as [GCN Number]
      ,b.client_cd as [Client Code]
      ,b.lctr as [LOCATOR]
      ,b.trvlr as [TRAVELER]
      ,b.invoice_dt as [Invoice Date]
      ,b.invoice_num as [Invoice Number]
      ,  SUBSTRING(b.AGENCY,5,LEN(b.AGENCY)-4) AS [AGENCY]
	  ,b.agency_num as [Agency Number]
      ,b.booking_src as [Booking Source]
      ,b.booking_agnt_id as [Booking Agent ID]
      ,b.local_air_rsn_cd as [Local Air Reason Code]
      ,b.local_air_rsn_cd_desc as [Local Air Reason Code Description]
      ,b.glbl_air_rsn_cd as [Global Air Reason Code]
      ,b.glbl_air_rsn_cd_desc as [Global Air Reason Code Description]
      ,b.fare_accptd_cd as [Fare Accepted Code]
      ,b.fare_accptd_cd_desc as [Fare Accepted Code Description]
      ,b.creditcrd_num as [Credit Card Number]
      ,b.creditcrd_typ as [Credit Card Type]
      ,b.creditcrd_exprtn as [Credit Card Expiration]
      ,b.refund_indctr as [Refund Indicator]
      ,b.exchange_indctr as [Exchange Indicator]
      ,b.true_tckt_cnt as [True Ticket Count]
      ,b.round_trp_indctr as [Round Trip Indicator]
      ,b.short_long_HL_indctr as [Short/Long Haul Indicator]
      ,b.original_docnum as [Original Document Number]
      ,b.int_dom as [Int Dom]
      ,b.trvl_sctr as [Travel Sector]
      ,b.traveler_cntry as [Traveler Country]
      ,b.ticketing_cntry as [Ticketing Country]
      ,b.trip_lgth as [Trip Length]
      ,b.travel_strt_dt as [Travel Start Date]
      ,b.ticket_num as [Ticket Number]
      ,b.carrier_cd as [Carrier Code]
      ,b.carrier_name as [Carrier Name]
      ,b.orgn_airport_cd as [Origin Airport Code]
      ,b.origin_cty as [Origin City]
      ,b.origin_airport as [Origin Airport]
      ,b.origin_cntry as [Origin Country]
      ,b.dstntn_airport_cd as [Destination Airport Code]
      ,b.dstntn_cty as [Destination City]
      ,b.dstntn_airport as [Destination Airport]
      ,b.dstntn_cntry as [Destination Country]
      ,b.routing as [ROUTING]
      ,b.booking_clss_smmry as [Booking Class Summary]
      ,b.fare_basis_smmry as [Fare Basis Summary]
      ,b.cabin as [CABIN]
      ,b.tour_cd as [Tour Code]
      ,b.booking_dt as[Booking Date]
      ,b.days_adv_booking as[Days Advance Booking]
      ,b.days_adv_booking_grp as[Days Advance Booking Group]
      ,b.days_adv_prchs as[Days Advance Purchase]
      ,b.days_adv_prchsgrp as[Days Advance Purchase Group]
      ,b.mileage as[MILEAGE]
      ,b.cost_per_mile as[Cost Per Mile (USD)]
      ,b.tax_amnt as[Tax Amount (USD)]
      ,b.ticket_amt_mns_txs as[Ticket Amt Minus Taxes (USD)]
      ,b.total_ticket_amnt as[Total Ticket Amount (USD)]
      ,b.low_fare as[Low Fare (USD)]
      ,b.full_fare as[Full Fare (USD)]
      ,b.amnt_lost as[Amount Lost (USD)]
      ,b.full_fare_svngs as[Full Fare Savings (USD)]
      ,b.contract_svngs as[Contract Savings (USD)]
      ,b.fare_bfr_dscnt as[Fare Before Discount (USD)]
      ,b.fare_cmpr2 as[Fare Compare 2 (USD)]
      ,b.fare_cmpr3 as[Fare Compare 3 (USD)]
      ,b.fare_cmpr4 as[Fare Compare 4 (USD)]
      ,b.fare_cmpr5 as [Fare Compare 5 (USD)]
      ,b.fare_cmpr6 as [Fare Compare 6 (USD)]
      ,b.CST_CNTR_ION as [COST CENTER / ION]
	   ,a.[CC_Desc] as [CC_Desc]
      ,a.[Level0_Desc] as [Level0_Desc]
      ,a.[Level1_Desc] as [Level1_Desc]
      ,a.[Level1_Cd] as [Level1_Cd]
      ,a.[Level2_Desc] as [Level2_Desc] 
      ,a.[Level2_Cd] as [Level2_Cd]
      ,a.[Level3_Desc] as [Level3_Desc]
      ,a.[Level3_Cd] as [Level3_Cd]
      ,a.[Level4_Desc] as [Level4_Desc]
      ,a.[Level4_Cd] as [Level4_Cd]
      ,a.[Level5_Desc] as [Level5_Desc]
      ,a.[Level5_Cd] as [Level5_Cd]
      ,a.[Level6_Desc] as [Level6_Desc]
      ,a.[Level6_Cd] as [Level6_Cd]
  FROM-- [TRL].[AIRFARE_DETAIL_FINAL]
  dbo.[AIRFARE_DETAIL_NA] b WITH(NOLOCK) left  join ext.CC_Hrchy_ZBB a WITH(NOLOCK)
  on b.CST_CNTR_ION =   cast(a.[cc_nbr] as int) 



GO
/****** Object:  View [dbo].[VW_HOTEL_DETAIL_FINAL]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE view [dbo].[VW_HOTEL_DETAIL_FINAL]
AS
      /*commented the below code to implement new table structure 
	  SELECT
       [Client Name],
        [Record Key],
        [GCN],
        cast([Client Code] as bigint) [Client Code],
        [LOCATOR],
        [TRAVELER],
        [Invoice Date],
        [Invoice Number],
        [AGENCY],
        [Agency Number],
        [Booking Source],
        [Booking Agent ID],
        [Local Hotel Reason Code],
        [Local Reason Code Description],
        [Global Hotel Reason Code],
        [Global Reason Code Description],
       [Refund Indicator],
       [Exchange Indicator],
        cast([Original Document Number] as bigint) [Original Document Number],
        [Int Dom],
        [Travel Sector],
        [Traveler Country],
        [Ticketing Country],
        [Check-In Date],
        [Check-Out Date],
       [Confirmation Number],
        [Hotel Master Chain Name],
        [Hotel Chain Code],
        [Hotel Chain Name],
        [Property Name],
        [Address 1],
        [Address 2],
        [Hotel City],
        [City Code],
        [Major City],
        [STATE],
       [Postal Code],
        [Country Code],
        [COUNTRY],
        cast([PHONE] as bigint) [PHONE],
        [Number Of Rooms],
        [Number Of Nights],
        [Room Type Code],
        [Room Type],
        [Rate Category],
        [Room Rate (USD)],
        [Total Amount (USD)],
        [Compare Rate 1 (USD)],
        [Difference to Rate 1 (USD)],
        [Total Difference to Rate 1 (USD)],
        [Compare Rate 2 (USD)],
        [Difference to Rate 2 (USD)],
        [Total Difference to Rate 2 (USD)],
        [Hotel Preference Indicator],
        [COST CENTER / ION],
        [CC_Desc],
        [Level0_Desc],
        [Level1_Desc],
        [Level1_Cd],
        [Level2_Desc],
        [Level2_Cd],
        [Level3_Desc],
        [Level3_Cd],
        [Level4_Desc],
        [Level4_Cd],
        [Level5_Desc],
        [Level5_Cd],
        [Level6_Desc],
        [Level6_Cd]
        
      FROM TRL.HOTEL_DETAIL_FINAL HD
      LEFT JOIN EXT.CC_Hrchy_ZBB CHZ
        ON CAST(HD.[COST CENTER / ION] AS int) = CAST(CHZ.CC_Nbr AS int)
      WHERE [Client Name] NOT LIKE '%Total%'
      AND [Invoice Date] IS NOT NULL
      AND [Check-In Date] IS NOT NULL
      AND [Check-Out Date] IS NOT NULL*/
	  SELECT
HD.Client_Name as [Client Name],
HD.Record_Key as [Record Key],
HD.[GCN],
cast(HD.Client_Cd as bigint) [Client Code],
HD.Lctr as [LOCATOR],
HD.Trvlr as [TRAVELER],
HD.Invoice_Dt as[Invoice Date],
HD.Invoice_Num as [Invoice Number],
HD.Agency as [AGENCY],
HD.Agency_Num as [Agency Number],
HD.Booking_Src as [Booking Source],
HD.Booking_Agnt_ID as [Booking Agent ID],
HD.Local_HtlRsn_Cd  as [Local Hotel Reason Code],
HD.Local_HtlRsn_Cd_Desc as [Local Reason Code Description],
HD.Glbl_HtlRsn_Cd as [Global Hotel Reason Code],
HD.glbl_Htlrsn_cd_desc as [Global Reason Code Description],
HD.Refund_Indctr as [Refund Indicator],
HD.Exchange_Indctr as [Exchange Indicator],
cast(HD.Original_docnum as bigint) [Original Document Number],
HD.Int_Dom as [Int Dom],
HD.Trvl_Sctr as [Travel Sector],
HD.Traveler_Cntry as [Traveler Country],
HD.Ticketing_Cntry as [Ticketing Country],
HD.Check_In_Dt as [Check-In Date],
HD.Check_Out_Dt as [Check-Out Date],
HD.Cnfrmtn_Num as [Confirmation Number],
HD.Htl_Mstr_ChainName as [Hotel Master Chain Name],
HD.Htl_Chain_Cd as [Hotel Chain Code],
HD.Htl_Chain_Name as [Hotel Chain Name],
HD.Prprty_Name as [Property Name],
HD.Address1 as [Address 1],
HD.Address2 as [Address 2],
HD.Htl_Cty as [Hotel City],
HD.Cty_Cd as [City Code],
HD.Major_Cty as [Major City],
HD.State as [STATE],
HD.Postal_cd as [Postal Code],
HD.Cntry_cd as  [Country Code],
HD.Country as  [COUNTRY],
cast(HD.Cntry_ph as bigint) as[PHONE],
cast(cast(HD.No_Of_Rooms  as decimal(18,2)) as int) as [Number Of Rooms],
cast(cast(HD.No_Of_Nights as decimal(18,2)) as int)  as [Number Of Nights],
--cast(HD.No_Of_Rooms   as int) as [Number Of Rooms],
--cast(HD.No_Of_Nights  as int)  as [Number Of Nights],
HD.Room_Typ_cd as [Room Type Code],
HD.Room_Typ as [Room Type],
HD.Rate_Ctgry as [Rate Category],
HD.Room_Rate as [Room Rate (USD)],
HD.Tot_Amnt as [Total Amount (USD)],
HD.Compare_Rate1 as [Compare Rate 1 (USD)],
HD.Diff_to_Rate1 as [Difference to Rate 1 (USD)],
HD.Tot_Diff_to_Rate1 as [Total Difference to Rate 1 (USD)],
HD.Compare_Rate2 as [Compare Rate 2 (USD)],
HD.Diff_to_Rate2 as [Difference to Rate 2 (USD)],
HD.Tot_Diff_to_Rate2 as [Total Difference to Rate 2 (USD)],
HD.Htl_Pref_Ind as [Hotel Preference Indicator],
HD.CST_CNTR_ION as [COST CENTER / ION],
[CC_Desc],
[Level0_Desc],
[Level1_Desc],
[Level1_Cd],
[Level2_Desc],
[Level2_Cd],
[Level3_Desc],
[Level3_Cd],
[Level4_Desc],
[Level4_Cd],
[Level5_Desc],
[Level5_Cd],
[Level6_Desc],
[Level6_Cd]

FROM HOTEL_FARE_DETAIL_NA as  HD WITH(NOLOCK)
LEFT JOIN EXT.CC_Hrchy_ZBB CHZ WITH(NOLOCK)
ON CAST(HD.[CST_CNTR_ION] AS int) = CAST(CHZ.CC_Nbr AS int)
WHERE [Client_Name] NOT LIKE '%Total%'
AND Invoice_Dt IS NOT NULL
AND [Check_In_Dt] IS NOT NULL
AND [Check_Out_Dt] IS NOT NULL







GO
/****** Object:  View [dbo].[VW_RENTAL_CAR_DETAIL_FINAL]    Script Date: 11/20/2018 5:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[VW_RENTAL_CAR_DETAIL_FINAL]
AS
/*
commented the below code to implement new structure 
SELECT [ID]
      ,[Client Name]
      ,[Record Key]
      ,[GCN]
      ,[Client Code]
      ,[LOCATOR]
      ,[TRAVELER]
      ,[Invoice Date]
      ,[Invoice Number]
      ,SUBSTRING([AGENCY],5,LEN([AGENCY])-4) AS [AGENCY]
      ,[Agency Number]
      ,[Booking Source]
      ,[Booking Agent ID]
      ,[Local Reason Code]
      ,[Local Reason Code Description]
      ,[Global Reason Code]
      ,[Global Reason Code Description]
      ,[Refund Indicator]
      ,[Exchange Indicator]
      ,[Original Document Number]
      ,[Int Dom]
      ,[Travel Sector]
      ,[Traveler Country]
      ,[Ticketing Country]
      ,[Number of Cars]
      ,[Number of Days]
      ,[Pickup Date]
      ,[Drop Off Date]
      ,[Confirmation Number]
      ,[Chain Code]
      ,[Chain Name]
      ,[City Name]
      ,[State/Province]
      ,[Country Name]
      ,[Car Type Code]
      ,[Car Type Description]
      ,[Daily Rate (USD)]
      ,[Total Amount (USD)]
      ,[COST_CENTER_ION]
      ,[CC_Desc]
      ,[Level0_Desc]
      ,[Level1_Desc]
      ,[Level1_Cd]
      ,[Level2_Desc]
      ,[Level2_Cd]
      ,[Level3_Desc]
      ,[Level3_Cd]
      ,[Level4_Desc]
      ,[Level4_Cd]
      ,[Level5_Desc]
      ,[Level5_Cd]
      ,[Level6_Desc]
      ,[Level6_Cd]
  FROM [TRL].[RENTAL_CAR_DETAIL_FINAL] RCD
    LEFT JOIN EXT.CC_Hrchy_ZBB CHZ
  ON CAST(RCD.COST_CENTER_ION AS INT)  = CAST(CHZ.CC_Nbr AS INT)
  */
  /*WHERE [Client Name] NOT LIKE '%Report Total%' 
		AND [Invoice Date] IS NOT NULL 
		AND [Pickup Date] IS NOT NULL 
		AND [Drop Off Date] IS NOT NULL 
		*/


		SELECT ID as [ID]
      ,Client_Name as [Client Name]
      ,Record_Key as [Record Key]
      ,GCN as[GCN]
      ,Client_Cd as [Client Code]
      ,Lctr as [LOCATOR]
      ,Trvlr as [TRAVELER]
      ,Invoice_Dt as [Invoice Date]
      ,Invoice_Num as [Invoice Number]
      ,SUBSTRING([Agency],5,LEN([Agency])-4) AS [AGENCY]
      ,Agency_Num as [Agency Number]
      ,Booking_Src as [Booking Source]
      ,Booking_Agnt_ID as [Booking Agent ID]
      ,Local_Rsn_Cd as [Local Reason Code]
      ,Local_Rsn_Cd_Desc as[Local Reason Code Description]
      ,Glbl_Rsn_Cd as [Global Reason Code]
      ,glbl_rsn_cd_desc as [Global Reason Code Description]
      ,Refund_Indctr as[Refund Indicator]
      ,Exchange_Indctr as [Exchange Indicator]
      ,Original_docnum as [Original Document Number]
      ,Int_Dom as [Int Dom]
      ,Trvl_Sctr as [Travel Sector]
      ,Traveler_Cntry as [Traveler Country]
      ,Ticketing_Cntry as [Ticketing Country]
      ,cast(No_Of_Cars as float) as [Number of Cars]
      ,cast(No_Of_days as float) as [Number of Days]
      ,Pickup_Dt as [Pickup Date]
      ,Drop_Off_Dt as [Drop Off Date]
      ,Confrmtn_Num as [Confirmation Number]
      ,Chain_Cd as [Chain Code]
      ,Chain_Name as [Chain Name]
      ,Cty_Name as [City Name]
      ,State_Province as [State/Province]
      ,Cntry_Name as [Country Name]
      ,Car_Typ_Cd as [Car Type Code]
      ,Car_Typ_Desc as [Car Type Description]
      ,Daily_Rate as [Daily Rate (USD)]
      ,Total_Amnt as [Total Amount (USD)]
      ,CST_CNTR_ION as [COST_CENTER_ION]
      ,[CC_Desc]
      ,[Level0_Desc]
      ,[Level1_Desc]
      ,[Level1_Cd]
      ,[Level2_Desc]
      ,[Level2_Cd]
      ,[Level3_Desc]
      ,[Level3_Cd]
      ,[Level4_Desc]
      ,[Level4_Cd]
      ,[Level5_Desc]
      ,[Level5_Cd]
      ,[Level6_Desc]
      ,[Level6_Cd]
  FROM dbo.[CAR_RENT_DETAIL_NA] RCD WITH(NOLOCK)
    LEFT JOIN EXT.CC_Hrchy_ZBB CHZ WITH(NOLOCK)
  ON CAST(RCD.CST_CNTR_ION AS INT)  = CAST(CHZ.CC_Nbr AS INT)
  /*WHERE [Client_Name] NOT LIKE '%Report Total%' 
AND [Invoice_Dt] IS NOT NULL 
AND [Pickup_Dt] IS NOT NULL 
AND [Drop_Off_Dt] IS NOT NULL 
*/



GO
ALTER TABLE [dbo].[DB_Size_Metric_Detail_Raw] ADD  CONSTRAINT [DF_DB_Size_Metric_Detail_Raw_UsedSpace]  DEFAULT ((0)) FOR [UsedSpaceMB]
GO
ALTER TABLE [dbo].[NEW_SPEND_NA] ADD  DEFAULT ((0)) FOR [no_of_Grds]
GO
ALTER TABLE [dbo].[NEW_SPEND_NA] ADD  DEFAULT ((0)) FOR [Stright_Time]
GO
ALTER TABLE [dbo].[NEW_SPEND_NA] ADD  DEFAULT ((0)) FOR [Bllng_Rt_Strght]
GO
ALTER TABLE [dbo].[NEW_SPEND_NA] ADD  DEFAULT ((0)) FOR [Premium_Hours]
GO
ALTER TABLE [dbo].[NEW_SPEND_NA] ADD  DEFAULT ((0)) FOR [Premium_Billing_Rt]
GO
ALTER TABLE [dbo].[NEW_SPEND_NA] ADD  DEFAULT ((0)) FOR [Total_Billed]
GO
ALTER TABLE [STG].[AIRFARE_DETAIL_CA_STG] ADD  DEFAULT ('N') FOR [Error_Flag]
GO
ALTER TABLE [STG].[AIRFARE_DETAIL_CA_STG] ADD  DEFAULT ('N') FOR [Warning_Flag]
GO
ALTER TABLE [STG].[AIRFARE_DETAIL_US_STG] ADD  DEFAULT ('N') FOR [Error_Flag]
GO
ALTER TABLE [STG].[AIRFARE_DETAIL_US_STG] ADD  DEFAULT ('N') FOR [Warning_Flag]
GO
ALTER TABLE [STG].[NEW_SPEND_CA_STG] ADD  CONSTRAINT [DF_NEW_SPEND_CA_STG_no_of_Grds]  DEFAULT ((0)) FOR [no_of_Grds]
GO
ALTER TABLE [STG].[NEW_SPEND_CA_STG] ADD  CONSTRAINT [DF_NEW_SPEND_CA_STG_Stright_Time]  DEFAULT ((0)) FOR [Stright_Time]
GO
ALTER TABLE [STG].[NEW_SPEND_CA_STG] ADD  CONSTRAINT [DF_NEW_SPEND_CA_STG_Bllng_Rt_Strght]  DEFAULT ((0)) FOR [Bllng_Rt_Strght]
GO
ALTER TABLE [STG].[NEW_SPEND_CA_STG] ADD  CONSTRAINT [DF_NEW_SPEND_CA_STG_Premium_Hours]  DEFAULT ((0)) FOR [Premium_Hours]
GO
ALTER TABLE [STG].[NEW_SPEND_CA_STG] ADD  CONSTRAINT [DF_NEW_SPEND_CA_STG_Premium_Billing_Rt]  DEFAULT ((0)) FOR [Premium_Billing_Rt]
GO
ALTER TABLE [STG].[NEW_SPEND_CA_STG] ADD  CONSTRAINT [DF_NEW_SPEND_CA_STG_Total_Billed]  DEFAULT ((0)) FOR [Total_Billed]
GO
ALTER TABLE [STG].[PRINTERS_LXK_STG] ADD  DEFAULT ('N') FOR [Error_Flag]
GO
ALTER TABLE [STG].[PRINTERS_LXK_STG] ADD  DEFAULT ('N') FOR [Warning_Flag]
GO
ALTER TABLE [ADT].[Batch_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Batch_Detail] FOREIGN KEY([Batch_Schedule_Id])
REFERENCES [ADT].[Batch_Schedule] ([Batch_Schedule_Id])
GO
ALTER TABLE [ADT].[Batch_Detail] CHECK CONSTRAINT [FK_Batch_Detail]
GO
ALTER TABLE [ADT].[Batch_Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Batch_Schedule] FOREIGN KEY([Batch_Type_Id])
REFERENCES [ADT].[Batch_type] ([Batch_Type_ID])
GO
ALTER TABLE [ADT].[Batch_Schedule] CHECK CONSTRAINT [FK_Batch_Schedule]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cost Center' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZBB_BB_NBB_COEP', @level2type=N'COLUMN',@level2name=N'KOKRS'
GO
USE [master]
GO
ALTER DATABASE [KG_ZBB] SET  READ_WRITE 
GO
USE [KG_ZBB]
GO
/****** Object:  Index [TBL_T513S_IX]    Script Date: 11/20/2018 5:33:30 PM ******/
CREATE NONCLUSTERED COLUMNSTORE INDEX [TBL_T513S_IX] ON [src].[TBL_T513S]
(
	[ENDDA],
	[BEGDA]
)WITH (DROP_EXISTING = OFF) ON [PRIMARY]
GO
