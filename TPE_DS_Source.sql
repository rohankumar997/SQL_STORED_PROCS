USE [master]
GO
/****** Object:  Database [TPE_DS_Source]    Script Date: 11/20/2018 5:52:08 PM ******/
CREATE DATABASE [TPE_DS_Source]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TPE_DS_Source', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\TPE_DS_Source.mdf' , SIZE = 1648640000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'TPE_DS_Source_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\TPE_DS_Source_log.ldf' , SIZE = 53044224KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TPE_DS_Source].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TPE_DS_Source] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TPE_DS_Source] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TPE_DS_Source] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TPE_DS_Source] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TPE_DS_Source] SET ARITHABORT OFF 
GO
ALTER DATABASE [TPE_DS_Source] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TPE_DS_Source] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TPE_DS_Source] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TPE_DS_Source] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TPE_DS_Source] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TPE_DS_Source] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TPE_DS_Source] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TPE_DS_Source] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TPE_DS_Source] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TPE_DS_Source] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TPE_DS_Source] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TPE_DS_Source] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TPE_DS_Source] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TPE_DS_Source] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TPE_DS_Source] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TPE_DS_Source] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TPE_DS_Source] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TPE_DS_Source] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TPE_DS_Source] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TPE_DS_Source] SET  MULTI_USER 
GO
ALTER DATABASE [TPE_DS_Source] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TPE_DS_Source] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TPE_DS_Source] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TPE_DS_Source] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TPE_DS_Source', N'ON'
GO
USE [TPE_DS_Source]
GO
/****** Object:  User [US\SQL_RGM_SUPPORT_R]    Script Date: 11/20/2018 5:52:09 PM ******/
CREATE USER [US\SQL_RGM_SUPPORT_R] FOR LOGIN [US\SQL_RGM_SUPPORT_R]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:52:09 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:52:09 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:52:09 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:52:09 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:52:09 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:52:09 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:52:09 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:52:09 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:52:09 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:52:09 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:52:09 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:52:09 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:52:09 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:52:09 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:52:09 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:52:09 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:52:09 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:52:09 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:52:09 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:52:09 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:52:09 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:52:09 PM ******/
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
/****** Object:  Table [dbo].[_KC TEST]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_KC TEST](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
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
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Actual Ship $] [decimal](17, 2) NULL,
	[Actual Ship CS] [decimal](17, 3) NULL,
	[Actual Ship LBS] [decimal](17, 3) NULL,
	[Actual Ship Units] [decimal](17, 3) NULL,
	[Actual Ship KG] [decimal](17, 3) NULL,
	[LE Ship $] [decimal](17, 2) NULL,
	[LE Ship LBS] [decimal](17, 3) NULL,
	[LE Ship Units] [decimal](17, 3) NULL,
	[Total Planned KMF $] [decimal](17, 2) NULL,
	[LE KMF $] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Actual COP $] [decimal](17, 2) NULL,
	[LE COP $] [decimal](17, 2) NULL,
	[LE Cases] [decimal](17, 3) NULL,
	[LE Kilos] [decimal](17, 3) NULL,
	[Plan Base Cases] [decimal](17, 3) NULL,
	[Plan Incr Cases] [decimal](17, 3) NULL,
	[Plan Incr Ship Cases] [decimal](17, 3) NULL,
	[Plan Incr Ship Units] [decimal](17, 3) NULL,
	[Plan Incr Ship LBS] [decimal](17, 3) NULL,
	[Plan Incr Ship Kilos] [decimal](17, 3) NULL,
	[Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[Suggested Shelf Price (SAS)] [decimal](17, 2) NULL,
	[Period Year] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CON_BUOM_STAGE]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CON_BUOM_STAGE](
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
/****** Object:  Table [dbo].[CON52_NEQ_NZ]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CON52_NEQ_NZ](
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
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CON52_SRC_TEST]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CON52_SRC_TEST](
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
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CON52_SRC_TESTING]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CON52_SRC_TESTING](
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
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CON52_SRC_TESTING_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CON52_SRC_TESTING_1](
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
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CON53_OLD]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CON53_OLD](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[miixed pallet material] [varchar](18) NULL,
	[calendar week] [varchar](7) NULL,
	[PROMOTIONS] [varchar](24) NULL,
	[mixed pallet flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
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
	[Sales Promo: InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CONSENSUS_5_9_GROUP_BY]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONSENSUS_5_9_GROUP_BY](
	[SNAPSHOT_WEEK] [varchar](7) NULL,
	[CURRENT_CALWEEK] [varchar](7) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
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
	[SALES_ADJ_KGS] [decimal](17, 3) NULL,
	[SALES_ADJ_EACHES] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_EACHES] [decimal](17, 3) NULL,
	[CONSENSUS_KGS] [decimal](17, 3) NULL,
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JOE_JOB_II_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JOE_JOB_II_1](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[mixed pallet material] [varchar](18) NULL,
	[calendar week] [varchar](7) NULL,
	[PROMOTION] [varchar](24) NULL,
	[mixed pallet flag] [varchar](1) NULL,
	[LE: Currency] [varchar](5) NULL,
	[Sales Promo: SPA (Special Promo Allowance)] [decimal](17, 2) NULL,
	[LE: Bill-back % Total] [decimal](17, 2) NULL,
	[LE: Bill-back Rate Total] [decimal](17, 2) NULL,
	[LE: Correction Lump Sum] [decimal](17, 2) NULL,
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
	[LE: Warehouse Withdrawal Total] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JOE_JOB_II_3]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JOE_JOB_II_3](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[mixed pallet material] [varchar](18) NULL,
	[calendar week] [varchar](7) NULL,
	[PROMOTION] [varchar](24) NULL,
	[mixed pallet flag] [varchar](1) NULL,
	[LE: Currency] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JOE_JOB_II_FINAL]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JOE_JOB_II_FINAL](
	[CUSTOMER] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[calendar week] [varchar](7) NULL,
	[mixed pallet flag] [varchar](1) NULL,
	[Final - LE Total Fixed KMF] [decimal](17, 2) NULL,
	[Final - Settled OI $ (Invoiced)] [decimal](17, 2) NULL,
	[Final - LE BB/Scan $] [decimal](17, 2) NULL,
	[Final - LE Missed OI] [decimal](17, 2) NULL,
	[Final - Sales Promo: SPA (Special Promo Allowance)] [decimal](17, 2) NULL,
	[LE: Bill-back % Total] [decimal](17, 2) NULL,
	[LE: Bill-back Rate Total] [decimal](17, 2) NULL,
	[LE: Correction Lump Sum] [decimal](17, 2) NULL,
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
	[LE: Warehouse Withdrawal Total] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JOES_DATAMART_TABLE]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JOES_DATAMART_TABLE](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Ship $] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[HIER_D_LEVEL7] [varchar](10) NULL,
	[HIER_D_LEVEL7_TEXT] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JOES_FINAL_TABLE]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JOES_FINAL_TABLE](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Actual Ship $] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLA_NBB]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLA_NBB](
	[COST_CTR_CD] [varchar](10) NOT NULL,
	[COST_CURR_TYP] [varchar](3) NULL,
	[ACCT_CD] [varchar](10) NOT NULL,
	[YR] [decimal](4, 0) NOT NULL,
	[PD] [decimal](3, 0) NOT NULL,
	[AMT] [decimal](15, 3) NULL,
	[VER] [varchar](10) NOT NULL,
	[DW_CRE_TS] [datetime2](7) NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [datetime2](7) NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [varchar](1) NULL,
	[DW_DEL_USR] [varchar](50) NULL,
	[DW_DEL_TS] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[COST_CTR_CD] ASC,
	[ACCT_CD] ASC,
	[YR] ASC,
	[PD] ASC,
	[VER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_0CUST_HIER_LKUP]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_0CUST_HIER_LKUP](
	[CUSTOMER] [varchar](10) NULL,
	[Customer Text] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_0MATERIAL_LKUP]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_0MATERIAL_LKUP](
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
	[Net Weight] [varchar](32) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_0MATERIAL_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_0MATERIAL_SRC](
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
	[Net Weight] [varchar](32) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_APO52_LIST_PRICE_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_APO52_LIST_PRICE_SRC](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_APO52_LIST_PRICE_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_APO52_LIST_PRICE_SRC_1](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_APO52_LIST_PRICE_SRC_2]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_APO52_LIST_PRICE_SRC_2](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CON52_LIST_PRICE_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CON52_LIST_PRICE_SRC](
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
/****** Object:  Table [dbo].[KLG_TPE_CON52_MISSING_LIST_PRICE_FACT_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CON52_MISSING_LIST_PRICE_FACT_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Sales Org] [varchar](8) NULL,
	[Distribution Channel] [varchar](2) NULL,
	[PERCENT] [decimal](10, 3) NULL,
	[UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CON52_MISSING_LIST_PRICE_FACT_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CON52_MISSING_LIST_PRICE_FACT_SRC_1](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Eaches II (EA)] [decimal](17, 3) NULL,
	[Sales Org] [varchar](8) NULL,
	[Distribution Channel] [varchar](2) NULL,
	[PERCENT] [decimal](10, 3) NULL,
	[UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CON52_MISSING_LIST_PRICE_FACT_SRC_2]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CON52_MISSING_LIST_PRICE_FACT_SRC_2](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[List Price per Unit] [decimal](17, 2) NULL,
	[UNIT] [varchar](3) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CON52_MISSING_LIST_PRICE_FACT_SRC_3]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CON52_MISSING_LIST_PRICE_FACT_SRC_3](
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
/****** Object:  Table [dbo].[KLG_TPE_CON52_MISSING_LIST_PRICE_FACT_SRC_4]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CON52_MISSING_LIST_PRICE_FACT_SRC_4](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Eaches II (EA)] [decimal](17, 3) NULL,
	[Sales Org] [varchar](8) NULL,
	[Distribution Channel] [varchar](2) NULL,
	[PERCENT] [decimal](10, 3) NULL,
	[UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_B1P_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_B1P_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[CALENDAR_WEEK] [varchar](7) NULL,
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
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_B1P_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_B1P_SRC_1](
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
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_BUOM_COMBINED_PERIOD_ADDED]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_BUOM_COMBINED_PERIOD_ADDED](
	[Snapshot Period] [varchar](7) NULL,
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
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_BUOM_NONCS_MASTER_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_BUOM_NONCS_MASTER_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[UNIT_LKUP] [varchar](3) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL,
	[UNIT_FLAG] [int] NULL,
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
	[BASE_STAT_CASES_UOM] [decimal](17, 3) NULL,
	[CANNIB_ADJ_CASES] [decimal](17, 3) NULL,
	[CANNIB_ADJ_CASES_UOM] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_CASES] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_CASES_UOM] [decimal](17, 3) NULL,
	[Innovation/PWR_Cases] [decimal](17, 3) NULL,
	[Innovation/PWR_Cases_UOM] [decimal](17, 3) NULL,
	[MKTG_ADJ_CASES] [decimal](17, 3) NULL,
	[MKTG_ADJ_CASES_UOM] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_CASES] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_CASES_UOM] [decimal](17, 3) NULL,
	[PLANNER_ADJ_CASES] [decimal](17, 3) NULL,
	[PLANNER_ADJ_CASES_UOM] [decimal](17, 3) NULL,
	[SALES_ADJ_CASES] [decimal](17, 3) NULL,
	[SALES_ADJ_CASES_UOM] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_CASES_UOM] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[UNIT] [varchar](3) NULL,
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_BUOM1_BOT_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_BUOM1_BOT_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[UNIT_LKUP] [varchar](3) NULL,
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
	[BASE_STAT_EACHES_BOT] [decimal](17, 3) NULL,
	[BASE_STAT_KGS] [decimal](17, 3) NULL,
	[CANNIB_ADJ_CASES] [decimal](17, 3) NULL,
	[CANNIB_ADJ_EACHES_BOT] [decimal](17, 3) NULL,
	[CANNIB_ADJ_KGS] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_CASES] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_EACHES_BOT] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_KGS] [decimal](17, 3) NULL,
	[Innovation/PWR_Cases] [decimal](17, 3) NULL,
	[INNOVATION/PWR_EACHES_BOT] [decimal](17, 3) NULL,
	[INNOVATION/PWR_KGS] [decimal](17, 3) NULL,
	[MKTG_ADJ_CASES] [decimal](17, 3) NULL,
	[MKTG_ADJ_EACHES_BOT] [decimal](17, 3) NULL,
	[MKTG_ADJ_KGS] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_CASES] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_EACHES_BOT] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_KGS] [decimal](17, 3) NULL,
	[PLANNER_ADJ_CASES] [decimal](17, 3) NULL,
	[PLANNER_ADJ_EACHES_BOT] [decimal](17, 3) NULL,
	[PLANNER_ADJ_KGS] [decimal](17, 3) NULL,
	[SALES_ADJ_CASES] [decimal](17, 3) NULL,
	[SALES_ADJ_KGS] [decimal](17, 3) NULL,
	[SALES_ADJ_EACHES_BOT] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_EACHES_BOT] [decimal](17, 3) NULL,
	[CONSENSUS_KGS] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[UNIT] [varchar](3) NULL,
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_BUOM1_EA_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_BUOM1_EA_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[UNIT_LKUP] [varchar](3) NULL,
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
	[SALES_ADJ_KGS] [decimal](17, 3) NULL,
	[SALES_ADJ_EACHES] [decimal](17, 3) NULL,
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
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_BUOM1_PCH_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_BUOM1_PCH_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[UNIT_LKUP] [varchar](3) NULL,
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
	[BASE_STAT_EACHES_PCH] [decimal](17, 3) NULL,
	[BASE_STAT_KGS] [decimal](17, 3) NULL,
	[CANNIB_ADJ_CASES] [decimal](17, 3) NULL,
	[CANNIB_ADJ_EACHES_PCH] [decimal](17, 3) NULL,
	[CANNIB_ADJ_KGS] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_CASES] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_EACHES_PCH] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_KGS] [decimal](17, 3) NULL,
	[Innovation/PWR_Cases] [decimal](17, 3) NULL,
	[INNOVATION/PWR_EACHES_PCH] [decimal](17, 3) NULL,
	[INNOVATION/PWR_KGS] [decimal](17, 3) NULL,
	[MKTG_ADJ_CASES] [decimal](17, 3) NULL,
	[MKTG_ADJ_EACHES_PCH] [decimal](17, 3) NULL,
	[MKTG_ADJ_KGS] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_CASES] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_EACHES_PCH] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_KGS] [decimal](17, 3) NULL,
	[PLANNER_ADJ_CASES] [decimal](17, 3) NULL,
	[PLANNER_ADJ_EACHES_PCH] [decimal](17, 3) NULL,
	[PLANNER_ADJ_KGS] [decimal](17, 3) NULL,
	[SALES_ADJ_CASES] [decimal](17, 3) NULL,
	[SALES_ADJ_KGS] [decimal](17, 3) NULL,
	[SALES_ADJ_EACHES_PCH] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_EACHES_PCH] [decimal](17, 3) NULL,
	[CONSENSUS_KGS] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[UNIT] [varchar](3) NULL,
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_BUOM1_PKG_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_BUOM1_PKG_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[UNIT_LKUP] [varchar](3) NULL,
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
	[BASE_STAT_EACHES_PKG] [decimal](17, 3) NULL,
	[BASE_STAT_KGS] [decimal](17, 3) NULL,
	[CANNIB_ADJ_CASES] [decimal](17, 3) NULL,
	[CANNIB_ADJ_EACHES_PKG] [decimal](17, 3) NULL,
	[CANNIB_ADJ_KGS] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_CASES] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_EACHES_PKG] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_KGS] [decimal](17, 3) NULL,
	[Innovation/PWR_Cases] [decimal](17, 3) NULL,
	[INNOVATION/PWR_EACHES_PKG] [decimal](17, 3) NULL,
	[INNOVATION/PWR_KGS] [decimal](17, 3) NULL,
	[MKTG_ADJ_CASES] [decimal](17, 3) NULL,
	[MKTG_ADJ_EACHES_PKG] [decimal](17, 3) NULL,
	[MKTG_ADJ_KGS] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_CASES] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_EACHES_PKG] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_KGS] [decimal](17, 3) NULL,
	[PLANNER_ADJ_CASES] [decimal](17, 3) NULL,
	[PLANNER_ADJ_EACHES_PKG] [decimal](17, 3) NULL,
	[PLANNER_ADJ_KGS] [decimal](17, 3) NULL,
	[SALES_ADJ_CASES] [decimal](17, 3) NULL,
	[SALES_ADJ_KGS] [decimal](17, 3) NULL,
	[SALES_ADJ_EACHES_PKG] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_EACHES_PKG] [decimal](17, 3) NULL,
	[CONSENSUS_KGS] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[UNIT] [varchar](3) NULL,
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_BUOM1_ZNK_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_BUOM1_ZNK_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[UNIT_LKUP] [varchar](3) NULL,
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
	[SALES_ADJ_KGS] [decimal](17, 3) NULL,
	[SALES_ADJ_EACHES] [decimal](17, 3) NULL,
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
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_BUOM2_BOT_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_BUOM2_BOT_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[UNIT_LKUP] [varchar](3) NULL,
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
	[BASE_STAT_EACHES_BOT] [decimal](17, 3) NULL,
	[BASE_STAT_KGS] [decimal](17, 3) NULL,
	[CANNIB_ADJ_CASES] [decimal](17, 3) NULL,
	[CANNIB_ADJ_EACHES_BOT] [decimal](17, 3) NULL,
	[CANNIB_ADJ_KGS] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_CASES] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_EACHES_BOT] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_KGS] [decimal](17, 3) NULL,
	[Innovation/PWR_Cases] [decimal](17, 3) NULL,
	[INNOVATION/PWR_EACHES_BOT] [decimal](17, 3) NULL,
	[INNOVATION/PWR_KGS] [decimal](17, 3) NULL,
	[MKTG_ADJ_CASES] [decimal](17, 3) NULL,
	[MKTG_ADJ_EACHES_BOT] [decimal](17, 3) NULL,
	[MKTG_ADJ_KGS] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_CASES] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_EACHES_BOT] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_KGS] [decimal](17, 3) NULL,
	[PLANNER_ADJ_CASES] [decimal](17, 3) NULL,
	[PLANNER_ADJ_EACHES_BOT] [decimal](17, 3) NULL,
	[PLANNER_ADJ_KGS] [decimal](17, 3) NULL,
	[SALES_ADJ_CASES] [decimal](17, 3) NULL,
	[SALES_ADJ_EACHES_BOT] [decimal](17, 3) NULL,
	[SALES_ADJ_KGS] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_EACHES_BOT] [decimal](17, 3) NULL,
	[CONSENSUS_KGS] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[UNIT] [varchar](3) NULL,
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_BUOM2_EA_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_BUOM2_EA_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[UNIT_LKUP] [varchar](3) NULL,
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
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_BUOM2_PCH_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_BUOM2_PCH_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[UNIT_LKUP] [varchar](3) NULL,
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
	[BASE_STAT_EACHES_PCH] [decimal](17, 3) NULL,
	[BASE_STAT_KGS] [decimal](17, 3) NULL,
	[CANNIB_ADJ_CASES] [decimal](17, 3) NULL,
	[CANNIB_ADJ_EACHES_PCH] [decimal](17, 3) NULL,
	[CANNIB_ADJ_KGS] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_CASES] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_EACHES_PCH] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_KGS] [decimal](17, 3) NULL,
	[Innovation/PWR_Cases] [decimal](17, 3) NULL,
	[INNOVATION/PWR_EACHES_PCH] [decimal](17, 3) NULL,
	[INNOVATION/PWR_KGS] [decimal](17, 3) NULL,
	[MKTG_ADJ_CASES] [decimal](17, 3) NULL,
	[MKTG_ADJ_EACHES_PCH] [decimal](17, 3) NULL,
	[MKTG_ADJ_KGS] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_CASES] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_EACHES_PCH] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_KGS] [decimal](17, 3) NULL,
	[PLANNER_ADJ_CASES] [decimal](17, 3) NULL,
	[PLANNER_ADJ_EACHES_PCH] [decimal](17, 3) NULL,
	[PLANNER_ADJ_KGS] [decimal](17, 3) NULL,
	[SALES_ADJ_CASES] [decimal](17, 3) NULL,
	[SALES_ADJ_EACHES_PCH] [decimal](17, 3) NULL,
	[SALES_ADJ_KGS] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_EACHES_PCH] [decimal](17, 3) NULL,
	[CONSENSUS_KGS] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[UNIT] [varchar](3) NULL,
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_BUOM2_PKG_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_BUOM2_PKG_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[UNIT_LKUP] [varchar](3) NULL,
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
	[BASE_STAT_EACHES_PKG] [decimal](17, 3) NULL,
	[BASE_STAT_KGS] [decimal](17, 3) NULL,
	[CANNIB_ADJ_CASES] [decimal](17, 3) NULL,
	[CANNIB_ADJ_EACHES_PKG] [decimal](17, 3) NULL,
	[CANNIB_ADJ_KGS] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_CASES] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_EACHES_PKG] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_KGS] [decimal](17, 3) NULL,
	[Innovation/PWR_Cases] [decimal](17, 3) NULL,
	[INNOVATION/PWR_EACHES_PKG] [decimal](17, 3) NULL,
	[INNOVATION/PWR_KGS] [decimal](17, 3) NULL,
	[MKTG_ADJ_CASES] [decimal](17, 3) NULL,
	[MKTG_ADJ_EACHES_PKG] [decimal](17, 3) NULL,
	[MKTG_ADJ_KGS] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_CASES] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_EACHES_PKG] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_KGS] [decimal](17, 3) NULL,
	[PLANNER_ADJ_CASES] [decimal](17, 3) NULL,
	[PLANNER_ADJ_EACHES_PKG] [decimal](17, 3) NULL,
	[PLANNER_ADJ_KGS] [decimal](17, 3) NULL,
	[SALES_ADJ_CASES] [decimal](17, 3) NULL,
	[SALES_ADJ_EACHES_PKG] [decimal](17, 3) NULL,
	[SALES_ADJ_KGS] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_EACHES_PKG] [decimal](17, 3) NULL,
	[CONSENSUS_KGS] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[UNIT] [varchar](3) NULL,
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_BUOM2_ZNK_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_BUOM2_ZNK_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[UNIT_LKUP] [varchar](3) NULL,
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
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_CS_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_CS_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[UNIT_LKUP] [varchar](3) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL,
	[UNIT_FLAG] [int] NULL,
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
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_FACT_TGT_BACKUP_5_10]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_FACT_TGT_BACKUP_5_10](
	[SNAPSHOT_WEEK] [varchar](7) NULL,
	[CURRENT_CALWEEK] [varchar](7) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
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
	[SALES_ADJ_KGS] [decimal](17, 3) NULL,
	[SALES_ADJ_EACHES] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_EACHES] [decimal](17, 3) NULL,
	[CONSENSUS_KGS] [decimal](17, 3) NULL,
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_FINAL_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_FINAL_SRC](
	[SNAPSHOT_WEEK] [varchar](7) NULL,
	[CURRENT_CALWEEK] [varchar](7) NULL,
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
	[SALES_ADJ_KGS] [decimal](17, 3) NULL,
	[SALES_ADJ_EACHES] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_EACHES] [decimal](17, 3) NULL,
	[CONSENSUS_KGS] [decimal](17, 3) NULL,
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_FINAL_SRC_5_10_FIX]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_FINAL_SRC_5_10_FIX](
	[SNAPSHOT_WEEK] [varchar](7) NULL,
	[CURRENT_CALWEEK] [varchar](7) NULL,
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
	[SALES_ADJ_KGS] [decimal](17, 3) NULL,
	[SALES_ADJ_EACHES] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_EACHES] [decimal](17, 3) NULL,
	[CONSENSUS_KGS] [decimal](17, 3) NULL,
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_FINAL_SRC_DROPPED]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_FINAL_SRC_DROPPED](
	[SNAPSHOT_WEEK] [varchar](7) NULL,
	[SNAPSHOT_WEEK_A] [decimal](10, 2) NULL,
	[CURRENT_CALWEEK] [varchar](7) NULL,
	[CURRENT_CALWEEK_A] [decimal](10, 2) NULL,
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
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_FINAL_SRC_DROPPED_TIME_PERIOD_VAL]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_FINAL_SRC_DROPPED_TIME_PERIOD_VAL](
	[CALENDER_WEEK] [varchar](7) NULL,
	[Week Starting] [date] NULL,
	[Week Ending] [date] NULL,
	[SYSDATE] [datetime2](7) NULL,
	[Week Starting_1] [datetime2](7) NULL,
	[SYS] [date] NULL,
	[Week Ending_1] [date] NULL,
	[SYS_1] [date] NULL,
	[Week Ending_Var] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_FINAL_SRC_DROPPED_TIME_PERIOD_VAL_2]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_FINAL_SRC_DROPPED_TIME_PERIOD_VAL_2](
	[SNAPSHOT_WEEK] [varchar](7) NULL,
	[SNAPSHOT_WEEK_A] [decimal](10, 2) NULL,
	[SNAPSHOT_WEEK_A_YEAR] [varchar](7) NULL,
	[CURRENT_CALWEEK] [varchar](7) NULL,
	[CURRENT_CALWEEK_A] [decimal](10, 2) NULL,
	[CURRENT_CALWEEK_YEAR_A] [varchar](7) NULL,
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
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_FINAL_SRC_DROPPED_TIME_PERIOD_VAL_3]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_FINAL_SRC_DROPPED_TIME_PERIOD_VAL_3](
	[SNAPSHOT_WEEK] [varchar](7) NULL,
	[SNAPSHOT_WEEK_A] [decimal](10, 2) NULL,
	[CURRENT_CALWEEK] [varchar](7) NULL,
	[CURRENT_CALWEEK_A] [decimal](10, 2) NULL,
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
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_NCS_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_NCS_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[UNIT_LKUP] [varchar](3) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL,
	[UNIT_FLAG] [int] NULL,
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
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_PASS_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_PASS_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[UNIT_LKUP] [varchar](3) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL,
	[UNIT_FLAG] [int] NULL,
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
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_S1P_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_S1P_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[CALENDAR_WEEK] [varchar](7) NULL,
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
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_S1P_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_S1P_SRC_1](
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
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_SNAPSHOT_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_SNAPSHOT_SRC](
	[Snapshot Period] [varchar](7) NULL,
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
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_SNAPSHOT_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_SNAPSHOT_SRC_1](
	[Snapshot Period] [varchar](7) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[CONSENSUS_LBS] [decimal](17, 2) NULL,
	[CONSENSUS_KGS] [decimal](17, 3) NULL,
	[CONSENSUS_EACHES] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_GSV] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_SRC](
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
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_SRC_1](
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
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_UOM_CS_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_UOM_CS_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[UNIT_LKUP] [varchar](3) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL,
	[UNIT_FLAG] [int] NULL,
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
	[BASE_STAT_EACHES_PRE] [decimal](17, 3) NULL,
	[BASE_STAT_KGS_PRE] [decimal](17, 3) NULL,
	[CANNIB_ADJ_CASES] [decimal](17, 3) NULL,
	[CANNIB_ADJ_EACHES_PRE] [decimal](17, 3) NULL,
	[CANNIB_ADJ_KGS_PRE] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_CASES] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_EACHES_PRE] [decimal](17, 3) NULL,
	[CRM_INCR_SHIP_KGS_PRE] [decimal](17, 3) NULL,
	[Innovation/PWR_Cases] [decimal](17, 3) NULL,
	[INNOVATION/PWR_EACHES_PRE] [decimal](17, 2) NULL,
	[INNOVATION/PWR_KGS_PRE] [decimal](17, 3) NULL,
	[MKTG_ADJ_CASES] [decimal](17, 3) NULL,
	[MKTG_ADJ_EACHES_PRE] [decimal](17, 3) NULL,
	[MKTG_ADJ_KGS_PRE] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_CASES] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_EACHES_PRE] [decimal](17, 3) NULL,
	[OTHER_FORECAST_ADJ_KGS_PRE] [decimal](17, 3) NULL,
	[PLANNER_ADJ_CASES] [decimal](17, 3) NULL,
	[PLANNER_ADJ_EACHES_PRE] [decimal](17, 3) NULL,
	[PLANNER_ADJ_KGS_PRE] [decimal](17, 3) NULL,
	[SALES_ADJ_CASES] [decimal](17, 3) NULL,
	[SALES_ADJ_EACHES_PRE] [decimal](17, 3) NULL,
	[SALES_ADJ_KGS_PRE] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_EACHES_PRE] [decimal](17, 3) NULL,
	[CONSENSUS_KGS_PRE] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[UNIT] [varchar](3) NULL,
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_UOM_MASTER_TABLE_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_UOM_MASTER_TABLE_SRC](
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
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CONSENSUS_UOM_NCS_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CONSENSUS_UOM_NCS_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[UNIT_LKUP] [varchar](3) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL,
	[UNIT_FLAG] [int] NULL,
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
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CRM_MKTELM_SRC_1_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CRM_MKTELM_SRC_1_1](
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
	[DIVISION] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CUSTOMER_DIM_LKUP]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CUSTOMER_DIM_LKUP](
	[CUSTOMER_ID] [varchar](10) NULL,
	[DESCRIPTION] [varchar](40) NULL,
	[CUSTOMER_TYPE] [varchar](2) NULL,
	[HIER_C_LEVEL1] [varchar](10) NULL,
	[HIER_C_LEVEL1_TEXT] [varchar](40) NULL,
	[HIER_C_LEVEL2] [varchar](10) NULL,
	[HIER_C_LEVEL2_TEXT] [varchar](40) NULL,
	[HIER_C_LEVEL3] [varchar](10) NULL,
	[HIER_C_LEVEL3_TEXT] [varchar](40) NULL,
	[HIER_C_LEVEL4] [varchar](10) NULL,
	[HIER_C_LEVEL4_TEXT] [varchar](40) NULL,
	[HIER_C_LEVEL5] [varchar](10) NULL,
	[HIER_C_LEVEL5_TEXT] [varchar](40) NULL,
	[HIER_C_LEVEL6] [varchar](10) NULL,
	[HIER_C_LEVEL6_TEXT] [varchar](40) NULL,
	[HIER_C_LEVEL7] [varchar](10) NULL,
	[HIER_C_LEVEL7_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL1] [varchar](10) NULL,
	[HIER_D_LEVEL1_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL10] [varchar](10) NULL,
	[HIER_D_LEVEL10_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL11] [varchar](10) NULL,
	[HIER_D_LEVEL11_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL2] [varchar](10) NULL,
	[HIER_D_LEVEL2_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL3] [varchar](10) NULL,
	[HIER_D_LEVEL3_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL4] [varchar](10) NULL,
	[HIER_D_LEVEL4_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL5] [varchar](10) NULL,
	[HIER_D_LEVEL5_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL6] [varchar](10) NULL,
	[HIER_D_LEVEL6_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL7] [varchar](10) NULL,
	[HIER_D_LEVEL7_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL8] [varchar](10) NULL,
	[HIER_D_LEVEL8_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL9] [varchar](10) NULL,
	[HIER_D_LEVEL9_TEXT] [varchar](40) NULL,
	[PLAN_TO] [varchar](10) NULL,
	[BUSINESS_PARTNER] [varchar](10) NULL,
	[CHANNEL] [varchar](2) NULL,
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
	[HIER_B_LEVEL1_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL2] [varchar](10) NULL,
	[HIER_B_LEVEL2_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL3] [varchar](10) NULL,
	[HIER_B_LEVEL3_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL4] [varchar](10) NULL,
	[HIER_B_LEVEL4_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL5] [varchar](10) NULL,
	[HIER_B_LEVEL5_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL6] [varchar](10) NULL,
	[HIER_B_LEVEL6_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL7] [varchar](10) NULL,
	[HIER_B_LEVEL7_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL8] [varchar](10) NULL,
	[HIER_B_LEVEL8_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL9] [varchar](10) NULL,
	[HIER_B_LEVEL9_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL10] [varchar](10) NULL,
	[HIER_B_LEVEL10_TEXT] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CUSTOMER_FK_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CUSTOMER_FK_SRC](
	[CUSTOMER_ID] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CUSTOMER_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CUSTOMER_SRC](
	[CUSTOMER_ID] [varchar](10) NULL,
	[DESCRIPTION] [varchar](40) NULL,
	[CUSTOMER_TYPE] [varchar](2) NULL,
	[HIER_C_LEVEL1] [varchar](10) NULL,
	[HIER_C_LEVEL1_TEXT] [varchar](40) NULL,
	[HIER_C_LEVEL2] [varchar](10) NULL,
	[HIER_C_LEVEL2_TEXT] [varchar](40) NULL,
	[HIER_C_LEVEL3] [varchar](10) NULL,
	[HIER_C_LEVEL3_TEXT] [varchar](40) NULL,
	[HIER_C_LEVEL4] [varchar](10) NULL,
	[HIER_C_LEVEL4_TEXT] [varchar](40) NULL,
	[HIER_C_LEVEL5] [varchar](10) NULL,
	[HIER_C_LEVEL5_TEXT] [varchar](40) NULL,
	[HIER_C_LEVEL6] [varchar](10) NULL,
	[HIER_C_LEVEL6_TEXT] [varchar](40) NULL,
	[HIER_C_LEVEL7] [varchar](10) NULL,
	[HIER_C_LEVEL7_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL1] [varchar](10) NULL,
	[HIER_D_LEVEL1_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL10] [varchar](10) NULL,
	[HIER_D_LEVEL10_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL11] [varchar](10) NULL,
	[HIER_D_LEVEL11_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL2] [varchar](10) NULL,
	[HIER_D_LEVEL2_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL3] [varchar](10) NULL,
	[HIER_D_LEVEL3_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL4] [varchar](10) NULL,
	[HIER_D_LEVEL4_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL5] [varchar](10) NULL,
	[HIER_D_LEVEL5_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL6] [varchar](10) NULL,
	[HIER_D_LEVEL6_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL7] [varchar](10) NULL,
	[HIER_D_LEVEL7_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL8] [varchar](10) NULL,
	[HIER_D_LEVEL8_TEXT] [varchar](40) NULL,
	[HIER_D_LEVEL9] [varchar](10) NULL,
	[HIER_D_LEVEL9_TEXT] [varchar](40) NULL,
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
	[HIER_B_LEVEL1_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL2] [varchar](10) NULL,
	[HIER_B_LEVEL2_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL3] [varchar](10) NULL,
	[HIER_B_LEVEL3_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL4] [varchar](10) NULL,
	[HIER_B_LEVEL4_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL5] [varchar](10) NULL,
	[HIER_B_LEVEL5_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL6] [varchar](10) NULL,
	[HIER_B_LEVEL6_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL7] [varchar](10) NULL,
	[HIER_B_LEVEL7_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL8] [varchar](10) NULL,
	[HIER_B_LEVEL8_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL9] [varchar](10) NULL,
	[HIER_B_LEVEL9_TEXT] [varchar](40) NULL,
	[HIER_B_LEVEL10] [varchar](10) NULL,
	[HIER_B_LEVEL10_TEXT] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_FISCAL_PERIOD_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_FISCAL_PERIOD_SRC](
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[FISCAL_PERIOD] [varchar](7) NULL,
	[Period Year] [varchar](8) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_EQ_CS_ZERO_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_EQ_CS_ZERO_SRC](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[UNIT] [varchar](3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_EQ_CS]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_EQ_CS](
	[MATERIAL] [varchar](18) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_EQ_CS_BOT_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_EQ_CS_BOT_SRC](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[UNIT] [varchar](3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_EQ_CS_BOT_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_EQ_CS_BOT_SRC_1](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[List Price per Bottle] [decimal](17, 2) NULL,
	[UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_EQ_CS_EA_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_EQ_CS_EA_SRC](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[UNIT] [varchar](3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_EQ_CS_EA_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_EQ_CS_EA_SRC_1](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[List Price per Each] [decimal](17, 2) NULL,
	[UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_EQ_CS_MASTER_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_EQ_CS_MASTER_SRC](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[UNIT] [varchar](3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_EQ_CS_MASTER_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_EQ_CS_MASTER_SRC_1](
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
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_EQ_CS_PCH_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_EQ_CS_PCH_SRC](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[UNIT] [varchar](3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_EQ_CS_PCH_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_EQ_CS_PCH_SRC_1](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[List Price per Pouch] [decimal](17, 2) NULL,
	[UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_EQ_CS_PKG_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_EQ_CS_PKG_SRC](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[UNIT] [varchar](3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_EQ_CS_PKG_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_EQ_CS_PKG_SRC_1](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[List Price per Package] [decimal](17, 2) NULL,
	[UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_FACT_RECALC_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_FACT_RECALC_SRC](
	[MATERIAL] [varchar](18) NULL,
	[BASE_MATERIAL] [varchar](18) NULL,
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
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_FACT_RECALC_TGT]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_FACT_RECALC_TGT](
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
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_FACT_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_FACT_SRC](
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
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_FINAL_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_FINAL_SRC](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_LKUP_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_LKUP_SRC_1](
	[Component Material] [varchar](18) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_NE_CS]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_NE_CS](
	[MATERIAL] [varchar](18) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_NE_CS_BOT_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_NE_CS_BOT_SRC](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[UNIT] [varchar](3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_NE_CS_BOT_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_NE_CS_BOT_SRC_1](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price Per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[List Price Per Bottle] [decimal](17, 2) NULL,
	[UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_NE_CS_CS_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_NE_CS_CS_SRC](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[UNIT] [varchar](3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_NE_CS_EA_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_NE_CS_EA_SRC](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[UNIT] [varchar](3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_NE_CS_EA_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_NE_CS_EA_SRC_1](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price Per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[List Price Per Each] [decimal](17, 2) NULL,
	[UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_NE_CS_MASTER_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_NE_CS_MASTER_SRC](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[UNIT] [varchar](3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_NE_CS_MASTER_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_NE_CS_MASTER_SRC_1](
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
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_NE_CS_PCH_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_NE_CS_PCH_SRC](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[UNIT] [varchar](3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_NE_CS_PCH_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_NE_CS_PCH_SRC_1](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price Per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[List Price Per Pouch] [decimal](17, 2) NULL,
	[UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_NE_CS_PKG_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_NE_CS_PKG_SRC](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[UNIT] [varchar](3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_NE_CS_PKG_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_NE_CS_PKG_SRC_1](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price Per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[List Price Per Package] [decimal](17, 2) NULL,
	[UNIT] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_NE_CS_ZERO_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_NE_CS_ZERO_SRC](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[UNIT] [varchar](3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_SRC](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_LIST_PRICE_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_LIST_PRICE_SRC_1](
	[MATERIAL] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Sales Org.] [varchar](4) NULL,
	[Channel (Customer Group)] [varchar](2) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_ALT_UOM_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_ALT_UOM_SRC](
	[CURRENCY] [varchar](5) NULL,
	[EAN/UPC] [varchar](18) NULL,
	[BASE_QTY] [decimal](17, 3) NULL,
	[MATERIAL_ID] [varchar](18) NULL,
	[QUANTITY_NUM] [decimal](17, 3) NULL,
	[QUANTITY_DENO] [decimal](17, 3) NULL,
	[BASE_MATERIAL] [varchar](18) NULL,
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
/****** Object:  Table [dbo].[KLG_TPE_MAT_CLASS_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_CLASS_SRC](
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
	[DP Innovation Date] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_STD_PRC_FINAL_LKUP_REMOD_STG]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_STD_PRC_FINAL_LKUP_REMOD_STG](
	[MOD Material] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Year] [varchar](4) NULL,
	[Standard Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Mod Changed Flag] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_STD_PRICE_REMOD_BASE_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_STD_PRICE_REMOD_BASE_SRC](
	[Mod Material] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Year] [varchar](4) NULL,
	[Standard Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[PERCENT] [decimal](10, 3) NULL,
	[QUANTITY] [decimal](16, 3) NULL,
	[UNIT] [varchar](3) NULL,
	[Sales Org] [varchar](8) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_STD_PRICE_REMOD_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_STD_PRICE_REMOD_SRC](
	[MOD Material] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Year] [varchar](4) NULL,
	[Standard Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Mod Changed Flag] [varchar](4) NULL,
	[BASE YEAR] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_STD_PRICE_SR_2]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_STD_PRICE_SR_2](
	[MOD Material] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Year] [varchar](4) NULL,
	[Standard Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[PERCENT] [decimal](10, 3) NULL,
	[QUANTITY] [decimal](16, 3) NULL,
	[Sales Org] [varchar](8) NULL,
	[Corresponding Mod Entry] [decimal](17, 2) NULL,
	[Previous Component Entry] [decimal](17, 2) NULL,
	[Current Mod Entry] [decimal](17, 2) NULL,
	[Percent Change] [decimal](10, 3) NULL,
	[BASE_YEAR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_STD_PRICE_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_STD_PRICE_SRC_1](
	[MOD Material] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Year] [varchar](4) NULL,
	[standard Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[PERCENT] [decimal](10, 3) NULL,
	[QUANTITY] [decimal](16, 3) NULL,
	[Sales Org] [varchar](8) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_STD_PRICE_SRC_2]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_STD_PRICE_SRC_2](
	[MOD Material] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Year] [varchar](4) NULL,
	[Standard Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[PERCENT] [decimal](10, 3) NULL,
	[Previous Componenet Entry] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_STD_PRICE_SRC_3]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_STD_PRICE_SRC_3](
	[MOD Material] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Year] [varchar](4) NULL,
	[Standard Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Sales Org] [varchar](8) NULL,
	[Mod Changed Flag] [varchar](4) NULL,
	[BASE_YEAR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MAT_STP_PRICE_LOOKUP_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MAT_STP_PRICE_LOOKUP_1](
	[MOD Material] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Year] [varchar](4) NULL,
	[standard Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[PERCENT] [decimal](10, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_MIXPLTFLG_NE_STG_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MIXPLTFLG_NE_STG_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[Standard Price] [decimal](17, 2) NULL,
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
/****** Object:  Table [dbo].[KLG_TPE_MIXPLTFLG_NE_STG_SRC_1_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MIXPLTFLG_NE_STG_SRC_1_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[Standard Price] [decimal](17, 2) NULL,
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
/****** Object:  Table [dbo].[KLG_TPE_MOD_BOM_STD_PRC_REMOD_TGT_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_MOD_BOM_STD_PRC_REMOD_TGT_1](
	[MOD Material] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Year] [varchar](4) NULL,
	[New Standard Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Mod Changed Flag] [varchar](4) NULL,
	[BASE_YEAR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_CAT_BUD_GSV_ADJ_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_CAT_BUD_GSV_ADJ_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[BUD GSV ADJ] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_CAT_BUD_GSV_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_CAT_BUD_GSV_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[BUD GSV ORIG] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_CAT_BUD_KMF_ADJ_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_CAT_BUD_KMF_ADJ_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[BUD KMF ADJ] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_CAT_BUD_KMF_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_CAT_BUD_KMF_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[BUD BASE KMF] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_CAT_IBP_GSV_ADJ_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_CAT_IBP_GSV_ADJ_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[IBP GSV ADJ] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_CAT_IBP_GSV_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_CAT_IBP_GSV_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[IBP GSV ORIG] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_CAT_IBP_KMF_ADJ_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_CAT_IBP_KMF_ADJ_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[IBP KMF ADJ] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_CAT_IBP_KMF_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_CAT_IBP_KMF_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[IBP KMF ORIG] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_CAT_LE_GSV_ADJ_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_CAT_LE_GSV_ADJ_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[CRM LE GSV ADJ] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_CAT_LKUP_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_CAT_LKUP_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_CAT_SE_GSV_ADJ_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_CAT_SE_GSV_ADJ_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[SE GSV ADJ] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_CAT_SE_GSV_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_CAT_SE_GSV_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[SE GSV ORIG] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_CAT_SE_KMF_ADJ_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_CAT_SE_KMF_ADJ_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[AMOUNT] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_CAT_SE_KMF_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_CAT_SE_KMF_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[SE KMF ORIG] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_CAT_SE2_GSV_ADJ_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_CAT_SE2_GSV_ADJ_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[SE2 GSV ADJ] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_CAT_SE2_GSV_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_CAT_SE2_GSV_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[SE2 GSV ORIG] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_CAT_SE2_KMF_ADJ_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_CAT_SE2_KMF_ADJ_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[AMOUNT] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_CAT_SE2_KMF_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_CAT_SE2_KMF_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[SE2 KMF ORIG] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_CAT_SE3_GSV_ADJ_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_CAT_SE3_GSV_ADJ_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[SE3 GSV ADJ] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_CAT_SE3_GSV_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_CAT_SE3_GSV_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[SE3 GSV ORIG] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_CAT_SE3_KMF_ADJ_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_CAT_SE3_KMF_ADJ_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[AMOUNT] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_CAT_SE3_KMF_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_CAT_SE3_KMF_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[SE3 KMF ORIG] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_ITEM_FACT_OLD_DROPPED_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_ITEM_FACT_OLD_DROPPED_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Base LBS] [decimal](17, 3) NULL,
	[Plan Incr LBS] [decimal](17, 3) NULL,
	[Plan Base Units] [decimal](17, 3) NULL,
	[Plan Incr Units] [decimal](17, 3) NULL,
	[Plan Base Ret $'s] [decimal](17, 2) NULL,
	[Plan Incr Ret $'s] [decimal](17, 2) NULL,
	[Plan Base $] [decimal](17, 3) NULL,
	[Plan Incr Ship $] [decimal](17, 2) NULL,
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Actual Ship $] [decimal](17, 2) NULL,
	[Actual Ship CS] [decimal](17, 3) NULL,
	[Actual Ship LBS] [decimal](17, 3) NULL,
	[Actual Ship Units] [decimal](17, 3) NULL,
	[Actual Ship KG] [decimal](17, 3) NULL,
	[LE Ship $] [decimal](17, 2) NULL,
	[LE Ship LBS] [decimal](17, 3) NULL,
	[LE Ship Units] [decimal](17, 3) NULL,
	[Total Planned KMF $] [decimal](17, 2) NULL,
	[LE KMF $] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Actual COP $] [decimal](17, 2) NULL,
	[LE COP $] [decimal](17, 2) NULL,
	[LE Cases] [decimal](17, 3) NULL,
	[LE Kilos] [decimal](17, 3) NULL,
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
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_ITEM_FACT_OLD_NO_FLAG__DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_ITEM_FACT_OLD_NO_FLAG__DELTA](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Base LBS] [decimal](17, 3) NULL,
	[Plan Incr LBS] [decimal](17, 3) NULL,
	[Plan Base Units] [decimal](17, 3) NULL,
	[Plan Incr Units] [decimal](17, 3) NULL,
	[Plan Base Ret $'s] [decimal](17, 2) NULL,
	[Plan Incr Ret $'s] [decimal](17, 2) NULL,
	[Plan Base $] [decimal](17, 3) NULL,
	[Plan Incr Ship $] [decimal](17, 2) NULL,
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Actual Ship $] [decimal](17, 2) NULL,
	[Actual Ship CS] [decimal](17, 3) NULL,
	[Actual Ship LBS] [decimal](17, 3) NULL,
	[Actual Ship Units] [decimal](17, 3) NULL,
	[Actual Ship KG] [decimal](17, 3) NULL,
	[LE Ship $] [decimal](17, 2) NULL,
	[LE Ship LBS] [decimal](17, 3) NULL,
	[LE Ship Units] [decimal](17, 3) NULL,
	[Total Planned KMF $] [decimal](17, 2) NULL,
	[LE KMF $] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Actual COP $] [decimal](17, 2) NULL,
	[LE COP $] [decimal](17, 2) NULL,
	[LE Cases] [decimal](17, 3) NULL,
	[LE Kilos] [decimal](17, 3) NULL,
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
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_ITEM_FACT_PERIOD_ADDED]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_ITEM_FACT_PERIOD_ADDED](
	[Snapshot Period] [varchar](7) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[BW Period] [varchar](8) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Base LBS] [decimal](17, 3) NULL,
	[Plan Incr LBS] [decimal](17, 3) NULL,
	[Plan Base Units] [decimal](17, 3) NULL,
	[Plan Incr Units] [decimal](17, 3) NULL,
	[Plan Base Ret $'s] [decimal](17, 2) NULL,
	[Plan Incr Ret $'s] [decimal](17, 2) NULL,
	[Plan Base $] [decimal](17, 3) NULL,
	[Plan Incr Ship $] [decimal](17, 2) NULL,
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Actual Ship $] [decimal](17, 2) NULL,
	[Actual Ship CS] [decimal](17, 3) NULL,
	[Actual Ship LBS] [decimal](17, 3) NULL,
	[Actual Ship Units] [decimal](17, 3) NULL,
	[Actual Ship KG] [decimal](17, 3) NULL,
	[LE Ship $] [decimal](17, 2) NULL,
	[LE Ship LBS] [decimal](17, 3) NULL,
	[LE Ship Units] [decimal](17, 3) NULL,
	[Total Planned KMF $] [decimal](17, 2) NULL,
	[LE KMF $] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Actual COP $] [decimal](17, 2) NULL,
	[LE COP $] [decimal](17, 2) NULL,
	[LE Cases] [decimal](17, 3) NULL,
	[LE Kilos] [decimal](17, 3) NULL,
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
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_ITEM_SNAPSHOT_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_ITEM_SNAPSHOT_SRC](
	[Snapshot Period] [varchar](7) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Base LBS] [decimal](17, 3) NULL,
	[Plan Incr LBS] [decimal](17, 3) NULL,
	[Plan Base Units] [decimal](17, 3) NULL,
	[Plan Incr Units] [decimal](17, 3) NULL,
	[Plan Base Ret $'s] [decimal](17, 2) NULL,
	[Plan Incr Ret $'s] [decimal](17, 2) NULL,
	[Plan Base $] [decimal](17, 3) NULL,
	[Plan Incr Ship $] [decimal](17, 2) NULL,
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Actual Ship $] [decimal](17, 2) NULL,
	[Actual Ship CS] [decimal](17, 3) NULL,
	[Actual Ship LBS] [decimal](17, 3) NULL,
	[Actual Ship Units] [decimal](17, 3) NULL,
	[Actual Ship KG] [decimal](17, 3) NULL,
	[LE Ship $] [decimal](17, 2) NULL,
	[LE Ship LBS] [decimal](17, 3) NULL,
	[LE Ship Units] [decimal](17, 3) NULL,
	[Total Planned KMF $] [decimal](17, 2) NULL,
	[LE KMF $] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Actual COP $] [decimal](17, 2) NULL,
	[LE COP $] [decimal](17, 2) NULL,
	[LE Cases] [decimal](17, 3) NULL,
	[LE Kilos] [decimal](17, 3) NULL,
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
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_ITEM_SNAPSHOT_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_ITEM_SNAPSHOT_SRC_1](
	[Snapshot Period] [varchar](7) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[LE Ship $] [decimal](17, 2) NULL,
	[LE KMF $] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLAN_TO_ITEM_SNAPSHOT_SRC1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLAN_TO_ITEM_SNAPSHOT_SRC1](
	[Snapshot Period] [varchar](7) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[LE Ship $] [decimal](17, 2) NULL,
	[LE KMF $] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_CAT_CURR_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_CAT_CURR_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[CRM Latest Estimate Gross Sales (GSV)] [decimal](17, 2) NULL,
	[IBP GSV ORIG] [decimal](20, 0) NULL,
	[IBP GSV ADJ] [decimal](20, 0) NULL,
	[IBP KMF ORIG] [decimal](20, 0) NULL,
	[IBP KMF ADJ] [decimal](20, 0) NULL,
	[BUD GSV ORIG] [decimal](20, 0) NULL,
	[BUD GSV ADJ] [decimal](20, 0) NULL,
	[BUD BASE KMF] [decimal](20, 0) NULL,
	[BUD KMF ADJ] [decimal](20, 0) NULL,
	[SE GSV ORIG] [decimal](20, 0) NULL,
	[SE GSV ADJ] [decimal](20, 0) NULL,
	[SE KMF ORIG] [decimal](20, 0) NULL,
	[SE KMF ADJ] [decimal](20, 0) NULL,
	[SE2 GSV ORIG] [decimal](20, 0) NULL,
	[SE2 GSV ADJ] [decimal](20, 0) NULL,
	[SE2 KMF ORIG] [decimal](20, 0) NULL,
	[SE2 KMF ADJ] [decimal](20, 0) NULL,
	[SE3 GSV ORIG] [decimal](20, 0) NULL,
	[SE3 GSV ADJ] [decimal](20, 0) NULL,
	[SE3 KMF ORIG] [decimal](20, 0) NULL,
	[SE3 KMF ADJ] [decimal](20, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_CAT_CURR_SRC_FINAL]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_CAT_CURR_SRC_FINAL](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[CRM Latest Estimate Gross Sales (GSV)] [decimal](17, 2) NULL,
	[IBP GSV ORIG] [decimal](20, 0) NULL,
	[IBP GSV ADJ] [decimal](20, 0) NULL,
	[IBP KMF ORIG] [decimal](20, 0) NULL,
	[IBP KMF ADJ] [decimal](20, 0) NULL,
	[BUD GSV ORIG] [decimal](20, 0) NULL,
	[BUD GSV ADJ] [decimal](20, 0) NULL,
	[BUD BASE KMF] [decimal](20, 0) NULL,
	[BUD KMF ADJ] [decimal](20, 0) NULL,
	[SE GSV ORIG] [decimal](20, 0) NULL,
	[SE GSV ADJ] [decimal](20, 0) NULL,
	[SE KMF ORIG] [decimal](20, 0) NULL,
	[SE KMF ADJ] [decimal](20, 0) NULL,
	[SE2 GSV ORIG] [decimal](20, 0) NULL,
	[SE2 GSV ADJ] [decimal](20, 0) NULL,
	[SE2 KMF ORIG] [decimal](20, 0) NULL,
	[SE2 KMF ADJ] [decimal](20, 0) NULL,
	[SE3 GSV ORIG] [decimal](20, 0) NULL,
	[SE3 GSV ADJ] [decimal](20, 0) NULL,
	[SE3 KMF ORIG] [decimal](20, 0) NULL,
	[SE3 KMF ADJ] [decimal](20, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_CAT_GSV_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_CAT_GSV_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[CRM Latest Estimate Gross Sales $] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_CAT_GT_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_CAT_GT_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[CRM Latest Estimate Gross Sales (GSV)] [decimal](17, 2) NULL,
	[IBP GSV ORIG] [decimal](20, 0) NULL,
	[IBP GSV ADJ] [decimal](20, 0) NULL,
	[IBP KMF ORIG] [decimal](20, 0) NULL,
	[IBP KMF ADJ] [decimal](20, 0) NULL,
	[BUD GSV ORIG] [decimal](20, 0) NULL,
	[BUD GSV ADJ] [decimal](20, 0) NULL,
	[BUD BASE KMF] [decimal](20, 0) NULL,
	[BUD KMF ADJ] [decimal](20, 0) NULL,
	[SE GSV ORIG] [decimal](20, 0) NULL,
	[SE GSV ADJ] [decimal](20, 0) NULL,
	[SE KMF ORIG] [decimal](20, 0) NULL,
	[SE KMF ADJ] [decimal](20, 0) NULL,
	[SE2 GSV ORIG] [decimal](20, 0) NULL,
	[SE2 GSV ADJ] [decimal](20, 0) NULL,
	[SE2 KMF ORIG] [decimal](20, 0) NULL,
	[SE2 KMF ADJ] [decimal](20, 0) NULL,
	[SE3 GSV ORIG] [decimal](20, 0) NULL,
	[SE3 GSV ADJ] [decimal](20, 0) NULL,
	[SE3 KMF ORIG] [decimal](20, 0) NULL,
	[SE3 KMF ADJ] [decimal](20, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_CAT_GT_WK_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_CAT_GT_WK_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[ATPM - Plan Ship Dollars] [decimal](17, 2) NULL,
	[ATPM - Currency] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_CAT_GT_WK_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_CAT_GT_WK_SRC_1](
	[CUSTOMER] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[ATPM - Plan Ship Dollars] [decimal](17, 2) NULL,
	[ATPM - Currency] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_CAT_GT_YR_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_CAT_GT_YR_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[Current Year] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[IBP GSV ORIG] [decimal](17, 3) NULL,
	[IBP GSV ADJ] [decimal](17, 3) NULL,
	[IBP KMF ORIG] [decimal](17, 3) NULL,
	[IBP KMF ADJ] [decimal](17, 3) NULL,
	[BUD GSV ORIG] [decimal](17, 3) NULL,
	[BUD GSV ADJ] [decimal](17, 3) NULL,
	[BUD BASE KMF] [decimal](17, 3) NULL,
	[CRM LE GSV ADJ] [decimal](17, 3) NULL,
	[BUD KMF ADJ] [decimal](17, 3) NULL,
	[SE GSV ORIG] [decimal](17, 3) NULL,
	[SE GSV ADJ] [decimal](17, 3) NULL,
	[SE KMF ORIG] [decimal](17, 3) NULL,
	[SE KMF ADJ] [decimal](17, 3) NULL,
	[SE2 GSV ORIG] [decimal](17, 3) NULL,
	[SE2 GSV ADJ] [decimal](17, 3) NULL,
	[SE2 KMF ORIG] [decimal](17, 3) NULL,
	[SE2 KMF ADJ] [decimal](17, 3) NULL,
	[SE3 GSV ORIG] [decimal](17, 3) NULL,
	[SE3 GSV ADJ] [decimal](17, 3) NULL,
	[SE3 KMF ORIG] [decimal](17, 3) NULL,
	[SE3 KMF ADJ] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_CAT_LE_GSV_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_CAT_LE_GSV_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_CAT_LE_GSV_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_CAT_LE_GSV_SRC_1](
	[CUSTOMER] [varchar](10) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_CAT_LKUP_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_CAT_LKUP_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_CAT_LT_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_CAT_LT_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[CRM Latest Estimate Gross Sales (GSV)] [decimal](17, 2) NULL,
	[IBP GSV ORIG] [decimal](20, 0) NULL,
	[IBP GSV ADJ] [decimal](20, 0) NULL,
	[IBP KMF ORIG] [decimal](20, 0) NULL,
	[IBP KMF ADJ] [decimal](20, 0) NULL,
	[BUD GSV ORIG] [decimal](20, 0) NULL,
	[BUD GSV ADJ] [decimal](20, 0) NULL,
	[BUD BASE KMF] [decimal](20, 0) NULL,
	[BUD KMF ADJ] [decimal](20, 0) NULL,
	[SE GSV ORIG] [decimal](20, 0) NULL,
	[SE GSV ADJ] [decimal](20, 0) NULL,
	[SE KMF ORIG] [decimal](20, 0) NULL,
	[SE KMF ADJ] [decimal](20, 0) NULL,
	[SE2 GSV ORIG] [decimal](20, 0) NULL,
	[SE2 GSV ADJ] [decimal](20, 0) NULL,
	[SE2 KMF ORIG] [decimal](20, 0) NULL,
	[SE2 KMF ADJ] [decimal](20, 0) NULL,
	[SE3 GSV ORIG] [decimal](20, 0) NULL,
	[SE3 GSV ADJ] [decimal](20, 0) NULL,
	[SE3 KMF ORIG] [decimal](20, 0) NULL,
	[SE3 KMF ADJ] [decimal](20, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_CAT_LT_WK_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_CAT_LT_WK_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[TPM: Plan Ship Dollars] [decimal](17, 2) NULL,
	[TPM: Currency] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_CAT_LT_WK_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_CAT_LT_WK_SRC_1](
	[CUSTOMER] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[TPM: Plan Ship Dollars] [decimal](17, 2) NULL,
	[TPM: Currency] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_CAT_LT_YR_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_CAT_LT_YR_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[Current Year] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[IBP GSV ORIG] [decimal](17, 3) NULL,
	[IBP GSV ADJ] [decimal](17, 3) NULL,
	[IBP KMF ORIG] [decimal](17, 3) NULL,
	[IBP KMF ADJ] [decimal](17, 3) NULL,
	[BUD GSV ORIG] [decimal](17, 3) NULL,
	[BUD GSV ADJ] [decimal](17, 3) NULL,
	[BUD BASE KMF] [decimal](17, 3) NULL,
	[CRM LE GSV ADJ] [decimal](17, 3) NULL,
	[BUD KMF ADJ] [decimal](17, 3) NULL,
	[SE GSV ORIG] [decimal](17, 3) NULL,
	[SE GSV ADJ] [decimal](17, 3) NULL,
	[SE KMF ORIG] [decimal](17, 3) NULL,
	[SE KMF ADJ] [decimal](17, 3) NULL,
	[SE2 GSV ORIG] [decimal](17, 3) NULL,
	[SE2 GSV ADJ] [decimal](17, 3) NULL,
	[SE2 KMF ORIG] [decimal](17, 3) NULL,
	[SE2 KMF ADJ] [decimal](17, 3) NULL,
	[SE3 GSV ORIG] [decimal](17, 3) NULL,
	[SE3 GSV ADJ] [decimal](17, 3) NULL,
	[SE3 KMF ORIG] [decimal](17, 3) NULL,
	[SE3 KMF ADJ] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_CAT_SLSCA4_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_CAT_SLSCA4_SRC_1](
	[CUSTOMER] [varchar](10) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Actual Gross Sales] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_CAT_SLSCA4_SRC_2]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_CAT_SLSCA4_SRC_2](
	[CUSTOMER] [varchar](10) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Actual Gross Sales] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_CAT_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_CAT_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[CRM Latest Estimate Gross Sales $] [decimal](17, 2) NULL,
	[Actual Gross Sales] [decimal](17, 2) NULL,
	[Plan Gross Sales $] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_CAT_TPM82_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_CAT_TPM82_SRC_1](
	[CUSTOMER] [varchar](10) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Gross Sales $] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_CAT_TPM82_SRC_2]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_CAT_TPM82_SRC_2](
	[CUSTOMER] [varchar](10) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Gross Sales $] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_ACT_HISTORY_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_ACT_HISTORY_SRC](
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
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_ACT_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_ACT_SRC_1](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[UNIT] [varchar](3) NULL,
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
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_COMP_MERGE_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_COMP_MERGE_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[QUANTITY] [decimal](16, 3) NULL,
	[SALE_FLAG] [varchar](30) NULL,
	[Standard Price] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_COMP_MERGE_SRC_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_COMP_MERGE_SRC_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[QUANTITY] [decimal](16, 3) NULL,
	[Standard Price] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_FINAL_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_FINAL_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Base LBS] [decimal](17, 3) NULL,
	[Plan Incr LBS] [decimal](17, 3) NULL,
	[Plan Base Units] [decimal](17, 3) NULL,
	[Plan Incr Units] [decimal](17, 3) NULL,
	[Plan Base Ret $'s] [decimal](17, 2) NULL,
	[Plan Incr Ret $'s] [decimal](17, 2) NULL,
	[Plan Base $] [decimal](17, 3) NULL,
	[Plan Incr Ship $] [decimal](17, 2) NULL,
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Actual Ship $] [decimal](17, 2) NULL,
	[Actual Ship CS] [decimal](17, 3) NULL,
	[Actual Ship LBS] [decimal](17, 3) NULL,
	[Actual Ship Units] [decimal](17, 3) NULL,
	[Actual Ship KG] [decimal](17, 3) NULL,
	[LE Ship $] [decimal](17, 2) NULL,
	[LE Ship LBS] [decimal](17, 3) NULL,
	[LE Ship Units] [decimal](17, 3) NULL,
	[Total Planned KMF $] [decimal](17, 2) NULL,
	[LE KMF $] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Actual COP $] [decimal](17, 2) NULL,
	[LE COP $] [decimal](17, 2) NULL,
	[LE Cases] [decimal](17, 3) NULL,
	[LE Kilos] [decimal](17, 3) NULL,
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
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_FINAL_SRC_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_FINAL_SRC_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Base LBS] [decimal](17, 3) NULL,
	[Plan Incr LBS] [decimal](17, 3) NULL,
	[Plan Base Units] [decimal](17, 3) NULL,
	[Plan Incr Units] [decimal](17, 3) NULL,
	[Plan Base Ret $'s] [decimal](17, 2) NULL,
	[Plan Incr Ret $'s] [decimal](17, 2) NULL,
	[Plan Base $] [decimal](17, 3) NULL,
	[Plan Incr Ship $] [decimal](17, 2) NULL,
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Actual Ship $] [decimal](17, 2) NULL,
	[Actual Ship CS] [decimal](17, 3) NULL,
	[Actual Ship LBS] [decimal](17, 3) NULL,
	[Actual Ship Units] [decimal](17, 3) NULL,
	[Actual Ship KG] [decimal](17, 3) NULL,
	[LE Ship $] [decimal](17, 2) NULL,
	[LE Ship LBS] [decimal](17, 3) NULL,
	[LE Ship Units] [decimal](17, 3) NULL,
	[Total Planned KMF $] [decimal](17, 2) NULL,
	[LE KMF $] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Actual COP $] [decimal](17, 2) NULL,
	[LE COP $] [decimal](17, 2) NULL,
	[LE Cases] [decimal](17, 3) NULL,
	[LE Kilos] [decimal](17, 3) NULL,
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
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_FINAL_SRC_NO_FLAG_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_FINAL_SRC_NO_FLAG_DELTA](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Base LBS] [decimal](17, 3) NULL,
	[Plan Incr LBS] [decimal](17, 3) NULL,
	[Plan Base Units] [decimal](17, 3) NULL,
	[Plan Incr Units] [decimal](17, 3) NULL,
	[Plan Base Ret $'s] [decimal](17, 2) NULL,
	[Plan Incr Ret $'s] [decimal](17, 2) NULL,
	[Plan Base $] [decimal](17, 3) NULL,
	[Plan Incr Ship $] [decimal](17, 2) NULL,
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Actual Ship $] [decimal](17, 2) NULL,
	[Actual Ship CS] [decimal](17, 3) NULL,
	[Actual Ship LBS] [decimal](17, 3) NULL,
	[Actual Ship Units] [decimal](17, 3) NULL,
	[Actual Ship KG] [decimal](17, 3) NULL,
	[LE Ship $] [decimal](17, 2) NULL,
	[LE Ship LBS] [decimal](17, 3) NULL,
	[LE Ship Units] [decimal](17, 3) NULL,
	[Total Planned KMF $] [decimal](17, 2) NULL,
	[LE KMF $] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Actual COP $] [decimal](17, 2) NULL,
	[LE COP $] [decimal](17, 2) NULL,
	[LE Cases] [decimal](17, 3) NULL,
	[LE Kilos] [decimal](17, 3) NULL,
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
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_LIST_PRC_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_LIST_PRC_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[Sales Org.] [varchar](4) NULL,
	[SALE_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_LIST_PRC_SRC_1_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_LIST_PRC_SRC_1_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[Sales Org.] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_MERGE_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_MERGE_SRC](
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
	[CHANNEL] [varchar](2) NULL,
	[SALE_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_MERGE_SRC_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_MERGE_SRC_DELTA](
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
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[CHANNEL] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_PLN_TGT_B3]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_PLN_TGT_B3](
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
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[< Curr Week: LE Ship $ - Actual Dollars ($)] [decimal](17, 2) NULL,
	[>= Curr Week: LE Ship $ - Plan Ship $] [decimal](17, 2) NULL,
	[< Curr Week: LE Ship LBS - Actual Pounds (LB)] [decimal](17, 3) NULL,
	[>= Curr Week: LE Ship LBS - Plan Ship LBS] [decimal](17, 3) NULL,
	[< Curr Week: LE Ship Units - Actual Eaches (EA)] [decimal](17, 3) NULL,
	[>= Curr Week: LE Ship Units - Plan Ship EA] [decimal](17, 3) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[< Curr Week: LE COP $ - Actual COP $] [decimal](17, 2) NULL,
	[>= Curr Week: LE COP $ - Total Planned COP $] [decimal](17, 2) NULL,
	[< Curr Week: LE Cases - Actual Cases (CS)] [decimal](17, 3) NULL,
	[>= Curr Week: LE Cases - Total Planned Shipment CS] [decimal](17, 3) NULL,
	[< Curr Week: LE Kilos - Actual Kilograms (KG)] [decimal](17, 3) NULL,
	[>= Curr Week: LE Kilos - Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[Plan Base Cases] [decimal](17, 3) NULL,
	[Plan Incr Cases] [decimal](17, 3) NULL,
	[Plan Incr Ship Cases] [decimal](17, 3) NULL,
	[Plan Incr Ship Units] [decimal](17, 3) NULL,
	[Plan Incr Ship LBS] [decimal](17, 3) NULL,
	[Plan Incr Ship Kilos] [decimal](17, 3) NULL,
	[Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[Suggested Shelf Price (SAS)] [decimal](17, 2) NULL,
	[Lastest Estimate Missed OI] [decimal](17, 2) NULL,
	[Latest Estimate Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate EDLP Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate Scan Apps Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate Scan Dollars] [decimal](17, 2) NULL,
	[LE WW$] [decimal](17, 2) NULL,
	[Latest Estimate Total Fixed KMF] [decimal](17, 2) NULL,
	[Plan Total Off Invoice Dollars] [decimal](17, 2) NULL,
	[Actual OI Spend (Not restricted)] [decimal](17, 2) NULL,
	[Plan Total Fixed KMF Spend] [decimal](17, 2) NULL,
	[Plan Variable KMF Spend] [decimal](17, 2) NULL,
	[SALE_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_PLN_TGT_B3_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_PLN_TGT_B3_DELTA](
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
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[< Curr Week: LE Ship $ - Actual Dollars ($)] [decimal](17, 2) NULL,
	[>= Curr Week: LE Ship $ - Plan Ship $] [decimal](17, 2) NULL,
	[< Curr Week: LE Ship LBS - Actual Pounds (LB)] [decimal](17, 3) NULL,
	[>= Curr Week: LE Ship LBS - Plan Ship LBS] [decimal](17, 3) NULL,
	[< Curr Week: LE Ship Units - Actual Eaches (EA)] [decimal](17, 3) NULL,
	[>= Curr Week: LE Ship Units - Plan Ship EA] [decimal](17, 3) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[< Curr Week: LE COP $ - Actual COP $] [decimal](17, 2) NULL,
	[>= Curr Week: LE COP $ - Total Planned COP $] [decimal](17, 2) NULL,
	[< Curr Week: LE Cases - Actual Cases (CS)] [decimal](17, 3) NULL,
	[>= Curr Week: LE Cases - Total Planned Shipment CS] [decimal](17, 3) NULL,
	[< Curr Week: LE Kilos - Actual Kilograms (KG)] [decimal](17, 3) NULL,
	[>= Curr Week: LE Kilos - Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[Plan Base Cases] [decimal](17, 3) NULL,
	[Plan Incr Cases] [decimal](17, 3) NULL,
	[Plan Incr Ship Cases] [decimal](17, 3) NULL,
	[Plan Incr Ship Units] [decimal](17, 3) NULL,
	[Plan Incr Ship LBS] [decimal](17, 3) NULL,
	[Plan Incr Ship Kilos] [decimal](17, 3) NULL,
	[Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[Suggested Shelf Price (SAS)] [decimal](17, 2) NULL,
	[Lastest Estimate Missed OI] [decimal](17, 2) NULL,
	[Latest Estimate Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate EDLP Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate Scan Apps Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate Scan Dollars] [decimal](17, 2) NULL,
	[LE WW$] [decimal](17, 2) NULL,
	[Latest Estimate Total Fixed KMF] [decimal](17, 2) NULL,
	[Plan Total Off Invoice Dollars] [decimal](17, 2) NULL,
	[Actual OI Spend (Not restricted)] [decimal](17, 2) NULL,
	[Plan Total Fixed KMF Spend] [decimal](17, 2) NULL,
	[Plan Variable KMF Spend] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_PLN_Y_LKUP_DELTA_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_PLN_Y_LKUP_DELTA_SRC](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_PLN_Y_LKUP_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_PLN_Y_LKUP_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[SALE_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_PLN_Y_LKUP_SRC_CHANNEL]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_PLN_Y_LKUP_SRC_CHANNEL](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[SALE_FLAG] [varchar](1) NULL,
	[Distribution Channel] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_SRC_1](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[UNIT] [varchar](3) NULL,
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
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_SRC_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_SRC_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[UNIT] [varchar](3) NULL,
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
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_UOM_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_UOM_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[UNIT] [varchar](3) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL,
	[UNIT_FLAG] [int] NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[SALE_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_UOM_SRC_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_UOM_SRC_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[UNIT] [varchar](3) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL,
	[UNIT_FLAG] [int] NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_Y_LKUP_2_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_Y_LKUP_2_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[SALE_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PLN_TO_ITM_Y_LKUP_2_SRC_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLN_TO_ITM_Y_LKUP_2_SRC_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PRODUCT_HIERARCHY_LKUP]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PRODUCT_HIERARCHY_LKUP](
	[PRODUCT_HIERARCHY] [varchar](18) NULL,
	[LANGUAGE] [varchar](2) NULL,
	[PROD_HIER_TEXT] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PROM_ZM_TPM60_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PROM_ZM_TPM60_DELTA](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[miixed pallet material] [varchar](18) NULL,
	[calendar week] [varchar](7) NULL,
	[mixed pallet flag] [varchar](1) NULL,
	[PROMOTIONS] [varchar](24) NULL,
	[CURRENCY] [varchar](5) NULL,
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
	[TPM: flag] [varchar](1) NULL,
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
	[ATPM - InfoProvider] [varchar](20) NULL,
	[ATPM - flag] [varchar](4) NULL,
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
	[Sales Promo: flag] [varchar](4) NULL,
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
	[SVP - flag] [varchar](1) NULL,
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
	[LE: flag] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PROM_ZM_TPM60_TGT_P1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PROM_ZM_TPM60_TGT_P1](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[miixed pallet material] [varchar](18) NULL,
	[calendar week] [varchar](7) NULL,
	[mixed pallet flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
	[TPM: Total Planned Shipment Dollars] [decimal](17, 2) NULL,
	[TPM: Total Planned COP] [decimal](17, 2) NULL,
	[TPM: Planned Retailer Sales Dollar] [decimal](17, 2) NULL,
	[TPM: Total Planned Incremental Eaches] [decimal](17, 3) NULL,
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
	[TPM: Bill-back % Total] [decimal](17, 2) NULL,
	[TPM: Bill-back Rate Total] [decimal](17, 2) NULL,
	[TPM: Corrective Lump Sum] [decimal](17, 2) NULL,
	[TPM: EDLP Bill-back % Total] [decimal](17, 2) NULL,
	[TPM: EDLP Bill-back Rate Total] [decimal](17, 2) NULL,
	[TPM: EDLP Off-Invoice % Total] [decimal](17, 2) NULL,
	[TPM: EDLP Off-Invoice Rate Total] [decimal](17, 2) NULL,
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
	[TPM: Warehouse Withdrawal Total Spend] [decimal](17, 2) NULL,
	[ATPM - Total Planned Shipment Dollars] [decimal](17, 2) NULL,
	[ATPM - Total Planned COP] [decimal](17, 2) NULL,
	[ATPM - Planned Retailer Sales Dollar] [decimal](17, 2) NULL,
	[ATPM - Total Planned Incremental Eaches] [decimal](17, 3) NULL,
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
	[ATPM - Bill-back % Total] [decimal](17, 2) NULL,
	[ATPM - Bill-back Rate Total] [decimal](17, 2) NULL,
	[ATPM - Corrective Lump Sum] [decimal](17, 2) NULL,
	[ATPM - EDLP Bill-back % Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Bill-back Rate Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Off-Invoice % Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Off-Invoice Rate Total] [decimal](17, 2) NULL,
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
	[ATPM - Warehouse Withdrawal Total Spend] [decimal](17, 2) NULL,
	[Sales Promo: SPA (Special Promo Allowance)] [decimal](17, 2) NULL,
	[SVP - Planned Base Eaches] [decimal](17, 3) NULL,
	[SVP -  Planned Base Volume] [decimal](17, 3) NULL,
	[SVP - Planned Base Pounds] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment Dollars] [decimal](17, 2) NULL,
	[SVP - Total Planned COP] [decimal](17, 2) NULL,
	[SVP - Planned Retailer Sales Dollar] [decimal](17, 2) NULL,
	[SVP - Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[SVP - Suggested Shelf Price (SAS)] [decimal](17, 2) NULL,
	[SVP - Total Planned Shipment Eaches] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment CS] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment Pounds] [decimal](17, 3) NULL,
	[SVP - Total Planned Base Volume] [decimal](17, 3) NULL,
	[LE: Bill-back % Total] [decimal](17, 2) NULL,
	[LE: Bill-back Rate Total] [decimal](17, 2) NULL,
	[LE: Correction Lump Sum] [decimal](17, 2) NULL,
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
	[LE: Warehouse Withdrawal Total] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PROM_ZM_TPM60_TGT_P1_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PROM_ZM_TPM60_TGT_P1_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[miixed pallet material] [varchar](18) NULL,
	[calendar week] [varchar](7) NULL,
	[mixed pallet flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
	[TPM: Total Planned Shipment Dollars] [decimal](17, 2) NULL,
	[TPM: Total Planned COP] [decimal](17, 2) NULL,
	[TPM: Planned Retailer Sales Dollar] [decimal](17, 2) NULL,
	[TPM: Total Planned Incremental Eaches] [decimal](17, 3) NULL,
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
	[TPM: Bill-back % Total] [decimal](17, 2) NULL,
	[TPM: Bill-back Rate Total] [decimal](17, 2) NULL,
	[TPM: Corrective Lump Sum] [decimal](17, 2) NULL,
	[TPM: EDLP Bill-back % Total] [decimal](17, 2) NULL,
	[TPM: EDLP Bill-back Rate Total] [decimal](17, 2) NULL,
	[TPM: EDLP Off-Invoice % Total] [decimal](17, 2) NULL,
	[TPM: EDLP Off-Invoice Rate Total] [decimal](17, 2) NULL,
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
	[TPM: Warehouse Withdrawal Total Spend] [decimal](17, 2) NULL,
	[ATPM - Total Planned Shipment Dollars] [decimal](17, 2) NULL,
	[ATPM - Total Planned COP] [decimal](17, 2) NULL,
	[ATPM - Planned Retailer Sales Dollar] [decimal](17, 2) NULL,
	[ATPM - Total Planned Incremental Eaches] [decimal](17, 3) NULL,
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
	[ATPM - Bill-back % Total] [decimal](17, 2) NULL,
	[ATPM - Bill-back Rate Total] [decimal](17, 2) NULL,
	[ATPM - Corrective Lump Sum] [decimal](17, 2) NULL,
	[ATPM - EDLP Bill-back % Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Bill-back Rate Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Off-Invoice % Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Off-Invoice Rate Total] [decimal](17, 2) NULL,
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
	[ATPM - Warehouse Withdrawal Total Spend] [decimal](17, 2) NULL,
	[Sales Promo: SPA (Special Promo Allowance)] [decimal](17, 2) NULL,
	[SVP - Planned Base Eaches] [decimal](17, 3) NULL,
	[SVP -  Planned Base Volume] [decimal](17, 3) NULL,
	[SVP - Planned Base Pounds] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment Dollars] [decimal](17, 2) NULL,
	[SVP - Total Planned COP] [decimal](17, 2) NULL,
	[SVP - Planned Retailer Sales Dollar] [decimal](17, 2) NULL,
	[SVP - Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[SVP - Suggested Shelf Price (SAS)] [decimal](17, 2) NULL,
	[SVP - Total Planned Shipment Eaches] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment CS] [decimal](17, 3) NULL,
	[SVP - Total Planned Shipment Pounds] [decimal](17, 3) NULL,
	[SVP - Total Planned Base Volume] [decimal](17, 3) NULL,
	[LE: Bill-back % Total] [decimal](17, 2) NULL,
	[LE: Bill-back Rate Total] [decimal](17, 2) NULL,
	[LE: Correction Lump Sum] [decimal](17, 2) NULL,
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
	[LE: Warehouse Withdrawal Total] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PROMOTION_FACT_PRE_COMBO]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PROMOTION_FACT_PRE_COMBO](
	[FLAG] [varchar](4) NULL,
	[Promotion ID] [varchar](24) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calender Week] [varchar](7) NULL,
	[Plan To] [varchar](10) NULL,
	[TPM: Currency] [varchar](5) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](17, 2) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](17, 3) NULL,
	[Gross Sales $] [decimal](17, 2) NULL,
	[Planned Ship $] [decimal](17, 2) NULL,
	[Planned Incremental Volume $] [decimal](17, 2) NULL,
	[Planned Promo COP $] [decimal](17, 2) NULL,
	[LE Total Non-Trade] [decimal](17, 2) NULL,
	[LE Total Fixed KMF $] [decimal](17, 2) NULL,
	[Total Planned Promo $] [decimal](17, 2) NULL,
	[Reserved Total KMF $] [decimal](17, 2) NULL,
	[Total Planned Promo Units] [decimal](17, 2) NULL,
	[Reserved CSM Trade $] [decimal](17, 2) NULL,
	[Total Modeled Promo $] [decimal](17, 2) NULL,
	[Plan Incremental COP $] [decimal](17, 2) NULL,
	[DISPLAY] [decimal](17, 2) NULL,
	[FEATURE] [decimal](17, 2) NULL,
	[F&D] [decimal](17, 2) NULL,
	[Sugg TPQ] [decimal](17, 2) NULL,
	[Sugg Incr] [decimal](17, 2) NULL,
	[SVP: Suggested Base] [decimal](17, 2) NULL,
	[SVP: Planned Shelf Price] [decimal](17, 2) NULL,
	[Planned Incrementality %] [decimal](17, 2) NULL,
	[Plan Activity GSV] [decimal](17, 2) NULL,
	[EDLP Spend] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PROMOTION_FACT_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PROMOTION_FACT_SRC](
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
/****** Object:  Table [dbo].[KLG_TPE_PROMOTION_FACT_SRC_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PROMOTION_FACT_SRC_DELTA](
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
/****** Object:  Table [dbo].[KLG_TPE_PROMOTION_MASTER_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PROMOTION_MASTER_DELTA](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[miixed pallet material] [varchar](18) NULL,
	[calendar week] [varchar](7) NULL,
	[PROMOTIONS] [varchar](24) NULL,
	[mixed pallet flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PROMOTION_MASTER_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PROMOTION_MASTER_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[miixed pallet material] [varchar](18) NULL,
	[calendar week] [varchar](7) NULL,
	[PROMOTIONS] [varchar](24) NULL,
	[mixed pallet flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PTI_CONSENSUS_PERIOD_SNAPSHOTS_FINAL_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PTI_CONSENSUS_PERIOD_SNAPSHOTS_FINAL_SRC](
	[Snapshot Period] [varchar](7) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[LE Ship $] [decimal](17, 2) NULL,
	[LE KMF $] [decimal](17, 2) NULL,
	[CONSENSUS_LBS] [decimal](17, 2) NULL,
	[CONSENSUS_KGS] [decimal](17, 3) NULL,
	[CONSENSUS_EACHES] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_GSV] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_PTI_CONSENSUS_PERIOD_SNAPSHOTS_FINAL_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_PTI_CONSENSUS_PERIOD_SNAPSHOTS_FINAL_SRC_1](
	[Snapshot Period] [varchar](7) NULL,
	[PERIOD] [decimal](10, 2) NULL,
	[CURRENT_PERIOD_A] [decimal](10, 2) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[LE Ship $] [decimal](17, 2) NULL,
	[LE KMF $] [decimal](17, 2) NULL,
	[CONSENSUS_LBS] [decimal](17, 2) NULL,
	[CONSENSUS_KGS] [decimal](17, 3) NULL,
	[CONSENSUS_EACHES] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_GSV] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_TIME_CALDAY_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_TIME_CALDAY_SRC](
	[Calendar Day Text] [varchar](10) NULL,
	[Calendar Day Value] [date] NULL,
	[YEAR] [varchar](4) NULL,
	[PERIOD] [varchar](2) NULL,
	[Weeks in Period] [varchar](1) NULL,
	[WK_YEAR] [varchar](2) NULL,
	[WK_PD] [varchar](2) NULL,
	[DAY OF PD] [varchar](2) NULL,
	[DC Year] [varchar](4) NULL,
	[DC Period] [varchar](2) NULL,
	[DC Day of Week] [varchar](1) NULL,
	[DC Day] [varchar](3) NULL,
	[Prior Track Day] [date] NULL,
	[TRACK DAY] [varchar](2) NULL,
	[DAY] [varchar](5) NULL,
	[Ship Day Type Flag] [varchar](1) NULL,
	[Ship Day Type Desc] [varchar](7) NULL,
	[Order Day] [varchar](1) NULL,
	[Holiday Name] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_TIME_DIM_TGT_RESOURCE_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_TIME_DIM_TGT_RESOURCE_SRC](
	[WK] [varchar](2) NULL,
	[CALENDER_WEEK] [varchar](7) NULL,
	[BW Week] [varchar](7) NULL,
	[WK_PD] [int] NULL,
	[Week Starting] [date] NULL,
	[Week Ending] [date] NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[BW Period] [varchar](8) NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_TIME_PERIOD_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_TIME_PERIOD_SRC](
	[WK] [varchar](2) NULL,
	[CALENDER_WEEK] [varchar](7) NULL,
	[BW Week] [varchar](7) NULL,
	[WK_PD] [int] NULL,
	[Week Starting] [date] NULL,
	[Week Ending] [date] NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[BW Period] [varchar](8) NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_TIME_PERIOD_SRC_CONSENSUS_SNAPSHOT]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_TIME_PERIOD_SRC_CONSENSUS_SNAPSHOT](
	[CALENDER_WEEK] [varchar](7) NULL,
	[Week Starting] [date] NULL,
	[Week Ending] [date] NULL,
	[SYSDATE] [datetime2](7) NULL,
	[Week Starting_1] [datetime2](7) NULL,
	[SYS] [date] NULL,
	[Week Ending_1] [date] NULL,
	[SYS_1] [date] NULL,
	[Week Ending_Var] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_TIME_PERIOD_SRC_CONSENSUS_SNAPSHOT_VALIDATE_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_TIME_PERIOD_SRC_CONSENSUS_SNAPSHOT_VALIDATE_1](
	[SYS] [date] NULL,
	[WK] [varchar](2) NULL,
	[CALENDER_WEEK] [varchar](7) NULL,
	[BW Week] [varchar](7) NULL,
	[WK_PD] [int] NULL,
	[Week Starting] [date] NULL,
	[Week Ending] [date] NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[BW Period] [varchar](8) NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_TIME_PERIOD_SRC_CONSENSUS_SNAPSHOT_VALIDATE_2]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_TIME_PERIOD_SRC_CONSENSUS_SNAPSHOT_VALIDATE_2](
	[sys-2] [datetime2](7) NULL,
	[SYS] [varchar](24) NULL,
	[WK] [varchar](2) NULL,
	[CALENDER_WEEK] [varchar](7) NULL,
	[BW Week] [varchar](7) NULL,
	[WK_PD] [int] NULL,
	[Week Starting] [date] NULL,
	[Week Ending] [date] NULL,
	[Week Ending_Var] [date] NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[BW Period] [varchar](8) NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_TIME_PERIOD_SRC_PTI_CONSENSUS]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_TIME_PERIOD_SRC_PTI_CONSENSUS](
	[CALENDER_WEEK] [varchar](7) NULL,
	[Week Starting] [date] NULL,
	[Week Ending] [date] NULL,
	[SYSDATE] [datetime2](7) NULL,
	[Week Starting_1] [datetime2](7) NULL,
	[SYS] [date] NULL,
	[Week Ending_1] [date] NULL,
	[SYS_1] [date] NULL,
	[Week Ending_Var] [date] NULL,
	[Period Number] [int] NULL,
	[BW Period] [varchar](8) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_TIME_PERIOD_SRC_PTI_CONSENSUS_VAL_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_TIME_PERIOD_SRC_PTI_CONSENSUS_VAL_1](
	[SYS] [date] NULL,
	[WK] [varchar](2) NULL,
	[CALENDER_WEEK] [varchar](7) NULL,
	[BW Week] [varchar](7) NULL,
	[WK_PD] [int] NULL,
	[Week Starting] [date] NULL,
	[Week Ending] [date] NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[BW Period] [varchar](8) NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_TIME_PERIOD_SRC_PTI_CONSENSUS_VAL_2]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_TIME_PERIOD_SRC_PTI_CONSENSUS_VAL_2](
	[SYS] [varchar](24) NULL,
	[WK] [varchar](2) NULL,
	[CALENDER_WEEK] [varchar](7) NULL,
	[BW Week] [varchar](7) NULL,
	[WK_PD] [int] NULL,
	[Week Starting] [date] NULL,
	[Week Ending] [date] NULL,
	[Week Ending_Var] [date] NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[BW Period] [varchar](8) NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_TIME_PERIOD_SRC_VALIDATE_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_TIME_PERIOD_SRC_VALIDATE_1](
	[SYS] [date] NULL,
	[WK] [varchar](2) NULL,
	[CALENDER_WEEK] [varchar](7) NULL,
	[BW Week] [varchar](7) NULL,
	[WK_PD] [int] NULL,
	[Week Starting] [date] NULL,
	[Week Ending] [date] NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[BW Period] [varchar](8) NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_TIME_PERIOD_SRC_VALIDATE_2]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_TIME_PERIOD_SRC_VALIDATE_2](
	[sys-2] [datetime2](7) NULL,
	[SYS] [varchar](24) NULL,
	[WK] [varchar](2) NULL,
	[CALENDER_WEEK] [varchar](7) NULL,
	[BW Week] [varchar](7) NULL,
	[WK_PD] [int] NULL,
	[Week Starting] [date] NULL,
	[Week Ending] [date] NULL,
	[Week Ending_Var] [date] NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[BW Period] [varchar](8) NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_TPM_CONSENSUS_SNAPSHOT_TGT_3_31_BACKUP]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_TPM_CONSENSUS_SNAPSHOT_TGT_3_31_BACKUP](
	[Snapshot Period] [varchar](7) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[LE Ship $] [decimal](17, 2) NULL,
	[LE KMF $] [decimal](17, 2) NULL,
	[CONSENSUS_LBS] [decimal](17, 2) NULL,
	[CONSENSUS_KGS] [decimal](17, 3) NULL,
	[CONSENSUS_EACHES] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_GSV] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_UOM_LKUP]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_UOM_LKUP](
	[MATERIAL] [varchar](18) NULL,
	[UNIT] [varchar](3) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[UOMDENO] [decimal](17, 3) NULL,
	[UOMNUM] [decimal](17, 3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL,
	[UNIT_FLAG] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_UOM1_LKUP]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_UOM1_LKUP](
	[MATERIAL] [varchar](18) NULL,
	[UNIT] [varchar](3) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[UOMDENO] [decimal](17, 3) NULL,
	[UOMNUM] [decimal](17, 3) NULL,
	[NUM_DIV] [decimal](17, 3) NULL,
	[DENO_DIV] [decimal](17, 3) NULL,
	[UNIT_FLAG] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_BPC54_RKF_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_BPC54_RKF_SRC](
	[Plan To] [varchar](10) NULL,
	[Business Unit] [varchar](60) NULL,
	[Alternate Category] [varchar](30) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Posting Period] [varchar](3) NULL,
	[Posting Year] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[IBP GSV ORIG] [decimal](17, 3) NULL,
	[IBP GSV ADJ] [decimal](17, 3) NULL,
	[IBP KMF ORIG] [decimal](17, 3) NULL,
	[IBP KMF ADJ] [decimal](17, 3) NULL,
	[BUD GSV ORIG] [decimal](17, 3) NULL,
	[BUD GSV ADJ] [decimal](17, 3) NULL,
	[BUD BASE KMF] [decimal](17, 3) NULL,
	[CRM LE GSV ADJ] [decimal](17, 3) NULL,
	[BUD KMF ADJ] [decimal](17, 3) NULL,
	[SE GSV ORIG] [decimal](17, 3) NULL,
	[SE GSV ADJ] [decimal](17, 3) NULL,
	[SE KMF ORIG] [decimal](17, 3) NULL,
	[SE KMF ADJ] [decimal](17, 3) NULL,
	[SE2 GSV ORIG] [decimal](17, 3) NULL,
	[SE2 GSV ADJ] [decimal](17, 3) NULL,
	[SE2 KMF ORIG] [decimal](17, 3) NULL,
	[SE2 KMF ADJ] [decimal](17, 3) NULL,
	[SE3 GSV ORIG] [decimal](17, 3) NULL,
	[SE3 GSV ADJ] [decimal](17, 3) NULL,
	[SE3 KMF ORIG] [decimal](17, 3) NULL,
	[SE3 KMF ADJ] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_BPC54_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_BPC54_SRC](
	[BPC Account] [varchar](20) NULL,
	[Application Type] [varchar](3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Business Unit] [varchar](60) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[AOP Account] [varchar](18) NULL,
	[CATEGORY] [varchar](30) NULL,
	[AMOUNT] [decimal](17, 3) NULL,
	[Fiscal Variant] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_BPC54_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_BPC54_SRC_1](
	[BPC Account] [varchar](20) NULL,
	[Application Type] [varchar](3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Fiscal Period] [varchar](8) NULL,
	[Business Unit] [varchar](60) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[AOP Account] [varchar](18) NULL,
	[CATEGORY] [varchar](30) NULL,
	[AMOUNT] [decimal](17, 3) NULL,
	[Fiscal Variant] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CON52_HISTORY_AGG_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CON52_HISTORY_AGG_SRC](
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
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CON52_MIXTPL_EQ_Z]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CON52_MIXTPL_EQ_Z](
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
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CON52_MIXTPL_NEQ_Z]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CON52_MIXTPL_NEQ_Z](
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
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CON52_N_TO_Z]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CON52_N_TO_Z](
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
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[SALE_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CON52_N_TO_Z_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CON52_N_TO_Z_1](
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
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[SALE_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CON52_N_TO_Z_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CON52_N_TO_Z_DELTA](
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
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CON52_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CON52_SRC](
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
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CON52_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CON52_SRC_1](
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
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CON52_SRC_1_AGG]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CON52_SRC_1_AGG](
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
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CON52_SRC_1_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CON52_SRC_1_DELTA](
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
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CON52_SRC_1_DELTA_AGG]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CON52_SRC_1_DELTA_AGG](
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
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CON52_SRC_1_DELTA_FLAG_ADDED]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CON52_SRC_1_DELTA_FLAG_ADDED](
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
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CON52_SRC_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CON52_SRC_DELTA](
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
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CON53_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CON53_SRC](
	[PROMOTION] [varchar](24) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Actual COP $] [decimal](17, 2) NULL,
	[Gross Sales Dollars] [decimal](17, 2) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 2) NULL,
	[Gross Cases] [decimal](17, 3) NULL,
	[Gross Eaches] [decimal](17, 3) NULL,
	[Gross Kilos] [decimal](17, 3) NULL,
	[Gross Pounds] [decimal](17, 3) NULL,
	[Gross Packages] [decimal](17, 3) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Promo Cases Unit] [varchar](3) NULL,
	[Promo Eaches Unit] [varchar](3) NULL,
	[True Gross Kilos Unit] [varchar](3) NULL,
	[Gross Pounds Unit] [varchar](3) NULL,
	[Un Gross Packages UOM] [varchar](3) NULL,
	[Sales Promo: InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CON53_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CON53_SRC_1](
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
	[Sales Promo: InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CON53_SRC_1_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CON53_SRC_1_DELTA](
	[Sales Promo: flag] [varchar](4) NULL,
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
	[Sales Promo: InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CRM12_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CRM12_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[PROMOTION] [varchar](24) NULL,
	[Value Category] [varchar](5) NULL,
	[Expense Type] [varchar](4) NULL,
	[Funds: Fund Posting Amount] [decimal](17, 2) NULL,
	[Funds: Currency] [varchar](5) NULL,
	[Funds: InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CRM12_SRC_1_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CRM12_SRC_1_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[PROMOTION] [varchar](24) NULL,
	[Value Category] [varchar](5) NULL,
	[Expense Type] [varchar](4) NULL,
	[Funds: Fund Posting Amount] [decimal](17, 2) NULL,
	[Funds: Currency] [varchar](5) NULL,
	[Funds: InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CRM12_SRC_1_DELTA_FLAG_ADDED]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CRM12_SRC_1_DELTA_FLAG_ADDED](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[PROMOTION] [varchar](24) NULL,
	[Value Category] [varchar](5) NULL,
	[Expense Type] [varchar](4) NULL,
	[Funds: Fund Posting Amount] [decimal](17, 2) NULL,
	[Funds: Currency] [varchar](5) NULL,
	[Funds: InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CRM12_SRC_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CRM12_SRC_DELTA](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[PROMOTION] [varchar](24) NULL,
	[Value Category] [varchar](5) NULL,
	[Expense Type] [varchar](4) NULL,
	[Funds: Fund Posting Amount] [decimal](17, 2) NULL,
	[Funds: Currency] [varchar](5) NULL,
	[Funds: InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CRM12_VALID_FAIL_STG_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_CRM12_VALID_FAIL_STG_DELTA](
	[FLAG] [varchar](4) NULL,
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
/****** Object:  Table [dbo].[KLG_TPE_ZC_LES52_FAIL_STG_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_LES52_FAIL_STG_DELTA](
	[LE: flag] [varchar](1) NULL,
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
/****** Object:  Table [dbo].[KLG_TPE_ZC_LES52_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_LES52_SRC](
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
	[LE: InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_LES52_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_LES52_SRC_1](
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
	[LE: InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_LES52_SRC_1_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_LES52_SRC_1_DELTA](
	[LE: flag] [varchar](1) NULL,
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
	[LE: InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_LES52_SRC_1_DELTA_FLAG_ADDED]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_LES52_SRC_1_DELTA_FLAG_ADDED](
	[LE: flag] [varchar](1) NULL,
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
	[LE: InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_LES52_SRC_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_LES52_SRC_DELTA](
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
	[DELTA_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_SLSCA4_FAIL_STG_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_SLSCA4_FAIL_STG_DELTA](
	[TPM: flag] [varchar](1) NULL,
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
/****** Object:  Table [dbo].[KLG_TPE_ZC_SLSCA4_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_SLSCA4_SRC](
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
	[TPM: InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_SLSCA4_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_SLSCA4_SRC_1](
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
	[TPM: InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_SLSCA4_SRC_1_COPY]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_SLSCA4_SRC_1_COPY](
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
	[TPM: InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_SLSCA4_SRC_1_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_SLSCA4_SRC_1_DELTA](
	[TPM: flag] [varchar](1) NULL,
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
	[TPM: InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_SLSCA4_SRC_1_DELTA_FLAG_ADDED]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_SLSCA4_SRC_1_DELTA_FLAG_ADDED](
	[TPM: flag] [varchar](1) NULL,
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
	[TPM: InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_SLSCA4_SRC_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_SLSCA4_SRC_DELTA](
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
	[DELTA_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_SVP06_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_SVP06_SRC](
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
	[SVP - InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_SVP06_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_SVP06_SRC_1](
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
	[SVP - InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_SVP06_SRC_1_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_SVP06_SRC_1_DELTA](
	[SVP - flag] [varchar](1) NULL,
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
	[SVP - InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_SVP06_SRC_1_DELTA_FLAG_ADDED]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_SVP06_SRC_1_DELTA_FLAG_ADDED](
	[SVP - flag] [varchar](1) NULL,
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
	[SVP - InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_SVP06_SRC_1_DELTA_FLAG_NULL]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_SVP06_SRC_1_DELTA_FLAG_NULL](
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
	[SVP - InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_SVP06_SRC_1_DELTA_N_OR_C]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_SVP06_SRC_1_DELTA_N_OR_C](
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
	[SVP - InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_SVP06_SRC_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_SVP06_SRC_DELTA](
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
	[DELTA_FLAG] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_SVP06_VALID_FAIL_STG_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_SVP06_VALID_FAIL_STG_DELTA](
	[SVP - flag] [varchar](1) NULL,
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
/****** Object:  Table [dbo].[KLG_TPE_ZC_TPM82_DELTA_VALID_FAIL_STAGE]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_TPM82_DELTA_VALID_FAIL_STAGE](
	[ATPM - flag] [varchar](4) NULL,
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
/****** Object:  Table [dbo].[KLG_TPE_ZC_TPM82_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_TPM82_SRC](
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
	[ATPM - InfoProvider] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_TPM82_SRC_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_TPM82_SRC_1](
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
	[ATPM - InfoProvider] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_TPM82_SRC_1_AGG]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_TPM82_SRC_1_AGG](
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
	[ATPM - InfoProvider] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_TPM82_SRC_1_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_TPM82_SRC_1_DELTA](
	[ATPM - flag] [varchar](4) NULL,
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
	[ATPM - InfoProvider] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_TPM82_SRC_1_DELTA_5A]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_TPM82_SRC_1_DELTA_5A](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[PROMOTIONS] [varchar](24) NULL,
	[ATPM - Currency] [varchar](5) NULL,
	[ATPM - Sales Unit] [varchar](3) NULL,
	[ATPM - InfoProvider] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_TPM82_SRC_1_DELTA_AGG]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_TPM82_SRC_1_DELTA_AGG](
	[ATPM - flag] [varchar](4) NULL,
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
	[ATPM - InfoProvider] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_TPM82_SRC_1_DELTA_AGG_FLAG_ADDED]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_TPM82_SRC_1_DELTA_AGG_FLAG_ADDED](
	[ATPM - flag] [varchar](4) NULL,
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
	[ATPM - InfoProvider] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_TPM82_SRC_1_DELTA_FLAG_ADDED]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_TPM82_SRC_1_DELTA_FLAG_ADDED](
	[ATPM - flag] [varchar](4) NULL,
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
	[ATPM - InfoProvider] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_TPM82_SRC_1_DELTA_FLAG_ADDED_NON_AGG]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_TPM82_SRC_1_DELTA_FLAG_ADDED_NON_AGG](
	[ATPM - flag] [varchar](4) NULL,
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
	[ATPM - InfoProvider] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_TPM82_SRC_1_DELTA_NON_AGG_COMBO]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_TPM82_SRC_1_DELTA_NON_AGG_COMBO](
	[ATPM - flag] [varchar](4) NULL,
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
	[ATPM - InfoProvider] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_TPM82_SRC_1_DELTA_NON_AGG_FINAL_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_TPM82_SRC_1_DELTA_NON_AGG_FINAL_DELTA](
	[ATPM - flag] [varchar](4) NULL,
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
	[ATPM - InfoProvider] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_TPM82_SRC_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZC_TPM82_SRC_DELTA](
	[Delta Flag] [varchar](1) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[PROMOTIONS] [varchar](24) NULL,
	[DISPLAY] [decimal](17, 3) NULL,
	[F&D] [decimal](17, 3) NULL,
	[FEATURE] [decimal](17, 3) NULL,
	[Plan Incremental COP $] [decimal](17, 2) NULL,
	[Total Planned Shipment Dollars] [decimal](17, 2) NULL,
	[Total Planned COP] [decimal](17, 2) NULL,
	[Planned Promotion Discount Dollars] [decimal](17, 2) NULL,
	[Planned Promo Dollars @ Full Price] [decimal](17, 2) NULL,
	[Planned Retailer Promotion Sales] [decimal](17, 2) NULL,
	[Planned Retailer Sales Dollar] [decimal](17, 2) NULL,
	[Planned TPQ Dollars] [decimal](17, 2) NULL,
	[Planned TPQ Eaches] [decimal](17, 3) NULL,
	[Planned TPQ Kilos] [decimal](17, 3) NULL,
	[Planned TPQ Pounds] [decimal](17, 3) NULL,
	[Planned Promo COP $] [decimal](17, 2) NULL,
	[Total Planned Incremental Dollars] [decimal](17, 2) NULL,
	[Total Planned Incremental Eaches] [decimal](17, 3) NULL,
	[Total Planned Incremental Kilos] [decimal](17, 3) NULL,
	[Total Planned Incremental Pounds] [decimal](17, 3) NULL,
	[Total Planned Incremental Ship Dollars] [decimal](17, 2) NULL,
	[Total Planned Incremental Ship Eaches] [decimal](17, 3) NULL,
	[Total Planned Incremental Ship Kilos] [decimal](17, 3) NULL,
	[Total Planned Incremental Ship Pounds] [decimal](17, 3) NULL,
	[Total Planned Shipment Eaches] [decimal](17, 3) NULL,
	[Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[Total Planned Shipment CS] [decimal](17, 3) NULL,
	[Total Planned Shipment Pounds] [decimal](17, 3) NULL,
	[Plan Incremental Volume] [decimal](17, 3) NULL,
	[Plan TPQ] [decimal](17, 3) NULL,
	[Bill-back % Total] [decimal](17, 2) NULL,
	[Bill-back Rate Total] [decimal](17, 2) NULL,
	[Corrective Lump Sum] [decimal](17, 2) NULL,
	[CSM Trade] [decimal](17, 2) NULL,
	[EDLP Bill-back % Total] [decimal](17, 2) NULL,
	[EDLP Bill-back Rate Total] [decimal](17, 2) NULL,
	[EDLP Spend] [decimal](17, 2) NULL,
	[EDLP Off-Invoice % Total] [decimal](17, 2) NULL,
	[EDLP Off-Invoice Rate Total] [decimal](17, 2) NULL,
	[Plan Ship Dollars] [decimal](17, 2) NULL,
	[Plan Ship Eaches] [decimal](17, 3) NULL,
	[Plan Ship Kilos] [decimal](17, 3) NULL,
	[Plan Est Ship Vol] [decimal](17, 3) NULL,
	[Plan Ship Pounds] [decimal](17, 3) NULL,
	[Parent OI % Total] [decimal](17, 2) NULL,
	[Parent OI Rate Total] [decimal](17, 2) NULL,
	[Fixed Lump Sum] [decimal](17, 2) NULL,
	[Liquidation OI % Total] [decimal](17, 2) NULL,
	[Liquidation OI Rate Total] [decimal](17, 2) NULL,
	[Liquidation Fixed] [decimal](17, 2) NULL,
	[Military Fixed] [decimal](17, 2) NULL,
	[New Item Fixed] [decimal](17, 2) NULL,
	[Off-Invoice % Total] [decimal](17, 2) NULL,
	[Off-Invoice Rate Total] [decimal](17, 2) NULL,
	[Scanner Application Fixed] [decimal](17, 2) NULL,
	[ScanApps Scan % Total] [decimal](17, 2) NULL,
	[ScanApps Scan Rate Total] [decimal](17, 2) NULL,
	[Promo Scan % Total] [decimal](17, 2) NULL,
	[Promo Scan Rate Total] [decimal](17, 2) NULL,
	[Suggested TPQ Dollars] [decimal](17, 2) NULL,
	[Suggested TPQ Eaches] [decimal](17, 3) NULL,
	[Suggested TPQ Kilos] [decimal](17, 3) NULL,
	[Suggeested TPQ] [decimal](17, 3) NULL,
	[Suggested TPQ Pounds] [decimal](17, 3) NULL,
	[Suggested Incremental Dollars] [decimal](17, 2) NULL,
	[Suggested Incremental Eaches] [decimal](17, 3) NULL,
	[Suggested Incremental Kilos] [decimal](17, 3) NULL,
	[Suggested Incremental Volume] [decimal](17, 3) NULL,
	[Total Trade Spend] [decimal](17, 2) NULL,
	[Warehouse Withdrawal Total Spend] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Sales Unit] [varchar](3) NULL,
	[Variance %] [decimal](17, 3) NULL,
	[Period Type] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZCUST_MAT_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZCUST_MAT_SRC](
	[CUST_MAT] [varchar](10) NULL,
	[MIXED_PAL_MATERIAL] [varchar](18) NULL,
	[COMPANY_CODE] [varchar](4) NULL,
	[CONTROLLING_AREA] [varchar](4) NULL,
	[SPT_FLAG] [varchar](1) NULL,
	[PROD_HIER_LEVEL4] [varchar](18) NULL,
	[PROFIT_CENTER] [varchar](10) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PLAN_TO] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZM_TPM60_Q0001_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZM_TPM60_Q0001_DELTA](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[miixed pallet material] [varchar](18) NULL,
	[calendar week] [varchar](7) NULL,
	[mixed pallet flag] [varchar](1) NULL,
	[PROMOTIONS] [varchar](24) NULL,
	[CURRENCY] [varchar](5) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[PROMOTION_STATUS] [varchar](2) NULL,
	[HIER_D_LEVEL5] [varchar](10) NULL,
	[TPM: Display] [decimal](17, 3) NULL,
	[TPM: F&D] [decimal](17, 3) NULL,
	[TPM: Feature] [decimal](17, 3) NULL,
	[TPM: Plan Incremental COP $] [decimal](17, 2) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](17, 2) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Dollars] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](17, 3) NULL,
	[TPM: Planned Promo COP $] [decimal](17, 2) NULL,
	[TPM: Total Planned Incremental Dollars] [decimal](17, 2) NULL,
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
	[TPM: Suggested TPQ] [decimal](17, 3) NULL,
	[TPM: Suggested Incremental Volume] [decimal](17, 3) NULL,
	[TPM: Warehouse Withdrawal Total Spend] [decimal](17, 2) NULL,
	[ATPM - Display] [decimal](17, 3) NULL,
	[ATPM - F&D] [decimal](17, 3) NULL,
	[ATPM - Feature] [decimal](17, 3) NULL,
	[ATPM - Plan Incremental COP $] [decimal](17, 2) NULL,
	[ATPM - Total Planned Shipment Dollars] [decimal](17, 2) NULL,
	[ATPM - Planned Promo Dollars @ Full Price] [decimal](17, 2) NULL,
	[ATPM - Planned Retailer Promotion Sales] [decimal](17, 2) NULL,
	[ATPM - Planned TPQ Dollars] [decimal](17, 2) NULL,
	[ATPM - Planned TPQ Eaches] [decimal](17, 3) NULL,
	[ATPM - Planned Promo COP $] [decimal](17, 2) NULL,
	[ATPM - Total Planned Incremental Dollars] [decimal](17, 2) NULL,
	[ATPM - Bill-back % Total] [decimal](17, 2) NULL,
	[ATPM - Bill-back Rate Total] [decimal](17, 2) NULL,
	[ATPM - Corrective Lump Sum] [decimal](17, 2) NULL,
	[ATPM - EDLP Bill-back % Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Bill-back Rate Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Spend] [decimal](17, 2) NULL,
	[ATPM - EDLP Off-Invoice % Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Off-Invoice Rate Total] [decimal](17, 2) NULL,
	[ATPM - Plan Ship Dollars] [decimal](17, 2) NULL,
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
	[ATPM - Suggested TPQ] [decimal](17, 3) NULL,
	[ATPM - Suggested Incremental Volume] [decimal](17, 3) NULL,
	[ATPM - Warehouse Withdrawal Total Spend] [decimal](17, 2) NULL,
	[ATPM - Variance %] [decimal](17, 3) NULL,
	[Sales Promo: Gross Sales Dollars] [decimal](17, 2) NULL,
	[SVP - Planned Shelf Price] [decimal](17, 2) NULL,
	[SVP - Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[LE: CSM Advertising] [decimal](17, 2) NULL,
	[LE: CSM COGS] [decimal](17, 2) NULL,
	[LE: CSM Coupon] [decimal](17, 2) NULL,
	[LE: Correction Lump Sum] [decimal](17, 2) NULL,
	[LE: CSM VAP] [decimal](17, 2) NULL,
	[LE: Fixed Lump Sum] [decimal](17, 2) NULL,
	[LE: Liquidation Fixed] [decimal](17, 2) NULL,
	[LE: Military Fixed] [decimal](17, 2) NULL,
	[LE: New Item Fixed] [decimal](17, 2) NULL,
	[LE: Scanned Application Fixed] [decimal](17, 2) NULL,
	[LE: Promo Scan % Total] [decimal](17, 2) NULL,
	[LE: Promo Scan Rate Total] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZM_TPM60_Q0001_DELTA_ITE]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZM_TPM60_Q0001_DELTA_ITE](
	[FLAG] [varchar](4) NULL,
	[PROMOTION_ID] [varchar](24) NULL,
	[MATERIAL] [varchar](18) NULL,
	[MIXED_PAL_MATERIAL] [varchar](18) NULL,
	[CALENDAR_WEEK] [varchar](7) NULL,
	[MIXED_PALLET_FLAG] [varchar](1) NULL,
	[PLAN_TO] [varchar](10) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[TPM: Currency] [varchar](5) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](17, 2) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](17, 3) NULL,
	[Sales Promo: Gross Sales Dollars] [decimal](17, 2) NULL,
	[TPM: Plan Ship Dollars] [decimal](17, 2) NULL,
	[TPM: Total Planned Incremental Dollars] [decimal](17, 2) NULL,
	[TPM: Planned Promo COP $] [decimal](17, 2) NULL,
	[LE: CSM VAP] [decimal](17, 2) NULL,
	[LE: CSM COGS] [decimal](17, 2) NULL,
	[LE: CSM Advertising] [decimal](17, 2) NULL,
	[LE: CSM Coupon] [decimal](17, 2) NULL,
	[LE: Fixed Lump Sum] [decimal](17, 2) NULL,
	[LE: Scanned Application Fixed] [decimal](17, 2) NULL,
	[LE: Correction Lump Sum] [decimal](17, 2) NULL,
	[LE: New Item Fixed] [decimal](17, 2) NULL,
	[LE: Military Fixed] [decimal](17, 2) NULL,
	[LE: Liquidation Fixed] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Dollars] [decimal](17, 2) NULL,
	[TPM: Off-Invoice Rate Total] [decimal](17, 2) NULL,
	[TPM: Off-Invoice % Total] [decimal](17, 2) NULL,
	[TPM: Liquidation OI Rate Total] [decimal](17, 2) NULL,
	[TPM: Liquidation OI % Total] [decimal](17, 2) NULL,
	[TPM: Bill-back Rate Total] [decimal](17, 2) NULL,
	[TPM: Bill-back % Total] [decimal](17, 2) NULL,
	[TPM: EDLP Off-Invoice Rate Total] [decimal](17, 2) NULL,
	[TPM: EDLP Off-Invoice % Total] [decimal](17, 2) NULL,
	[TPM: Promo Scan Rate Total] [decimal](17, 2) NULL,
	[TPM: Promo Scan % Total] [decimal](17, 2) NULL,
	[TPM: ScanApps Scan Rate Total] [decimal](17, 2) NULL,
	[TPM: ScanApps Scan % Total] [decimal](17, 2) NULL,
	[TPM: EDLP Bill-back Rate Total] [decimal](17, 2) NULL,
	[TPM: EDLP Bill-back % Total] [decimal](17, 2) NULL,
	[TPM: Parent OI Rate Total] [decimal](17, 2) NULL,
	[TPM: Parent OI % Total] [decimal](17, 2) NULL,
	[TPM: Warehouse Withdrawal Total Spend] [decimal](17, 2) NULL,
	[TPM: Fixed Lump Sum] [decimal](17, 2) NULL,
	[TPM: Scanner Application Fixed] [decimal](17, 2) NULL,
	[TPM: Corrective Lump Sum] [decimal](17, 2) NULL,
	[TPM: New Item Fixed] [decimal](17, 2) NULL,
	[TPM: Military Fixed] [decimal](17, 2) NULL,
	[TPM: Liquidation Fixed] [decimal](17, 2) NULL,
	[LE: Promo Scan Rate Total] [decimal](17, 2) NULL,
	[LE: Promo Scan % Total] [decimal](17, 2) NULL,
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
	[ATPM - Variance %] [decimal](17, 3) NULL,
	[ATPM - Total Planned Shipment Dollars] [decimal](17, 2) NULL,
	[TPM: EDLP Spend] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZM_TPM60_Q0001_SRC]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZM_TPM60_Q0001_SRC](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[miixed pallet material] [varchar](18) NULL,
	[calendar week] [varchar](7) NULL,
	[mixed pallet flag] [varchar](1) NULL,
	[PROMOTIONS] [varchar](24) NULL,
	[CURRENCY] [varchar](5) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[PROMOTION_STATUS] [varchar](2) NULL,
	[HIER_D_LEVEL5] [varchar](10) NULL,
	[TPM: Display] [decimal](17, 3) NULL,
	[TPM: F&D] [decimal](17, 3) NULL,
	[TPM: Feature] [decimal](17, 3) NULL,
	[TPM: Plan Incremental COP $] [decimal](17, 2) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](17, 2) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Dollars] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](17, 3) NULL,
	[TPM: Planned Promo COP $] [decimal](17, 2) NULL,
	[TPM: Total Planned Incremental Dollars] [decimal](17, 2) NULL,
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
	[TPM: Suggested TPQ] [decimal](17, 3) NULL,
	[TPM: Suggested Incremental Volume] [decimal](17, 3) NULL,
	[TPM: Warehouse Withdrawal Total Spend] [decimal](17, 2) NULL,
	[ATPM - Display] [decimal](17, 3) NULL,
	[ATPM - F&D] [decimal](17, 3) NULL,
	[ATPM - Feature] [decimal](17, 3) NULL,
	[ATPM - Plan Incremental COP $] [decimal](17, 2) NULL,
	[ATPM - Total Planned Shipment Dollars] [decimal](17, 2) NULL,
	[ATPM - Planned Promo Dollars @ Full Price] [decimal](17, 2) NULL,
	[ATPM - Planned Retailer Promotion Sales] [decimal](17, 2) NULL,
	[ATPM - Planned TPQ Dollars] [decimal](17, 2) NULL,
	[ATPM - Planned TPQ Eaches] [decimal](17, 3) NULL,
	[ATPM - Planned Promo COP $] [decimal](17, 2) NULL,
	[ATPM - Total Planned Incremental Dollars] [decimal](17, 2) NULL,
	[ATPM - Bill-back % Total] [decimal](17, 2) NULL,
	[ATPM - Bill-back Rate Total] [decimal](17, 2) NULL,
	[ATPM - Corrective Lump Sum] [decimal](17, 2) NULL,
	[ATPM - EDLP Bill-back % Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Bill-back Rate Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Spend] [decimal](17, 2) NULL,
	[ATPM - EDLP Off-Invoice % Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Off-Invoice Rate Total] [decimal](17, 2) NULL,
	[ATPM - Plan Ship Dollars] [decimal](17, 2) NULL,
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
	[ATPM - Suggested TPQ] [decimal](17, 3) NULL,
	[ATPM - Suggested Incremental Volume] [decimal](17, 3) NULL,
	[ATPM - Warehouse Withdrawal Total Spend] [decimal](17, 2) NULL,
	[ATPM - Variance %] [decimal](17, 3) NULL,
	[Sales Promo: Gross Sales Dollars] [decimal](17, 2) NULL,
	[SVP - Planned Shelf Price] [decimal](17, 2) NULL,
	[SVP - Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[LE: CSM Advertising] [decimal](17, 2) NULL,
	[LE: CSM COGS] [decimal](17, 2) NULL,
	[LE: CSM Coupon] [decimal](17, 2) NULL,
	[LE: Correction Lump Sum] [decimal](17, 2) NULL,
	[LE: CSM VAP] [decimal](17, 2) NULL,
	[LE: Fixed Lump Sum] [decimal](17, 2) NULL,
	[LE: Liquidation Fixed] [decimal](17, 2) NULL,
	[LE: Military Fixed] [decimal](17, 2) NULL,
	[LE: New Item Fixed] [decimal](17, 2) NULL,
	[LE: Scanned Application Fixed] [decimal](17, 2) NULL,
	[LE: Promo Scan % Total] [decimal](17, 2) NULL,
	[LE: Promo Scan Rate Total] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_ZM_TPM60_Q0001_SRC_ITE]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_ZM_TPM60_Q0001_SRC_ITE](
	[PROMOTION_ID] [varchar](24) NULL,
	[MATERIAL] [varchar](18) NULL,
	[MIXED_PAL_MATERIAL] [varchar](18) NULL,
	[CALENDAR_WEEK] [varchar](7) NULL,
	[MIXED_PALLET_FLAG] [varchar](1) NULL,
	[PLAN_TO] [varchar](10) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[TPM: Currency] [varchar](5) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](17, 2) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](17, 3) NULL,
	[Sales Promo: Gross Sales Dollars] [decimal](17, 2) NULL,
	[TPM: Plan Ship Dollars] [decimal](17, 2) NULL,
	[TPM: Total Planned Incremental Dollars] [decimal](17, 2) NULL,
	[TPM: Planned Promo COP $] [decimal](17, 2) NULL,
	[LE: CSM VAP] [decimal](17, 2) NULL,
	[LE: CSM COGS] [decimal](17, 2) NULL,
	[LE: CSM Advertising] [decimal](17, 2) NULL,
	[LE: CSM Coupon] [decimal](17, 2) NULL,
	[LE: Fixed Lump Sum] [decimal](17, 2) NULL,
	[LE: Scanned Application Fixed] [decimal](17, 2) NULL,
	[LE: Correction Lump Sum] [decimal](17, 2) NULL,
	[LE: New Item Fixed] [decimal](17, 2) NULL,
	[LE: Military Fixed] [decimal](17, 2) NULL,
	[LE: Liquidation Fixed] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Dollars] [decimal](17, 2) NULL,
	[TPM: Off-Invoice Rate Total] [decimal](17, 2) NULL,
	[TPM: Off-Invoice % Total] [decimal](17, 2) NULL,
	[TPM: Liquidation OI Rate Total] [decimal](17, 2) NULL,
	[TPM: Liquidation OI % Total] [decimal](17, 2) NULL,
	[TPM: Bill-back Rate Total] [decimal](17, 2) NULL,
	[TPM: Bill-back % Total] [decimal](17, 2) NULL,
	[TPM: EDLP Off-Invoice Rate Total] [decimal](17, 2) NULL,
	[TPM: EDLP Off-Invoice % Total] [decimal](17, 2) NULL,
	[TPM: Promo Scan Rate Total] [decimal](17, 2) NULL,
	[TPM: Promo Scan % Total] [decimal](17, 2) NULL,
	[TPM: ScanApps Scan Rate Total] [decimal](17, 2) NULL,
	[TPM: ScanApps Scan % Total] [decimal](17, 2) NULL,
	[TPM: EDLP Bill-back Rate Total] [decimal](17, 2) NULL,
	[TPM: EDLP Bill-back % Total] [decimal](17, 2) NULL,
	[TPM: Parent OI Rate Total] [decimal](17, 2) NULL,
	[TPM: Parent OI % Total] [decimal](17, 2) NULL,
	[TPM: Warehouse Withdrawal Total Spend] [decimal](17, 2) NULL,
	[TPM: Fixed Lump Sum] [decimal](17, 2) NULL,
	[TPM: Scanner Application Fixed] [decimal](17, 2) NULL,
	[TPM: Corrective Lump Sum] [decimal](17, 2) NULL,
	[TPM: New Item Fixed] [decimal](17, 2) NULL,
	[TPM: Military Fixed] [decimal](17, 2) NULL,
	[TPM: Liquidation Fixed] [decimal](17, 2) NULL,
	[LE: Promo Scan Rate Total] [decimal](17, 2) NULL,
	[LE: Promo Scan % Total] [decimal](17, 2) NULL,
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
	[ATPM - Variance %] [decimal](17, 3) NULL,
	[ATPM - Total Planned Shipment Dollars] [decimal](17, 2) NULL,
	[TPM: EDLP Spend] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LES52_OLD]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LES52_OLD](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[miixed pallet material] [varchar](18) NULL,
	[calendar week] [varchar](7) NULL,
	[PROMOTIONS] [varchar](24) NULL,
	[mixed pallet flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
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
	[LE: InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LIST_PRICE_TEST]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LIST_PRICE_TEST](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[Sales Org.] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LIST_PRICE_TEST_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LIST_PRICE_TEST_1](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[Sales Org.] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LISTCASE_JOIN_TEST]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LISTCASE_JOIN_TEST](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[CUSTOMER_GRP] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MIXED_PAL_FLG_NEQ_N]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MIXED_PAL_FLG_NEQ_N](
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
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MIXED_PAL_FLG_NEQ_N_DELTA]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MIXED_PAL_FLG_NEQ_N_DELTA](
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
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLAN_TO_ACTUAL_DAILY]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLAN_TO_ACTUAL_DAILY](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[UNIT] [varchar](3) NULL,
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
/****** Object:  Table [dbo].[PLAN_TO_CONSENSUS_SNAPSHOT_UNION]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLAN_TO_CONSENSUS_SNAPSHOT_UNION](
	[Snapshot Period] [varchar](7) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROMO_DAILY1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROMO_DAILY1](
	[FLAG] [varchar](4) NULL,
	[Promotion ID] [varchar](24) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Plan To] [varchar](10) NULL,
	[TPM: Currency] [varchar](5) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](17, 2) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](17, 3) NULL,
	[Gross Sales $] [decimal](17, 2) NULL,
	[Planned Ship $] [decimal](17, 2) NULL,
	[Planned Incremental Volume $] [decimal](17, 2) NULL,
	[Planned Promo COP $] [decimal](17, 2) NULL,
	[LE Total Non-Trade] [decimal](17, 2) NULL,
	[LE Total Fixed KMF $] [decimal](17, 2) NULL,
	[Total Planned Promo $] [decimal](17, 2) NULL,
	[Reserved Total KMF $] [decimal](17, 2) NULL,
	[Total Planned Promo Units] [decimal](17, 2) NULL,
	[Reserved CSM Trade $] [decimal](17, 2) NULL,
	[Total Modeled Promo $] [decimal](17, 2) NULL,
	[Plan Incremental COP $] [decimal](17, 2) NULL,
	[DISPLAY] [decimal](17, 2) NULL,
	[FEATURE] [decimal](17, 2) NULL,
	[F&D] [decimal](17, 2) NULL,
	[Sugg TPQ] [decimal](17, 2) NULL,
	[Sugg Incr] [decimal](17, 2) NULL,
	[SVP: Suggested Base] [decimal](17, 2) NULL,
	[SVP: Planned Shelf Price] [decimal](17, 2) NULL,
	[Planned Incrementality %] [decimal](17, 2) NULL,
	[Plan Activity GSV] [decimal](17, 2) NULL,
	[EDLP Spend] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROMO_TEST_JOE]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROMO_TEST_JOE](
	[MATERIAL] [varchar](18) NULL,
	[UNIT] [varchar](3) NULL,
	[BASE_UOM] [varchar](3) NULL,
	[UOMDENO] [decimal](17, 3) NULL,
	[UOMNUM] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROMO_VALIDATION]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROMO_VALIDATION](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[PROMOTIONS] [varchar](24) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[PROMOTION_STATUS] [varchar](2) NULL,
	[HIER_D_LEVEL5] [varchar](10) NULL,
	[TPM: Display] [decimal](17, 3) NULL,
	[TPM: F&D] [decimal](17, 3) NULL,
	[TPM: Feature] [decimal](17, 3) NULL,
	[TPM: Plan Incremental COP $] [decimal](17, 2) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](17, 2) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Dollars] [decimal](17, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](17, 3) NULL,
	[TPM: Planned Promo COP $] [decimal](17, 2) NULL,
	[TPM: Total Planned Incremental Dollars] [decimal](17, 2) NULL,
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
	[TPM: Suggested TPQ] [decimal](17, 3) NULL,
	[TPM: Suggested Incremental Volume] [decimal](17, 3) NULL,
	[TPM: Warehouse Withdrawal Total Spend] [decimal](17, 2) NULL,
	[TPM: Currency] [varchar](5) NULL,
	[ATPM - Display] [decimal](17, 3) NULL,
	[ATPM - F&D] [decimal](17, 3) NULL,
	[ATPM - Feature] [decimal](17, 3) NULL,
	[ATPM - Plan Incremental COP $] [decimal](17, 2) NULL,
	[ATPM - Total Planned Shipment Dollars] [decimal](17, 2) NULL,
	[ATPM - Planned Promo Dollars @ Full Price] [decimal](17, 2) NULL,
	[ATPM - Planned Retailer Promotion Sales] [decimal](17, 2) NULL,
	[ATPM - Planned TPQ Dollars] [decimal](17, 2) NULL,
	[ATPM - Planned TPQ Eaches] [decimal](17, 3) NULL,
	[ATPM - Planned Promo COP $] [decimal](17, 2) NULL,
	[ATPM - Total Planned Incremental Dollars] [decimal](17, 2) NULL,
	[ATPM - Bill-back % Total] [decimal](17, 2) NULL,
	[ATPM - Bill-back Rate Total] [decimal](17, 2) NULL,
	[ATPM - Corrective Lump Sum] [decimal](17, 2) NULL,
	[ATPM - EDLP Bill-back % Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Bill-back Rate Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Spend] [decimal](17, 2) NULL,
	[ATPM - EDLP Off-Invoice % Total] [decimal](17, 2) NULL,
	[ATPM - EDLP Off-Invoice Rate Total] [decimal](17, 2) NULL,
	[ATPM - Plan Ship Dollars] [decimal](17, 2) NULL,
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
	[ATPM - Suggested TPQ] [decimal](17, 3) NULL,
	[ATPM - Suggested Incremental Volume] [decimal](17, 3) NULL,
	[ATPM - Warehouse Withdrawal Total Spend] [decimal](17, 2) NULL,
	[ATPM - Variance %] [decimal](17, 3) NULL,
	[Sales Promo: Gross Sales Dollars] [decimal](17, 2) NULL,
	[SVP - Planned Shelf Price] [decimal](17, 2) NULL,
	[SVP - Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[LE: CSM Advertising] [decimal](17, 2) NULL,
	[LE: CSM COGS] [decimal](17, 2) NULL,
	[LE: CSM Coupon] [decimal](17, 2) NULL,
	[LE: Correction Lump Sum] [decimal](17, 2) NULL,
	[LE: CSM VAP] [decimal](17, 2) NULL,
	[LE: Fixed Lump Sum] [decimal](17, 2) NULL,
	[LE: Liquidation Fixed] [decimal](17, 2) NULL,
	[LE: Military Fixed] [decimal](17, 2) NULL,
	[LE: New Item Fixed] [decimal](17, 2) NULL,
	[LE: Scanned Application Fixed] [decimal](17, 2) NULL,
	[LE: Promo Scan % Total] [decimal](17, 2) NULL,
	[LE: Promo Scan Rate Total] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROMOTION_JOIN_TEST_10_6]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROMOTION_JOIN_TEST_10_6](
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
/****** Object:  Table [dbo].[PTC_TEST_04_14_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTC_TEST_04_14_1](
	[CUSTOMER] [varchar](10) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PTC_TEST_04_14_2]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTC_TEST_04_14_2](
	[CUSTOMER] [varchar](10) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Actual Gross Sales] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PTC_TEST_04_14_3]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTC_TEST_04_14_3](
	[CUSTOMER] [varchar](10) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Actual Gross Sales] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PTC_TEST_04_14_4]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTC_TEST_04_14_4](
	[CUSTOMER] [varchar](10) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Gross Sales $] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PTC_TEST_04_14_5]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTC_TEST_04_14_5](
	[CUSTOMER] [varchar](10) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Gross Sales $] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PTC_TEST_04_14_6]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTC_TEST_04_14_6](
	[CUSTOMER] [varchar](10) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[CRM Latest Estimate Gross Sales $] [decimal](17, 2) NULL,
	[Actual Gross Sales] [decimal](17, 2) NULL,
	[Plan Gross Sales $] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PTC_TEST_04_14_7]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTC_TEST_04_14_7](
	[CUSTOMER] [varchar](10) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[CRM Latest Estimate Gross Sales $] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PTC_TEST_04_14_FINAL]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTC_TEST_04_14_FINAL](
	[CUSTOMER] [varchar](10) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[CRM Latest Estimate Gross Sales $] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PTC_TEST_FINAL_04_14_2]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTC_TEST_FINAL_04_14_2](
	[CUSTOMER] [varchar](10) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[CRM Latest Estimate Gross Sales $] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SLSCA4_OLD]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SLSCA4_OLD](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[miixed pallet material] [varchar](18) NULL,
	[calendar week] [varchar](7) NULL,
	[PROMOTIONS] [varchar](24) NULL,
	[mixed pallet flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
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
	[TPM: InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SVP_OLD]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SVP_OLD](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[miixed pallet material] [varchar](18) NULL,
	[calendar week] [varchar](7) NULL,
	[PROMOTIONS] [varchar](24) NULL,
	[mixed pallet flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
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
	[SVP - InfoProvider] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST](
	[DONE] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TEST_04_14_2]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_04_14_2](
	[CUSTOMER] [varchar](10) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[CRM Latest Estimate Gross Sales $] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_04_14_I]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_04_14_I](
	[CUSTOMER] [varchar](10) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[CURRENCY] [varchar](5) NULL,
	[CRM Latest Estimate Gross Sales $] [decimal](17, 2) NULL,
	[Actual Gross Sales] [decimal](17, 2) NULL,
	[Plan Gross Sales $] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_1_22_JOE]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_1_22_JOE](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Actual Ship $] [decimal](17, 2) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[Actual Ship LBS] [decimal](17, 3) NULL,
	[LE KMF $] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_1_25]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_1_25](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Ship $] [decimal](17, 2) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[Actual Ship LBS] [decimal](17, 3) NULL,
	[LE KMF $] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_12_7_2015]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_12_7_2015](
	[Material ID] [varchar](18) NULL,
	[Costing Date] [date] NULL,
	[Standard Price] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_2_15]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_2_15](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[UNIT] [varchar](3) NULL,
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
/****** Object:  Table [dbo].[TEST_2_15_2]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_2_15_2](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Dollars ($)] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[UNIT] [varchar](3) NULL,
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
/****** Object:  Table [dbo].[TEST_3_24]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_3_24](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Ship $] [decimal](17, 2) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[Actual Ship LBS] [decimal](17, 3) NULL,
	[LE KMF $] [decimal](17, 2) NULL,
	[HIER_D_LEVEL7] [varchar](10) NULL,
	[HIER_D_LEVEL7_TEXT] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_3_29_2_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_3_29_2_1](
	[Snapshot Period] [varchar](7) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[BW Period] [varchar](7) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Base LBS] [decimal](17, 3) NULL,
	[Plan Incr LBS] [decimal](17, 3) NULL,
	[Plan Base Units] [decimal](17, 3) NULL,
	[Plan Incr Units] [decimal](17, 3) NULL,
	[Plan Base Ret $'s] [decimal](17, 2) NULL,
	[Plan Incr Ret $'s] [decimal](17, 2) NULL,
	[Plan Base $] [decimal](17, 3) NULL,
	[Plan Incr Ship $] [decimal](17, 2) NULL,
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Actual Ship $] [decimal](17, 2) NULL,
	[Actual Ship CS] [decimal](17, 3) NULL,
	[Actual Ship LBS] [decimal](17, 3) NULL,
	[Actual Ship Units] [decimal](17, 3) NULL,
	[Actual Ship KG] [decimal](17, 3) NULL,
	[LE Ship $] [decimal](17, 2) NULL,
	[LE Ship LBS] [decimal](17, 3) NULL,
	[LE Ship Units] [decimal](17, 3) NULL,
	[Total Planned KMF $] [decimal](17, 2) NULL,
	[LE KMF $] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Actual COP $] [decimal](17, 2) NULL,
	[LE COP $] [decimal](17, 2) NULL,
	[LE Cases] [decimal](17, 3) NULL,
	[LE Kilos] [decimal](17, 3) NULL,
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
/****** Object:  Table [dbo].[TEST_3_29_2_1_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_3_29_2_1_1](
	[Snapshot Period] [varchar](7) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[CALENDER_WEEK] [varchar](7) NULL,
	[DPMATERIAL] [varchar](40) NULL,
	[BW Period] [varchar](7) NULL,
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
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_3_29_3_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_3_29_3_1](
	[Snapshot Period] [varchar](7) NULL,
	[PERIOD] [decimal](10, 2) NULL,
	[CURRENT_PERIOD_A] [decimal](10, 2) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Base LBS] [decimal](17, 3) NULL,
	[Plan Incr LBS] [decimal](17, 3) NULL,
	[Plan Base Units] [decimal](17, 3) NULL,
	[Plan Incr Units] [decimal](17, 3) NULL,
	[Plan Base Ret $'s] [decimal](17, 2) NULL,
	[Plan Incr Ret $'s] [decimal](17, 2) NULL,
	[Plan Base $] [decimal](17, 3) NULL,
	[Plan Incr Ship $] [decimal](17, 2) NULL,
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Actual Ship $] [decimal](17, 2) NULL,
	[Actual Ship CS] [decimal](17, 3) NULL,
	[Actual Ship LBS] [decimal](17, 3) NULL,
	[Actual Ship Units] [decimal](17, 3) NULL,
	[Actual Ship KG] [decimal](17, 3) NULL,
	[LE Ship $] [decimal](17, 2) NULL,
	[LE Ship LBS] [decimal](17, 3) NULL,
	[LE Ship Units] [decimal](17, 3) NULL,
	[Total Planned KMF $] [decimal](17, 2) NULL,
	[LE KMF $] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Actual COP $] [decimal](17, 2) NULL,
	[LE COP $] [decimal](17, 2) NULL,
	[LE Cases] [decimal](17, 3) NULL,
	[LE Kilos] [decimal](17, 3) NULL,
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
/****** Object:  Table [dbo].[TEST_3_29_5]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_3_29_5](
	[Snapshot Period] [varchar](7) NULL,
	[PERIOD] [decimal](10, 2) NULL,
	[PERIOD_A_YEAR] [varchar](7) NULL,
	[CURRENT_PERIOD_A] [decimal](10, 2) NULL,
	[CURRENT_PERIOD_YEAR_A] [varchar](7) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Base LBS] [decimal](17, 3) NULL,
	[Plan Incr LBS] [decimal](17, 3) NULL,
	[Plan Base Units] [decimal](17, 3) NULL,
	[Plan Incr Units] [decimal](17, 3) NULL,
	[Plan Base Ret $'s] [decimal](17, 2) NULL,
	[Plan Incr Ret $'s] [decimal](17, 2) NULL,
	[Plan Base $] [decimal](17, 3) NULL,
	[Plan Incr Ship $] [decimal](17, 2) NULL,
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Actual Ship $] [decimal](17, 2) NULL,
	[Actual Ship CS] [decimal](17, 3) NULL,
	[Actual Ship LBS] [decimal](17, 3) NULL,
	[Actual Ship Units] [decimal](17, 3) NULL,
	[Actual Ship KG] [decimal](17, 3) NULL,
	[LE Ship $] [decimal](17, 2) NULL,
	[LE Ship LBS] [decimal](17, 3) NULL,
	[LE Ship Units] [decimal](17, 3) NULL,
	[Total Planned KMF $] [decimal](17, 2) NULL,
	[LE KMF $] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Actual COP $] [decimal](17, 2) NULL,
	[LE COP $] [decimal](17, 2) NULL,
	[LE Cases] [decimal](17, 3) NULL,
	[LE Kilos] [decimal](17, 3) NULL,
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
/****** Object:  Table [dbo].[TEST_3_29_5_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_3_29_5_1](
	[Snapshot Period] [varchar](7) NULL,
	[PERIOD] [decimal](10, 2) NULL,
	[PERIOD_A_YEAR] [varchar](7) NULL,
	[CURRENT_PERIOD_A] [decimal](10, 2) NULL,
	[CURRENT_PERIOD_YEAR_A] [varchar](7) NULL,
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
	[DP_WORK_FORECAST_KMF] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_3_31]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_3_31](
	[Snapshot Period] [varchar](7) NULL,
	[PERIOD] [decimal](10, 2) NULL,
	[PERIOD_A_YEAR] [varchar](7) NULL,
	[CURRENT_PERIOD_A] [decimal](10, 2) NULL,
	[CURRENT_PERIOD_YEAR_A] [varchar](7) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[LE Ship $] [decimal](17, 2) NULL,
	[LE KMF $] [decimal](17, 2) NULL,
	[CONSENSUS_LBS] [decimal](17, 2) NULL,
	[CONSENSUS_KGS] [decimal](17, 3) NULL,
	[CONSENSUS_EACHES] [decimal](17, 3) NULL,
	[CONSENSUS_CASES] [decimal](17, 3) NULL,
	[CONSENSUS_GSV] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_5_17_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_5_17_1](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[CUSTOMER_GRP] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_5_17_2]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_5_17_2](
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
/****** Object:  Table [dbo].[TEST_5_17_3]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_5_17_3](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Component Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[List Price per Case] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[ECC Actual COP $] [decimal](17, 2) NULL,
	[DM Actual COP $] [decimal](17, 2) NULL,
	[CURRENCY] [varchar](5) NULL,
	[SPA (Special Promo Allowance)] [decimal](17, 3) NULL,
	[Sales Org.] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_5_9_TPM82_DELTA_5B]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_5_9_TPM82_DELTA_5B](
	[ATPM - flag] [varchar](4) NULL,
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
	[ATPM - InfoProvider] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_6_1]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_6_1](
	[FLAG] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Base LBS] [decimal](17, 3) NULL,
	[Plan Incr LBS] [decimal](17, 3) NULL,
	[Plan Base Units] [decimal](17, 3) NULL,
	[Plan Incr Units] [decimal](17, 3) NULL,
	[Plan Base Ret $'s] [decimal](17, 2) NULL,
	[Plan Incr Ret $'s] [decimal](17, 2) NULL,
	[Plan Base $] [decimal](17, 3) NULL,
	[Plan Incr Ship $] [decimal](17, 2) NULL,
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Actual Ship $] [decimal](17, 2) NULL,
	[Actual Ship CS] [decimal](17, 3) NULL,
	[Actual Ship LBS] [decimal](17, 3) NULL,
	[Actual Ship Units] [decimal](17, 3) NULL,
	[Actual Ship KG] [decimal](17, 3) NULL,
	[LE Ship $] [decimal](17, 2) NULL,
	[LE Ship LBS] [decimal](17, 3) NULL,
	[LE Ship Units] [decimal](17, 3) NULL,
	[Total Planned KMF $] [decimal](17, 2) NULL,
	[LE KMF $] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Actual COP $] [decimal](17, 2) NULL,
	[LE COP $] [decimal](17, 2) NULL,
	[LE Cases] [decimal](17, 3) NULL,
	[LE Kilos] [decimal](17, 3) NULL,
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
/****** Object:  Table [dbo].[TEST_6_1_2]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_6_1_2](
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
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[< Curr Week: LE Ship $ - Actual Dollars ($)] [decimal](17, 2) NULL,
	[>= Curr Week: LE Ship $ - Plan Ship $] [decimal](17, 2) NULL,
	[< Curr Week: LE Ship LBS - Actual Pounds (LB)] [decimal](17, 3) NULL,
	[>= Curr Week: LE Ship LBS - Plan Ship LBS] [decimal](17, 3) NULL,
	[< Curr Week: LE Ship Units - Actual Eaches (EA)] [decimal](17, 3) NULL,
	[>= Curr Week: LE Ship Units - Plan Ship EA] [decimal](17, 3) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[< Curr Week: LE COP $ - Actual COP $] [decimal](17, 2) NULL,
	[>= Curr Week: LE COP $ - Total Planned COP $] [decimal](17, 2) NULL,
	[< Curr Week: LE Cases - Actual Cases (CS)] [decimal](17, 3) NULL,
	[>= Curr Week: LE Cases - Total Planned Shipment CS] [decimal](17, 3) NULL,
	[< Curr Week: LE Kilos - Actual Kilograms (KG)] [decimal](17, 3) NULL,
	[>= Curr Week: LE Kilos - Total Planned Shipment Kilos] [decimal](17, 3) NULL,
	[Plan Base Cases] [decimal](17, 3) NULL,
	[Plan Incr Cases] [decimal](17, 3) NULL,
	[Plan Incr Ship Cases] [decimal](17, 3) NULL,
	[Plan Incr Ship Units] [decimal](17, 3) NULL,
	[Plan Incr Ship LBS] [decimal](17, 3) NULL,
	[Plan Incr Ship Kilos] [decimal](17, 3) NULL,
	[Suggested Base Volume (SAS)] [decimal](17, 3) NULL,
	[Suggested Shelf Price (SAS)] [decimal](17, 2) NULL,
	[Lastest Estimate Missed OI] [decimal](17, 2) NULL,
	[Latest Estimate Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate EDLP Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate Scan Apps Bill Back Dollars] [decimal](17, 2) NULL,
	[Latest Estimate Scan Dollars] [decimal](17, 2) NULL,
	[LE WW$] [decimal](17, 2) NULL,
	[Latest Estimate Total Fixed KMF] [decimal](17, 2) NULL,
	[Plan Total Off Invoice Dollars] [decimal](17, 2) NULL,
	[Actual OI Spend (Not restricted)] [decimal](17, 2) NULL,
	[Plan Total Fixed KMF Spend] [decimal](17, 2) NULL,
	[Plan Variable KMF Spend] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_ACTUAL_DOLLAR_01]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_ACTUAL_DOLLAR_01](
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
	[CHANNEL] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_AGG]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_AGG](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[PROMOTIONS] [varchar](24) NULL,
	[ATPM - Currency] [varchar](5) NULL,
	[ATPM - Sales Unit] [varchar](3) NULL,
	[ATPM - InfoProvider] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_CINNAMON_5_FIX]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_CINNAMON_5_FIX](
	[ATPM - flag] [varchar](4) NULL,
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
	[ATPM - InfoProvider] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_FINAL_1_22]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_FINAL_1_22](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Miixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Actual Ship $] [decimal](17, 2) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[Actual Ship LBS] [decimal](17, 3) NULL,
	[LE KMF $] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_JOE_PLAN_TO_FILTERED_5]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_JOE_PLAN_TO_FILTERED_5](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Actual Ship $] [decimal](17, 2) NULL,
	[Actual Cases (CS)] [decimal](17, 3) NULL,
	[Actual Eaches (EA)] [decimal](17, 3) NULL,
	[Actual Pounds (LB)] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEST_PTI]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEST_PTI](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Mixed Pallet Flag] [varchar](1) NULL,
	[Calendar Week] [varchar](7) NULL,
	[CURRENCY] [varchar](5) NULL,
	[Plan Base LBS] [decimal](17, 3) NULL,
	[Plan Incr LBS] [decimal](17, 3) NULL,
	[Plan Base Units] [decimal](17, 3) NULL,
	[Plan Incr Units] [decimal](17, 3) NULL,
	[Plan Base Ret $'s] [decimal](17, 2) NULL,
	[Plan Incr Ret $'s] [decimal](17, 2) NULL,
	[Plan Base $] [decimal](17, 3) NULL,
	[Plan Incr Ship $] [decimal](17, 2) NULL,
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Plan Ship LBS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship EA] [decimal](17, 3) NULL,
	[Actual Ship $] [decimal](17, 2) NULL,
	[Actual Ship CS] [decimal](17, 3) NULL,
	[Actual Ship LBS] [decimal](17, 3) NULL,
	[Actual Ship Units] [decimal](17, 3) NULL,
	[Actual Ship KG] [decimal](17, 3) NULL,
	[LE Ship $] [decimal](17, 2) NULL,
	[LE Ship LBS] [decimal](17, 3) NULL,
	[LE Ship Units] [decimal](17, 3) NULL,
	[Total Planned KMF $] [decimal](17, 2) NULL,
	[LE KMF $] [decimal](17, 2) NULL,
	[Total Planned COP $] [decimal](17, 2) NULL,
	[Actual COP $] [decimal](17, 2) NULL,
	[LE COP $] [decimal](17, 2) NULL,
	[LE Cases] [decimal](17, 3) NULL,
	[LE Kilos] [decimal](17, 3) NULL,
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
/****** Object:  Table [dbo].[TPM82_OLD]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TPM82_OLD](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[miixed pallet material] [varchar](18) NULL,
	[calendar week] [varchar](7) NULL,
	[PROMOTIONS] [varchar](24) NULL,
	[mixed pallet flag] [varchar](1) NULL,
	[CURRENCY] [varchar](5) NULL,
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
	[ATPM - InfoProvider] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TRANSACTION]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TRANSACTION](
	[SOLDTO_NUM] [float] NULL,
	[SOLDTO_NAME] [varchar](50) NULL,
	[ADDRESS] [varchar](100) NULL,
	[CITY] [varchar](50) NULL,
	[ZIP] [varchar](10) NULL,
	[BW_PLANTO_KEY] [float] NULL,
	[BW_PLANTO_NAME] [varchar](50) NULL,
	[BW_CHAIN_NUM] [float] NULL,
	[BW_CHAIN_NAME] [varchar](50) NULL,
	[BASE_MATERIAL] [decimal](14, 0) NULL,
	[MATERIAL_DESC] [varchar](150) NULL,
	[MATERIAL_STATUS] [varchar](10) NULL,
	[MATERIAL_DISCO_DT] [date] NULL,
	[MKT_SEGMENT] [varchar](20) NULL,
	[CATEGORY] [varchar](20) NULL,
	[PERIOD] [int] NULL,
	[CAL_WEEK] [int] NULL,
	[CAL_YEAR] [int] NULL,
	[FIS_YEAR] [int] NULL,
	[OPEN_ORDRS_DOLLARS] [float] NULL,
	[OPEN_ORDS_POUNDS] [float] NULL,
	[OPEN_ORDS_CS] [float] NULL,
	[GROSS_SALES_DOLLARS_DIR] [float] NULL,
	[GROSS_SALES_POUNDS_DIR] [float] NULL,
	[GROSS_SALES_CS_DIR] [float] NULL,
	[GROSS_SALES_DOLLARS_INDIR] [float] NULL,
	[GROSS_SALES_POUNDS_INDIR] [float] NULL,
	[GROSS_SALES_CS_INDIR] [float] NULL,
	[CUST_OPEN_ORDRS_DOLLARS] [float] NULL,
	[CUST_OPEN_ORDS_POUNDS] [float] NULL,
	[CUST_OPEN_ORDS_CS] [float] NULL,
	[CUST_GROSS_SALES_DOLLARS_DIR] [float] NULL,
	[CUST_GROSS_SALES_POUNDS_DIR] [float] NULL,
	[CUST_GROSS_SALES_CS_DIR] [float] NULL,
	[EXTRACT_DT] [datetime2](7) NULL,
	[SOURCE_NAME] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VBKD_TEST]    Script Date: 11/20/2018 5:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VBKD_TEST](
	[MANDT] [varchar](3) NULL,
	[VBELN] [varchar](10) NULL,
	[POSNR] [decimal](6, 0) NULL,
	[KONDA] [varchar](2) NULL,
	[KDGRP] [varchar](2) NULL,
	[BZIRK] [varchar](6) NULL,
	[PLTYP] [varchar](2) NULL,
	[INCO1] [varchar](3) NULL,
	[INCO2] [varchar](28) NULL,
	[KZAZU] [varchar](1) NULL,
	[PERFK] [varchar](2) NULL,
	[PERRL] [varchar](2) NULL,
	[MRNKZ] [varchar](1) NULL,
	[KURRF] [decimal](9, 5) NULL,
	[VALTG] [decimal](2, 0) NULL,
	[VALDT] [date] NULL,
	[ZTERM] [varchar](4) NULL,
	[ZLSCH] [varchar](1) NULL,
	[KTGRD] [varchar](2) NULL,
	[KURSK] [decimal](9, 5) NULL,
	[PRSDT] [date] NULL,
	[FKDAT] [date] NULL,
	[FBUDA] [date] NULL,
	[GJAHR] [decimal](4, 0) NULL,
	[POPER] [decimal](3, 0) NULL,
	[STCUR] [decimal](9, 5) NULL,
	[MSCHL] [varchar](1) NULL,
	[MANSP] [varchar](1) NULL,
	[FPLNR] [varchar](10) NULL,
	[WAKTION] [varchar](10) NULL,
	[ABSSC] [varchar](6) NULL,
	[LCNUM] [varchar](10) NULL,
	[J_1AFITP] [varchar](2) NULL,
	[J_1ARFZ] [varchar](1) NULL,
	[J_1AREGIO] [varchar](3) NULL,
	[J_1AGICD] [varchar](2) NULL,
	[J_1ADTYP] [varchar](2) NULL,
	[J_1ATXREL] [varchar](10) NULL,
	[ABTNR] [varchar](4) NULL,
	[EMPST] [varchar](25) NULL,
	[BSTKD] [varchar](35) NULL,
	[BSTDK] [date] NULL,
	[BSARK] [varchar](4) NULL,
	[IHREZ] [varchar](12) NULL,
	[BSTKD_E] [varchar](35) NULL,
	[BSTDK_E] [date] NULL,
	[BSARK_E] [varchar](4) NULL,
	[IHREZ_E] [varchar](12) NULL,
	[POSEX_E] [varchar](6) NULL,
	[KURSK_DAT] [date] NULL,
	[KURRF_DAT] [date] NULL,
	[KDKG1] [varchar](2) NULL,
	[KDKG2] [varchar](2) NULL,
	[KDKG3] [varchar](2) NULL,
	[KDKG4] [varchar](2) NULL,
	[KDKG5] [varchar](2) NULL,
	[WKWAE] [varchar](5) NULL,
	[WKKUR] [decimal](9, 5) NULL,
	[AKWAE] [varchar](5) NULL,
	[AKKUR] [decimal](9, 5) NULL,
	[AKPRZ] [decimal](5, 2) NULL,
	[J_1AINDXP] [varchar](5) NULL,
	[J_1AIDATEP] [date] NULL,
	[BSTKD_M] [varchar](35) NULL,
	[DELCO] [varchar](3) NULL,
	[FFPRF] [varchar](8) NULL,
	[BEMOT] [varchar](2) NULL,
	[FAKTF] [varchar](2) NULL,
	[RRREL] [varchar](1) NULL,
	[ACDATV] [varchar](1) NULL,
	[VSART] [varchar](2) NULL,
	[TRATY] [varchar](4) NULL,
	[TRMTYP] [varchar](18) NULL,
	[SDABW] [varchar](4) NULL,
	[WMINR] [varchar](10) NULL,
	[FKBER] [varchar](16) NULL,
	[PODKZ] [varchar](1) NULL,
	[CAMPAIGN] [varchar](32) NULL,
	[VKONT] [varchar](12) NULL,
	[DPBP_REF_FPLNR] [varchar](10) NULL,
	[DPBP_REF_FPLTR] [decimal](6, 0) NULL,
	[REVSP] [varchar](1) NULL,
	[REVEVTYP] [varchar](1) NULL,
	[VTREF] [varchar](20) NULL,
	[PEROP_BEG] [date] NULL,
	[PEROP_END] [date] NULL,
	[STCODE] [varchar](3) NULL,
	[FORMC1] [varchar](3) NULL,
	[FORMC2] [varchar](3) NULL,
	[STEUC] [varchar](16) NULL,
	[COMPREAS] [varchar](4) NULL,
	[ZZDELDATE] [date] NULL,
	[ZZDELTIME] [varchar](24) NULL,
	[ZZAPPTNO] [varchar](30) NULL,
	[ZZCUTOFF] [date] NULL,
	[ZZCUTOFF_TIME] [varchar](24) NULL,
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
	[ZZCONFPICKDT] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KLG_TPE_PROMOTION_MASTER_SRC_INDEX]    Script Date: 11/20/2018 5:52:11 PM ******/
