USE [master]
GO
/****** Object:  Database [TPE_DS_Stage]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE DATABASE [TPE_DS_Stage]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TPE_DS_Stage', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\TPE_DS_Stage.mdf' , SIZE = 244705472KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'TPE_DS_Stage_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\TPE_DS_Stage_log.ldf' , SIZE = 4813824KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TPE_DS_Stage].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TPE_DS_Stage] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TPE_DS_Stage] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TPE_DS_Stage] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TPE_DS_Stage] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TPE_DS_Stage] SET ARITHABORT OFF 
GO
ALTER DATABASE [TPE_DS_Stage] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TPE_DS_Stage] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TPE_DS_Stage] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TPE_DS_Stage] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TPE_DS_Stage] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TPE_DS_Stage] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TPE_DS_Stage] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TPE_DS_Stage] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TPE_DS_Stage] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TPE_DS_Stage] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TPE_DS_Stage] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TPE_DS_Stage] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TPE_DS_Stage] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TPE_DS_Stage] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TPE_DS_Stage] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TPE_DS_Stage] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TPE_DS_Stage] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TPE_DS_Stage] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TPE_DS_Stage] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TPE_DS_Stage] SET  MULTI_USER 
GO
ALTER DATABASE [TPE_DS_Stage] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TPE_DS_Stage] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TPE_DS_Stage] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TPE_DS_Stage] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TPE_DS_Stage', N'ON'
GO
USE [TPE_DS_Stage]
GO
/****** Object:  User [US\SQL_RGM_SUPPORT_R]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE USER [US\SQL_RGM_SUPPORT_R] FOR LOGIN [US\SQL_RGM_SUPPORT_R]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:52:13 PM ******/
CREATE ROLE [db_view_def]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_RGM_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_RGM_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [us\SQL_KEYSTONE_SA_PROD_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_Keystone_SA_Prod]
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
/****** Object:  Table [dbo].[KLG_TPE_APO52_LIST_PRICE_VALID_FAIL_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_APO52_LIST_PRICE_VALID_FAIL_STG](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[DI_ERRORACTION] [varchar](1) NULL,
	[DI_ERRORCOLUMNS] [varchar](500) NULL,
	[DI_ROWID] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_BOM_SRC]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_BOM_SRC](
	[MOD Material] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Sales Org] [varchar](8) NULL,
	[Distribution Channel] [varchar](2) NULL,
	[DIVISION] [varchar](4) NULL,
	[PERCENT] [decimal](10, 3) NULL,
	[QUANTITY] [decimal](16, 3) NULL,
	[UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_BOM_STD_PRC_EQ_REMOD_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_BOM_STD_PRC_EQ_REMOD_STG](
	[MOD Material] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Year] [varchar](4) NULL,
	[PERCENT] [decimal](10, 3) NULL,
	[Mod Changed Flag] [varchar](4) NULL,
	[BASE_YEAR] [varchar](4) NULL,
	[Component Standard Price] [decimal](17, 2) NULL,
	[Component Quantity] [decimal](16, 3) NULL,
	[Component COP$] [decimal](17, 3) NULL,
	[MOD Standard Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_BOM_STD_PRC_EQ_REMOD_STG_1]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_BOM_STD_PRC_EQ_REMOD_STG_1](
	[MOD Material] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[PERCENT] [decimal](10, 3) NULL,
	[Component Standard Price] [decimal](17, 2) NULL,
	[Component Quantity] [decimal](16, 3) NULL,
	[Component COP$] [decimal](16, 3) NULL,
	[Component COP Currency] [varchar](5) NULL,
	[MOD Standard Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_BOM_STD_PRC_EQ_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_BOM_STD_PRC_EQ_STG](
	[MOD Material] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[PERCENT] [decimal](10, 3) NULL,
	[Component Standard Price] [decimal](17, 2) NULL,
	[Component Quantity] [decimal](16, 3) NULL,
	[Component COP$] [decimal](16, 3) NULL,
	[Component COP Currency] [varchar](5) NULL,
	[MOD Standard Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_BOM_STD_PRC_NEQ_REMOD_STG_1]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_BOM_STD_PRC_NEQ_REMOD_STG_1](
	[Material ID] [varchar](18) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Standard Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_BOM_STD_PRC_NEQ_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_BOM_STD_PRC_NEQ_STG](
	[Material ID] [varchar](18) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Standard Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_BOM_SUM_COMP_REMOD_STG_1]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_BOM_SUM_COMP_REMOD_STG_1](
	[MOD Material] [varchar](18) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Sum Component COP$] [decimal](16, 3) NULL,
	[Component COP Currency] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_BOM_SUM_COMP_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_BOM_SUM_COMP_STG](
	[MOD Material] [varchar](18) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Sum Component COP$] [decimal](16, 3) NULL,
	[Component COP Currency] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_BUOM_COMBINED_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_BUOM_COMBINED_STG](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[CALENDER_WEEK] [varchar](7) NULL,
	[DPMATERIAL] [varchar](40) NULL,
	[BASE_STAT_GSV] [decimal](17, 2) NULL,
	[CANNIB_ADJ_GSV] [decimal](17, 2) NULL,
	[CRM_INCR_SHIP] [decimal](17, 2) NULL,
	[Innovation/PWR_GSV] [decimal](17, 2) NULL,
	[MKTG_ADJ_GSV] [decimal](17, 2) NULL,
	[OTHER_FORECAST_ADJ_GSV] [decimal](17, 2) NULL,
	[PLANNER_ADJ_GSV] [decimal](17, 2) NULL,
	[SALES_ADJ_GSV] [decimal](17, 2) NULL,
	[CONSENSUS_GSV] [decimal](17, 2) NULL,
	[BASE_STAT_LBS] [decimal](17, 2) NULL,
	[CANNIB_ADJ_LBS] [decimal](17, 2) NULL,
	[CRM_INCR_SHIP_LBS] [decimal](17, 2) NULL,
	[Innovation/PWR_LBS] [decimal](17, 2) NULL,
	[MKTG_ADJ_LBS] [decimal](17, 2) NULL,
	[OTHER_FORECAST_ADJ_LBS] [decimal](17, 2) NULL,
	[PLANNER_ADJ_LBS] [decimal](17, 2) NULL,
	[SALES_ADJ_LBS] [decimal](17, 2) NULL,
	[CONSENSUS_LBS] [decimal](17, 2) NULL,
	[BASE_STAT_CASES] [decimal](17, 3) NULL,
	[BASE_STAT_EACHES] [decimal](17, 3) NULL,
	[BASE_STAT_KGS] [decimal](17, 3) NULL,
	[CANNIB_ADJ_CASES] [decimal](17, 3) NULL,
	[CANNIB_ADJ_EACHES] [decimal](17, 3) NULL,
	[CANNIB_ADJ_KGS] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_CASES] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_EACHES] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_KGS] [decimal](17, 3) NULL,
	[Innovation/PWR_Cases] [decimal](17, 3) NULL,
	[INNOVATION/PWR_EACHES] [decimal](17, 3) NULL,
	[INNOVATION/PWR_KGS] [decimal](17, 3) NULL,
	[MKTG_ADJ_CASES] [decimal](17, 3) NULL,
	[MKTG_ADJ_EACHES] [decimal](17, 3) NULL,
	[MKTG_ADJ_KGS] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_CASES] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_EACHES] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_KGS] [decimal](17, 3) NULL,
	[PLANNER_ADJ_CASES] [decimal](17, 3) NULL,
	[PLANNER_ADJ_EACHES] [decimal](17, 3) NULL,
	[PLANNER_ADJ_KGS] [decimal](17, 3) NULL,
	[SALES_ADJ_CASES] [decimal](17, 3) NULL,
	[SALES_ADJ_EACHES] [decimal](17, 3) NULL,
	[SALES_ADJ_KGS] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_EACHES] [decimal](17, 3) NULL,
	[CONSENSUS_KGS] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[UNIT] [varchar](3) NULL,
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_BUOM_CS_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_BUOM_CS_STG](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[CALENDER_WEEK] [varchar](7) NULL,
	[DPMATERIAL] [varchar](40) NULL,
	[BASE_STAT_GSV] [decimal](17, 2) NULL,
	[CANNIB_ADJ_GSV] [decimal](17, 2) NULL,
	[CRM_INCR_SHIP] [decimal](17, 2) NULL,
	[Innovation/PWR_GSV] [decimal](17, 2) NULL,
	[MKTG_ADJ_GSV] [decimal](17, 2) NULL,
	[OTHER_FORECAST_ADJ_GSV] [decimal](17, 2) NULL,
	[PLANNER_ADJ_GSV] [decimal](17, 2) NULL,
	[SALES_ADJ_GSV] [decimal](17, 2) NULL,
	[CONSENSUS_GSV] [decimal](17, 2) NULL,
	[BASE_STAT_LBS] [decimal](17, 2) NULL,
	[CANNIB_ADJ_LBS] [decimal](17, 2) NULL,
	[CRM_INCR_SHIP_LBS] [decimal](17, 2) NULL,
	[Innovation/PWR_LBS] [decimal](17, 2) NULL,
	[MKTG_ADJ_LBS] [decimal](17, 2) NULL,
	[OTHER_FORECAST_ADJ_LBS] [decimal](17, 2) NULL,
	[PLANNER_ADJ_LBS] [decimal](17, 2) NULL,
	[SALES_ADJ_LBS] [decimal](17, 2) NULL,
	[CONSENSUS_LBS] [decimal](17, 2) NULL,
	[BASE_STAT_CASES] [decimal](17, 3) NULL,
	[BASE_STAT_EACHES] [decimal](17, 3) NULL,
	[BASE_STAT_KGS] [decimal](17, 3) NULL,
	[CANNIB_ADJ_CASES] [decimal](17, 3) NULL,
	[CANNIB_ADJ_EACHES] [decimal](17, 3) NULL,
	[CANNIB_ADJ_KGS] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_CASES] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_EACHES] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_KGS] [decimal](17, 3) NULL,
	[Innovation/PWR_Cases] [decimal](17, 3) NULL,
	[INNOVATION/PWR_EACHES] [decimal](17, 3) NULL,
	[INNOVATION/PWR_KGS] [decimal](17, 3) NULL,
	[MKTG_ADJ_CASES] [decimal](17, 3) NULL,
	[MKTG_ADJ_EACHES] [decimal](17, 3) NULL,
	[MKTG_ADJ_KGS] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_CASES] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_EACHES] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_KGS] [decimal](17, 3) NULL,
	[PLANNER_ADJ_CASES] [decimal](17, 3) NULL,
	[PLANNER_ADJ_EACHES] [decimal](17, 3) NULL,
	[PLANNER_ADJ_KGS] [decimal](17, 3) NULL,
	[SALES_ADJ_CASES] [decimal](17, 3) NULL,
	[SALES_ADJ_EACHES] [decimal](17, 3) NULL,
	[SALES_ADJ_KGS] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_EACHES] [decimal](17, 3) NULL,
	[CONSENSUS_KGS] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[UNIT] [varchar](3) NULL,
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_BUOM_NONCS_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_BUOM_NONCS_STG](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[CALENDER_WEEK] [varchar](7) NULL,
	[DPMATERIAL] [varchar](40) NULL,
	[BASE_STAT_GSV] [decimal](17, 2) NULL,
	[CANNIB_ADJ_GSV] [decimal](17, 2) NULL,
	[CRM_INCR_SHIP] [decimal](17, 2) NULL,
	[Innovation/PWR_GSV] [decimal](17, 2) NULL,
	[MKTG_ADJ_GSV] [decimal](17, 2) NULL,
	[OTHER_FORECAST_ADJ_GSV] [decimal](17, 2) NULL,
	[PLANNER_ADJ_GSV] [decimal](17, 2) NULL,
	[SALES_ADJ_GSV] [decimal](17, 2) NULL,
	[CONSENSUS_GSV] [decimal](17, 2) NULL,
	[BASE_STAT_LBS] [decimal](17, 2) NULL,
	[CANNIB_ADJ_LBS] [decimal](17, 2) NULL,
	[CRM_INCR_SHIP_LBS] [decimal](17, 2) NULL,
	[Innovation/PWR_LBS] [decimal](17, 2) NULL,
	[MKTG_ADJ_LBS] [decimal](17, 2) NULL,
	[OTHER_FORECAST_ADJ_LBS] [decimal](17, 2) NULL,
	[PLANNER_ADJ_LBS] [decimal](17, 2) NULL,
	[SALES_ADJ_LBS] [decimal](17, 2) NULL,
	[CONSENSUS_LBS] [decimal](17, 2) NULL,
	[BASE_STAT_CASES] [decimal](17, 3) NULL,
	[BASE_STAT_EACHES] [decimal](17, 3) NULL,
	[BASE_STAT_KGS] [decimal](17, 3) NULL,
	[CANNIB_ADJ_CASES] [decimal](17, 3) NULL,
	[CANNIB_ADJ_EACHES] [decimal](17, 3) NULL,
	[CANNIB_ADJ_KGS] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_CASES] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_EACHES] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_KGS] [decimal](17, 3) NULL,
	[Innovation/PWR_Cases] [decimal](17, 3) NULL,
	[Innovation/PWR_EACHES] [decimal](17, 3) NULL,
	[Innovation/PWR_KGS] [decimal](17, 3) NULL,
	[MKTG_ADJ_CASES] [decimal](17, 3) NULL,
	[MKTG_ADJ_EACHES] [decimal](17, 3) NULL,
	[MKTG_ADJ_KGS] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_CASES] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_EACHES] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_KGS] [decimal](17, 3) NULL,
	[PLANNER_ADJ_CASES] [decimal](17, 3) NULL,
	[PLANNER_ADJ_EACHES] [decimal](17, 3) NULL,
	[PLANNER_ADJ_KGS] [decimal](17, 3) NULL,
	[SALES_ADJ_CASES] [decimal](17, 3) NULL,
	[SALES_ADJ_EACHES] [decimal](17, 3) NULL,
	[SALES_ADJ_KGS] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_EACHES] [decimal](17, 3) NULL,
	[CONSENSUS_KGS] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[UNIT] [varchar](3) NULL,
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_FAIL_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_FAIL_STG](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[CALENDER_WEEK] [varchar](7) NULL,
	[DPMATERIAL] [varchar](40) NULL,
	[BASE_STAT_GSV] [decimal](17, 2) NULL,
	[CANNIB_ADJ_GSV] [decimal](17, 2) NULL,
	[CRM_INCR_SHIP] [decimal](17, 2) NULL,
	[Innovation/PWR_GSV] [decimal](17, 2) NULL,
	[MKTG_ADJ_GSV] [decimal](17, 2) NULL,
	[OTHER_FORECAST_ADJ_GSV] [decimal](17, 2) NULL,
	[PLANNER_ADJ_GSV] [decimal](17, 2) NULL,
	[SALES_ADJ_GSV] [decimal](17, 2) NULL,
	[CONSENSUS_GSV] [decimal](17, 2) NULL,
	[BASE_STAT_LBS] [decimal](17, 2) NULL,
	[CANNIB_ADJ_LBS] [decimal](17, 2) NULL,
	[CRM_INCR_SHIP_LBS] [decimal](17, 2) NULL,
	[Innovation/PWR_LBS] [decimal](17, 2) NULL,
	[MKTG_ADJ_LBS] [decimal](17, 2) NULL,
	[OTHER_FORECAST_ADJ_LBS] [decimal](17, 2) NULL,
	[PLANNER_ADJ_LBS] [decimal](17, 2) NULL,
	[SALES_ADJ_LBS] [decimal](17, 2) NULL,
	[CONSENSUS_LBS] [decimal](17, 2) NULL,
	[BASE_STAT_CASES] [decimal](17, 3) NULL,
	[CANNIB_ADJ_CASES] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_CASES] [decimal](17, 3) NULL,
	[Innovation/PWR_Cases] [decimal](17, 3) NULL,
	[MKTG_ADJ_CASES] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_CASES] [decimal](17, 3) NULL,
	[PLANNER_ADJ_CASES] [decimal](17, 3) NULL,
	[SALES_ADJ_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[UNIT] [varchar](3) NULL,
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL,
	[DI_ERRORACTION] [varchar](1) NULL,
	[DI_ERRORCOLUMNS] [varchar](500) NULL,
	[DI_ROWID] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CRM_MKTELM_VALID_STG_1_1]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CRM_MKTELM_VALID_STG_1_1](
	[PROMOTION_ID] [varchar](24) NULL,
	[DESCRIPTION] [varchar](40) NULL,
	[ACTIVITY_TYPE] [varchar](2) NULL,
	[ACTIVITY_DESC] [varchar](40) NULL,
	[SHIP_DATE_FROM] [varchar](10) NULL,
	[SHIP_DATE_TO] [varchar](10) NULL,
	[PROMOTION_STATUS] [varchar](2) NULL,
	[PROMOTION_DESC] [varchar](40) NULL,
	[SCANNER_APPS_ID] [varchar](60) NULL,
	[EMPLOYEE_RESPONSIBLE] [varchar](10) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[LAST_CHANGED_ON] [varchar](10) NULL,
	[PERSON_NAME] [varchar](12) NULL,
	[DATE_CREATED] [varchar](10) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[CAMPAIGN_DESC] [varchar](40) NULL,
	[ACTUAL_DATE_FROM] [varchar](10) NULL,
	[ACTUAL_DATE_TO] [varchar](10) NULL,
	[TRADE_PROMO_AGREEMENT] [varchar](24) NULL,
	[PLANNED_DATE_FROM] [varchar](10) NULL,
	[PLANNED_DATE_TO] [varchar](10) NULL,
	[KEY_EVENT] [varchar](3) NULL,
	[KEY_EVENT_DESC] [varchar](40) NULL,
	[SALES_ORG] [varchar](8) NULL,
	[TACTIC] [varchar](4) NULL,
	[CURRENCY_KEY] [varchar](5) NULL,
	[DISTR_CHANNEL] [varchar](2) NULL,
	[DIVISION] [varchar](2) NULL,
	[DI_ERRORACTION] [varchar](1) NULL,
	[DI_ERRORCOLUMNS] [varchar](500) NULL,
	[DI_ROWID] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CUSTOMERID_VALID_FAIL_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CUSTOMERID_VALID_FAIL_STG](
	[DI_ERRORACTION] [varchar](1) NULL,
	[DI_ERRORCOLUMNS] [varchar](500) NULL,
	[DI_ROWID] [float] NULL,
	[CUSTOMER_ID] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ISVALIDINT_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ISVALIDINT_STG](
	[CUSTOMER_ID] [varchar](10) NULL,
	[SUBSTR_ID] [int] NULL,
	[DESCRIPTION] [varchar](40) NULL,
	[CUSTOMER_TYPE] [varchar](2) NULL,
	[HIER_C_LEVEL1] [varchar](10) NULL,
	[HIER_C_LEVEL2] [varchar](10) NULL,
	[HIER_C_LEVEL3] [varchar](10) NULL,
	[HIER_C_LEVEL4] [varchar](10) NULL,
	[HIER_C_LEVEL5] [varchar](10) NULL,
	[HIER_C_LEVEL6] [varchar](10) NULL,
	[HIER_C_LEVEL7] [varchar](10) NULL,
	[HIER_D_LEVEL1] [varchar](10) NULL,
	[HIER_D_LEVEL10] [varchar](10) NULL,
	[HIER_D_LEVEL11] [varchar](10) NULL,
	[HIER_D_LEVEL2] [varchar](10) NULL,
	[HIER_D_LEVEL3] [varchar](10) NULL,
	[HIER_D_LEVEL4] [varchar](10) NULL,
	[HIER_D_LEVEL5] [varchar](10) NULL,
	[HIER_D_LEVEL6] [varchar](10) NULL,
	[HIER_D_LEVEL7] [varchar](10) NULL,
	[HIER_D_LEVEL8] [varchar](10) NULL,
	[HIER_D_LEVEL9] [varchar](10) NULL,
	[PLAN_TO] [varchar](10) NULL,
	[BUSINESS_PARTNER] [varchar](10) NULL,
	[CUSTOMER_GRP] [varchar](2) NULL,
	[CUSTOMER_GRP2] [varchar](3) NULL,
	[CUSTOMER_GRP3] [varchar](3) NULL,
	[ADDRESS] [varchar](10) NULL,
	[LATITUDE] [decimal](10, 3) NULL,
	[LONGITUDE] [decimal](10, 3) NULL,
	[CITY] [varchar](35) NULL,
	[REGION] [varchar](3) NULL,
	[Store Number] [varchar](15) NULL,
	[COUNTRY] [varchar](3) NULL,
	[STREET] [varchar](35) NULL,
	[Zip Code] [varchar](10) NULL,
	[HIER_B_LEVEL1] [varchar](10) NULL,
	[HIER_B_LEVEL2] [varchar](10) NULL,
	[HIER_B_LEVEL3] [varchar](10) NULL,
	[HIER_B_LEVEL4] [varchar](10) NULL,
	[HIER_B_LEVEL5] [varchar](10) NULL,
	[HIER_B_LEVEL6] [varchar](10) NULL,
	[HIER_B_LEVEL7] [varchar](10) NULL,
	[HIER_B_LEVEL8] [varchar](10) NULL,
	[HIER_B_LEVEL9] [varchar](10) NULL,
	[HIER_B_LEVEL10] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_FACT_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_FACT_STG](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[List Price per Unit] [decimal](17, 2) NULL,
	[UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_VALID_FAIL_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_VALID_FAIL_STG](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[DI_ERRORACTION] [varchar](1) NULL,
	[DI_ERRORCOLUMNS] [varchar](500) NULL,
	[DI_ROWID] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_AL_UOM_LKUP_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_AL_UOM_LKUP_STG](
	[MATERIAL_ID] [varchar](18) NULL,
	[BASE_MATERIAL] [varchar](18) NULL,
	[FLAG] [int] NULL,
	[CURRENCY] [varchar](5) NULL,
	[EAN/UPC] [varchar](18) NULL,
	[BASE_QTY] [decimal](17, 3) NULL,
	[QUANTITY_NUM] [decimal](17, 3) NULL,
	[QUANTITY_DENO] [decimal](17, 3) NULL,
	[CASE_GTIN] [varchar](18) NULL,
	[CASE_UPC] [varchar](18) NULL,
	[PACKAGE_GTIN] [varchar](18) NULL,
	[PACKAGE_UPC] [varchar](18) NULL,
	[UNIT_LOAD_GTIN] [varchar](18) NULL,
	[UNIT_LOAD_UPC] [varchar](18) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[UNIT_OF_WT] [varchar](3) NULL,
	[UNIT] [varchar](3) NULL,
	[VOLUME_UNIT] [varchar](3) NULL,
	[GROSS_WT] [decimal](17, 3) NULL,
	[HEIGHT] [decimal](17, 3) NULL,
	[LENGTH] [decimal](17, 3) NULL,
	[NET_WT] [decimal](17, 3) NULL,
	[VOLUME] [decimal](17, 3) NULL,
	[WIDTH] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_AL_UOM_UNION_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_AL_UOM_UNION_STG](
	[MATERIAL_ID] [varchar](18) NULL,
	[BASE_MATERIAL] [varchar](18) NULL,
	[FLAG] [int] NULL,
	[CASE_GTIN] [varchar](18) NULL,
	[CASE_UPC] [varchar](18) NULL,
	[PACKAGE_GTIN] [varchar](18) NULL,
	[PACKAGE_UPC] [varchar](18) NULL,
	[UNIT_LOAD_GTIN] [varchar](18) NULL,
	[UNIT_LOAD_UPC] [varchar](18) NULL,
	[CS_EAN_UPC] [varchar](18) NULL,
	[CS_WIDTH] [decimal](17, 3) NULL,
	[CS_VOLUME] [decimal](17, 3) NULL,
	[CS_NET_WT] [decimal](17, 3) NULL,
	[CS_LENGTH] [decimal](17, 3) NULL,
	[CS_HEIGHT] [decimal](17, 3) NULL,
	[CS_GROSS_WT] [decimal](17, 3) NULL,
	[CS_VOLUME_UNIT] [varchar](3) NULL,
	[CS_UNIT] [varchar](3) NULL,
	[CS_UNIT_OF_WT] [varchar](3) NULL,
	[PKG_EAN_UPC] [varchar](18) NULL,
	[PKG_WIDTH] [decimal](17, 3) NULL,
	[PKG_VOLUME] [decimal](17, 3) NULL,
	[PKG_NET_WT] [decimal](17, 3) NULL,
	[PKG_LENGTH] [decimal](17, 3) NULL,
	[PKG_HEIGHT] [decimal](17, 3) NULL,
	[PKG_GROSS_WT] [decimal](17, 3) NULL,
	[PKG_VOLUME_UNIT] [varchar](3) NULL,
	[PKG_UNIT] [varchar](3) NULL,
	[PKG_UNIT_OF_WT] [varchar](3) NULL,
	[UL_EAN_UPC] [varchar](18) NULL,
	[UL_WIDTH] [decimal](17, 3) NULL,
	[UL_VOLUME] [decimal](17, 3) NULL,
	[UL_NET_WT] [decimal](17, 3) NULL,
	[UL_LENGTH] [decimal](17, 3) NULL,
	[UL_HEIGHT] [decimal](17, 3) NULL,
	[UL_GROSS_WT] [decimal](17, 3) NULL,
	[UL_VOLUME_UNIT] [varchar](3) NULL,
	[UL_UNIT] [varchar](3) NULL,
	[UL_UNIT_OF_WT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_AL_UOM1_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_AL_UOM1_STG](
	[MATERIAL_ID] [varchar](18) NULL,
	[BASE_MATERIAL] [varchar](18) NULL,
	[CASE_GTIN] [varchar](18) NULL,
	[CASE_UPC] [varchar](18) NULL,
	[PACKAGE_GTIN] [varchar](18) NULL,
	[PACKAGE_UPC] [varchar](18) NULL,
	[UNIT_LOAD_GTIN] [varchar](18) NULL,
	[UNIT_LOAD_UPC] [varchar](18) NULL,
	[CS_EAN/UPC] [varchar](18) NULL,
	[CS_WIDTH] [decimal](17, 3) NULL,
	[CS_VOLUME] [decimal](17, 3) NULL,
	[CS_NET_WT] [decimal](17, 3) NULL,
	[CS_LENGTH] [decimal](17, 3) NULL,
	[CS_HEIGHT] [decimal](17, 3) NULL,
	[CS_GROSS_WT] [decimal](17, 3) NULL,
	[CS_VOLUME_UNIT] [varchar](3) NULL,
	[CS_UNIT] [varchar](3) NULL,
	[CS_UNIT_OF_WT] [varchar](3) NULL,
	[PKG_EAN/UPC] [varchar](18) NULL,
	[PKG_WIDTH] [decimal](17, 3) NULL,
	[PKG_VOLUME] [decimal](17, 3) NULL,
	[PKG_NET_WT] [decimal](17, 3) NULL,
	[PKG_LENGTH] [decimal](17, 3) NULL,
	[PKG_HEIGHT] [decimal](17, 3) NULL,
	[PKG_GROSS_WT] [decimal](17, 3) NULL,
	[PKG_VOLUME_UNIT] [varchar](3) NULL,
	[PKG_UNIT] [varchar](3) NULL,
	[PKG_UNIT_OF_WT] [varchar](3) NULL,
	[UL_EAN/UPC] [varchar](18) NULL,
	[UL_WIDTH] [decimal](17, 3) NULL,
	[UL_VOLUME] [decimal](17, 3) NULL,
	[UL_NET_WT] [decimal](17, 3) NULL,
	[UL_LENGTH] [decimal](17, 3) NULL,
	[UL_HEIGHT] [decimal](17, 3) NULL,
	[UL_GROSS_WT] [decimal](17, 3) NULL,
	[UL_VOLUME_UNIT] [varchar](3) NULL,
	[UL_UNIT] [varchar](3) NULL,
	[UL_UNIT_OF_WT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_AL_UOM2_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_AL_UOM2_STG](
	[MATERIAL_ID] [varchar](18) NULL,
	[BASE_MATERIAL] [varchar](18) NULL,
	[CASE_GTIN] [varchar](18) NULL,
	[CASE_UPC] [varchar](18) NULL,
	[PACKAGE_GTIN] [varchar](18) NULL,
	[PACKAGE_UPC] [varchar](18) NULL,
	[UNIT_LOAD_GTIN] [varchar](18) NULL,
	[UNIT_LOAD_UPC] [varchar](18) NULL,
	[CS_EAN/UPC] [varchar](18) NULL,
	[CS_WIDTH] [decimal](17, 3) NULL,
	[CS_VOLUME] [decimal](17, 3) NULL,
	[CS_NET_WT] [decimal](17, 3) NULL,
	[CS_LENGTH] [decimal](17, 3) NULL,
	[CS_HEIGHT] [decimal](17, 3) NULL,
	[CS_GROSS_WT] [decimal](17, 3) NULL,
	[CS_VOLUME_UNIT] [varchar](3) NULL,
	[CS_UNIT] [varchar](3) NULL,
	[CS_UNIT_OF_WT] [varchar](3) NULL,
	[PKG_EAN/UPC] [varchar](18) NULL,
	[PKG_WIDTH] [decimal](17, 3) NULL,
	[PKG_VOLUME] [decimal](17, 3) NULL,
	[PKG_NET_WT] [decimal](17, 3) NULL,
	[PKG_LENGTH] [decimal](17, 3) NULL,
	[PKG_HEIGHT] [decimal](17, 3) NULL,
	[PKG_GROSS_WT] [decimal](17, 3) NULL,
	[PKG_VOLUME_UNIT] [varchar](3) NULL,
	[PKG_UNIT] [varchar](3) NULL,
	[PKG_UNIT_OF_WT] [varchar](3) NULL,
	[UL_EAN/UPC] [varchar](18) NULL,
	[UL_WIDTH] [decimal](17, 3) NULL,
	[UL_VOLUME] [decimal](17, 3) NULL,
	[UL_NET_WT] [decimal](17, 3) NULL,
	[UL_LENGTH] [decimal](17, 3) NULL,
	[UL_HEIGHT] [decimal](17, 3) NULL,
	[UL_GROSS_WT] [decimal](17, 3) NULL,
	[UL_VOLUME_UNIT] [varchar](3) NULL,
	[UL_UNIT] [varchar](3) NULL,
	[UL_UNIT_OF_WT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_AL_UOM3_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_AL_UOM3_STG](
	[MATERIAL_ID] [varchar](18) NULL,
	[BASE_MATERIAL] [varchar](18) NULL,
	[FLAG] [int] NULL,
	[BASE_UOM] [varchar](3) NULL,
	[CASE_GTIN] [varchar](18) NULL,
	[CASE_UPC] [varchar](18) NULL,
	[PACKAGE_GTIN] [varchar](18) NULL,
	[PACKAGE_UPC] [varchar](18) NULL,
	[UNIT_LOAD_GTIN] [varchar](18) NULL,
	[UNIT_LOAD_UPC] [varchar](18) NULL,
	[CS_EAN_UPC] [varchar](18) NULL,
	[CS_VOLUME_UNIT] [varchar](3) NULL,
	[CS_GROSS_WT] [decimal](17, 3) NULL,
	[CS_HEIGHT] [decimal](17, 3) NULL,
	[CS_LENGTH] [decimal](17, 3) NULL,
	[CS_NET_WT] [decimal](17, 3) NULL,
	[CS_WIDTH] [decimal](17, 3) NULL,
	[CS_VOLUME] [decimal](17, 3) NULL,
	[CS_UNIT_OF_WT] [varchar](3) NULL,
	[CS_UNIT] [varchar](3) NULL,
	[PKG_EAN_UPC] [varchar](18) NULL,
	[PKG_VOLUME_UNIT] [varchar](3) NULL,
	[PKG_GROSS_WT] [decimal](17, 3) NULL,
	[PKG_HEIGHT] [decimal](17, 3) NULL,
	[PKG_LENGTH] [decimal](17, 3) NULL,
	[PKG_NET_WT] [decimal](17, 3) NULL,
	[PKG_WIDTH] [decimal](17, 3) NULL,
	[PKG_VOLUME] [decimal](17, 3) NULL,
	[PKG_UNIT_OF_WT] [varchar](3) NULL,
	[PKG_UNIT] [varchar](3) NULL,
	[UL_EAN_UPC] [varchar](18) NULL,
	[UL_VOLUME_UNIT] [varchar](3) NULL,
	[UL_GROSS_WT] [decimal](17, 3) NULL,
	[UL_HEIGHT] [decimal](17, 3) NULL,
	[UL_LENGTH] [decimal](17, 3) NULL,
	[UL_NET_WT] [decimal](17, 3) NULL,
	[UL_WIDTH] [decimal](17, 3) NULL,
	[UL_VOLUME] [decimal](17, 3) NULL,
	[UL_UNIT_OF_WT] [varchar](3) NULL,
	[UL_UNIT] [varchar](3) NULL,
	[Net Weight] [varchar](32) NULL,
	[BASE Unit] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_CLASS_VALID_FAIL_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_CLASS_VALID_FAIL_STG](
	[MATERIAL] [varchar](18) NULL,
	[TYPE] [varchar](30) NULL,
	[Sub-Type] [varchar](30) NULL,
	[Manufacturer Company] [varchar](30) NULL,
	[BRAND] [varchar](30) NULL,
	[Sub-Brand] [varchar](30) NULL,
	[FLAVOR] [varchar](30) NULL,
	[Food Form] [varchar](30) NULL,
	[Sub-Food Form] [varchar](30) NULL,
	[SIZE] [varchar](30) NULL,
	[Pack Size] [varchar](30) NULL,
	[Cube Size] [varchar](30) NULL,
	[COUNT] [varchar](30) NULL,
	[Country Sold In] [varchar](30) NULL,
	[Business Unit] [varchar](30) NULL,
	[Nielsen Size] [varchar](30) NULL,
	[Pack Type Use] [varchar](30) NULL,
	[MOD Description] [varchar](30) NULL,
	[Long Description] [varchar](30) NULL,
	[Business Unit Promo] [varchar](30) NULL,
	[Year QTR] [varchar](30) NULL,
	[VERSION] [varchar](30) NULL,
	[SNP Relevant] [varchar](30) NULL,
	[Innovation Item] [varchar](30) NULL,
	[Smart Ops Supply Chain] [varchar](30) NULL,
	[Material Number] [varchar](30) NULL,
	[VARIANT] [varchar](30) NULL,
	[Legacy Number] [varchar](30) NULL,
	[Reserve Flag] [varchar](30) NULL,
	[Plan By Date] [varchar](10) NULL,
	[First Ship Date] [varchar](10) NULL,
	[Target Discontinuance Date] [varchar](10) NULL,
	[Remarketing Date] [varchar](10) NULL,
	[CATEGORY] [varchar](30) NULL,
	[Country Sale] [varchar](30) NULL,
	[CUBE] [varchar](30) NULL,
	[Descriptive Attribute] [varchar](30) NULL,
	[Base Material] [varchar](30) NULL,
	[Pack Type] [varchar](30) NULL,
	[Size Dimension] [varchar](30) NULL,
	[Special ID] [varchar](30) NULL,
	[STYLE] [varchar](30) NULL,
	[Sub-Category] [varchar](30) NULL,
	[WEIGHT] [varchar](30) NULL,
	[Like Item] [varchar](30) NULL,
	[Conversion Case Code] [varchar](30) NULL,
	[Conversion Date] [varchar](10) NULL,
	[Family Code] [varchar](30) NULL,
	[Percent Margin] [decimal](17, 3) NULL,
	[Percent of Base Like Item] [decimal](17, 3) NULL,
	[Alternative Market Segment] [varchar](30) NULL,
	[Alternative Category] [varchar](30) NULL,
	[Alternative Sub Category] [varchar](30) NULL,
	[Promoted Price] [decimal](17, 2) NULL,
	[SRP] [decimal](17, 2) NULL,
	[Material for Reporting] [varchar](30) NULL,
	[Culled Status] [varchar](30) NULL,
	[Culled Date] [varchar](10) NULL,
	[SKU Type] [varchar](30) NULL,
	[Food Count] [varchar](30) NULL,
	[PL4] [varchar](30) NULL,
	[Kosher Status] [varchar](30) NULL,
	[WD Single Serv] [varchar](30) NULL,
	[KSC Field Category] [varchar](30) NULL,
	[IP Brand] [varchar](30) NULL,
	[Demand IP Brand] [varchar](30) NULL,
	[IP BU] [varchar](30) NULL,
	[KCI Category] [varchar](30) NULL,
	[KCI Alternate Hierarchy] [varchar](30) NULL,
	[DP Innovation Date] [varchar](10) NULL,
	[DI_ERRORACTION] [varchar](1) NULL,
	[DI_ERRORCOLUMNS] [varchar](500) NULL,
	[DI_ROWID] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_STD_ALL_DRC]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_STD_ALL_DRC](
	[Material ID] [varchar](18) NULL,
	[Costing Date] [date] NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Standard Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_STD_MAX_DTE_SRC]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_STD_MAX_DTE_SRC](
	[Material ID] [varchar](18) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Costing Date] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_STD_PRC_FINAL_LKUP_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_STD_PRC_FINAL_LKUP_STG](
	[MOD Material] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Year] [varchar](4) NULL,
	[Standard Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_STD_PRC_SRC]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_STD_PRC_SRC](
	[Material ID] [varchar](18) NULL,
	[Costing Date] [varchar](10) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Standard Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_STD_PRC_SRC_1]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_STD_PRC_SRC_1](
	[Material ID] [varchar](18) NULL,
	[Costing Date] [varchar](10) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Standard Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_STD_PRC_SRC_2]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_STD_PRC_SRC_2](
	[Material ID] [varchar](18) NULL,
	[Costing Date] [varchar](10) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Standard Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_STD_PRC_SRC_3]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_STD_PRC_SRC_3](
	[Material ID] [varchar](18) NULL,
	[Costing Date] [varchar](10) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[$Std_Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MATERIAL_MASTER_VALID_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MATERIAL_MASTER_VALID_STG](
	[MATERIAL] [varchar](18) NULL,
	[DESCRIPTION] [varchar](40) NULL,
	[ALT_SEGMENT] [varchar](30) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[ALT_SUBCATEGORY] [varchar](30) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[INNOVATION_FLAG] [varchar](2) NULL,
	[MATERIAL_RPTG] [varchar](18) NULL,
	[BRAND] [varchar](40) NULL,
	[CATEGORY] [varchar](40) NULL,
	[UPC_CODE] [varchar](15) NULL,
	[DP_MATERIAL] [varchar](18) NULL,
	[MATERIAL_STATUS] [varchar](2) NULL,
	[MATERIAL_CLASS] [varchar](36) NULL,
	[PACKAGE_UNITS] [varchar](40) NULL,
	[STANDARD_PRICE] [decimal](17, 2) NULL,
	[SUBBARAND] [varchar](30) NULL,
	[CURRENCY_KEY] [varchar](5) NULL,
	[UOM] [varchar](3) NULL,
	[COMPANY_CODE] [varchar](4) NULL,
	[CONTROLLING_AREA] [varchar](4) NULL,
	[CONTENT_UNIT] [varchar](3) NULL,
	[PRODUCT] [varchar](32) NULL,
	[EAN_UPC] [varchar](18) NULL,
	[MATERIAL_GRP] [varchar](9) NULL,
	[MATERIAL_TYPE] [varchar](4) NULL,
	[PROD_H1] [varchar](18) NULL,
	[PROD_HIER_TEXT] [varchar](60) NULL,
	[PROD_H2] [varchar](18) NULL,
	[PROD_HIER_TEXT2] [varchar](60) NULL,
	[PROD_H3] [varchar](18) NULL,
	[PROD_HIER_TEXT3] [varchar](60) NULL,
	[PROD_H4] [varchar](18) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PROD_H5] [varchar](18) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[PROD_H6] [varchar](18) NULL,
	[PROD_HIER_TEXT6] [varchar](60) NULL,
	[PROD_HIERARCHY] [varchar](18) NULL,
	[PRODUCT_HIERARCHY] [varchar](60) NULL,
	[PROFIT_CTR] [varchar](10) NULL,
	[Net Weight] [varchar](32) NULL,
	[DI_ERRORACTION] [varchar](1) NULL,
	[DI_ERRORCOLUMNS] [varchar](500) NULL,
	[DI_ROWID] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MIXPLTFLG_D_STG_2]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MIXPLTFLG_D_STG_2](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Actual Kilos (KG)] [decimal](17, 3) NULL,
	[Retail Sales $] [decimal](17, 2) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[SALE_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MIXPLTFLG_D_STG_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MIXPLTFLG_D_STG_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Actual Kilos (KG)] [decimal](17, 3) NULL,
	[Retail Sales $] [decimal](17, 2) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MIXPLTFLG_E_STG_2]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MIXPLTFLG_E_STG_2](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Actual Kilos (KG)] [decimal](17, 3) NULL,
	[Retail Sales $] [decimal](17, 2) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[SALE_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MIXPLTFLG_E_STG_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MIXPLTFLG_E_STG_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Actual Kilos (KG)] [decimal](17, 3) NULL,
	[Retail Sales $] [decimal](17, 2) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MIXPLTFLG_EQ_Z_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MIXPLTFLG_EQ_Z_STG](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches I (EA)] [decimal](17, 3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Actual Kilos (KG)] [decimal](17, 3) NULL,
	[Retail Sales $] [decimal](17, 2) NULL,
	[Actual Eaches II (EA)] [decimal](17, 3) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[SALE_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MIXPLTFLG_NE_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MIXPLTFLG_NE_STG](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Actual Kilos (KG)] [decimal](17, 3) NULL,
	[Retail Sales $] [decimal](17, 2) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[SALE_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MIXPLTFLG_NE_STG_1_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MIXPLTFLG_NE_STG_1_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Actual Kilos (KG)] [decimal](17, 3) NULL,
	[Retail Sales $] [decimal](17, 2) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MIXPLTFLG_NE_Z_STG_2]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MIXPLTFLG_NE_Z_STG_2](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches I (EA)] [decimal](17, 3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Actual Kilos (KG)] [decimal](17, 3) NULL,
	[Retail Sales $] [decimal](17, 2) NULL,
	[Actual Eaches II (EA)] [decimal](17, 3) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[SALE_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MIXPLTFLG_NE_Z_STG_3]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MIXPLTFLG_NE_Z_STG_3](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches I (EA)] [decimal](17, 3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Actual Kilos (KG)] [decimal](17, 3) NULL,
	[Retail Sales $] [decimal](17, 2) NULL,
	[Actual Eaches II (EA)] [decimal](17, 3) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MIXPLTFLG_NE_Z_STG_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MIXPLTFLG_NE_Z_STG_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches I (EA)] [decimal](17, 3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Actual Kilos (KG)] [decimal](17, 3) NULL,
	[Retail Sales $] [decimal](17, 2) NULL,
	[Actual Eaches II (EA)] [decimal](17, 3) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MIXPLTFLG_Y_FLG_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MIXPLTFLG_Y_FLG_STG](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Actual Kilos (KG)] [decimal](17, 3) NULL,
	[Retail Sales $] [decimal](17, 2) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[SALE_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MIXPLTFLG_Y_FLG_STG_1]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MIXPLTFLG_Y_FLG_STG_1](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[PERCENT] [decimal](10, 3) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Actual Kilos (KG)] [decimal](17, 3) NULL,
	[Retail Sales $] [decimal](17, 2) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[SALE_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MIXPLTFLG_Y_FLG_STG_1_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MIXPLTFLG_Y_FLG_STG_1_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[PERCENT] [decimal](10, 3) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Actual Kilos (KG)] [decimal](17, 3) NULL,
	[Retail Sales $] [decimal](17, 2) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MIXPLTFLG_Y_FLG_STG_2]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MIXPLTFLG_Y_FLG_STG_2](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Actual Kilos (KG)] [decimal](17, 3) NULL,
	[Retail Sales $] [decimal](17, 2) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[SALE_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MIXPLTFLG_Y_FLG_STG_2_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MIXPLTFLG_Y_FLG_STG_2_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Actual Kilos (KG)] [decimal](17, 3) NULL,
	[Retail Sales $] [decimal](17, 2) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MIXPLTFLG_Y_FLG_STG_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MIXPLTFLG_Y_FLG_STG_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Actual Kilos (KG)] [decimal](17, 3) NULL,
	[Retail Sales $] [decimal](17, 2) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MIXPLTFLG_Y_FLG_SUM_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MIXPLTFLG_Y_FLG_SUM_STG](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MIXPLTFLG_Y_FLG_SUM_STG_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MIXPLTFLG_Y_FLG_SUM_STG_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MOD_BOM_STD_PRC_TGT]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MOD_BOM_STD_PRC_TGT](
	[MOD Material] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Year] [varchar](4) NULL,
	[New Standard Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_ACT_LTEQWK_STG_1]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_ACT_LTEQWK_STG_1](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[Actual COP $] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Kilograms (KG)] [decimal](17, 3) NULL,
	[Actual OI Spend (Not restricted)] [decimal](17, 2) NULL,
	[SALE_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_ACT_LTEQWK_STG_1_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_ACT_LTEQWK_STG_1_DELTA](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[Actual COP $] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Kilograms (KG)] [decimal](17, 3) NULL,
	[Actual OI Spend (Not restricted)] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_ACT_LTEQWK_STG_1_DELTA_UPDATE_FLAG_ADDED]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_ACT_LTEQWK_STG_1_DELTA_UPDATE_FLAG_ADDED](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[Actual COP $] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Kilograms (KG)] [decimal](17, 3) NULL,
	[Actual OI Spend (Not restricted)] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_ACT_LTEQWK_STG_1_OLD_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_ACT_LTEQWK_STG_1_OLD_DELTA](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[miixed pallet material] [varchar](18) NULL,
	[calendar week] [varchar](7) NULL,
	[mixed pallet flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[Actual COP $] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Kilograms (KG)] [decimal](17, 3) NULL,
	[Actual OI Spend (Not restricted)] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_ACT_TGT_P3]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_ACT_TGT_P3](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Actual Kilos (KG)] [decimal](17, 3) NULL,
	[Retail Sales $] [decimal](17, 2) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[SALE_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_ACT_TGT_P3_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_ACT_TGT_P3_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Actual Kilos (KG)] [decimal](17, 3) NULL,
	[Retail Sales $] [decimal](17, 2) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_LKUP_STG_1]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_LKUP_STG_1](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[miixed pallet material] [varchar](18) NULL,
	[calendar week] [varchar](7) NULL,
	[mixed pallet flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SALE_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_LKUP_STG_1_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_LKUP_STG_1_DELTA](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[miixed pallet material] [varchar](18) NULL,
	[calendar week] [varchar](7) NULL,
	[mixed pallet flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_PLN_GTEQWK_STG_1]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_PLN_GTEQWK_STG_1](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Plan Total Off Invoice Dollars] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Total Planned Shipment CS] [decimal](17, 3) NULL,
	[Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[SALE_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_PLN_GTEQWK_STG_1_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_PLN_GTEQWK_STG_1_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Plan Total Off Invoice Dollars] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Total Planned Shipment CS] [decimal](17, 3) NULL,
	[Total Planned Shipment Kilos] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_PLN_GTEQWK_STG_1_DELTA_UPDATE_FLAG_ADDED]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_PLN_GTEQWK_STG_1_DELTA_UPDATE_FLAG_ADDED](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Plan Total Off Invoice Dollars] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Total Planned Shipment CS] [decimal](17, 3) NULL,
	[Total Planned Shipment Kilos] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_PLN_GTEQWK_STG_1_OLD_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_PLN_GTEQWK_STG_1_OLD_DELTA](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[miixed pallet material] [varchar](18) NULL,
	[calendar week] [varchar](7) NULL,
	[mixed pallet flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Plan Total Off Invoice Dollars] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Total Planned Shipment CS] [decimal](17, 3) NULL,
	[Total Planned Shipment Kilos] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_PLN_STG_1]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_PLN_STG_1](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Base LBS] [decimal](17, 3) NULL,
	[Plan Incr LBS] [decimal](17, 3) NULL,
	[Plan Base Units] [decimal](17, 3) NULL,
	[Plan Incr Units] [decimal](17, 3) NULL,
	[Plan Base Ret $'s] [decimal](17, 2) NULL,
	[Plan Incr Ret $'s] [decimal](17, 2) NULL,
	[Plan Base $] [decimal](17, 3) NULL,
	[Plan Incr Ship $] [decimal](17, 2) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Plan Total Fixed KMF Spend] [decimal](17, 2) NULL,
	[Plan Variable KMF Spend] [decimal](17, 2) NULL,
	[Actual OI Spend (Not restricted)] [decimal](17, 2) NULL,
	[Latest Estimate Total Fixed KMF] [decimal](17, 2) NULL,
	[Plan Total Off Invoice Dollars] [decimal](17, 2) NULL,
	[Lastest Estimate Missed OI] [decimal](17, 2) NULL,
	[Latest Estimate Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate EDLP Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate Scan Apps Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate Scan Dollars] [decimal](17, 2) NULL,
	[LE WW$] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Total Planned Shipment CS] [decimal](17, 3) NULL,
	[Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[Plan Base Cases] [decimal](17, 3) NULL,
	[Plan Incr Cases] [decimal](17, 3) NULL,
	[Plan Incr Ship Cases] [decimal](17, 3) NULL,
	[Plan Incr Ship Units] [decimal](17, 3) NULL,
	[Plan Incr Ship LBS] [decimal](17, 3) NULL,
	[Plan Incr Ship Kilos] [decimal](17, 3) NULL,
	[Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[Suggested Shelf Price (SAS)] [decimal](17, 2) NULL,
	[SALE_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_PLN_STG_1_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_PLN_STG_1_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Base LBS] [decimal](17, 3) NULL,
	[Plan Incr LBS] [decimal](17, 3) NULL,
	[Plan Base Units] [decimal](17, 3) NULL,
	[Plan Incr Units] [decimal](17, 3) NULL,
	[Plan Base Ret $'s] [decimal](17, 2) NULL,
	[Plan Incr Ret $'s] [decimal](17, 2) NULL,
	[Plan Base $] [decimal](17, 3) NULL,
	[Plan Incr Ship $] [decimal](17, 2) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Plan Total Fixed KMF Spend] [decimal](17, 2) NULL,
	[Plan Variable KMF Spend] [decimal](17, 2) NULL,
	[Actual OI Spend (Not restricted)] [decimal](17, 2) NULL,
	[Latest Estimate Total Fixed KMF] [decimal](17, 2) NULL,
	[Plan Total Off Invoice Dollars] [decimal](17, 2) NULL,
	[Lastest Estimate Missed OI] [decimal](17, 2) NULL,
	[Latest Estimate Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate EDLP Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate Scan Apps Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate Scan Dollars] [decimal](17, 2) NULL,
	[LE WW$] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Total Planned Shipment CS] [decimal](17, 3) NULL,
	[Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[Plan Base Cases] [decimal](17, 3) NULL,
	[Plan Incr Cases] [decimal](17, 3) NULL,
	[Plan Incr Ship Cases] [decimal](17, 3) NULL,
	[Plan Incr Ship Units] [decimal](17, 3) NULL,
	[Plan Incr Ship LBS] [decimal](17, 3) NULL,
	[Plan Incr Ship Kilos] [decimal](17, 3) NULL,
	[Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[Suggested Shelf Price (SAS)] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_PLN_STG_1_DELTA_UPDATE_FLAG_ADDED]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_PLN_STG_1_DELTA_UPDATE_FLAG_ADDED](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Base LBS] [decimal](17, 3) NULL,
	[Plan Incr LBS] [decimal](17, 3) NULL,
	[Plan Base Units] [decimal](17, 3) NULL,
	[Plan Incr Units] [decimal](17, 3) NULL,
	[Plan Base Ret $'s] [decimal](17, 2) NULL,
	[Plan Incr Ret $'s] [decimal](17, 2) NULL,
	[Plan Base $] [decimal](17, 3) NULL,
	[Plan Incr Ship $] [decimal](17, 2) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Plan Total Fixed KMF Spend] [decimal](17, 2) NULL,
	[Plan Variable KMF Spend] [decimal](17, 2) NULL,
	[Actual OI Spend (Not restricted)] [decimal](17, 2) NULL,
	[Latest Estimate Total Fixed KMF] [decimal](17, 2) NULL,
	[Plan Total Off Invoice Dollars] [decimal](17, 2) NULL,
	[Lastest Estimate Missed OI] [decimal](17, 2) NULL,
	[Latest Estimate Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate EDLP Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate Scan Apps Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate Scan Dollars] [decimal](17, 2) NULL,
	[LE WW$] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Total Planned Shipment CS] [decimal](17, 3) NULL,
	[Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[Plan Base Cases] [decimal](17, 3) NULL,
	[Plan Incr Cases] [decimal](17, 3) NULL,
	[Plan Incr Ship Cases] [decimal](17, 3) NULL,
	[Plan Incr Ship Units] [decimal](17, 3) NULL,
	[Plan Incr Ship LBS] [decimal](17, 3) NULL,
	[Plan Incr Ship Kilos] [decimal](17, 3) NULL,
	[Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[Suggested Shelf Price (SAS)] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_PLN_STG_1_OLD_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_PLN_STG_1_OLD_DELTA](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[miixed pallet material] [varchar](18) NULL,
	[calendar week] [varchar](7) NULL,
	[mixed pallet flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Base LBS] [decimal](17, 3) NULL,
	[Plan Incr LBS] [decimal](17, 3) NULL,
	[Plan Base Units] [decimal](17, 3) NULL,
	[Plan Incr Units] [decimal](17, 3) NULL,
	[Plan Base Ret $'s] [decimal](17, 2) NULL,
	[Plan Incr Ret $'s] [decimal](17, 2) NULL,
	[Plan Base $] [decimal](17, 3) NULL,
	[Plan Incr Ship $] [decimal](17, 2) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Plan Total Fixed KMF Spend] [decimal](17, 2) NULL,
	[Plan Variable KMF Spend] [decimal](17, 2) NULL,
	[Actual OI Spend (Not restricted)] [decimal](17, 2) NULL,
	[Latest Estimate Total Fixed KMF] [decimal](17, 2) NULL,
	[Plan Total Off Invoice Dollars] [decimal](17, 2) NULL,
	[Lastest Estimate Missed OI] [decimal](17, 2) NULL,
	[Latest Estimate Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate EDLP Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate Scan Apps Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate Scan Dollars] [decimal](17, 2) NULL,
	[LE WW$] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Total Planned Shipment CS] [decimal](17, 3) NULL,
	[Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[Plan Base Cases] [decimal](17, 3) NULL,
	[Plan Incr Cases] [decimal](17, 3) NULL,
	[Plan Incr Ship Cases] [decimal](17, 3) NULL,
	[Plan Incr Ship Units] [decimal](17, 3) NULL,
	[Plan Incr Ship LBS] [decimal](17, 3) NULL,
	[Plan Incr Ship Kilos] [decimal](17, 3) NULL,
	[Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[Suggested Shelf Price (SAS)] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_PLN_Y_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_PLN_Y_STG](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[PERCENT] [decimal](10, 3) NULL,
	[QUANTITY] [decimal](16, 3) NULL,
	[SALE_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_PLN_Y_STG_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_PLN_Y_STG_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[PERCENT] [decimal](10, 3) NULL,
	[QUANTITY] [decimal](16, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PROM_ZM_TPM60_TGT_P1B]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PROM_ZM_TPM60_TGT_P1B](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Base LBS] [decimal](17, 3) NULL,
	[Plan Incr LBS] [decimal](17, 3) NULL,
	[Plan Base Units] [decimal](17, 3) NULL,
	[Plan Incr Units] [decimal](17, 3) NULL,
	[Plan Base Ret $'s] [decimal](17, 2) NULL,
	[Plan Incr Ret $'s] [decimal](17, 2) NULL,
	[Plan Base $] [decimal](17, 3) NULL,
	[Plan Incr Ship $] [decimal](17, 2) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Plan Total Fixed KMF Spend] [decimal](17, 2) NULL,
	[Plan Variable KMF Spend] [decimal](17, 2) NULL,
	[Actual OI Spend (Not restricted)] [decimal](17, 2) NULL,
	[Latest Estimate Total Fixed KMF] [decimal](17, 2) NULL,
	[Plan Total Off Invoice Dollars] [decimal](17, 2) NULL,
	[Lastest Estimate Missed OI] [decimal](17, 2) NULL,
	[Latest Estimate Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate EDLP Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate Scan Apps Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate Scan Dollars] [decimal](17, 2) NULL,
	[LE WW$] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Total Planned Shipment CS] [decimal](17, 3) NULL,
	[Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[Plan Base Cases] [decimal](17, 3) NULL,
	[Plan Incr Cases] [decimal](17, 3) NULL,
	[Plan Incr Ship Cases] [decimal](17, 3) NULL,
	[Plan Incr Ship Units] [decimal](17, 3) NULL,
	[Plan Incr Ship LBS] [decimal](17, 3) NULL,
	[Plan Incr Ship Kilos] [decimal](17, 3) NULL,
	[Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[Suggested Shelf Price (SAS)] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PROM_ZM_TPM60_TGT_P1B_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PROM_ZM_TPM60_TGT_P1B_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Base LBS] [decimal](17, 3) NULL,
	[Plan Incr LBS] [decimal](17, 3) NULL,
	[Plan Base Units] [decimal](17, 3) NULL,
	[Plan Incr Units] [decimal](17, 3) NULL,
	[Plan Base Ret $'s] [decimal](17, 2) NULL,
	[Plan Incr Ret $'s] [decimal](17, 2) NULL,
	[Plan Base $] [decimal](17, 3) NULL,
	[Plan Incr Ship $] [decimal](17, 2) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Plan Total Fixed KMF Spend] [decimal](17, 2) NULL,
	[Plan Variable KMF Spend] [decimal](17, 2) NULL,
	[Actual OI Spend (Not restricted)] [decimal](17, 2) NULL,
	[Latest Estimate Total Fixed KMF] [decimal](17, 2) NULL,
	[Plan Total Off Invoice Dollars] [decimal](17, 2) NULL,
	[Lastest Estimate Missed OI] [decimal](17, 2) NULL,
	[Latest Estimate Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate EDLP Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate Scan Apps Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate Scan Dollars] [decimal](17, 2) NULL,
	[LE WW$] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Total Planned Shipment CS] [decimal](17, 3) NULL,
	[Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[Plan Base Cases] [decimal](17, 3) NULL,
	[Plan Incr Cases] [decimal](17, 3) NULL,
	[Plan Incr Ship Cases] [decimal](17, 3) NULL,
	[Plan Incr Ship Units] [decimal](17, 3) NULL,
	[Plan Incr Ship LBS] [decimal](17, 3) NULL,
	[Plan Incr Ship Kilos] [decimal](17, 3) NULL,
	[Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[Suggested Shelf Price (SAS)] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PROMOTION_FINAL_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PROMOTION_FINAL_STG](
	[Plan To] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Promotion ID] [varchar](24) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[TPM: Currency] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PROMOTION_FINAL_STG_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PROMOTION_FINAL_STG_DELTA](
	[FLAG] [varchar](4) NULL,
	[Plan To] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Promotion ID] [varchar](24) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[TPM: Currency] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PROMOTION_SRC_TGT]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PROMOTION_SRC_TGT](
	[Plan To] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Promotion ID] [varchar](24) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[TPM: Currency] [varchar](5) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](17, 2) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](17, 3) NULL,
	[Gross Sales $] [decimal](17, 2) NULL,
	[TPM: Plan Ship Dollars] [decimal](17, 2) NULL,
	[TPM: Total Planned Incremental Dollars] [decimal](17, 2) NULL,
	[TPM: Planned Promo COP $] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Dollars] [decimal](17, 2) NULL,
	[TPM: CSM Trade] [decimal](17, 2) NULL,
	[TPM: Suggested TPQ Dollars] [decimal](17, 2) NULL,
	[TPM: Plan Incremental COP $] [decimal](17, 2) NULL,
	[TPM: Display] [decimal](17, 3) NULL,
	[TPM: Feature] [decimal](17, 3) NULL,
	[TPM: F&D] [decimal](17, 3) NULL,
	[TPM: Suggested TPQ] [decimal](17, 3) NULL,
	[TPM: Suggested Incremental Volume] [decimal](17, 3) NULL,
	[SVP - Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[SVP - Planned Shelf Price] [decimal](17, 2) NULL,
	[TPM: EDLP Spend] [decimal](17, 2) NULL,
	[Latest Estimate Total Non-Trade Spend] [decimal](17, 2) NULL,
	[Latest Estimate Total Fixed KMF] [decimal](17, 2) NULL,
	[Plan Variable KMF Spend] [decimal](17, 2) NULL,
	[Plan Total Fixed KMF Spend] [decimal](17, 2) NULL,
	[LE Scan $] [decimal](17, 2) NULL,
	[Plan Incrementality %] [decimal](17, 2) NULL,
	[Plan Activity GSV] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PROMOTION_SRC_TGT_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PROMOTION_SRC_TGT_DELTA](
	[FLAG] [varchar](4) NULL,
	[Plan To] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Promotion ID] [varchar](24) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[TPM: Currency] [varchar](5) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](17, 2) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](17, 3) NULL,
	[Gross Sales $] [decimal](17, 2) NULL,
	[TPM: Plan Ship Dollars] [decimal](17, 2) NULL,
	[TPM: Total Planned Incremental Dollars] [decimal](17, 2) NULL,
	[TPM: Planned Promo COP $] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Dollars] [decimal](17, 2) NULL,
	[TPM: CSM Trade] [decimal](17, 2) NULL,
	[TPM: Suggested TPQ Dollars] [decimal](17, 2) NULL,
	[TPM: Plan Incremental COP $] [decimal](17, 2) NULL,
	[TPM: Display] [decimal](17, 3) NULL,
	[TPM: Feature] [decimal](17, 3) NULL,
	[TPM: F&D] [decimal](17, 3) NULL,
	[TPM: Suggested TPQ] [decimal](17, 3) NULL,
	[TPM: Suggested Incremental Volume] [decimal](17, 3) NULL,
	[SVP - Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[SVP - Planned Shelf Price] [decimal](17, 2) NULL,
	[TPM: EDLP Spend] [decimal](17, 2) NULL,
	[Latest Estimate Total Non-Trade Spend] [decimal](17, 2) NULL,
	[Latest Estimate Total Fixed KMF] [decimal](17, 2) NULL,
	[Plan Variable KMF Spend] [decimal](17, 2) NULL,
	[Plan Total Fixed KMF Spend] [decimal](17, 2) NULL,
	[LE Scan $] [decimal](17, 2) NULL,
	[Plan Incrementality %] [decimal](17, 2) NULL,
	[Plan Activity GSV] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_TIME_PERIOD_SRC_P2]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_TIME_PERIOD_SRC_P2](
	[CALENDER_WEEK] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_TIME_PERIOD_SRC_P2_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_TIME_PERIOD_SRC_P2_DELTA](
	[CALENDER_WEEK] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_BPC54_VALID_FAIL_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_BPC54_VALID_FAIL_STG](
	[BPC Account] [varchar](20) NULL,
	[Application Type] [varchar](3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Business Unit] [varchar](60) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[AOP Account] [varchar](18) NULL,
	[CATEGORY] [varchar](30) NULL,
	[AMOUNT] [decimal](17, 3) NULL,
	[Fiscal Variant] [varchar](2) NULL,
	[DI_ERRORACTION] [varchar](1) NULL,
	[DI_ERRORCOLUMNS] [varchar](500) NULL,
	[DI_ROWID] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CON52_VALID_FAIL_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CON52_VALID_FAIL_STG](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches I (EA)] [decimal](17, 3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Retail Sales $] [decimal](17, 2) NULL,
	[Actual Eaches II (EA)] [decimal](17, 3) NULL,
	[Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Units (CS)] [varchar](3) NULL,
	[Units (EA)] [varchar](3) NULL,
	[Units (LB)] [varchar](3) NULL,
	[Units (PKG)] [varchar](3) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[DI_ERRORACTION] [varchar](1) NULL,
	[DI_ERRORCOLUMNS] [varchar](500) NULL,
	[DI_ROWID] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CON52_VALID_FAIL_STG_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CON52_VALID_FAIL_STG_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches I (EA)] [decimal](17, 3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[Retail Sales $] [decimal](17, 2) NULL,
	[Actual Eaches II (EA)] [decimal](17, 3) NULL,
	[Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Units (CS)] [varchar](3) NULL,
	[Units (EA)] [varchar](3) NULL,
	[Units (LB)] [varchar](3) NULL,
	[Units (PKG)] [varchar](3) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[DI_ERRORACTION] [varchar](1) NULL,
	[DI_ERRORCOLUMNS] [varchar](500) NULL,
	[DI_ROWID] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CON53_VALID_FAIL_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CON53_VALID_FAIL_STG](
	[PROMOTION] [varchar](24) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Sales Promo: Actual COP $] [decimal](17, 2) NULL,
	[Sales Promo: Gross Sales Dollars] [decimal](17, 2) NULL,
	[Sales Promo: SPA (Special Promo Allowance)] [decimal](17, 2) NULL,
	[Sales Promo: Gross Cases] [decimal](17, 3) NULL,
	[Sales Promo: Gross Eaches] [decimal](17, 3) NULL,
	[Sales Promo: Gross Kilos] [decimal](17, 3) NULL,
	[Sales Promo: Gross Pounds] [decimal](17, 3) NULL,
	[Sales Promo: Gross Packages] [decimal](17, 3) NULL,
	[Sales Promo: Currency] [varchar](5) NULL,
	[Sales Promo: Promo Cases Unit] [decimal](10, 3) NULL,
	[Sales Promo: Promo Eaches Unit] [decimal](10, 3) NULL,
	[Sales Promo: True Gross Kilos Unit] [decimal](10, 3) NULL,
	[Sales Promo: Gross Pounds Unit] [decimal](10, 3) NULL,
	[Sales Promo: Un Gross Packages UOM] [decimal](10, 3) NULL,
	[Sales Promo: InfoProvider] [varchar](40) NULL,
	[DI_ERRORACTION] [varchar](1) NULL,
	[DI_ERRORCOLUMNS] [varchar](500) NULL,
	[DI_ROWID] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CRM12_VALID_FAIL_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CRM12_VALID_FAIL_STG](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[PROMOTION] [varchar](24) NULL,
	[Value Category] [varchar](5) NULL,
	[Expense Type] [varchar](4) NULL,
	[Funds: Fund Posting Amount] [decimal](17, 2) NULL,
	[Funds: Currency] [varchar](5) NULL,
	[Funds: InfoProvider] [varchar](40) NULL,
	[DI_ERRORACTION] [varchar](1) NULL,
	[DI_ERRORCOLUMNS] [varchar](500) NULL,
	[DI_ROWID] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_LES52_FAIL_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_LES52_FAIL_STG](
	[CUSTOMER] [varchar](10) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[PROMOTION] [varchar](24) NULL,
	[LE: Bill-back % Total] [decimal](17, 2) NULL,
	[LE: Bill-back Rate Total] [decimal](17, 2) NULL,
	[LE: CSM Advertising] [decimal](17, 2) NULL,
	[LE: CSM COGS] [decimal](17, 2) NULL,
	[LE: CSM Coupon] [decimal](17, 2) NULL,
	[LE: Correction Lump Sum] [decimal](17, 2) NULL,
	[LE: CSM VAP] [decimal](17, 2) NULL,
	[LE: EDLP Bill-back % Total] [decimal](17, 2) NULL,
	[LE: EDLP Bill-back Rate Total] [decimal](17, 2) NULL,
	[LE: Fixed Lump Sum] [decimal](17, 2) NULL,
	[LE: Liquidation Fixed] [decimal](17, 2) NULL,
	[LE: Missed OI] [decimal](17, 2) NULL,
	[LE: Military Fixed] [decimal](17, 2) NULL,
	[LE: New Item Fixed] [decimal](17, 2) NULL,
	[LE: Scanned Application Fixed] [decimal](17, 2) NULL,
	[LE: ScanApps Scan % Total] [decimal](17, 2) NULL,
	[LE: ScanApps Scan Rate Total] [decimal](17, 2) NULL,
	[LE: Promo Scan % Total] [decimal](17, 2) NULL,
	[LE: Promo Scan Rate Total] [decimal](17, 2) NULL,
	[LE: Warehouse Withdrawal Total] [decimal](17, 2) NULL,
	[LE: Currency] [varchar](5) NULL,
	[LE: InfoProvider] [varchar](40) NULL,
	[DI_ERRORACTION] [varchar](1) NULL,
	[DI_ERRORCOLUMNS] [varchar](500) NULL,
	[DI_ROWID] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_SLSCA4_FAIL_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_SLSCA4_FAIL_STG](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[PROMOTIONS] [varchar](24) NULL,
	[TPM: Display] [decimal](17, 3) NULL,
	[TPM: F&D] [decimal](17, 3) NULL,
	[TPM: Feature] [decimal](17, 3) NULL,
	[TPM: Plan Incremental COP $] [decimal](17, 2) NULL,
	[TPM: Total Planned Shipment Dollars] [decimal](17, 2) NULL,
	[TPM: Total Planned COP] [decimal](17, 2) NULL,
	[TPM: Planned Promotion Discount Dollars] [decimal](17, 2) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](17, 2) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](17, 2) NULL,
	[TPM: Planned Retailer Sales Dollar] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Dollars] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](17, 3) NULL,
	[TPM: Planned TPQ Kilos] [decimal](17, 3) NULL,
	[TPM: Planned TPQ Pounds] [decimal](17, 3) NULL,
	[TPM: Planned Promo COP $] [decimal](17, 2) NULL,
	[TPM: Total Planned Incremental Dollars] [decimal](17, 2) NULL,
	[TPM: Total Planned Incremental Eaches] [decimal](17, 3) NULL,
	[TPM: Total Planned Incremental Kilos] [decimal](17, 3) NULL,
	[TPM: Total Planned Incremental Pounds] [decimal](17, 3) NULL,
	[TPM: Total Planned Incremental Ship Dollars] [decimal](17, 2) NULL,
	[TPM: Total Planned Incremental Ship Eaches] [decimal](17, 3) NULL,
	[TPM: Total Planned Incremental Ship Kilos] [decimal](17, 3) NULL,
	[TPM: Total Planned Incremental Ship Pounds] [decimal](17, 3) NULL,
	[TPM: Total Planned Shipment Eaches] [decimal](17, 3) NULL,
	[TPM: Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[TPM: Total Planned Shipment CS] [decimal](17, 3) NULL,
	[TPM: Total Planned Shipment Pounds] [decimal](17, 3) NULL,
	[TPM: Plan Incremental Volume] [decimal](17, 3) NULL,
	[TPM: Plan TPQ] [decimal](17, 3) NULL,
	[TPM: Bill-back % Total] [decimal](17, 2) NULL,
	[TPM: Bill-back Rate Total] [decimal](17, 2) NULL,
	[TPM: Corrective Lump Sum] [decimal](17, 2) NULL,
	[TPM: CSM Trade] [decimal](17, 2) NULL,
	[TPM: EDLP Bill-back % Total] [decimal](17, 2) NULL,
	[TPM: EDLP Bill-back Rate Total] [decimal](17, 2) NULL,
	[TPM: EDLP Spend] [decimal](17, 2) NULL,
	[TPM: EDLP Off-Invoice % Total] [decimal](17, 2) NULL,
	[TPM: EDLP Off-Invoice Rate Total] [decimal](17, 2) NULL,
	[TPM: Plan Ship Dollars] [decimal](17, 2) NULL,
	[TPM: Plan Ship Eaches] [decimal](17, 3) NULL,
	[TPM: Plan Ship Kilos] [decimal](17, 3) NULL,
	[TPM: Plan Est Ship Vol] [decimal](17, 3) NULL,
	[TPM: Plan Ship Pounds] [decimal](17, 3) NULL,
	[TPM: Parent OI % Total] [decimal](17, 2) NULL,
	[TPM: Parent OI Rate Total] [decimal](17, 2) NULL,
	[TPM: Fixed Lump Sum] [decimal](17, 2) NULL,
	[TPM: Liquidation OI % Total] [decimal](17, 2) NULL,
	[TPM: Liquidation OI Rate Total] [decimal](17, 2) NULL,
	[TPM: Liquidation Fixed] [decimal](17, 2) NULL,
	[TPM: Military Fixed] [decimal](17, 2) NULL,
	[TPM: New Item Fixed] [decimal](17, 2) NULL,
	[TPM: Off-Invoice % Total] [decimal](17, 2) NULL,
	[TPM: Off-Invoice Rate Total] [decimal](17, 2) NULL,
	[TPM: Scanner Application Fixed] [decimal](17, 2) NULL,
	[TPM: ScanApps Scan % Total] [decimal](17, 2) NULL,
	[TPM: ScanApps Scan Rate Total] [decimal](17, 2) NULL,
	[TPM: Promo Scan % Total] [decimal](17, 2) NULL,
	[TPM: Promo Scan Rate Total] [decimal](17, 2) NULL,
	[TPM: Suggested TPQ Dollars] [decimal](17, 2) NULL,
	[TPM: Suggested TPQ Eaches] [decimal](17, 3) NULL,
	[TPM: Suggested TPQ Kilos] [decimal](17, 3) NULL,
	[TPM: Suggested TPQ] [decimal](17, 3) NULL,
	[TPM: Suggested TPQ Pounds] [decimal](17, 3) NULL,
	[TPM: Suggested Incremental Dollars] [decimal](17, 2) NULL,
	[TPM: Suggested Incremental Eaches] [decimal](17, 3) NULL,
	[TPM: Suggested Incremental Kilos] [decimal](17, 3) NULL,
	[TPM: Suggested Incremental Volume] [decimal](17, 3) NULL,
	[TPM: Total Trade Spend] [decimal](17, 2) NULL,
	[TPM: Warehouse Withdrawal Total Spend] [decimal](17, 2) NULL,
	[TPM: Currency] [varchar](5) NULL,
	[TPM: Sales Unit] [varchar](3) NULL,
	[TPM: InfoProvider] [varchar](40) NULL,
	[DI_ERRORACTION] [varchar](1) NULL,
	[DI_ERRORCOLUMNS] [varchar](500) NULL,
	[DI_ROWID] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_SVP06_VALID_FAIL_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_SVP06_VALID_FAIL_STG](
	[CUSTOMER] [varchar](10) NULL,
	[PROMOTION] [varchar](24) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[SVP - Cannibilization Quantity] [decimal](17, 3) NULL,
	[SVP - Total Planned Cannibilization Ship Eaches] [decimal](17, 3) NULL,
	[SVP - Total Planned Cannibilization Ship Kilos] [decimal](17, 3) NULL,
	[SVP - Total Planned Cannibilization Ship Pounds] [decimal](17, 3) NULL,
	[SVP - Forward Buy] [decimal](17, 3) NULL,
	[SVP - Total Planned Forward Buy Ship Eaches] [decimal](17, 3) NULL,
	[SVP - Total Planned Forward Buy Ship Kilos] [decimal](17, 3) NULL,
	[SVP - Total Planned Forward Buy Ship Pounds] [decimal](17, 3) NULL,
	[SVP - Total Planned Cannibilization Ship Dollar] [decimal](17, 2) NULL,
	[SVP - Total Planned Cannibilization Buy Ship Dollars] [decimal](17, 2) NULL,
	[SVP - Planned Base Eaches] [decimal](17, 3) NULL,
	[SVP - Planned Base Kilos] [decimal](17, 3) NULL,
	[SVP -  Planned Base Volume] [decimal](17, 3) NULL,
	[SVP - Planned Base Pounds] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment Dollars] [decimal](17, 2) NULL,
	[SVP - Total Planned COP] [decimal](17, 2) NULL,
	[SVP - Planned Retailer Sales Dollar] [decimal](17, 2) NULL,
	[SVP - Planned Shelf Price] [decimal](17, 2) NULL,
	[SVP - Suggested Base Dollars] [decimal](17, 2) NULL,
	[SVP - Suggested Base Eaches] [decimal](17, 3) NULL,
	[SVP - Suggested Base Kilos] [decimal](17, 3) NULL,
	[SVP - Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[SVP - Suggested Base Pounds] [decimal](17, 3) NULL,
	[SVP - Suggested Shelf Price (SAS)] [decimal](17, 2) NULL,
	[SVP - Total Planned Base $] [decimal](17, 2) NULL,
	[SVP - Total Planned Shipment Eaches] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment CS] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment Pounds] [decimal](17, 3) NULL,
	[SVP - Total Planned Base Volume] [decimal](17, 3) NULL,
	[SVP - Sales Unit] [varchar](3) NULL,
	[SVP - Currency] [varchar](5) NULL,
	[SVP - InfoProvider] [varchar](40) NULL,
	[DI_ERRORACTION] [varchar](1) NULL,
	[DI_ERRORCOLUMNS] [varchar](500) NULL,
	[DI_ROWID] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_SVP06_VALID_FAIL_STG_1]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_SVP06_VALID_FAIL_STG_1](
	[CUSTOMER] [varchar](10) NULL,
	[PROMOTION] [varchar](24) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[SVP - Cannibilization Quantity] [decimal](17, 3) NULL,
	[SVP - Total Planned Cannibilization Ship Eaches] [decimal](17, 3) NULL,
	[SVP - Total Planned Cannibilization Ship Kilos] [decimal](17, 3) NULL,
	[SVP - Total Planned Cannibilization Ship Pounds] [decimal](17, 3) NULL,
	[SVP - Forward Buy] [decimal](17, 3) NULL,
	[SVP - Total Planned Forward Buy Ship Eaches] [decimal](17, 3) NULL,
	[SVP - Total Planned Forward Buy Ship Kilos] [decimal](17, 3) NULL,
	[SVP - Total Planned Forward Buy Ship Pounds] [decimal](17, 3) NULL,
	[SVP - Total Planned Cannibilization Ship Dollar] [decimal](17, 2) NULL,
	[SVP - Total Planned Cannibilization Buy Ship Dollars] [decimal](17, 2) NULL,
	[SVP - Planned Base Eaches] [decimal](17, 3) NULL,
	[SVP - Planned Base Kilos] [decimal](17, 3) NULL,
	[SVP -  Planned Base Volume] [decimal](17, 3) NULL,
	[SVP - Planned Base Pounds] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment Dollars] [decimal](17, 2) NULL,
	[SVP - Total Planned COP] [decimal](17, 2) NULL,
	[SVP - Planned Retailer Sales Dollar] [decimal](17, 2) NULL,
	[SVP - Planned Shelf Price] [decimal](17, 2) NULL,
	[SVP - Suggested Base Dollars] [decimal](17, 2) NULL,
	[SVP - Suggested Base Eaches] [decimal](17, 3) NULL,
	[SVP - Suggested Base Kilos] [decimal](17, 3) NULL,
	[SVP - Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[SVP - Suggested Base Pounds] [decimal](17, 3) NULL,
	[SVP - Suggested Shelf Price (SAS)] [decimal](17, 2) NULL,
	[SVP - Total Planned Base $] [decimal](17, 2) NULL,
	[SVP - Total Planned Shipment Eaches] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment CS] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment Pounds] [decimal](17, 3) NULL,
	[SVP - Total Planned Base Volume] [decimal](17, 3) NULL,
	[SVP - Sales Unit] [varchar](3) NULL,
	[SVP - Currency] [varchar](5) NULL,
	[SVP - InfoProvider] [varchar](40) NULL,
	[DI_ERRORACTION] [varchar](1) NULL,
	[DI_ERRORCOLUMNS] [varchar](500) NULL,
	[DI_ROWID] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_SVP06_VALID_FAIL_STG_2]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_SVP06_VALID_FAIL_STG_2](
	[CUSTOMER] [varchar](10) NULL,
	[PROMOTION] [varchar](24) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[SVP - Cannibilization Quantity] [decimal](17, 3) NULL,
	[SVP - Total Planned Cannibilization Ship Eaches] [decimal](17, 3) NULL,
	[SVP - Total Planned Cannibilization Ship Kilos] [decimal](17, 3) NULL,
	[SVP - Total Planned Cannibilization Ship Pounds] [decimal](17, 3) NULL,
	[SVP - Forward Buy] [decimal](17, 3) NULL,
	[SVP - Total Planned Forward Buy Ship Eaches] [decimal](17, 3) NULL,
	[SVP - Total Planned Forward Buy Ship Kilos] [decimal](17, 3) NULL,
	[SVP - Total Planned Forward Buy Ship Pounds] [decimal](17, 3) NULL,
	[SVP - Total Planned Cannibilization Ship Dollar] [decimal](17, 2) NULL,
	[SVP - Total Planned Cannibilization Buy Ship Dollars] [decimal](17, 2) NULL,
	[SVP - Planned Base Eaches] [decimal](17, 3) NULL,
	[SVP - Planned Base Kilos] [decimal](17, 3) NULL,
	[SVP -  Planned Base Volume] [decimal](17, 3) NULL,
	[SVP - Planned Base Pounds] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment Dollars] [decimal](17, 2) NULL,
	[SVP - Total Planned COP] [decimal](17, 2) NULL,
	[SVP - Planned Retailer Sales Dollar] [decimal](17, 2) NULL,
	[SVP - Planned Shelf Price] [decimal](17, 2) NULL,
	[SVP - Suggested Base Dollars] [decimal](17, 2) NULL,
	[SVP - Suggested Base Eaches] [decimal](17, 3) NULL,
	[SVP - Suggested Base Kilos] [decimal](17, 3) NULL,
	[SVP - Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[SVP - Suggested Base Pounds] [decimal](17, 3) NULL,
	[SVP - Suggested Shelf Price (SAS)] [decimal](17, 2) NULL,
	[SVP - Total Planned Base $] [decimal](17, 2) NULL,
	[SVP - Total Planned Shipment Eaches] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment CS] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment Pounds] [decimal](17, 3) NULL,
	[SVP - Total Planned Base Volume] [decimal](17, 3) NULL,
	[SVP - Sales Unit] [varchar](3) NULL,
	[SVP - Currency] [varchar](5) NULL,
	[SVP - InfoProvider] [varchar](40) NULL,
	[DI_ERRORACTION] [varchar](1) NULL,
	[DI_ERRORCOLUMNS] [varchar](500) NULL,
	[DI_ROWID] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_TPM82_VALID_FAIL_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_TPM82_VALID_FAIL_STG](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[PROMOTIONS] [varchar](24) NULL,
	[ATPM - Display] [decimal](17, 3) NULL,
	[ATPM - F&D] [decimal](17, 3) NULL,
	[ATPM - Feature] [decimal](17, 3) NULL,
	[ATPM - Plan Incremental COP $] [decimal](17, 2) NULL,
	[ATPM - Total Planned Shipment Dollars] [decimal](17, 2) NULL,
	[ATPM - Total Planned COP] [decimal](17, 2) NULL,
	[ATPM - Planned Promotion Discount Dollars] [decimal](17, 2) NULL,
	[ATPM - Planned Promo Dollars @ Full Price] [decimal](17, 2) NULL,
	[ATPM - Planned Retailer Promotion Sales] [decimal](17, 2) NULL,
	[ATPM - Planned Retailer Sales Dollar] [decimal](17, 2) NULL,
	[ATPM - Planned TPQ Dollars] [decimal](17, 2) NULL,
	[ATPM - Planned TPQ Eaches] [decimal](17, 3) NULL,
	[ATPM - Planned TPQ Kilos] [decimal](17, 3) NULL,
	[ATPM - Planned TPQ Pounds] [decimal](17, 3) NULL,
	[ATPM - Planned Promo COP $] [decimal](17, 2) NULL,
	[ATPM - Total Planned Incremental Dollars] [decimal](17, 2) NULL,
	[ATPM - Total Planned Incremental Eaches] [decimal](17, 3) NULL,
	[ATPM - Total Planned Incremental Kilos] [decimal](17, 3) NULL,
	[ATPM - Total Planned Incremental Pounds] [decimal](17, 3) NULL,
	[ATPM - Total Planned Incremental Ship Dollars] [decimal](17, 2) NULL,
	[ATPM - Total Planned Incremental Ship Eaches] [decimal](17, 3) NULL,
	[ATPM - Total Planned Incremental Ship Kilos] [decimal](17, 3) NULL,
	[ATPM - Total Planned Incremental Ship Pounds] [decimal](17, 3) NULL,
	[ATPM - Total Planned Shipment Eaches] [decimal](17, 3) NULL,
	[ATPM - Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[ATPM - Total Planned Shipment CS] [decimal](17, 3) NULL,
	[ATPM - Total Planned Shipment Pounds] [decimal](17, 3) NULL,
	[ATPM - Plan Incremental Volume] [decimal](17, 3) NULL,
	[ATPM - Plan TPQ] [decimal](17, 3) NULL,
	[ATPM - Bill-back % Total] [decimal](17, 2) NULL,
	[ATPM - Bill-back Rate Total] [decimal](17, 2) NULL,
	[ATPM - Corrective Lump Sum] [decimal](17, 2) NULL,
	[ATPM - CSM Trade] [decimal](17, 2) NULL,
	[ATPM - EDLP Bill-back % Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Bill-back Rate Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Spend] [decimal](17, 2) NULL,
	[ATPM - EDLP Off-Invoice % Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Off-Invoice Rate Total] [decimal](17, 2) NULL,
	[ATPM - Plan Ship Dollars] [decimal](17, 2) NULL,
	[ATPM - Plan Ship Eaches] [decimal](17, 3) NULL,
	[ATPM - Plan Ship Kilos] [decimal](17, 3) NULL,
	[ATPM - Plan Est Ship Vol] [decimal](17, 3) NULL,
	[ATPM - Plan Ship Pounds] [decimal](17, 3) NULL,
	[ATPM - Parent OI % Total] [decimal](17, 2) NULL,
	[ATPM - Parent OI Rate Total] [decimal](17, 2) NULL,
	[ATPM - Fixed Lump Sum] [decimal](17, 2) NULL,
	[ATPM - Liquidation OI % Total] [decimal](17, 2) NULL,
	[ATPM - Liquidation OI Rate Total] [decimal](17, 2) NULL,
	[ATPM - Liquidation Fixed] [decimal](17, 2) NULL,
	[ATPM - Military Fixed] [decimal](17, 2) NULL,
	[ATPM - New Item Fixed] [decimal](17, 2) NULL,
	[ATPM - Off-Invoice % Total] [decimal](17, 2) NULL,
	[ATPM - Off-Invoice Rate Total] [decimal](17, 2) NULL,
	[ATPM - Scanner Application Fixed] [decimal](17, 2) NULL,
	[ATPM - ScanApps Scan % Total] [decimal](17, 2) NULL,
	[ATPM - ScanApps Scan Rate Total] [decimal](17, 2) NULL,
	[ATPM - Promo Scan % Total] [decimal](17, 2) NULL,
	[ATPM - Promo Scan Rate Total] [decimal](17, 2) NULL,
	[ATPM - Suggested TPQ Dollars] [decimal](17, 2) NULL,
	[ATPM - Suggested TPQ Eaches] [decimal](17, 3) NULL,
	[ATPM - Suggested TPQ Kilos] [decimal](17, 3) NULL,
	[ATPM - Suggested TPQ] [decimal](17, 3) NULL,
	[ATPM - Suggested TPQ Pounds] [decimal](17, 3) NULL,
	[ATPM - Suggested Incremental Dollars] [decimal](17, 2) NULL,
	[ATPM - Suggested Incremental Eaches] [decimal](17, 3) NULL,
	[ATPM - Suggested Incremental Kilos] [decimal](17, 3) NULL,
	[ATPM - Suggested Incremental Volume] [decimal](17, 3) NULL,
	[ATPM - Total Trade Spend] [decimal](17, 2) NULL,
	[ATPM - Warehouse Withdrawal Total Spend] [decimal](17, 2) NULL,
	[ATPM - Currency] [varchar](5) NULL,
	[ATPM - Sales Unit] [varchar](3) NULL,
	[ATPM - Variance %] [decimal](17, 3) NULL,
	[ATPM - Period Type] [varchar](2) NULL,
	[ATPM - InfoProvider] [varchar](20) NULL,
	[DI_ERRORACTION] [varchar](1) NULL,
	[DI_ERRORCOLUMNS] [varchar](500) NULL,
	[DI_ROWID] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZCUST_MAT_VALID_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZCUST_MAT_VALID_STG](
	[CUST_MAT] [varchar](10) NULL,
	[MIXED_PAL_MATERIAL] [varchar](18) NULL,
	[COMPANY_CODE] [varchar](4) NULL,
	[CONTROLLING_AREA] [varchar](4) NULL,
	[SPT_FLAG] [varchar](1) NULL,
	[PROD_HIER_LEVEL4] [varchar](18) NULL,
	[PROFIT_CENTER] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PLAN_TO] [varchar](10) NULL,
	[DI_ERRORACTION] [varchar](1) NULL,
	[DI_ERRORCOLUMNS] [varchar](500) NULL,
	[DI_ROWID] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZCUST_MATID_VALID_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZCUST_MATID_VALID_STG](
	[CUST_MAT] [varchar](10) NULL,
	[MIXED_PAL_MATERIAL] [varchar](18) NULL,
	[COMPANY_CODE] [varchar](4) NULL,
	[CONTROLLING_AREA] [varchar](4) NULL,
	[SPT_FLAG] [varchar](1) NULL,
	[PROD_HIER_LEVEL4] [varchar](18) NULL,
	[PROFIT_CENTER] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PLAN_TO] [varchar](10) NULL,
	[DI_ERRORACTION] [varchar](1) NULL,
	[DI_ERRORCOLUMNS] [varchar](500) NULL,
	[DI_ROWID] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZM_TPM_Q0001_DELTA_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZM_TPM_Q0001_DELTA_STG](
	[FLAG] [varchar](4) NULL,
	[Promotion ID] [varchar](24) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Plan To] [varchar](10) NULL,
	[TPM: Currency] [varchar](5) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](17, 2) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](17, 3) NULL,
	[Gross Sales $] [decimal](17, 2) NULL,
	[TPM: Plan Ship Dollars] [decimal](17, 2) NULL,
	[TPM: Total Planned Incremental Dollars] [decimal](17, 2) NULL,
	[TPM: Planned Promo COP $] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Dollars] [decimal](17, 2) NULL,
	[TPM: CSM Trade] [decimal](17, 2) NULL,
	[TPM: Suggested TPQ Dollars] [decimal](17, 2) NULL,
	[TPM: Plan Incremental COP $] [decimal](17, 2) NULL,
	[TPM: Display] [decimal](17, 3) NULL,
	[TPM: Feature] [decimal](17, 3) NULL,
	[TPM: F&D] [decimal](17, 3) NULL,
	[TPM: Suggested TPQ] [decimal](17, 3) NULL,
	[TPM: Suggested Incremental Volume] [decimal](17, 3) NULL,
	[SVP - Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[SVP - Planned Shelf Price] [decimal](17, 2) NULL,
	[TPM: EDLP Spend] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZM_TPM_Q0001_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZM_TPM_Q0001_STG](
	[Promotion ID] [varchar](24) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Plan To] [varchar](10) NULL,
	[TPM: Currency] [varchar](5) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](17, 2) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](17, 3) NULL,
	[Gross Sales $] [decimal](17, 2) NULL,
	[TPM: Plan Ship Dollars] [decimal](17, 2) NULL,
	[TPM: Total Planned Incremental Dollars] [decimal](17, 2) NULL,
	[TPM: Planned Promo COP $] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Dollars] [decimal](17, 2) NULL,
	[TPM: CSM Trade] [decimal](17, 2) NULL,
	[TPM: Suggested TPQ Dollars] [decimal](17, 2) NULL,
	[TPM: Plan Incremental COP $] [decimal](17, 2) NULL,
	[TPM: Display] [decimal](17, 3) NULL,
	[TPM: Feature] [decimal](17, 3) NULL,
	[TPM: F&D] [decimal](17, 3) NULL,
	[TPM: Suggested TPQ] [decimal](17, 3) NULL,
	[TPM: Suggested Incremental Volume] [decimal](17, 3) NULL,
	[SVP - Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[SVP - Planned Shelf Price] [decimal](17, 2) NULL,
	[TPM: EDLP Spend] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZM_TPM60_CKF_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZM_TPM60_CKF_STG](
	[PROMOTION_ID] [varchar](24) NULL,
	[MIXED_PAL_MATERIAL] [varchar](18) NULL,
	[CALENDAR_WEEK] [varchar](7) NULL,
	[MIXED_PALLET_FLAG] [varchar](1) NULL,
	[MATERIAL] [varchar](18) NULL,
	[PLAN_TO] [varchar](10) NULL,
	[TPM: Currency] [varchar](5) NULL,
	[Latest Estimate Total Non-Trade Spend] [decimal](17, 2) NULL,
	[Latest Estimate Total Fixed KMF] [decimal](17, 2) NULL,
	[Plan Variable KMF Spend] [decimal](17, 2) NULL,
	[Plan Total Fixed KMF Spend] [decimal](17, 2) NULL,
	[LE Scan $] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZM_TPM60_CKF_STG_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZM_TPM60_CKF_STG_DELTA](
	[FLAG] [varchar](4) NULL,
	[PROMOTION_ID] [varchar](24) NULL,
	[MIXED_PAL_MATERIAL] [varchar](18) NULL,
	[CALENDAR_WEEK] [varchar](7) NULL,
	[MIXED_PALLET_FLAG] [varchar](1) NULL,
	[MATERIAL] [varchar](18) NULL,
	[PLAN_TO] [varchar](10) NULL,
	[TPM: Currency] [varchar](5) NULL,
	[Latest Estimate Total Non-Trade Spend] [decimal](17, 2) NULL,
	[Latest Estimate Total Fixed KMF] [decimal](17, 2) NULL,
	[Plan Variable KMF Spend] [decimal](17, 2) NULL,
	[Plan Total Fixed KMF Spend] [decimal](17, 2) NULL,
	[LE Scan $] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZM_TPM60_RKF_STG]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZM_TPM60_RKF_STG](
	[PROMOTION_ID] [varchar](24) NULL,
	[MATERIAL] [varchar](18) NULL,
	[MIXED_PAL_MATERIAL] [varchar](18) NULL,
	[CALENDAR_WEEK] [varchar](7) NULL,
	[MIXED_PALLET_FLAG] [varchar](1) NULL,
	[PLAN_TO] [varchar](10) NULL,
	[Plan Incrementality %] [decimal](17, 2) NULL,
	[Plan Activity GSV] [decimal](17, 2) NULL,
	[TPM: Currency] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZM_TPM60_RKF_STG_DELTA]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZM_TPM60_RKF_STG_DELTA](
	[FLAG] [varchar](4) NULL,
	[PROMOTION_ID] [varchar](24) NULL,
	[MATERIAL] [varchar](18) NULL,
	[MIXED_PAL_MATERIAL] [varchar](18) NULL,
	[CALENDAR_WEEK] [varchar](7) NULL,
	[MIXED_PALLET_FLAG] [varchar](1) NULL,
	[PLAN_TO] [varchar](10) NULL,
	[Plan Incrementality %] [decimal](17, 2) NULL,
	[Plan Activity GSV] [decimal](17, 2) NULL,
	[TPM: Currency] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROMOTION_JOIN_TEST]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROMOTION_JOIN_TEST](
	[Plan To] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Promotion ID] [varchar](24) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[TPM: Currency] [varchar](5) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](17, 2) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](17, 3) NULL,
	[Gross Sales $] [decimal](17, 2) NULL,
	[TPM: Plan Ship Dollars] [decimal](17, 2) NULL,
	[TPM: Total Planned Incremental Dollars] [decimal](17, 2) NULL,
	[TPM: Planned Promo COP $] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Dollars] [decimal](17, 2) NULL,
	[TPM: CSM Trade] [decimal](17, 2) NULL,
	[TPM: Suggested TPQ Dollars] [decimal](17, 2) NULL,
	[TPM: Plan Incremental COP $] [decimal](17, 2) NULL,
	[TPM: Display] [decimal](17, 3) NULL,
	[TPM: Feature] [decimal](17, 3) NULL,
	[TPM: F&D] [decimal](17, 3) NULL,
	[TPM: Suggested TPQ] [decimal](17, 3) NULL,
	[TPM: Suggested Incremental Volume] [decimal](17, 3) NULL,
	[SVP - Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[SVP - Planned Shelf Price] [decimal](17, 2) NULL,
	[TPM: EDLP Spend] [decimal](17, 2) NULL,
	[Latest Estimate Total Non-Trade Spend] [decimal](17, 2) NULL,
	[Latest Estimate Total Fixed KMF] [decimal](17, 2) NULL,
	[Plan Variable KMF Spend] [decimal](17, 2) NULL,
	[Plan Total Fixed KMF Spend] [decimal](17, 2) NULL,
	[LE Scan $] [decimal](17, 2) NULL,
	[Plan Incrementality %] [decimal](17, 2) NULL,
	[Plan Activity GSV] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_10]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_10](
	[MOD Material] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[PERCENT] [decimal](10, 3) NULL,
	[Component Standard Price] [decimal](17, 2) NULL,
	[Component Quantity] [decimal](16, 3) NULL,
	[Component COP$] [decimal](16, 3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_11]    Script Date: 11/20/2018 5:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_11](
	[MOD Material] [varchar](18) NULL,
	[Fiscal Year] [varchar](4) NULL,
	[Standard Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [TPE_DS_Stage] SET  READ_WRITE 
GO