CREATE UNIQUE CLUSTERED INDEX [KLG_TPE_PROMOTION_MASTER_SRC_INDEX] ON [dbo].[KLG_TPE_PROMOTION_MASTER_SRC]
(
	[CUSTOMER] ASC,
	[MATERIAL] ASC,
	[miixed pallet material] ASC,
	[calendar week] ASC,
	[mixed pallet flag] ASC,
	[PROMOTIONS] ASC,
	[CURRENCY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KLG_TPE_ZC_CON53_SRC_1_INDEX]    Script Date: 11/20/2018 5:52:11 PM ******/
CREATE UNIQUE CLUSTERED INDEX [KLG_TPE_ZC_CON53_SRC_1_INDEX] ON [dbo].[KLG_TPE_ZC_CON53_SRC_1]
(
	[CUSTOMER] ASC,
	[MATERIAL] ASC,
	[Mixed Pallet Material] ASC,
	[Calendar Week] ASC,
	[PROMOTION] ASC,
	[Mixed Pallet Flag] ASC,
	[Sales Promo: Currency] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KLG_TPE_ZC_SVP06_SRC_1_INDEX]    Script Date: 11/20/2018 5:52:11 PM ******/
CREATE UNIQUE CLUSTERED INDEX [KLG_TPE_ZC_SVP06_SRC_1_INDEX] ON [dbo].[KLG_TPE_ZC_SVP06_SRC_1]
(
	[CUSTOMER] ASC,
	[MATERIAL] ASC,
	[Mixed Pallet Material] ASC,
	[Calendar Week] ASC,
	[PROMOTION] ASC,
	[Mixed Pallet Flag] ASC,
	[SVP - Currency] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KLG_TPE_ZC_TPM82_SRC_1_AGG_INDEX]    Script Date: 11/20/2018 5:52:11 PM ******/
CREATE UNIQUE CLUSTERED INDEX [KLG_TPE_ZC_TPM82_SRC_1_AGG_INDEX] ON [dbo].[KLG_TPE_ZC_TPM82_SRC_1_AGG]
(
	[CUSTOMER] ASC,
	[MATERIAL] ASC,
	[Miixed Pallet Material] ASC,
	[Calendar Week] ASC,
	[PROMOTIONS] ASC,
	[Mixed Pallet Flag] ASC,
	[ATPM - Currency] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [TPE_DS_Source] SET  READ_WRITE 
GO
