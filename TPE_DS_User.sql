USE [master]
GO
/****** Object:  Database [TPE_DS_User]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE DATABASE [TPE_DS_User]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TPE_DS_User', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\TPE_DS_User.mdf' , SIZE = 188164096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'TPE_DS_User_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\TPE_DS_User_log.ldf' , SIZE = 1537024KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TPE_DS_User].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TPE_DS_User] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TPE_DS_User] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TPE_DS_User] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TPE_DS_User] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TPE_DS_User] SET ARITHABORT OFF 
GO
ALTER DATABASE [TPE_DS_User] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TPE_DS_User] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TPE_DS_User] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TPE_DS_User] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TPE_DS_User] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TPE_DS_User] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TPE_DS_User] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TPE_DS_User] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TPE_DS_User] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TPE_DS_User] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TPE_DS_User] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TPE_DS_User] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TPE_DS_User] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TPE_DS_User] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TPE_DS_User] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TPE_DS_User] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TPE_DS_User] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TPE_DS_User] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TPE_DS_User] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TPE_DS_User] SET  MULTI_USER 
GO
ALTER DATABASE [TPE_DS_User] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TPE_DS_User] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TPE_DS_User] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TPE_DS_User] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TPE_DS_User', N'ON'
GO
USE [TPE_DS_User]
GO
/****** Object:  User [US\SQL_TPE_USERS_R]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [US\SQL_TPE_USERS_R] FOR LOGIN [US\SQL_TPE_USERS_R]
GO
/****** Object:  User [US\SQL_RGM_SUPPORT_R]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [US\SQL_RGM_SUPPORT_R] FOR LOGIN [US\SQL_RGM_SUPPORT_R]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_VIZ_REP]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [SQL_VIZ_REP] FOR LOGIN [SQL_VIZ_REP] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_PU_USKSDC40]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [SAS_PU_USKSDC40] FOR LOGIN [SAS_PU_USKSDC40] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_PU_USCERD01]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [SAS_PU_USCERD01] FOR LOGIN [SAS_PU_USCERD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_PU_USCC1L05]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [SAS_PU_USCC1L05] FOR LOGIN [SAS_PU_USCC1L05] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE ROLE [db_view_def]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_TPE_USERS_R]
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
ALTER ROLE [db_datareader] ADD MEMBER [SQL_VIZ_REP]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [SQL_VIZ_REP]
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
ALTER ROLE [db_ddladmin] ADD MEMBER [SAS_USKKXW01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKKXW01]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [SAS_USKKXW01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKKFS02]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKJXS19]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [SAS_USKJTB03]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKJTB03]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [SAS_USKJTB03]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKJAK14]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [SAS_USKJAK14]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [SAS_USKDRK07]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKDRK07]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [SAS_USKDRK07]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKCRS01]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [SAS_USKBPH02]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKBPH02]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [SAS_USKBPH02]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_PU_USKSDC40]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_PU_USCERD01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_PU_USCC1L05]
GO
ALTER ROLE [db_owner] ADD MEMBER [BODS]
GO
/****** Object:  Schema [SAS_USKJTB03]    Script Date: 11/20/2018 5:53:00 PM ******/
CREATE SCHEMA [SAS_USKJTB03]
GO
/****** Object:  StoredProcedure [dbo].[ACOSTA_HIERARCHY_Loader]    Script Date: 11/20/2018 5:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ACOSTA_HIERARCHY_Loader] /**** Create = first run, ALTER = to updated****/
AS
BEGIN
 TRUNCATE TABLE TPE_DS_User.dbo.ACOSTA_HIERARCHY /****clears data***/
	BULK INSERT  TPE_DS_User.dbo.ACOSTA_HIERARCHY
		FROM '\\elm-c-f04\Groups\Business Management\Sales Reporting\Data Mart\ACOSTA_HIERARCHY.csv'
		WITH (FIRSTROW = 2,FIELDTERMINATOR = ',',ROWTERMINATOR = '\n')
	SELECT GETDATE() AS 'AH Last Run'
END
GO
/****** Object:  StoredProcedure [dbo].[BULK_INSERT]    Script Date: 11/20/2018 5:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BULK_INSERT]
@TABLENAME VARCHAR(128),
@FILENAME VARCHAR(500)
AS
BEGIN
DECLARE @QUERY VARCHAR(1000)
SET @QUERY ='BULK INSERT ' + @TABLENAME + 
' FROM ' + @FILENAME +  ' WITH (FIELDTERMINATOR = ''\t'',ROWTERMINATOR = ''\n'')';
PRINT @QUERY

EXEC (@QUERY)
END

GO
/****** Object:  StoredProcedure [dbo].[CONandTPM]    Script Date: 11/20/2018 5:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CONandTPM]

@TABLEA VARCHAR(128),
@SOURCEA VARCHAR(128),
@TABLEB VARCHAR(128),
--@FIELDA VARCHAR (1000),

@SOURCEB VARCHAR(128)

AS

BEGIN

----DROP THE TABLE TO OVERRIDE IT
DECLARE @QUERY VARCHAR (1000)

SET @QUERY = 'DROP TABLE '+ @TABLEA;

PRINT @QUERY

EXEC (@QUERY)

----CREATE TPM TABLE ONLY 2016

SET @QUERY= 'SELECT DISTINCT
a.CUSTOMER,
a.[Mixed Pallet Material] AS [Mixed Pallet Material],
a.[Calendar Week] AS CALENDER_WEEK,
a.[Plan Ship $]

INTO ' + @TABLEA +

' FROM ' + 

@SOURCEA +' a

WHERE

((RIGHT(a.[Calendar Week],4) ) = 2016) AND
a.[Plan Ship $] <> 0';

PRINT @QUERY

EXEC (@QUERY)

----DROP CONSENSUS TABLE



SET @QUERY = 'DROP TABLE '+ @TABLEB;

PRINT @QUERY

EXEC (@QUERY)


SET @QUERY= 'SELECT DISTINCT
a.CUSTOMER,
a.[Mixed Pallet Material],
a.CALENDER_WEEK,
a.CONSENSUS_GSV,
a.SNAPSHOT_WEEK,
a.CURRENT_CALWEEK

INTO ' + @TABLEB +

' FROM ' + 

@SOURCEB +' a

WHERE

((RIGHT(a.CALENDER_WEEK,4) ) = 2016) AND
a.CONSENSUS_GSV <> 0';

PRINT @QUERY

EXEC (@QUERY)





END

GO
/****** Object:  StoredProcedure [dbo].[CONSENSUS_]    Script Date: 11/20/2018 5:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CONSENSUS_]
@TABLEA VARCHAR(128),
--@SOURCEA VARCHAR(128),
--@SOURCEB VARCHAR(128),
@VIEWA VARCHAR(128),
@VIEWB VARCHAR(128),
@VIEWC VARCHAR(128),
@VIEWD VARCHAR(128),
@VIEWE VARCHAR(128),
@TABLEB VARCHAR(128)

AS

BEGIN

DECLARE @QUERY VARCHAR (1000)

-----------------------how to know which versions to keep






SET @QUERY = ' SELECT DISTINCT
 1*(LEFT (a.SNAPSHOT_WEEK,2)) AS WEEK_NUM ,
 RIGHT (a.SNAPSHOT_WEEK,4) AS YEAR_NUM ,
 a.SNAPSHOT_WEEK ,
 1*(LEFT(a.CURRENT_CALWEEK,2)) AS LATEST_WEEK ,

CASE WHEN 1*(LEFT(a.CURRENT_CALWEEK,2))-1= 1*(LEFT (a.SNAPSHOT_WEEK,2)) THEN 1 ELSE 
  (CASE WHEN 1*(LEFT(a.CURRENT_CALWEEK,2)) -5 = 1 *(LEFT (a.SNAPSHOT_WEEK,2)) THEN 2 ELSE 0 END)
 END AS VERSIONS  INTO '+ @VIEWA + '
FROM '+ @TABLEA + ' a';


PRINT @QUERY

EXEC (@QUERY)

----------------keep only two versions




SET @QUERY= ' SELECT * INTO ' + @VIEWB+' FROM '+ @VIEWA + ' a WHERE a.VERSIONS<>0 ';

PRINT @QUERY

EXEC (@QUERY)

---------------create table with all combinations




SET @QUERY= ' SELECT DISTINCT a.CUSTOMER, a.[Mixed Pallet Material], a.CALENDER_WEEK INTO ' + @VIEWC+' FROM '+ @TABLEA +' a' ;

PRINT @QUERY

EXEC (@QUERY)

----------------------filter latest week



SET @QUERY= ' SELECT DISTINCT a.CUSTOMER, 
a.[Mixed Pallet Material], 
a.CALENDER_WEEK, 
a.CONSENSUS_GSV INTO ' + @VIEWD+
' FROM '+ @TABLEA  + ' a
INNER JOIN '+ @VIEWB + '  b ON a.[SNAPSHOT_WEEK] = b.[SNAPSHOT_WEEK]  WHERE b.VERSIONS=1';

PRINT @QUERY

EXEC (@QUERY)

----filter week before LATEST_VERSION_CON





SET @QUERY= ' SELECT DISTINCT a.CUSTOMER, 
a.[Mixed Pallet Material], 
a.CALENDER_WEEK, 
a.CONSENSUS_GSV INTO ' + @VIEWE+
' FROM '+ @TABLEA  + ' a
INNER JOIN '+ @VIEWB + '  b ON a.[SNAPSHOT_WEEK] = b.[SNAPSHOT_WEEK]  WHERE b.VERSIONS=2';

PRINT @QUERY

EXEC (@QUERY)


------CONSENSUS LATEST VERSION and BEFORE LATEST_VERSION_CON


SET @QUERY = 'DROP TABLE '+ @TABLEB;

PRINT @QUERY

EXEC (@QUERY)



SET @QUERY=' SELECT a.CUSTOMER, 
a.[Mixed Pallet Material], 
a.CALENDER_WEEK, 
b.CONSENSUS_GSV AS CON_GSV_LAT, 
c.CONSENSUS_GSV AS CON_GSV_BEF

INTO ' + @TABLEB + ' FROM ' + @VIEWC + ' a LEFT JOIN ' + @VIEWD + ' b ON a.CUSTOMER=b.CUSTOMER AND 
a.[Mixed Pallet Material]=b.[Mixed Pallet Material]  AND  a.CALENDER_WEEK= b.CALENDER_WEEK
LEFT JOIN '+ @VIEWE + ' c ON a.CUSTOMER=c.CUSTOMER AND 
a.[Mixed Pallet Material]=c.[Mixed Pallet Material]  AND  a.CALENDER_WEEK= c.CALENDER_WEEK';	


PRINT @QUERY

EXEC (@QUERY)




SET @QUERY = 'DROP TABLE '+ @VIEWA;

PRINT @QUERY

EXEC (@QUERY)

SET @QUERY = 'DROP TABLE '+ @VIEWB;

PRINT @QUERY

EXEC (@QUERY)

SET @QUERY = 'DROP TABLE '+ @VIEWC;

PRINT @QUERY

EXEC (@QUERY)

SET @QUERY = 'DROP TABLE '+ @VIEWD;

PRINT @QUERY

EXEC (@QUERY)

SET @QUERY = 'DROP TABLE '+ @VIEWE;

PRINT @QUERY

EXEC (@QUERY)


END


GO
/****** Object:  StoredProcedure [dbo].[DISAGG_CON]    Script Date: 11/20/2018 5:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DISAGG_CON]


@TABLEA VARCHAR(128),
@TABLEB VARCHAR(128),
@TABLEC VARCHAR(128)


AS

BEGIN

DECLARE @QUERY VARCHAR (1000)







SET @QUERY = 'DROP TABLE '+ @TABLEC;

PRINT @QUERY

EXEC (@QUERY)




SET @QUERY='SELECT
a.CALENDER_WEEK,
a.[Mixed Pallet Material],
a.CUSTOMER AS PREV_CUST,
a.CON_GSV_LAT AS BEFORE_DIS,
a.CON_GSV_BEF AS BEF_DIS_BEF,

CASE WHEN b.Sweetbay is NULL
THEN a.CON_GSV_LAT
ELSE a.CON_GSV_LAT * b.PERCENT_LIFELINE
END AS CONSENSUS_GSV,

CASE WHEN b.Sweetbay is NULL
THEN a.CON_GSV_BEF
ELSE a.CON_GSV_BEF * b.PERCENT_LIFELINE
END AS CONSENSUS_GSV_PREV,

CASE WHEN b.Sweetbay is NULL
THEN a.CUSTOMER
ELSE b.ACCT
END AS CUSTOMER


INTO ' + @TABLEC + ' FROM ' + @TABLEA + ' a
LEFT JOIN '+ @TABLEB+' b ON a.[Mixed Pallet Material] = b.[Mixed Pallet Material]
AND a.CUSTOMER = b.Sweetbay ';

PRINT @QUERY

EXEC (@QUERY)






END

GO
/****** Object:  StoredProcedure [dbo].[FINAL_TPM_CON]    Script Date: 11/20/2018 5:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FINAL_TPM_CON]


@TABLEA VARCHAR(128),
@TABLEB VARCHAR(128),
@TABLEC VARCHAR(128),
@TABLED VARCHAR(128),
@TABLEE VARCHAR(128),
@VIEWA VARCHAR(128),
@VIEWB VARCHAR(128),
@VIEWC VARCHAR(128)


AS

BEGIN

DECLARE @QUERY VARCHAR (1000)




------JOIN master table TPM and COnsensus




SET @QUERY=' SELECT
a.CUSTOMER,
a.[Mixed Pallet Material],
a.CALENDER_WEEK,
b.[Plan Ship $],
c.CONSENSUS_GSV,
c.CONSENSUS_GSV_PREV

INTO ' + @VIEWA + '
FROM ' + @TABLEC + ' a
LEFT JOIN ' + @TABLEB + ' b ON a.CUSTOMER = b.CUSTOMER 
AND a.[Mixed Pallet Material] = b.[Mixed Pallet Material] 
AND a.CALENDER_WEEK = b.CALENDER_WEEK
LEFT JOIN ' + @TABLEA + ' c  ON a.CALENDER_WEEK = c.CALENDER_WEEK 
AND a.[Mixed Pallet Material] = c.[Mixed Pallet Material] 
AND a.CUSTOMER = c.CUSTOMER' ;

PRINT @QUERY

EXEC (@QUERY)


---REMOVE NULLS



SET @QUERY=' SELECT
a.CUSTOMER,
a.[Mixed Pallet Material],
a.CALENDER_WEEK,
CASE WHEN 
a.[Plan Ship $] is NULL
THEN 0 
ELSE a.[Plan Ship $]   
END AS [Plan Ship $],

CASE WHEN 
a.CONSENSUS_GSV is NULL
THEN 0
ELSE a.CONSENSUS_GSV 
END AS CONSENSUS_GSV,

CASE WHEN 
a.CONSENSUS_GSV_PREV is NULL
THEN 0
ELSE a.CONSENSUS_GSV_PREV 
END AS CONSENSUS_GSV_PREV

INTO '+ @VIEWB + '
FROM '+ @VIEWA + ' a ';

PRINT @QUERY

EXEC (@QUERY)



---REMOVE ZEROES




SET @QUERY=' SELECT *
INTO '+ @VIEWC + '
FROM '+ @VIEWB + ' a 
WHERE a.[Plan Ship $] + a.CONSENSUS_GSV + a.CONSENSUS_GSV_PREV <> 0 ';

PRINT @QUERY

EXEC (@QUERY)


---FINAL TABLE

SET @QUERY = 'DROP TABLE '+ @TABLED;

PRINT @QUERY

EXEC (@QUERY)


SET @QUERY=' SELECT
a.CUSTOMER,
a.[Mixed Pallet Material],
b.YEAR,
sum(a.[Plan Ship $]) AS [Plan Ship $],
sum(a.[CONSENSUS_GSV]) AS [CONSENSUS_GSV],
sum(a.[CONSENSUS_GSV_PREV]) AS [CONSENSUS_GSV_PREV],
b.PERIOD


INTO ' + @TABLED + '
FROM ' + @VIEWC + ' a
LEFT JOIN ' + @TABLEE + ' b ON b.[BW Week]= a.[CALENDER_WEEK]

GROUP BY 
a.CUSTOMER,
a.[Mixed Pallet Material],
b.PERIOD,
b.YEAR';

PRINT @QUERY

EXEC (@QUERY)


SET @QUERY = 'DROP TABLE '+ @VIEWA;

PRINT @QUERY

EXEC (@QUERY)

SET @QUERY = 'DROP TABLE '+ @VIEWB;

PRINT @QUERY

EXEC (@QUERY)

SET @QUERY = 'DROP TABLE '+ @VIEWC;

PRINT @QUERY

EXEC (@QUERY)

END

GO
/****** Object:  StoredProcedure [dbo].[KNA_HIERARCHY_Loader_P]    Script Date: 11/20/2018 5:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KNA_HIERARCHY_Loader_P]
AS
BEGIN
 TRUNCATE TABLE TPE_DS_User.dbo.PLANTO_HIERARCHY_BU
	BULK INSERT  TPE_DS_User.dbo.PLANTO_HIERARCHY_BU
		FROM '\\salesbus\Insight\BusMgt\Source Data\Customer\KNA_HIERARCHY.csv'
		WITH (FIRSTROW = 2,FIELDTERMINATOR = ',',ROWTERMINATOR = '\n')

 TRUNCATE TABLE TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY
	BULK INSERT  TPE_DS_User.dbo.NORMALIZE_BU_HIERARCHY
		FROM '\\salesbus\Insight\BusMgt\Source Data\Customer\KNA_HIERARCHY_N.csv'
		WITH (FIRSTROW = 2,FIELDTERMINATOR = ',',ROWTERMINATOR = '\n')
			SELECT GETDATE() AS 'Hierarchy Last Update'	
END
GO
/****** Object:  StoredProcedure [dbo].[KUSA_TRACK_GSV_Loader_P]    Script Date: 11/20/2018 5:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KUSA_TRACK_GSV_Loader_P]
AS
BEGIN
 TRUNCATE TABLE TPE_DS_User.dbo.KUSA_TRACK_GSV_Loader
	BULK INSERT  TPE_DS_User.dbo.KUSA_TRACK_GSV_Loader
		FROM '\\elm-c-f04\Groups\Business Management\Sales Reporting\Data Mart\gsv.csv'
		WITH (FIRSTROW = 2,FIELDTERMINATOR = ',',ROWTERMINATOR = '\n')
	SELECT GETDATE() AS 'GSV Last Run'
END
GO
/****** Object:  StoredProcedure [dbo].[KUSA_TRACK_IND_Loader_P]    Script Date: 11/20/2018 5:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KUSA_TRACK_IND_Loader_P]
AS
BEGIN
 TRUNCATE TABLE TPE_DS_User.dbo.KUSA_TRACK_INDIRECT_Loader
	BULK INSERT  TPE_DS_User.dbo.KUSA_TRACK_INDIRECT_Loader
		FROM '\\elm-c-f04\Groups\Business Management\Sales Reporting\Data Mart\INDIRECTS.csv'
		WITH (FIRSTROW = 2,FIELDTERMINATOR = ',',ROWTERMINATOR = '\n')
	SELECT Getdate() AS 'Indirects Last Run Date'
END

GO
/****** Object:  StoredProcedure [dbo].[KUSA_TRACK_KPI_Loader_P]    Script Date: 11/20/2018 5:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KUSA_TRACK_KPI_Loader_P]
AS
BEGIN
 TRUNCATE TABLE TPE_DS_User.dbo.KUSA_TRACK_KPI_Loader
	BULK INSERT  TPE_DS_User.dbo.KUSA_TRACK_KPI_Loader 
		FROM '\\elm-c-f04\Groups\Business Management\Sales Reporting\Data Mart\KPI.csv'
		WITH (FIRSTROW = 2,FIELDTERMINATOR = ',',ROWTERMINATOR = '\n')
SELECT Getdate() AS 'KPI Last Run Date'
END

GO
/****** Object:  StoredProcedure [dbo].[KUSA_TRACK_SHAPE_Loader_P]    Script Date: 11/20/2018 5:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KUSA_TRACK_SHAPE_Loader_P]
AS
BEGIN
 TRUNCATE TABLE TPE_DS_User.dbo.KUSA_TRACK_SHAPE_Loader
	BULK INSERT  TPE_DS_User.dbo.KUSA_TRACK_SHAPE_Loader
		FROM '\\elm-c-f04\Groups\Business Management\Sales Reporting\Data Mart\SHAPE.csv'
		WITH (FIRSTROW = 2,FIELDTERMINATOR = ',',ROWTERMINATOR = '\n')
	SELECT Getdate() AS 'Last Upload:'
END


GO
/****** Object:  StoredProcedure [dbo].[LIFELINE_P]    Script Date: 11/20/2018 5:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LIFELINE_P]


@TABLEA VARCHAR(128),
@SOURCEA VARCHAR(128),
@SOURCEB VARCHAR(128),
@VIEWA VARCHAR(128),
@VIEWB VARCHAR(128),
@TABLEC VARCHAR(128)

AS

BEGIN

DECLARE @QUERY VARCHAR (1000)






SET @QUERY = ' SELECT
b.Acct,
a.[Mixed Pallet Material],
a.CALENDER_WEEK,
a.[Plan Ship $],
b.Sweetbay,
a.CUSTOMER

INTO ' + @TABLEA + ' 
FROM ' + @SOURCEA + ' a
INNER JOIN '+ @SOURCEB +' b ON a.CUSTOMER = b.Acct';

PRINT @QUERY

EXEC (@QUERY)







SET @QUERY = 'SELECT
a.ACCT,
a.[Mixed Pallet Material],
Sum(a.[Plan Ship $]) AS TOTAL_DOL
INTO ' + @VIEWA + '  

FROM '+ @TABLEA + ' a 
GROUP BY
a.ACCT,
a.[Mixed Pallet Material]';

PRINT @QUERY

EXEC (@QUERY)




SET @QUERY='SELECT
a.[Mixed Pallet Material],
Sum(a.[Plan Ship $]) AS TOTAL_DOL,
a.Sweetbay
INTO ' + @VIEWB + '  

FROM '+ @TABLEA + ' a 
GROUP BY
a.Sweetbay,
a.[Mixed Pallet Material]';

PRINT @QUERY

EXEC (@QUERY)

SET @QUERY = 'DROP TABLE '+ @TABLEC;

PRINT @QUERY

EXEC (@QUERY)

SET @QUERY='SELECT
b.Sweetbay,
a.ACCT,
a.[Mixed Pallet Material],
a.TOTAL_DOL AS TOTAL_BY_ACCT,
b.TOTAL_DOL AS TOTAL_SWEETBAY,
CASE
WHEN a.TOTAL_DOL=0 THEN 0
ELSE (CASE WHEN b.TOTAL_DOL =0 THEN 0
           ELSE a.TOTAL_DOL/b.TOTAL_DOL
           END)
END AS PERCENT_LIFELINE
INTO '+ @TABLEC + ' 
FROM ' + @VIEWA + ' a
INNER JOIN '+ @VIEWB + '  b ON a.[Mixed Pallet Material] = b.[Mixed Pallet Material]';

PRINT @QUERY

EXEC (@QUERY)


SET @QUERY = 'DROP TABLE '+ @TABLEA;

PRINT @QUERY

EXEC (@QUERY)

SET @QUERY = 'DROP TABLE '+ @VIEWA;

PRINT @QUERY

EXEC (@QUERY)


SET @QUERY = 'DROP TABLE '+ @VIEWB;

PRINT @QUERY

EXEC (@QUERY)



END

GO
/****** Object:  StoredProcedure [dbo].[LOAD_BA_TPM]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[LOAD_BA_TPM]
@TABLENAME VARCHAR(128),
@FILENAME VARCHAR(500)
AS
BEGIN
DECLARE @QUERY VARCHAR(1000)
SET @QUERY ='BULK INSERT ' + @TABLENAME + 
' FROM ' + @FILENAME +  ' WITH (FIELDTERMINATOR = '','',ROWTERMINATOR = ''\n'')';
PRINT @QUERY

EXEC (@QUERY)
END

GO
/****** Object:  StoredProcedure [dbo].[LOAD_TABLE]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LOAD_TABLE]
@TABLENAME VARCHAR(128),
@FILENAME VARCHAR(500)
AS
BEGIN
DECLARE @QUERY VARCHAR(1000)
SET @QUERY ='BULK INSERT ' + @TABLENAME + 
' FROM ' + @FILENAME +  ' WITH (FIELDTERMINATOR = '','',ROWTERMINATOR = ''\n'')';
PRINT @QUERY

EXEC (@QUERY)
END

GO
/****** Object:  StoredProcedure [dbo].[LOAD_TABLE_CSV_RW2]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LOAD_TABLE_CSV_RW2]
@TABLENAME VARCHAR(128),
@FILENAME VARCHAR(500)
AS
BEGIN
DECLARE @QUERY VARCHAR(1000)
SET @QUERY ='BULK INSERT ' + @TABLENAME + 
' FROM ' + @FILENAME +  ' WITH (FIRSTROW = 2,FIELDTERMINATOR = '','',ROWTERMINATOR = ''\n'')';
PRINT @QUERY

EXEC (@QUERY)
END

GO
/****** Object:  StoredProcedure [dbo].[LOAD_TABLE_TAB_RW2]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LOAD_TABLE_TAB_RW2]
@TABLENAME VARCHAR(128),
@FILENAME VARCHAR(500)
AS
BEGIN
DECLARE @QUERY VARCHAR(1000)
SET @QUERY ='BULK INSERT ' + @TABLENAME + 
' FROM ' + @FILENAME +  ' WITH (FIRSTROW = 2,FIELDTERMINATOR = ''\t'',ROWTERMINATOR = ''\n'')';
PRINT @QUERY

EXEC (@QUERY)
END


GO
/****** Object:  StoredProcedure [dbo].[MASTER_TAB]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MASTER_TAB]


@TABLEA VARCHAR(128),
@TABLEB VARCHAR(128),
@TABLEC VARCHAR(128),
@VIEWA VARCHAR(128),
@VIEWB VARCHAR(128),
@VIEWC VARCHAR(128),
@VIEWD VARCHAR(128),
@VIEWE VARCHAR(128)


AS

BEGIN

DECLARE @QUERY VARCHAR (1000)


------Create table for ALL combinations Consensus VIEWA





SET @QUERY='SELECT DISTINCT
a.[Mixed Pallet Material],
a.CUSTOMER

INTO ' + @VIEWA + ' FROM ' + @TABLEA + ' a ';

PRINT @QUERY

EXEC (@QUERY)

------Create table for ALL combinations TPM VIEWB





SET @QUERY='SELECT DISTINCT
a.[Mixed Pallet Material],
a.CUSTOMER

INTO ' + @VIEWB + ' FROM ' + @TABLEB + ' a ';

PRINT @QUERY

EXEC (@QUERY)

------Append ALL combinations TPM and Consensus  VIEWC



SET @QUERY='SELECT *

INTO ' + @VIEWC + ' 
FROM '+ @VIEWA + '
UNION ALL

SELECT * 
FROM ' + @VIEWB ;

PRINT @QUERY

EXEC (@QUERY)

------Remove dup-records from appended table VIEWD



SET @QUERY='SELECT DISTINCT *

INTO ' + @VIEWD + ' 
FROM '+ @VIEWC ;

PRINT @QUERY

EXEC (@QUERY)


------Create distinct week table




SET @QUERY= ' SELECT DISTINCT 
a.CALENDER_WEEK

INTO ' + @VIEWE + ' 
FROM '+ @TABLEB + ' a ';

PRINT @QUERY

EXEC (@QUERY)

------Create Master Table

SET @QUERY = 'DROP TABLE '+ @TABLEC;

PRINT @QUERY

EXEC (@QUERY)


SET @QUERY=' SELECT * INTO '+ @TABLEC + ' 

FROM ' + @VIEWE + ',' +@VIEWD;

PRINT @QUERY

EXEC (@QUERY)


SET @QUERY = 'DROP TABLE '+ @VIEWA;

PRINT @QUERY

EXEC (@QUERY)


SET @QUERY = 'DROP TABLE '+ @VIEWB;

PRINT @QUERY

EXEC (@QUERY)


SET @QUERY = 'DROP TABLE '+ @VIEWC;

PRINT @QUERY

EXEC (@QUERY)

SET @QUERY = 'DROP TABLE '+ @VIEWD;

PRINT @QUERY

EXEC (@QUERY)


SET @QUERY = 'DROP TABLE '+ @VIEWE;

PRINT @QUERY

EXEC (@QUERY)

END

GO
/****** Object:  StoredProcedure [dbo].[NIELSEN_AMPS_DATA_UPDATE]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NIELSEN_AMPS_DATA_UPDATE]

AS

BEGIN

DECLARE @QUERY VARCHAR (8000)

SET @QUERY = '

TRUNCATE TABLE TPE_DS_User.dbo.KLG_NIEL_AMPS_US_SRC

BULK INSERT TPE_DS_User.dbo.KLG_NIEL_AMPS_US_SRC
 FROM ''\\salesbus\Insight\BusMgt\Source Data\Syndicated\Nielsen\Data\AMPS Data\Nielsen_export.csv''
WITH (KEEPIDENTITY, FIRSTROW=2, FIELDTERMINATOR = '','' ,ROWTERMINATOR = ''\n'')


TRUNCATE TABLE TPE_DS_User.dbo.KLG_NIEL_PRODUCT_XREF

BULK INSERT TPE_DS_User.dbo.KLG_NIEL_PRODUCT_XREF
 FROM ''\\salesbus\Insight\BusMgt\Source Data\Product\Product Xref.csv''
WITH (KEEPIDENTITY, FIRSTROW=2, FIELDTERMINATOR = '','' ,ROWTERMINATOR = ''\n'')


TRUNCATE TABLE TPE_DS_User.dbo.KLG_NIEL_PRODUCT_SHARE_MAP

BULK INSERT TPE_DS_User.dbo.KLG_NIEL_PRODUCT_SHARE_MAP
 FROM ''\\salesbus\Insight\BusMgt\Source Data\Product\Share Map.csv''
WITH (KEEPIDENTITY, FIRSTROW=2, FIELDTERMINATOR = '','' ,ROWTERMINATOR = ''\n'')

TRUNCATE TABLE TPE_DS_User.dbo.KLG_NIEL_AMPS_MARKET_ATT

BULK INSERT TPE_DS_User.dbo.KLG_NIEL_AMPS_MARKET_ATT
 FROM ''\\salesbus\Insight\BusMgt\Source Data\Product\Markets AMPS.csv''
WITH (KEEPIDENTITY, FIRSTROW=2, FIELDTERMINATOR = '','' ,ROWTERMINATOR = ''\n'')

';

PRINT @QUERY
EXEC (@QUERY)


SET @QUERY = '

SELECT

b.[Source Tab],
b.[Database Name],

AVG(a.Dol) AS Dol,

a.[All Markets],
a.[All Periods],

AVG (a.[Base Unit Price]) AS [Base Unit Price],
AVG(a.[Base Unit Price YA]) AS [Base Unit Price YA],
AVG(a.[Avg # of Items]) AS [Avg # of Items],
AVG(a.[Avg # of Items]-a.[Avg # of Items CYA]) AS [Avg # of Items YA],
AVG(a.[Any Disp # Disp]) AS [Any Disp # Disp],
AVG (a.[Any Disp # Disp CYA]) AS [Any Disp # Disp CYA]

INTO TPE_DS_User.dbo.AMPS_temp1

FROM
TPE_DS_User.dbo.KLG_NIEL_AMPS_US_SRC a
RIGHT JOIN TPE_DS_User.dbo.KLG_NIEL_PRODUCT_SHARE_MAP b
ON a.[Source Tab] = b.[Source Tab]
AND a.[All Products]=b.[Database Name]

GROUP BY

b.[Source Tab],
b.[Database Name],

a.[All Markets],
a.[All Periods]


';

PRINT @QUERY
EXEC (@QUERY)





SET @QUERY = '

SELECT

a.[All Products] AS ALL_PRODUCTS_B,

a.[All Markets]+c.[Share To]+a.[All Products]+a.[All Periods] AS COMBO,
a.[All Markets],
c.[Share To]+a.[All Products] AS [All Products] ,
a.[All Periods],
a.Dol,
a.[Dol % Chg YA],
a.[Base $ % Chg YA],
a.[Dol CYA],
a.[Incr $],
a.[Incr $ YA],
a.[EQ % Chg YA],
a.[Units % Chg YA],
a.[Dol Shr - Prompt], 
a.[Dol Shr CYA - Prompt],
a.[Any Promo $ % Chg YA],
a.[No Promo $ % Chg YA],
a.[% $ No Promo],
a.[Avg EQ Price CYA],
a.[Avg EQ Price],
a.[Base Unit Price YA],
a.[Base Unit Price],
a.[Base Unit Price CYA],
a.[Avg Unit Price],
a.[Avg Unit Price CYA],
a.[Qual Unit Price],
a.[Qual Unit Price CYA],
a.[Any Disp # Disp],
a.[Any Disp # Disp CYA],
a.[Dol / $MM ACV / Item],
a.[Dol / $MM ACV / Item CYA],
a.[%ACV],
a.[%ACV CYA],
a.TDP,
a.[TDP % Chg YA],
a.[Avg # of Items],
a.[Avg # of Items CYA],
a.[Any Promo Units % Lift],
a.[Any Promo Units % Lift CYA],
a.[% Units Any Promo],
a.[% Units Any Promo CYA],
a.[Any Disp %ACV],
a.[Any Disp %ACV CYA],
a.[Qual CWW],
a.[Qual CWW CYA],
a.[Feat & Disp %ACV / Any Feat %ACV],
a.[Feat & Disp %ACV / Any Feat %ACV CYA],

CASE
WHEN a.[Incr $ YA]<0
THEN ((a.[Incr $]/  (CASE WHEN a.[Incr $ YA]=0 THEN 1 ELSE a.[Incr $ YA] END) -1)*-1)*100
ELSE ((a.[Incr $]/   (CASE WHEN a.[Incr $ YA]=0 THEN 1 ELSE a.[Incr $ YA] END)-1)*100)
END  AS [Incremental % Chg vs YA],

ROUND(a.[Base Unit Price]-b.[Base Unit Price],3) AS [Base U Price Gap],

ROUND((ROUND(a.[Base Unit Price]-b.[Base Unit Price],3))-(a.[Base Unit Price YA]-b.[Base Unit Price YA]),3) AS [Base U Price Gap Chg vs YA],

ROUND(((a.[Avg # of Items]/b.[Avg # of Items])*100)/ (CASE WHEN a.[Dol Shr - Prompt]=0 THEN 1 ELSE a.[Dol Shr - Prompt] END) ,3)*100 AS [Item Share of Category],



ROUND(    (ROUND(((a.[Avg # of Items]/b.[Avg # of Items])*100)/ (CASE WHEN a.[Dol Shr - Prompt]=0 THEN .00000001 ELSE a.[Dol Shr - Prompt] END) ,3)*100)     - 
(((((a.[Avg # of Items]-a.[Avg # of Items CYA])*100)/ ( CASE WHEN b.[Avg # of Items YA]=0 THEN 1 ELSE b.[Avg # of Items YA] END ))/(( CASE WHEN a.[Dol Shr - Prompt]-a.[Dol Shr CYA - Prompt]=0 THEN .0000001 ELSE a.[Dol Shr - Prompt]-a.[Dol Shr CYA - Prompt] END )))*100),3) AS [Item Share of Category CYA],


  ROUND(   ((a.[Any Disp # Disp]/(CASE WHEN b.[Any Disp # Disp]=0 THEN 1 ELSE b.[Any Disp # Disp] END) )*100),3) AS [Display Share], 


  ROUND(((a.[Any Disp # Disp]-a.[Any Disp # Disp CYA])/ 
(CASE WHEN (b.[Any Disp # Disp]-b.[Any Disp # Disp CYA])=0 THEN 1 ELSE 
(b.[Any Disp # Disp]-b.[Any Disp # Disp CYA]) END))*100,3) AS [Display Share YA],


ROUND(   ((a.[Any Disp # Disp]/(CASE WHEN b.[Any Disp # Disp]=0 THEN 1 ELSE b.[Any Disp # Disp] END) )*100),3) -
  ROUND(((a.[Any Disp # Disp]-a.[Any Disp # Disp CYA])/ 
(CASE WHEN (b.[Any Disp # Disp]-b.[Any Disp # Disp CYA])=0 THEN 1 ELSE 
(b.[Any Disp # Disp]-b.[Any Disp # Disp CYA]) END))*100,3) AS [Declining Display Share],





(ROUND(   ((a.[Any Disp # Disp]/
(CASE WHEN b.[Any Disp # Disp]= 0  THEN 1 ELSE b.[Any Disp # Disp] END) )*100),3) / 
(CASE WHEN a.[Dol Shr - Prompt]=0 THEN 1 ELSE a.[Dol Shr - Prompt] END))*100 AS [Display/Dollar Index],



 (ROUND(((a.[Any Disp # Disp]-a.[Any Disp # Disp CYA])/ 
(CASE WHEN (b.[Any Disp # Disp]-b.[Any Disp # Disp CYA])=0 
THEN 1 
ELSE (b.[Any Disp # Disp]-b.[Any Disp # Disp CYA]) 
END))*100,3)/
(CASE WHEN (a.[Dol Shr - Prompt]-a.[Dol Shr CYA - Prompt])=0
THEN 1 ELSE (a.[Dol Shr - Prompt]-a.[Dol Shr CYA - Prompt])END))*100
 AS [Display/Dollar Index YAG],

((ROUND(   ((a.[Any Disp # Disp]/
(CASE WHEN b.[Any Disp # Disp]= 0  THEN 1 ELSE b.[Any Disp # Disp] END) )*100),3) / 
(CASE WHEN a.[Dol Shr - Prompt]=0 THEN 1 ELSE a.[Dol Shr - Prompt] END))*100)-
( (ROUND(((a.[Any Disp # Disp]-a.[Any Disp # Disp CYA])/ 
(CASE WHEN (b.[Any Disp # Disp]-b.[Any Disp # Disp CYA])=0 
THEN 1 
ELSE (b.[Any Disp # Disp]-b.[Any Disp # Disp CYA]) 
END))*100,3)/
(CASE WHEN (a.[Dol Shr - Prompt]-a.[Dol Shr CYA - Prompt])=0
THEN 1 ELSE (a.[Dol Shr - Prompt]-a.[Dol Shr CYA - Prompt])END))*100) AS [Display/Dollar Index CYA],





a.[Any Promo Unit Price % Disc],
a.[Any Promo Unit Price % Disc CYA],
a.[% Subsidized Units],
a.[% Subsidized Units CYA] AS [Subsidized Base Unit Chg vs YA]



INTO TPE_DS_User.dbo.AMPS_temp2

FROM
TPE_DS_User.dbo.KLG_NIEL_AMPS_US_SRC a
LEFT JOIN TPE_DS_User.dbo.AMPS_temp1 b
ON a.[Source Tab] = b.[Source Tab]
AND a.[All Markets]=b.[All Markets]
AND a.[All Periods]=b.[All Periods]
INNER JOIN  TPE_DS_User.dbo.KLG_NIEL_PRODUCT_SHARE_MAP c
ON a.[Source Tab] = c.[Source Tab]


';

PRINT @QUERY
EXEC (@QUERY)



SET @QUERY = '
SELECT

b.[All Products] AS ALL_PRODUCTS,
b.Category,
b.Mask,
b.[Nielsen Name],
b.[Order],
b.[Level],
b.Agg,
b.[Level Name],
b.Brand,
b.Corp,
b.Segment,
b.[Sub Segment],
b.[BW Category],
b.[BW BU],
b.[BW Number],
b.[BW Name],
b.[Profit Center]

INTO TPE_DS_User.dbo.KLG_AMPS_JOE_ATT

FROM
TPE_DS_User.dbo.KLG_NIEL_PRODUCT_XREF b


';

PRINT @QUERY
EXEC (@QUERY)




SET @QUERY = '


SELECT
*,
Right (a.[All Periods],8) As Week_Ending,
Left (a.[All Periods], Len (a.[All Periods])-16) As Time

INTO TPE_DS_User.dbo.KLG_AMPS_WITH_JOE_ATT

FROM
TPE_DS_User.dbo.KLG_AMPS_JOE_ATT b
INNER JOIN TPE_DS_User.dbo.AMPS_temp2 a ON b.ALL_PRODUCTS = a.ALL_PRODUCTS_B 



';

PRINT @QUERY
EXEC (@QUERY)






SET @QUERY = '


Drop Table TPE_DS_User.dbo.KLG_AMPS_US_FINAL

SELECT


a.ALL_PRODUCTS,           
a.Category,         
a.Mask,                
a.[Nielsen Name],           
a.[Order],            
a.[Level],             
a.Agg,   
a.[Level Name],                
a.Brand,               
a.Corp, 
a.Segment,         
a.[Sub Segment],             
a.[BW Category],             
a.[BW BU],          
a.[BW Number],               
a.[BW Name],   
a.[Profit Center],             
a.COMBO,           
a.[All Markets], 
a.[All Products],                
a.[All Periods],  
a.Dol,
a.[Dol % Chg YA],
a.[Base $ % Chg YA],       
a.[Dol CYA],
a.[EQ % Chg YA],
a.[Incr $],
a.[Incr $ YA],              
a.[Units % Chg YA],         
a.[Dol Shr - Prompt],
a.[Dol Shr CYA - Prompt],
a.[Any Promo $ % Chg YA],          
a.[No Promo $ % Chg YA],            
a.[% $ No Promo],           
a.[Avg EQ Price CYA],     
a.[Avg EQ Price],              
a.[Base Unit Price YA],   
a.[Base Unit Price],         
a.[Base Unit Price CYA],                
a.[Avg Unit Price],           
a.[Avg Unit Price CYA],  
a.[Qual Unit Price],          
a.[Qual Unit Price CYA], 
a.[Any Disp # Disp],         
a.[Any Disp # Disp CYA],                
a.[Dol / $MM ACV / Item],
a.[Dol / $MM ACV / Item CYA],
a.[%ACV],           
a.[%ACV CYA],  
a.TDP,   
a.[TDP % Chg YA],            
a.[Avg # of Items],          
a.[Avg # of Items CYA], 
a.[Any Promo Units % Lift],         
a.[Any Promo Units % Lift CYA],                
a.[% Units Any Promo], 
a.[% Units Any Promo CYA],        
a.[Any Disp %ACV],         
a.[Any Disp %ACV CYA],                
a.[Qual CWW],  
a.[Qual CWW CYA],         
a.[Feat & Disp %ACV / Any Feat %ACV],                
a.[Feat & Disp %ACV / Any Feat %ACV CYA],       
a.[Incremental % Chg vs YA],      
a.[Base U Price Gap],     
a.[Base U Price Gap Chg vs YA], 
a.[Item Share of Category],         
a.[Item Share of Category CYA],                
a.[Display Share],             
a.[Display Share YA],      
a.[Declining Display Share],         
a.[Display/Dollar Index],               
a.[Any Promo Unit Price % Disc],               
a.[Any Promo Unit Price % Disc CYA],      
a.[% Subsidized Units],  
a.[Subsidized Base Unit Chg vs YA],
a.[Display/Dollar Index CYA],
a.[Display/Dollar Index YAG],
         
a.Week_Ending,               
a.[Time],
b.[MKT Mask],
b.[Mkt Sort Order],
b.[Mkt Grouping Level],
b.[All Regions],
b.[Executive],
b.[East],
b.[West],
b.[Channels],
b.[Totals], 
b.[Customer],
b.[Customer Sort Order] 
         

INTO TPE_DS_User.dbo.KLG_AMPS_US_FINAL
FROM TPE_DS_User.dbo.KLG_AMPS_WITH_JOE_ATT a

left join TPE_DS_User.dbo.KLG_NIEL_AMPS_MARKET_ATT b
on  a.[All Markets]= b.[All Markets]

';

PRINT @QUERY
EXEC (@QUERY)

SET @QUERY = '
DROP TABLE TPE_DS_User.dbo.AMPS_temp1
DROP TABLE TPE_DS_User.dbo.AMPS_temp2
DROP TABLE TPE_DS_User.dbo.KLG_AMPS_JOE_ATT
Drop Table TPE_DS_User.dbo.KLG_AMPS_WITH_JOE_ATT

';

PRINT @QUERY
EXEC (@QUERY)


END

GO
/****** Object:  StoredProcedure [dbo].[NIELSEN_AMPS_TABLEAU_DATA_UPDATE]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NIELSEN_AMPS_TABLEAU_DATA_UPDATE]

AS

BEGIN

DECLARE @QUERY VARCHAR (8000)

SET @QUERY = '


TRUNCATE TABLE TPE_DS_User.dbo.KLG_AOD_NIELSEN_AMPS_TABLEAU

BULK INSERT TPE_DS_User.dbo.KLG_AOD_NIELSEN_AMPS_TABLEAU
 FROM ''\\salesbus\Insight\BusMgt\Source Data\Syndicated\Nielsen\Data\AMPS Tableau\Nielsen_export.csv''
WITH (KEEPIDENTITY, FIRSTROW=2, FIELDTERMINATOR = '','' ,ROWTERMINATOR = ''\n'')




';

PRINT @QUERY
EXEC (@QUERY)




END

GO
/****** Object:  StoredProcedure [dbo].[NIELSEN_ICEBERGS_DATA_UPDATE]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NIELSEN_ICEBERGS_DATA_UPDATE]

AS

BEGIN

DECLARE @QUERY VARCHAR (8000)

SET @QUERY = '



TRUNCATE TABLE TPE_DS_User.dbo.KLG_AOD_NIELSEN_ICEBERGS_EXPORT1

BULK INSERT TPE_DS_User.dbo.KLG_AOD_NIELSEN_ICEBERGS_EXPORT1
FROM ''\\salesbus\Insight\BusMgt\Source Data\Syndicated\Nielsen\Data\Icebergs\Export1\Nielsen_export.csv''
WITH (KEEPIDENTITY, FIRSTROW=2, FIELDTERMINATOR = '','' ,ROWTERMINATOR = ''\n'')


TRUNCATE TABLE TPE_DS_User.dbo.KLG_AOD_NIELSEN_ICEBERGS_EXPORT2

BULK INSERT TPE_DS_User.dbo.KLG_AOD_NIELSEN_ICEBERGS_EXPORT2
FROM ''\\salesbus\Insight\BusMgt\Source Data\Syndicated\Nielsen\Data\Icebergs\Export2\Nielsen_export.csv''
WITH (KEEPIDENTITY, FIRSTROW=2, FIELDTERMINATOR = '','' ,ROWTERMINATOR = ''\n'')

TRUNCATE TABLE TPE_DS_User.dbo.KLG_AOD_NIELSEN_ICEBERGS_EXPORT3

BULK INSERT TPE_DS_User.dbo.KLG_AOD_NIELSEN_ICEBERGS_EXPORT3
FROM ''\\salesbus\Insight\BusMgt\Source Data\Syndicated\Nielsen\Data\Icebergs\Export3\Nielsen_export.csv''
WITH (KEEPIDENTITY, FIRSTROW=2, FIELDTERMINATOR = '','' ,ROWTERMINATOR = ''\n'')


TRUNCATE TABLE TPE_DS_User.dbo.KLG_AOD_NIELSEN_ICEBERGS_EXPORT4

BULK INSERT TPE_DS_User.dbo.KLG_AOD_NIELSEN_ICEBERGS_EXPORT4
FROM ''\\salesbus\Insight\BusMgt\Source Data\Syndicated\Nielsen\Data\Icebergs\Export4\Nielsen_export.csv''
WITH (KEEPIDENTITY, FIRSTROW=2, FIELDTERMINATOR = '','' ,ROWTERMINATOR = ''\n'')

TRUNCATE TABLE TPE_DS_User.dbo.KLG_AOD_Share_To_Mapping_Icebergs

BULK INSERT TPE_DS_User.dbo.KLG_AOD_Share_To_Mapping_Icebergs
FROM ''\\salesbus\Insight\BusMgt\Source Data\Syndicated\Nielsen\Mapping\Share To Mapping Icebergs.csv''
WITH (KEEPIDENTITY, FIRSTROW=2, FIELDTERMINATOR = '','' ,ROWTERMINATOR = ''\n'')

';

PRINT @QUERY
EXEC (@QUERY)


SET @QUERY = '

SELECT *,
'''' AS [KEL_SUB-SEGMENT],
'''' AS KEL_SEGMENT

INTO TPE_DS_User.dbo.KLG_ICEBERG_TEMP1
FROM TPE_DS_User.dbo.[KLG_AOD_NIELSEN_ICEBERGS_EXPORT2]

--------------------------------------------------------------
---******************************************************

SELECT *,
'''' AS [KEL_SUB-SEGMENT],
'''' AS KEL_SEGMENT

INTO TPE_DS_User.dbo.KLG_ICEBERG_TEMP2
FROM TPE_DS_User.dbo.[KLG_AOD_NIELSEN_ICEBERGS_EXPORT3]

-----------------------------------------------------------
--*******************************************************

SELECT 
a.[Source File],
a.[Source Tab],
a.[Extract Date],
a.[All Markets],
a.[All Products],
a.[All Periods],
a.[$],
a.[$ % Chg YA],
a.[Base $ % Chg YA],
a.[Incr $ % Chg YA],
a.[$ Shr - Prompt],
a.[$ Shr CYA - Prompt],
a.[KEL_CATEGORY],
'''' AS KEL_SEGMENT,
a.[KEL_SUB-SEGMENT]


INTO TPE_DS_User.dbo.KLG_ICEBERG_TEMP3
FROM TPE_DS_User.dbo.[KLG_AOD_NIELSEN_ICEBERGS_EXPORT1] a


-------------------------------------------------------------
---**********************************************************

SELECT *,
'''' AS [KEL_SUB-SEGMENT]

INTO TPE_DS_User.dbo.KLG_ICEBERG_TEMP4
FROM TPE_DS_User.dbo.[KLG_AOD_NIELSEN_ICEBERGS_EXPORT4]


---*************************************************
--***********************************************

SELECT * 

INTO TPE_DS_User.dbo.KLG_ICEBERG_TEMP5

FROM TPE_DS_User.dbo.KLG_ICEBERG_TEMP1  
UNION ALL 

SELECT * 
FROM TPE_DS_User.dbo.KLG_ICEBERG_TEMP2

UNION ALL 

SELECT * 
FROM TPE_DS_User.dbo.KLG_ICEBERG_TEMP3

UNION ALL 

SELECT * 
FROM TPE_DS_User.dbo.KLG_ICEBERG_TEMP4


----------------------******
----------**********************************************************************


DROP TABLE TPE_DS_User.dbo.KLG_AOD_NIELSEN_ICEBERGS_FINAL_TABLE

SELECT
a.[Source File],
a.[Source Tab],
a.[Extract Date],
a.[All Markets],
a.[All Products],
a.[All Periods],
a.[$],
a.[$ % Chg YA],
a.[Base $ % Chg YA],
a.[Incr $ % Chg YA],
a.[$ Shr - Prompt],
a.[$ Shr CYA - Prompt],
a.[KEL_CATEGORY],
a.KEL_SEGMENT,
a.[KEL_SUB-SEGMENT],
b.Category

INTO TPE_DS_User.dbo.KLG_AOD_NIELSEN_ICEBERGS_FINAL_TABLE

FROM TPE_DS_User.dbo.KLG_ICEBERG_TEMP5 a
LEFT JOIN TPE_DS_User.dbo.KLG_AOD_Share_To_Mapping_Icebergs b
ON a.[Source Tab]=b.[Source Tab]


--********************************************
DROP TABLE TPE_DS_User.dbo.KLG_ICEBERG_TEMP5

DROP TABLE TPE_DS_User.dbo.KLG_ICEBERG_TEMP1  
DROP TABLE TPE_DS_User.dbo.KLG_ICEBERG_TEMP2

DROP TABLE TPE_DS_User.dbo.KLG_ICEBERG_TEMP3
DROP TABLE  TPE_DS_User.dbo.KLG_ICEBERG_TEMP4







';

PRINT @QUERY
EXEC (@QUERY)


END


GO
/****** Object:  StoredProcedure [dbo].[QC_FOR_CON_TPM]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[QC_FOR_CON_TPM]

@OBJECTA VARCHAR(128)

AS

BEGIN

----DROP THE TABLE TO OVERRIDE IT

DECLARE 
@QUERY VARCHAR (1000),
@QUERYB VARCHAR (1000),
@QUERYC VARCHAR (1000),
@QUERYD VARCHAR (1000)






SET @QUERYC = ' SELECT

a.CUSTOMER,
sum(a.[Plan Ship $]) AS TOT_PLAN,
c.BUSINESS_UNIT,
d.PT_NAME,
d.Level_B,
e.PROD_HIER_TEXT5 AS Type,
e.PROD_H5 AS Type_Num,
b.PERIOD



INTO TPE_DS_User.dbo.FOR_QC_TPM

FROM
TPE_DS_User.dbo.KLG_TPE_TPM_2016_ALL_VERSIONS AS a
LEFT JOIN TPE_DS_Target.dbo.KLG_TPE_TIME_DIM_TGT AS b ON b.[BW Week]= a.[CALENDER_WEEK]
LEFT JOIN TPE_DS_Target.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT AS c ON c.CUST_MAT= a.CUSTOMER AND c.MIXED_PAL_MATERIAL= a.[Mixed Pallet Material]
LEFT JOIN TPE_DS_Target.dbo.KLG_TPE_PLANTO_MAP_DIM_USR AS d ON d.PT#_TEXT = a.CUSTOMER
LEFT JOIN TPE_DS_Target.dbo.KLG_TPE_MATERIAL_DIM_TGT AS e ON e.MIXED_PAL_MATERIAL= a.[Mixed Pallet Material] 

GROUP BY

a.CUSTOMER,
c.BUSINESS_UNIT,
d.PT_NAME,
d.Level_B,
e.PROD_HIER_TEXT5,
e.PROD_H5,
b.PERIOD ';

PRINT @QUERYC

EXEC (@QUERYC)




SET @QUERYD = ' SELECT 
a.CUSTOMER,

sum(a.[CONSENSUS_GSV]) AS TOT_CON,
c.BUSINESS_UNIT,
d.PT_NAME,
d.Level_B,
e.PROD_HIER_TEXT5 AS Type,
e.PROD_H5 AS Type_Num,
b.PERIOD


INTO TPE_DS_User.dbo.FOR_QC_CON

FROM
TPE_DS_User.dbo.CON_LIFELINE_DISAG AS a
LEFT JOIN TPE_DS_Target.dbo.KLG_TPE_TIME_DIM_TGT AS b ON b.[BW Week]= a.[CALENDER_WEEK]
LEFT JOIN TPE_DS_Target.dbo.KLG_TPE_ZCUST_MAT_DIM_TGT AS c ON c.CUST_MAT= a.CUSTOMER AND c.MIXED_PAL_MATERIAL= a.[Mixed Pallet Material]
LEFT JOIN TPE_DS_Target.dbo.KLG_TPE_PLANTO_MAP_DIM_USR AS d ON d.PT#_TEXT = a.CUSTOMER
LEFT JOIN TPE_DS_Target.dbo.KLG_TPE_MATERIAL_DIM_TGT AS e ON e.MIXED_PAL_MATERIAL= a.[Mixed Pallet Material] 

GROUP BY

a.CUSTOMER,
c.BUSINESS_UNIT,
d.PT_NAME,
d.Level_B,
e.PROD_HIER_TEXT5,
e.PROD_H5,
b.PERIOD ';

PRINT @QUERYD

EXEC (@QUERYD)



SET @QUERY = '
	SELECT
	dbo.FOR_QC_CON.CUSTOMER,
	dbo.FOR_QC_CON.PT_NAME,
	dbo.FOR_QC_CON.BUSINESS_UNIT,
	dbo.FOR_QC_CON.Type,
	dbo.FOR_QC_CON.Type_Num,
	dbo.FOR_QC_CON.TOT_CON,
	dbo.FOR_QC_TPM.TOT_PLAN,
	dbo.FOR_QC_CON.PERIOD

INTO TPE_DS_User.dbo.TPM_AND_CON_FOR_QC

	FROM
	dbo.FOR_QC_CON
	LEFT JOIN dbo.FOR_QC_TPM ON dbo.FOR_QC_CON.CUSTOMER = dbo.FOR_QC_TPM.CUSTOMER 
	AND dbo.FOR_QC_CON.Type_Num = dbo.FOR_QC_TPM.Type_Num AND dbo.FOR_QC_CON.PERIOD = dbo.FOR_QC_TPM.PERIOD';


 IF (@OBJECTA) IS NOT NULL
 
	BEGIN

    

		SET @QUERYB = 'DROP TABLE ' + @OBJECTA ;

		PRINT @QUERYB

		EXEC (@QUERYB)



		PRINT @QUERY

		EXEC (@QUERY)    
 

	END

	ELSE

	BEGIN


		PRINT @QUERY

		EXEC (@QUERY)

  END



SET @QUERYC = 'DROP TABLE TPE_DS_User.dbo.FOR_QC_TPM';

PRINT @QUERYC

EXEC (@QUERYC)


SET @QUERYD= 'DROP TABLE TPE_DS_User.dbo.FOR_QC_CON ';

PRINT @QUERYD

EXEC (@QUERYD)



END

GO
/****** Object:  StoredProcedure [dbo].[STORE_VARIABLE]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STORE_VARIABLE]


@TABLE_A VARCHAR(128)


AS

BEGIN

DECLARE 
@QUERY VARCHAR (1000),
@LEVEL_ VARCHAR(128)




SET @QUERY = 'SELECT ' +@LEVEL_+'= a.HIERARCHY  from '+ @TABLE_A +'a where a.[LEVEL] =''LEVEL_A''';

PRINT @QUERY

EXEC (@QUERY)



SET @QUERY = 'SELECT a.HIERARCHY INTO TPE_DS_User.dbo.TPE_DS_User.dbo.Hierarchy_temp29 FROM '+ @TABLE_A +' a

WHERE a.[LEVEL]=' + @LEVEL_;

PRINT @QUERY

EXEC (@QUERY)

END

GO
/****** Object:  StoredProcedure [dbo].[USP_KNA_MKTG_MATRL_ALT_UOM_MSTR]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_KNA_MKTG_MATRL_ALT_UOM_MSTR]
@USER_ERR_MSG NVARCHAR (2048) OUTPUT, @INS_CNT INT OUTPUT, @UPD_CNT INT OUTPUT, @DEL_CNT INT OUTPUT
AS
/*******************************************************************************************
   
   NAME        :  USP_KNA_MKTG_MATRL_ALT_UOM_MSTR
   PURPOSE & 
   Description :  This SP reads all the related source tables that are exact copy of SAP ECC system and builds transformed table.
                        
  REVISIONS:
   Ver          Date             AuthOR                     Change Reason
   ------    ----------      ---------------         ---------------------------------------
   1.0         04/26/2017       USCNXM74                1. Initial Version
   ------    ----------      ---------------         ---------------------------------------
--------------------------Execution Script--------------------------------------------------
Declare 
@USER_ERR_MSG_VAR  NVARCHAR(2048) ,
@INS_CNT_VAR       INT , 
@UPD_CNT_VAR       INT , 
@DEL_CNT_VAR       INT 

       EXEC USP_KNA_MKTG_MATRL_ALT_UOM_MSTR
		         @USER_ERR_MSG = @USER_ERR_MSG_VAR OUTPUT 
				,@INS_CNT      = @INS_CNT_VAR      OUTPUT
				,@UPD_CNT      = @UPD_CNT_VAR      OUTPUT
				,@DEL_CNT      = @DEL_CNT_VAR      OUTPUT

SELECT @USER_ERR_MSG_VAR ,@INS_CNT_VAR, @UPD_CNT_VAR, @DEL_CNT_VAR
*********************************************************************************/
BEGIN
    DECLARE @VAR1 AS NVARCHAR (2048);
    BEGIN TRY
        /*********************MAIN LOGIC IN STOREDPROCEDURE ****************************/
		-- BUILD A TEMPORARY TABLE WITH ALL REQUIRED COLUMNS AND MORE.
		-- RETAIN THE GRANULARITY CLOSE TO FINAL TABLE, ANYTHIG THAT DISTURBS GRANULARTY UPDATE LATER ON.
			IF OBJECT_ID('tempdb..#TEMPT1') IS NOT NULL
			   DROP TABLE #TEMPT1;
			SELECT 
			 MARM.MATNR  AS MATRL_ID 
			,CAST( '' AS VARCHAR(18)) AS BASE_MATRL
			,MAX(CASE WHEN MARM.MEINH = 'CS'   THEN  MARM.EAN11  ELSE NULL  END)  AS  CS_EAN_UPC
			,CAST (NULL AS VARCHAR(18))                                           AS  CS_GTIN 
			,CAST (NULL AS VARCHAR(18))                                           AS  CS_UPC
			,MAX(CASE WHEN MARM.MEINH = 'CS'   THEN  MARM.GEWEI  ELSE NULL  END)  AS  CS_WGT_UNIT
			,MAX(CASE WHEN MARM.MEINH = 'CS'   THEN  MARM.BRGEW  ELSE NULL  END)  AS  CS_GROS_WGT
			,MAX(CASE WHEN MARM.MEINH = 'CS'   THEN  MARM.MEABM  ELSE NULL  END)  AS  CS_SZ_UNIT
			,MAX(CASE WHEN MARM.MEINH = 'CS'   THEN  MARM.HOEHE  ELSE NULL  END)  AS  CS_HGT
			,MAX(CASE WHEN MARM.MEINH = 'CS'   THEN  MARM.LAENG  ELSE NULL  END)  AS  CS_LEN
			,MAX(CASE WHEN MARM.MEINH = 'CS'   THEN  MARM.BREIT  ELSE NULL  END)  AS  CS_WID
			,MAX(CASE WHEN MARM.MEINH = 'CS'   THEN  MARM.VOLEH  ELSE NULL  END)  AS  CS_VOL_UNIT
			,MAX(CASE WHEN MARM.MEINH = 'CS'   THEN  MARM.VOLUM  ELSE NULL  END)  AS  CS_VOL
			,MAX(CASE WHEN MARM.MEINH = 'PKG'  THEN  MARM.EAN11  ELSE NULL  END)  AS  PKG_EAN_UPC
			,CAST (NULL AS VARCHAR(18))                                           AS  PKG_GTIN 
			,CAST (NULL AS VARCHAR(18))                                           AS  PKG_UPC
			,MAX(CASE WHEN MARM.MEINH = 'PKG'  THEN  MARM.GEWEI  ELSE NULL  END)  AS  PKG_WGT_UNIT
			,MAX(CASE WHEN MARM.MEINH = 'PKG'  THEN  MARM.BRGEW  ELSE NULL  END)  AS  PKG_GROS_WGT
			,CAST(NULL AS DECIMAL(17, 3))                                         AS  PKG_NET_WGT
			,MAX(CASE WHEN MARM.MEINH = 'PKG'  THEN  MARM.MEABM  ELSE NULL  END)  AS  PKG_SZ_UNIT
			,MAX(CASE WHEN MARM.MEINH = 'PKG'  THEN  MARM.HOEHE  ELSE NULL  END)  AS  PKG_HGT
			,MAX(CASE WHEN MARM.MEINH = 'PKG'  THEN  MARM.LAENG  ELSE NULL  END)  AS  PKG_LEN
			,MAX(CASE WHEN MARM.MEINH = 'PKG'  THEN  MARM.BREIT  ELSE NULL  END)  AS  PKG_WID
			,MAX(CASE WHEN MARM.MEINH = 'PKG'  THEN  MARM.VOLEH  ELSE NULL  END)  AS  PKG_VOL_UNIT
			,MAX(CASE WHEN MARM.MEINH = 'PKG'  THEN  MARM.VOLUM  ELSE NULL  END)  AS  PKG_VOL
			,MAX(CASE WHEN MARM.MEINH = 'UL'   THEN  MARM.EAN11  ELSE NULL  END)  AS  UL_EAN_UPC
			,CAST (NULL AS VARCHAR(18))                                           AS  UL_GTIN 
			,CAST (NULL AS VARCHAR(18))                                           AS  UL_UPC
			,MAX(CASE WHEN MARM.MEINH = 'UL'   THEN  MARM.GEWEI  ELSE NULL  END)  AS  UL_WGT_UNIT
			,MAX(CASE WHEN MARM.MEINH = 'UL'   THEN  MARM.BRGEW  ELSE NULL  END)  AS  UL_GROS_WGT
			,MAX(CASE WHEN MARM.MEINH = 'UL'   THEN  MARM.MEABM  ELSE NULL  END)  AS  UL_SZ_UNIT
			,MAX(CASE WHEN MARM.MEINH = 'UL'   THEN  MARM.HOEHE  ELSE NULL  END)  AS  UL_HGT
			,MAX(CASE WHEN MARM.MEINH = 'UL'   THEN  MARM.LAENG  ELSE NULL  END)  AS  UL_LEN
			,MAX(CASE WHEN MARM.MEINH = 'UL'   THEN  MARM.BREIT  ELSE NULL  END)  AS  UL_WID
			,MAX(CASE WHEN MARM.MEINH = 'UL'   THEN  MARM.VOLEH  ELSE NULL  END)  AS  UL_VOL_UNIT
			,MAX(CASE WHEN MARM.MEINH = 'UL'   THEN  MARM.VOLUM  ELSE NULL  END)  AS  UL_VOL
			INTO #TEMPT1
			FROM  KNA_ECC.dbo.MARM   (NOLOCK) 
			WHERE 1=1
			AND MARM.MEINH  IN ('CS' , 'PKG' ,'UL')
			------ BELOW LOGIC WAS MENTIONED TO BE USED IN BW TO DERIVE CURRENCY WHICH DOESN'T FIT INTO FINAL TABLE AND HENCE DROPPED
			------AND EXISTS ( SELECT 1 FROM KNA_ECC.dbo.MBEW   (NOLOCK)  
			------               INNER JOIN  KNA_ECC.dbo.T001K  (NOLOCK)  ON  MBEW.BWKEY  =  T001K.BWKEY
			------               INNER JOIN  KNA_ECC.dbo.T001   (NOLOCK)  ON  T001K.BUKRS =  T001.BUKRS
			------	           WHERE MARM.MATNR  =  MBEW.MATNR  
			------	             AND MARM.MEINH  IN ('CS' , 'PKG' ,'UL') AND MBEW.BWKEY IN ('0300', '0400')  )
			GROUP BY MARM.MATNR
			;


			--- BRING NET WEIGHT FROM MARA
			--  MARA UPDATION KEPT SEPARATE AS THE JOIN MIGHT LEAD TO LESS NUMBER OF RECORDS UPDATED FOR WEIGHT.
			UPDATE T1
			SET  PKG_NET_WGT = MARA.NTGEW
			FROM #TEMPT1  T1 
			INNER JOIN KNA_ECC.dbo.MARA   (NOLOCK)  ON  T1.MATRL_ID  =  MARA.MATNR  AND MARA.MEINS  IN ('PKG')--('PKG','CS' ,'UL')
			;
			--- IF THE NETWEIGHT IS RECORDED AGIANST OTHER TYPES WE ARE USING THAT BASED ON INFO FROM BW 
			--- THIS ISN'T WORKING AND HENCE COMMENTING OUT 
/*
			UPDATE T1
			SET  PKG_NET_WGT = CASE WHEN PKG_NET_WGT IS NULL THEN MARA.NTGEW
			                        WHEN PKG_NET_WGT = 0     THEN MARA.NTGEW 
									ELSE PKG_NET_WGT
								END

			FROM #TEMPT1  T1 
			INNER JOIN KNA_ECC.dbo.MARA   (NOLOCK)  ON  T1.MATRL_ID  =  MARA.MATNR  AND MARA.MEINS  IN ('CS')--('PKG','CS' ,'UL')
			;

			UPDATE T1
			SET  PKG_NET_WGT = CASE WHEN PKG_NET_WGT IS NULL THEN MARA.NTGEW
			                        WHEN PKG_NET_WGT = 0     THEN MARA.NTGEW 
									ELSE PKG_NET_WGT
								END

			FROM #TEMPT1  T1 
			INNER JOIN KNA_ECC.dbo.MARA   (NOLOCK)  ON  T1.MATRL_ID  =  MARA.MATNR  AND MARA.MEINS  IN ('UL')--('PKG','CS' ,'UL')
			;
*/
			---  bring base material to the temp table 
			UPDATE T1
			SET  BASE_MATRL  = AUSP.ATWRT
			FROM #TEMPT1  T1 
			INNER JOIN KNA_ECC.dbo.MARA   (NOLOCK)  ON  T1.MATRL_ID  =  MARA.MATNR  
			INNER JOIN KNA_ECC.dbo.INOB   (NOLOCK)  ON  MARA.MATNR   =  INOB.OBJEK AND  INOB.OBTAB= 'MARA' and INOB.KLART = '001' 
			INNER JOIN KNA_ECC.dbo.AUSP   (NOLOCK)  ON  INOB.CUOBJ   =  AUSP.OBJEK AND  AUSP.ATINN = 25 AND AUSP.KLART = '001'
			;
			-- BRING GTIN, UPC FOR EACH TYPE SEPARATELY 

			UPDATE T1
			SET  CS_GTIN   =  CSG.EAN11
			FROM #TEMPT1 T1
			INNER JOIN KNA_ECC.dbo.MEAN  CSG  (NOLOCK)  ON  T1.MATRL_ID  =  CSG.MATNR  AND CSG.MEINH = 'CS'  AND CSG.EANTP = 'ZG'
			;

			UPDATE T1
			SET  CS_UPC    =  CSU.EAN11
			FROM #TEMPT1 T1
			INNER JOIN KNA_ECC.dbo.MEAN  CSU  (NOLOCK)  ON  T1.MATRL_ID  =  CSU.MATNR  AND CSU.MEINH = 'CS'  AND CSU.EANTP = 'ZU'
			;
			UPDATE T1
			SET  PKG_GTIN  =  PKG.EAN11
			FROM #TEMPT1 T1
			INNER JOIN KNA_ECC.dbo.MEAN  PKG  (NOLOCK)  ON  T1.MATRL_ID  =  PKG.MATNR  AND PKG.MEINH = 'PKG' AND PKG.EANTP = 'ZG'
			;
			UPDATE T1
			SET  PKG_UPC   =  PKU.EAN11 
			FROM #TEMPT1 T1
			INNER JOIN KNA_ECC.dbo.MEAN  PKU  (NOLOCK)  ON  T1.MATRL_ID  =  PKU.MATNR  AND PKU.MEINH = 'PKG' AND PKU.EANTP = 'ZU'
			;

			WITH X1 
			AS 
			(SELECT MATNR, EAN11
			,ROW_NUMBER() OVER (PARTITION BY MATNR ORDER BY HPEAN DESC) AS ROW_NBR
			FROM KNA_ECC.dbo.MEAN  CSG  (NOLOCK)  
			WHERE 1=1
			AND CSG.MEINH = 'UL'  
			AND CSG.EANTP = 'ZG')

			UPDATE T1
			SET  UL_GTIN   =  X1.EAN11
			FROM #TEMPT1 T1
			INNER JOIN X1  ON  T1.MATRL_ID  =  X1.MATNR  AND ROW_NBR =1
			;

			UPDATE T1
			SET  UL_UPC    =  ULU.EAN11 
			FROM #TEMPT1 T1
			INNER JOIN KNA_ECC.dbo.MEAN  ULU  (NOLOCK)  ON  T1.MATRL_ID  =  ULU.MATNR  AND ULU.MEINH = 'UL'  AND ULU.EANTP = 'ZU'

            -- TO REMOVE LEADING ZEROES AND ADDITIONAL SPACES TO MATCH WITH CURRENT TPE
			UPDATE #TEMPT1
			SET MATRL_ID   = CASE WHEN ISNUMERIC(MATRL_ID ) = 1 
								  THEN CAST(CAST (MATRL_ID AS NUMERIC(18)) AS VARCHAR(18))
								  ELSE LTRIM(RTRIM(MATRL_ID))
							  END
			UPDATE #TEMPT1
			SET   BASE_MATRL = CASE WHEN ISNUMERIC(BASE_MATRL) = 1 
								  THEN CAST(CAST (BASE_MATRL AS NUMERIC(18)) AS VARCHAR(18))
								  ELSE LTRIM(RTRIM(BASE_MATRL))
							  END




        /**************************INSERT ROWS TO FINAL TABLE*************************************/
        /**************************CAPTURE THE FINALTABLES INSERTED ROWCOUNT**********************/
        BEGIN TRANSACTION;
        DELETE dbo.KNA_MKTG_MATRL_ALT_UOM_MSTR;
		SELECT @DEL_CNT = @@ROWCOUNT;
        
		INSERT INTO dbo.KNA_MKTG_MATRL_ALT_UOM_MSTR ( MATRL_ID,BASE_MATRL
		  ,CS_EAN_UPC ,CS_GTIN ,CS_UPC ,CS_WGT_UNIT ,CS_GROS_WGT             ,CS_SZ_UNIT ,CS_HGT ,CS_LEN ,CS_WID ,CS_VOL_UNIT ,CS_VOL
		  ,PKG_EAN_UPC,PKG_GTIN,PKG_UPC,PKG_WGT_UNIT,PKG_GROS_WGT,PKG_NET_WGT,PKG_SZ_UNIT,PKG_HGT,PKG_LEN,PKG_WID,PKG_VOL_UNIT,PKG_VOL
		  ,UL_EAN_UPC ,UL_GTIN ,UL_UPC ,UL_WGT_UNIT ,UL_GROS_WGT             ,UL_SZ_UNIT ,UL_HGT ,UL_LEN ,UL_WID ,UL_VOL_UNIT ,UL_VOL  )
        
		SELECT  MATRL_ID,BASE_MATRL
		  ,CS_EAN_UPC ,CS_GTIN ,CS_UPC ,CS_WGT_UNIT ,CS_GROS_WGT             ,CS_SZ_UNIT ,CS_HGT ,CS_LEN ,CS_WID ,CS_VOL_UNIT ,CS_VOL
		  ,PKG_EAN_UPC,PKG_GTIN,PKG_UPC,PKG_WGT_UNIT,PKG_GROS_WGT,PKG_NET_WGT,PKG_SZ_UNIT,PKG_HGT,PKG_LEN,PKG_WID,PKG_VOL_UNIT,PKG_VOL
		  ,UL_EAN_UPC ,UL_GTIN ,UL_UPC ,UL_WGT_UNIT ,UL_GROS_WGT             ,UL_SZ_UNIT ,UL_HGT ,UL_LEN ,UL_WID ,UL_VOL_UNIT ,UL_VOL  
        FROM   #TEMPT1;
        SELECT @INS_CNT = @@ROWCOUNT;
        COMMIT TRANSACTION;
    END TRY
    /**************************CAPUTURE LOGS**************************************************/
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK;
        SELECT 'INSIDE CATCH'
        DECLARE @CUSTOM_USER_MSG AS NVARCHAR (148), 
				@ERR_LOG AS NVARCHAR (200), 
				@ERR_MSG AS NVARCHAR (4000), 
				@ERR_NBR AS INT, 
				@ERR_LN AS INT, 
				@ERR_PROC AS NVARCHAR (128), 
				@ERR_SEV AS INT, 
				@ERR_STATE AS INT;
        SET @CUSTOM_USER_MSG = 'USP_KNA_MKTG_MATRL_ALT_UOM_MSTR FAILED. ERROR INFO AS FOLLOWS: ';
        SELECT @ERR_MSG = ERROR_MESSAGE(),
               @ERR_NBR = ERROR_NUMBER(),
               @ERR_LN = ERROR_LINE(),
               @ERR_PROC = ERROR_PROCEDURE(),
               @ERR_SEV = ERROR_SEVERITY(),
               @ERR_STATE = ERROR_STATE();
        SET @ERR_MSG = '; ERROR_MESSAGE: ' + ISNULL(@ERR_MSG, 'NULL');
        SET @ERR_LOG = '; ERROR_NUMBER: ' + CAST (ISNULL(@ERR_NBR, 'NULL') AS NVARCHAR (10)) + '; ERROR_LINE: ' + CAST (ISNULL(@ERR_LN, 'NULL') AS NVARCHAR (10)) + '; ERROR_PROCEDURE: ' + ISNULL(@ERR_PROC, 'NULL') + '; ERROR_SEVERITY: ' + CAST (ISNULL(@ERR_SEV, 'NULL') AS NVARCHAR (10)) + '; ERROR_STATE: ' + CAST (ISNULL(@ERR_STATE, 'NULL') AS NVARCHAR (10));
        SET @USER_ERR_MSG = LTRIM(RTRIM(@CUSTOM_USER_MSG)) + LTRIM(RTRIM(@ERR_LOG)) + SUBSTRING(LTRIM(RTRIM(@ERR_MSG)), 1, 1700);
    --			THROW 50001, @USER_ERR_MSG , @ERR_STATE
    END CATCH
END


GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MKTG_CUST]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_PROC_MKTG_CUST]
@USER_ERR_MSG NVARCHAR (2048) OUTPUT, @INS_CNT INT OUTPUT, @UPD_CNT INT OUTPUT, @DEL_CNT INT OUTPUT
AS
/*******************************************************************************************
   
   NAME        :  USP_PROC_MKTG_CUST
   PURPOSE & 
   Description :  This SP reads all the related source tables that are exact copy of SAP ECC system and builds transformed table.
                        
  REVISIONS:
   Ver          Date             AuthOR                     Change Reason
   ------    ----------      ---------------         ---------------------------------------
   1.0         04/01/2017       USCNXM74                1. Initial Version
   ------    ----------      ---------------         ---------------------------------------
--------------------------Execution Script--------------------------------------------------
Declare 
@USER_ERR_MSG_VAR  NVARCHAR(2048) ,
@INS_CNT_VAR       INT , 
@UPD_CNT_VAR       INT , 
@DEL_CNT_VAR       INT 

       EXEC USP_PROC_MKTG_CUST
		         @USER_ERR_MSG = @USER_ERR_MSG_VAR OUTPUT 
				,@INS_CNT      = @INS_CNT_VAR      OUTPUT
				,@UPD_CNT      = @UPD_CNT_VAR      OUTPUT
				,@DEL_CNT      = @DEL_CNT_VAR      OUTPUT

SELECT @USER_ERR_MSG_VAR ,@INS_CNT_VAR, @UPD_CNT_VAR, @DEL_CNT_VAR




*********************************************************************************/
BEGIN
    DECLARE @VAR1 AS NVARCHAR (2048);
    BEGIN TRY
        /*********************MAIN LOGIC IN STOREDPROCEDURE ****************************/
        -- BUILD A TEMPORARY TABLE WITH ALL REQUIRED COLUMNS AND MORE.
        IF OBJECT_ID('tempdb..#TEMPT1') IS NOT NULL
            DROP TABLE #TEMPT1;
        SELECT --CORE CUSTOMER MASTER FIELDS
               KUNNR AS CUST_ID,
               NAME1 AS CUST_DESC,
               KATR5 AS CUST_TYP,
               ORT01 AS CUST_CITY,
               REGIO AS CUST_RGN,
               TELBX AS CUST_STORE_NBR,
               LAND1 AS CUST_CTRY,
               STRAS AS CUST_STR,
               PSTLZ AS CUST_ZIP_CODE,
               KATR1 AS PLN_TO_IND,
               CAST ('' AS VARCHAR (10)) AS PLN_TO_ALT, --- CASE WHEN KATR1 = '01' THEN KUNNR ELSE Hier D Level 8
               CAST ('' AS VARCHAR (10)) AS PLN_TO, --- CASE WHEN KATR1 = '01' THEN KUNNR ELSE Hier D Level 8
               KUNNR AS BUS_PARTNR, -- CHECK IF THIS MATCHES OTHERWISE NEED TO PULL CRM TABLE
               CAST ('' AS VARCHAR (10)) AS CUST_CHNL, -- COMES FROM KNVV  
               CAST ('' AS VARCHAR (03)) AS CUST_GRP2, -- COMES FROM KNVV 
               CAST ('' AS VARCHAR (03)) AS CUST_GRP3, -- STAYS BLANK
               CAST ('' AS VARCHAR (10)) AS CUST_ADDR, -- STAYS BLANK
               CAST (0 AS DECIMAL (10, 3)) AS CUST_LAT, -- STAYS BLANK
               CAST (0 AS DECIMAL (10, 3)) AS CUST_LON--Hierarchies 
               , -- STAYS BLANK 
               CAST (NULL AS VARCHAR (10)) AS HIER_B_LVL1_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_B_LVL1_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_B_LVL2_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_B_LVL2_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_B_LVL3_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_B_LVL3_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_B_LVL4_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_B_LVL4_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_B_LVL5_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_B_LVL5_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_B_LVL6_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_B_LVL6_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_B_LVL7_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_B_LVL7_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_B_LVL8_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_B_LVL8_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_B_LVL9_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_B_LVL9_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_B_LVL10_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_B_LVL10_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_C_LVL1_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_C_LVL1_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_C_LVL2_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_C_LVL2_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_C_LVL3_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_C_LVL3_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_C_LVL4_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_C_LVL4_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_C_LVL5_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_C_LVL5_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_C_LVL6_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_C_LVL6_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_C_LVL7_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_C_LVL7_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_D_LVL1_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_D_LVL1_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_D_LVL2_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_D_LVL2_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_D_LVL3_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_D_LVL3_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_D_LVL4_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_D_LVL4_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_D_LVL5_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_D_LVL5_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_D_LVL6_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_D_LVL6_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_D_LVL7_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_D_LVL7_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_D_LVL8_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_D_LVL8_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_D_LVL9_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_D_LVL9_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_D_LVL10_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_D_LVL10_CUST_DESC,
               CAST (NULL AS VARCHAR (10)) AS HIER_D_LVL11_CUST_ID,
               CAST (NULL AS VARCHAR (40)) AS HIER_D_LVL11_CUST_DESC
        INTO   #TEMPT1
        FROM   KNA_ECC.dbo.KNA1 AS T1 WITH (NOLOCK)
        --WHERE KUNNR IN ('1000000090','1000000091','1000000092')
        ;
       WITH    X1
        AS      (SELECT KUNNR,
                        KVGR2,
                        ROW_NUMBER() OVER (PARTITION BY KUNNR ORDER BY ERDAT DESC) AS ROW_NBR
                  FROM  KNA_ECC.dbo.KNVV WITH (NOLOCK)
				 --WHERE  VKORG = '1001'
				 )
        UPDATE  T1
            SET CUST_GRP2 = X1.KVGR2
        FROM    #TEMPT1 AS T1
                INNER JOIN  X1    ON T1.CUST_ID = X1.KUNNR  AND X1.ROW_NBR = 1  AND T1.PLN_TO_IND = '01'

	 ;
		
		
        -- Logic for bringin planto based on what is defined in BW 
		--- read hierarchy and bring the earliest parent that has katr1 field as 01
		--- read hierarchy A first
        IF OBJECT_ID('tempdb..#HA2') IS NOT NULL
            DROP TABLE #HA2;

        WITH    HA1
        AS      (SELECT LST_LVL_CUST_NBR AS CUST_ID,
                        HIER_TYP,
                        HIER_TM_PD,
                        LST_LVL_NBR
						,LVL1_CUST_NBR
						,LVL2_CUST_NBR
						,LVL3_CUST_NBR
						,LVL4_CUST_NBR
						,LVL5_CUST_NBR
						,LVL6_CUST_NBR
						,LVL7_CUST_NBR
						,LVL8_CUST_NBR
						,LVL9_CUST_NBR
			     FROM   KG_VIEWS.KNA.UVW_CUST_HIER WITH (NOLOCK)
				 WHERE  1 = 1
				   AND  HIER_TYP = 'A'
				   AND  HIER_TM_PD = 'CURRENT')
		--- check each hierarchy customer if katr1/ plan to indicator is equals to 01 , earlies tlevel to have such a parent is considered plan to
		---get this into a temp table to re-use for customer channeland customer group as well
                 SELECT  HA1.CUST_ID
                        ,HA1.LST_LVL_NBR
				        ,CASE WHEN ISNULL(T9.PLN_TO_IND, '') = '01' THEN LVL9_CUST_NBR 
					          WHEN ISNULL(T8.PLN_TO_IND, '') = '01' THEN LVL8_CUST_NBR 
					          WHEN ISNULL(T7.PLN_TO_IND, '') = '01' THEN LVL7_CUST_NBR 
					          WHEN ISNULL(T6.PLN_TO_IND, '') = '01' THEN LVL6_CUST_NBR 
   					          WHEN ISNULL(T5.PLN_TO_IND, '') = '01' THEN LVL5_CUST_NBR 
					          WHEN ISNULL(T4.PLN_TO_IND, '') = '01' THEN LVL4_CUST_NBR 
					          WHEN ISNULL(T3.PLN_TO_IND, '') = '01' THEN LVL3_CUST_NBR 
					          WHEN ISNULL(T2.PLN_TO_IND, '') = '01' THEN LVL2_CUST_NBR 
					          WHEN ISNULL(T1.PLN_TO_IND, '') = '01' THEN LVL1_CUST_NBR 
				         END AS PLAN_TO
			      INTO #HA2
			      FROM HA1 
			      LEFT JOIN #TEMPT1 T1 ON HA1.LVL1_CUST_NBR = T1.CUST_ID
			      LEFT JOIN #TEMPT1 T2 ON HA1.LVL2_CUST_NBR = T2.CUST_ID
			      LEFT JOIN #TEMPT1 T3 ON HA1.LVL3_CUST_NBR = T3.CUST_ID
			      LEFT JOIN #TEMPT1 T4 ON HA1.LVL4_CUST_NBR = T4.CUST_ID
			      LEFT JOIN #TEMPT1 T5 ON HA1.LVL5_CUST_NBR = T5.CUST_ID
			      LEFT JOIN #TEMPT1 T6 ON HA1.LVL6_CUST_NBR = T6.CUST_ID
			      LEFT JOIN #TEMPT1 T7 ON HA1.LVL7_CUST_NBR = T7.CUST_ID
			      LEFT JOIN #TEMPT1 T8 ON HA1.LVL8_CUST_NBR = T8.CUST_ID
			      LEFT JOIN #TEMPT1 T9 ON HA1.LVL9_CUST_NBR = T9.CUST_ID 

		--- bring planto back to the maintemp table 
            UPDATE  T1
               SET  PLN_TO = HA2.PLAN_TO
              FROM  #TEMPT1 AS T1 INNER JOIN  #HA2 HA2
                ON T1.CUST_ID = HA2.CUST_ID;
		--- BRING CUSTOMER GROUP THAT NEED TO COME FROM KNVV 
        WITH    X1
        AS      (SELECT KUNNR,
                        KDGRP,
                        KVGR2,
                        KVGR3,
                        ROW_NUMBER() OVER (PARTITION BY KUNNR ORDER BY ERDAT DESC) AS ROW_NBR
                  FROM  KNA_ECC.dbo.KNVV WITH (NOLOCK)
				 --WHERE  1=1
				 --AND VKORG = '1001'
				 )
        UPDATE  T1
            SET CUST_GRP2 = X1.KVGR2  
			   --,CUST_CHNL = X1.KDGRP
                
        FROM    #TEMPT1 AS T1
                INNER JOIN  #HA2  ON T1.CUST_ID  = #HA2.CUST_ID AND T1.CUST_GRP2 = ''
				INNER JOIN  X1    ON #HA2.PLAN_TO = X1.KUNNR      AND X1.ROW_NBR = 1
	 ;
	    -- FIRST PASS: TO BRING CUSTOMER CHANNEL
        WITH    X1
        AS      (SELECT  KUNNR
		                ,KDGRP
                        ,ROW_NUMBER() OVER (PARTITION BY KUNNR ORDER BY ERDAT DESC) AS ROW_NBR
                   FROM  KNA_ECC.dbo.KNVV WITH (NOLOCK)
				  WHERE  1=1
				  --AND  VKORG = '1001' 
				    AND  KNVV.KDGRP <> '')
		,X2
        AS      (SELECT KUNN2  --,KUNNR
                  FROM  KNA_ECC.dbo.KNVP WITH (NOLOCK)
				 WHERE  KNVP.PARVW = 'RG' 
				   AND  KNVP.KUNN2 NOT LIKE 'K%'
				   )

        UPDATE  T1
            SET CUST_CHNL = X1.KDGRP
        FROM    #TEMPT1 AS T1
		        INNER JOIN  X1   ON T1.CUST_ID = X1.KUNNR  AND X1.ROW_NBR = 1  
				INNER JOIN  X2   ON T1.CUST_ID = X2.KUNN2  AND T1.PLN_TO_IND = '01'
				;

/*
	    -- SECOND PASS: TO BRING CUSTOMER CHANNEL  CHECK IF CUSTOMER IS PAYER
        WITH    X1
        AS      (SELECT  KUNNR
		                ,KDGRP
                        ,ROW_NUMBER() OVER (PARTITION BY KUNNR ORDER BY ERDAT DESC) AS ROW_NBR
                   FROM  KNA_ECC.dbo.KNVV WITH (NOLOCK)
				  WHERE  1=1
				  --AND VKORG = '1001' 
				    AND  KNVV.KDGRP <> '')
		,X2
        AS      (SELECT  KUNN2 
		                ,KUNNR 
                  FROM  KNA_ECC.dbo.KNVP WITH (NOLOCK)
				 WHERE  KNVP.PARVW = 'RG' )

        UPDATE  T1
            SET CUST_CHNL = X1.KDGRP
        FROM    X2
				INNER JOIN  #HA2    ON X2.KUNNR     = #HA2.CUST_ID 
				INNER JOIN  X1      ON #HA2.PLAN_TO = X1.KUNNR          AND X1.ROW_NBR = 1  
				INNER JOIN  #TEMPT1 T1 ON #HA2.CUST_ID  = T1.CUST_ID    --AND T1.CUST_CHNL = ''
				;

*/
	    -- new logic SECOND PASS: TO BRING CUSTOMER CHANNEL  CHECK IF CUSTOMER IS PAYER
        WITH    X1
        AS      (SELECT  KUNNR
		                ,KDGRP
                        ,ROW_NUMBER() OVER (PARTITION BY KUNNR ORDER BY ERDAT DESC) AS ROW_NBR
                   FROM  KNA_ECC.dbo.KNVV WITH (NOLOCK)
				  WHERE  1=1
				  --AND VKORG = '1001' 
				    AND  KNVV.KDGRP <> ''
					)
		,X2
        AS      (SELECT  KUNN2 
		                ,KUNNR 

                  FROM  KNA_ECC.dbo.KNVP WITH (NOLOCK)
				 WHERE  KNVP.PARVW = 'RG'
				  )




        UPDATE  T1
            SET CUST_CHNL = X1.KDGRP
        FROM    X2
				INNER JOIN  #HA2    ON X2.KUNNR     = #HA2.CUST_ID 
				INNER JOIN  X1      ON #HA2.PLAN_TO = X1.KUNNR          AND X1.ROW_NBR = 1  
				INNER JOIN  #TEMPT1 T1 ON X2.KUNN2  = T1.CUST_ID    AND T1.CUST_CHNL = ''
				;


/*
	    -- THIRD  PASS: BRING CUSTOMER CHANNEL
        WITH    X1
        AS      (SELECT  KUNNR
		                ,KDGRP
                        ,ROW_NUMBER() OVER (PARTITION BY KUNNR ORDER BY ERDAT DESC) AS ROW_NBR
                   FROM  KNA_ECC.dbo.KNVV WITH (NOLOCK)
				  WHERE  1=1
				  --AND VKORG = '1001' 
				    AND  KNVV.KDGRP <> ''
				)
		,X2
        AS      (SELECT KUNNR 
                  FROM  KNA_ECC.dbo.KNVP WITH (NOLOCK)
				 WHERE  KNVP.PARVW = 'AG' 
				 )

        UPDATE  T1
            SET CUST_CHNL = X1.KDGRP
        FROM    X2
				INNER JOIN  #HA2    ON X2.KUNNR     = #HA2.CUST_ID 
				INNER JOIN  X1      ON #HA2.PLAN_TO = X1.KUNNR       AND X1.ROW_NBR = 1  
				INNER JOIN  #TEMPT1 T1 ON #HA2.CUST_ID  = T1.CUST_ID     AND T1.CUST_CHNL = ''
				;	    
*/
--- NEW THIRD PASS 
        WITH    X1
        AS      (SELECT  KUNNR
		                ,KDGRP
                        ,ROW_NUMBER() OVER (PARTITION BY KUNNR ORDER BY ERDAT DESC) AS ROW_NBR
                   FROM  KNA_ECC.dbo.KNVV WITH (NOLOCK)
				  WHERE  1=1
				  --AND VKORG = '1001' 
				    AND  KNVV.KDGRP <> ''
				)
		,X2
        AS      (SELECT KUNNR 
		               ,KUNN2
                  FROM  KNA_ECC.dbo.KNVP WITH (NOLOCK)
				 WHERE  KNVP.PARVW = 'AG' 
				 )

        UPDATE  T1
            SET CUST_CHNL = X1.KDGRP
        FROM    X2
				INNER JOIN  #HA2    ON X2.KUNNR     = #HA2.CUST_ID 
				INNER JOIN  X1      ON #HA2.PLAN_TO = X1.KUNNR       AND X1.ROW_NBR = 1  
				INNER JOIN  #TEMPT1 T1 ON X2.KUNN2  = T1.CUST_ID     AND T1.CUST_CHNL = ''
				;	

--- FOURTH PASS 
        WITH    X1
        AS      (SELECT  DISTINCT KUNNR
		                ,KDGRP
                        ,ROW_NUMBER() OVER (PARTITION BY KUNNR ORDER BY ERDAT DESC) AS ROW_NBR
                   FROM  KNA_ECC.dbo.KNVV WITH (NOLOCK)
				  WHERE  1=1
				  --AND VKORG = '1001' 
				    AND  KNVV.KDGRP <> ''
				)
        UPDATE  T1
            SET CUST_CHNL = X1.KDGRP
        FROM    X1  INNER JOIN  #TEMPT1 T1 
		        ON X1.KUNNR COLLATE Latin1_General_CS_AS = T1.PLN_TO    AND X1.ROW_NBR = 1  AND T1.CUST_CHNL = ''   
				;	



        -- BRING HIERARCHIES
		-- Update Hierarchy C
        WITH    HC1
        AS      (SELECT LST_LVL_CUST_NBR AS CUST_ID,
                        HIER_TYP,
                        HIER_TM_PD,
                        LST_LVL_NBR,
                        LVL1_CUST_NBR,
                        LVL1_CUST_NM,
                        LVL2_CUST_NBR,
                        LVL2_CUST_NM,
                        LVL3_CUST_NBR,
                        LVL3_CUST_NM,
                        LVL4_CUST_NBR,
                        LVL4_CUST_NM,
                        LVL5_CUST_NBR,
                        LVL5_CUST_NM,
                        LVL6_CUST_NBR,
                        LVL6_CUST_NM,
                        LVL7_CUST_NBR,
                        LVL7_CUST_NM,
                        LVL8_CUST_NBR,
                        LVL8_CUST_NM
                 FROM   KG_VIEWS.KNA.UVW_CUST_HIER WITH (NOLOCK)
                 WHERE  1 = 1
                        AND HIER_TYP = 'C'
                        AND HIER_TM_PD = 'CURRENT'
                        --AND LST_LVL_NBR = 8
						)
        -- UPDATE HIERARCHY C TO THE TEMP TABLE 
        UPDATE  T1
            SET HIER_C_LVL7_CUST_ID   = LVL2_CUST_NBR,
                HIER_C_LVL7_CUST_DESC = LVL2_CUST_NM,
                HIER_C_LVL6_CUST_ID   = LVL3_CUST_NBR,
                HIER_C_LVL6_CUST_DESC = LVL3_CUST_NM,
                HIER_C_LVL5_CUST_ID   = LVL4_CUST_NBR,
                HIER_C_LVL5_CUST_DESC = LVL4_CUST_NM,
                HIER_C_LVL4_CUST_ID   = LVL5_CUST_NBR,
                HIER_C_LVL4_CUST_DESC = LVL5_CUST_NM,
                HIER_C_LVL3_CUST_ID   = LVL6_CUST_NBR,
                HIER_C_LVL3_CUST_DESC = LVL6_CUST_NM,
                HIER_C_LVL2_CUST_ID   = LVL7_CUST_NBR,
                HIER_C_LVL2_CUST_DESC = LVL7_CUST_NM,
                HIER_C_LVL1_CUST_ID   = COALESCE(LVL8_CUST_NBR,T1.CUST_ID),
                HIER_C_LVL1_CUST_DESC = COALESCE(LVL8_CUST_NM, T1.CUST_DESC)
        FROM    #TEMPT1 AS T1
                INNER JOIN
                HC1
                ON T1.CUST_ID = HC1.CUST_ID;
        -- update hierarchy B
        WITH    HB1
        AS      (SELECT LST_LVL_CUST_NBR AS CUST_ID,
                        HIER_TYP,
                        HIER_TM_PD,
                        LST_LVL_NBR,
                        LVL1_CUST_NBR,
                        LVL1_CUST_NM,
                        LVL2_CUST_NBR,
                        LVL2_CUST_NM,
                        LVL3_CUST_NBR,
                        LVL3_CUST_NM,
                        LVL4_CUST_NBR,
                        LVL4_CUST_NM,
                        LVL5_CUST_NBR,
                        LVL5_CUST_NM,
                        LVL6_CUST_NBR,
                        LVL6_CUST_NM,
                        LVL7_CUST_NBR,
                        LVL7_CUST_NM,
                        LVL8_CUST_NBR,
                        LVL8_CUST_NM

                 FROM   KG_VIEWS.KNA.UVW_CUST_HIER WITH (NOLOCK)
                 WHERE  1 = 1
                        AND HIER_TYP = 'B'
                        AND HIER_TM_PD = 'CURRENT'
                        --AND LST_LVL_NBR = 8
						)
        UPDATE  T1
            SET HIER_B_LVL1_CUST_ID   = ISNULL(LVL8_CUST_NBR,T1.CUST_ID),     --LVL8_CUST_NBR,
                HIER_B_LVL1_CUST_DESC = ISNULL(LVL8_CUST_NM, T1.CUST_DESC),   --LVL8_CUST_NM,
                HIER_B_LVL2_CUST_ID   = LVL7_CUST_NBR,
                HIER_B_LVL2_CUST_DESC = LVL7_CUST_NM,
                HIER_B_LVL3_CUST_ID   = LVL6_CUST_NBR,
                HIER_B_LVL3_CUST_DESC = LVL6_CUST_NM,
                HIER_B_LVL4_CUST_ID   = LVL5_CUST_NBR,
                HIER_B_LVL4_CUST_DESC = LVL5_CUST_NM,
                HIER_B_LVL5_CUST_ID   = LVL4_CUST_NBR,
                HIER_B_LVL5_CUST_DESC = LVL4_CUST_NM,
                HIER_B_LVL6_CUST_ID   = LVL3_CUST_NBR,
                HIER_B_LVL6_CUST_DESC = LVL3_CUST_NM,
                HIER_B_LVL7_CUST_ID   = LVL2_CUST_NBR,
                HIER_B_LVL7_CUST_DESC = LVL2_CUST_NM  
        FROM    #TEMPT1 AS T1
                INNER JOIN
                HB1
                ON T1.CUST_ID = HB1.CUST_ID;
        -- update hierarchy D
        WITH    HD1
        AS      (SELECT LST_LVL_CUST_NBR AS CUST_ID,
                        HIER_TYP,
                        HIER_TM_PD,
                        LST_LVL_NBR,
                        LVL1_CUST_NBR,
                        LVL1_CUST_NM,
                        LVL2_CUST_NBR,
                        LVL2_CUST_NM,
                        LVL3_CUST_NBR,
                        LVL3_CUST_NM,
                        LVL4_CUST_NBR,
                        LVL4_CUST_NM,
                        LVL5_CUST_NBR,
                        LVL5_CUST_NM,
                        LVL6_CUST_NBR,
                        LVL6_CUST_NM,
                        LVL7_CUST_NBR,
                        LVL7_CUST_NM,
                        LVL8_CUST_NBR,
                        LVL8_CUST_NM,
                        LVL9_CUST_NBR,
                        LVL9_CUST_NM,
                        LVL10_CUST_NBR,
						LVL10_CUST_NM

                 FROM   KG_VIEWS.KNA.UVW_CUST_HIER WITH (NOLOCK)
                 WHERE  1 = 1
                        AND HIER_TYP = 'D'
                        AND HIER_TM_PD = 'CURRENT'
                        --AND LST_LVL_NBR = 10
						)
        UPDATE  T1
            SET HIER_D_LVL1_CUST_ID    = COALESCE(LVL10_CUST_NBR,T1.CUST_ID),     -----LVL10_CUST_NBR,
                HIER_D_LVL1_CUST_DESC  = COALESCE(LVL10_CUST_NM, T1.CUST_DESC),   -----LVL10_CUST_NM,
                HIER_D_LVL2_CUST_ID    = LVL9_CUST_NBR,
                HIER_D_LVL2_CUST_DESC  = LVL9_CUST_NM,
                HIER_D_LVL3_CUST_ID    = LVL8_CUST_NBR,
                HIER_D_LVL3_CUST_DESC  = LVL8_CUST_NM,
                HIER_D_LVL4_CUST_ID    = LVL7_CUST_NBR,
                HIER_D_LVL4_CUST_DESC  = LVL7_CUST_NM,
                HIER_D_LVL5_CUST_ID    = LVL6_CUST_NBR,
                HIER_D_LVL5_CUST_DESC  = LVL6_CUST_NM,
                HIER_D_LVL6_CUST_ID    = LVL5_CUST_NBR,
                HIER_D_LVL6_CUST_DESC  = LVL5_CUST_NM,
                HIER_D_LVL7_CUST_ID    = LVL4_CUST_NBR,
                HIER_D_LVL7_CUST_DESC  = LVL4_CUST_NM,
                HIER_D_LVL8_CUST_ID    = LVL3_CUST_NBR,
                HIER_D_LVL8_CUST_DESC  = LVL3_CUST_NM,
                HIER_D_LVL9_CUST_ID    = LVL2_CUST_NBR,
                HIER_D_LVL9_CUST_DESC  = LVL2_CUST_NM,
                HIER_D_LVL10_CUST_ID   = LVL1_CUST_NBR,
                HIER_D_LVL10_CUST_DESC = LVL1_CUST_NM
        FROM    #TEMPT1 AS T1
                INNER JOIN
                HD1
                ON T1.CUST_ID = HD1.CUST_ID;
-- REMOVE THE PRECEDING ZEROES IN CUST IDS AT DIFFERENT LEVELS OF HIERARCHY
-- IDEAL SUGGESTION TO LET THE ZEROES REMAIN
-- TO MATCH TPE WE ARE DOING THIS.
-- HOLD UNTIL THIS POINT TO FACILITATE JOINS WITH HIERARCHY
       UPDATE #TEMPT1
		   SET CUST_ID    = CASE WHEN ISNUMERIC(CUST_ID) = 1 
			                     THEN  CAST( CAST(LTRIM(RTRIM(CUST_ID)) AS BIGINT)  AS VARCHAR(10))
             		             ELSE LTRIM(RTRIM(CUST_ID)) 
                            END
              ,BUS_PARTNR = CASE WHEN ISNUMERIC(CUST_ID) = 1 
			                     THEN  CAST( CAST(LTRIM(RTRIM(CUST_ID)) AS BIGINT)  AS VARCHAR(10))
             		             ELSE LTRIM(RTRIM(CUST_ID)) 
                            END
              ,PLN_TO     = CASE WHEN ISNUMERIC(LTRIM(RTRIM(PLN_TO))) = 1 
             		             THEN CAST (CAST (LTRIM(RTRIM(PLN_TO)) AS BIGINT)  AS VARCHAR(10)) 
             		             ELSE LTRIM(RTRIM(PLN_TO)) 
                            END
              ,HIER_B_LVL1_CUST_ID = CASE WHEN ISNUMERIC(HIER_B_LVL1_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_B_LVL1_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_B_LVL1_CUST_ID))
                                     END
              ,HIER_B_LVL2_CUST_ID = CASE WHEN ISNUMERIC(HIER_B_LVL2_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_B_LVL2_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_B_LVL2_CUST_ID))
                                     END
              ,HIER_B_LVL3_CUST_ID = CASE WHEN ISNUMERIC(HIER_B_LVL3_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_B_LVL3_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_B_LVL3_CUST_ID))
                                     END
              ,HIER_B_LVL4_CUST_ID = CASE WHEN ISNUMERIC(HIER_B_LVL4_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_B_LVL4_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_B_LVL4_CUST_ID))
                                     END
              ,HIER_B_LVL5_CUST_ID = CASE WHEN ISNUMERIC(HIER_B_LVL5_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_B_LVL5_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_B_LVL5_CUST_ID))
                                     END
              ,HIER_B_LVL6_CUST_ID = CASE WHEN ISNUMERIC(HIER_B_LVL6_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_B_LVL6_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_B_LVL6_CUST_ID))
                                     END
              ,HIER_B_LVL7_CUST_ID = CASE WHEN ISNUMERIC(HIER_B_LVL7_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_B_LVL7_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_B_LVL7_CUST_ID))
                                     END
              ,HIER_B_LVL8_CUST_ID = CASE WHEN ISNUMERIC(HIER_B_LVL8_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_B_LVL8_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_B_LVL8_CUST_ID))
                                     END
              ,HIER_B_LVL9_CUST_ID = CASE WHEN ISNUMERIC(HIER_B_LVL9_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_B_LVL9_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_B_LVL9_CUST_ID))
                                     END
              ,HIER_B_LVL10_CUST_ID = CASE WHEN ISNUMERIC(HIER_B_LVL10_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_B_LVL10_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_B_LVL10_CUST_ID))
                                     END
              ,HIER_C_LVL1_CUST_ID = CASE WHEN ISNUMERIC(HIER_C_LVL1_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_C_LVL1_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_C_LVL1_CUST_ID))
                                     END
              ,HIER_C_LVL2_CUST_ID = CASE WHEN ISNUMERIC(HIER_C_LVL2_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_C_LVL2_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_C_LVL2_CUST_ID))
                                     END
              ,HIER_C_LVL3_CUST_ID = CASE WHEN ISNUMERIC(HIER_C_LVL3_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_C_LVL3_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_C_LVL3_CUST_ID))
                                     END
              ,HIER_C_LVL4_CUST_ID = CASE WHEN ISNUMERIC(HIER_C_LVL4_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_C_LVL4_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_C_LVL4_CUST_ID))
                                     END
              ,HIER_C_LVL5_CUST_ID = CASE WHEN ISNUMERIC(HIER_C_LVL5_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_C_LVL5_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_C_LVL5_CUST_ID))
                                     END
              ,HIER_C_LVL6_CUST_ID = CASE WHEN ISNUMERIC(HIER_C_LVL6_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_C_LVL6_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_C_LVL6_CUST_ID))
                                     END
              ,HIER_C_LVL7_CUST_ID = CASE WHEN ISNUMERIC(HIER_C_LVL7_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_C_LVL7_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_C_LVL7_CUST_ID))
                                     END
              ,HIER_D_LVL1_CUST_ID = CASE WHEN ISNUMERIC(HIER_D_LVL1_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_D_LVL1_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_D_LVL1_CUST_ID))
                                     END
              ,HIER_D_LVL2_CUST_ID = CASE WHEN ISNUMERIC(HIER_D_LVL2_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_D_LVL2_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_D_LVL2_CUST_ID))
                                     END
              ,HIER_D_LVL3_CUST_ID = CASE WHEN ISNUMERIC(HIER_D_LVL3_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_D_LVL3_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_D_LVL3_CUST_ID))
                                     END
              ,HIER_D_LVL4_CUST_ID = CASE WHEN ISNUMERIC(HIER_D_LVL4_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_D_LVL4_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_D_LVL4_CUST_ID))
                                     END
              ,HIER_D_LVL5_CUST_ID = CASE WHEN ISNUMERIC(HIER_D_LVL5_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_D_LVL5_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_D_LVL5_CUST_ID))
                                     END
              ,HIER_D_LVL6_CUST_ID = CASE WHEN ISNUMERIC(HIER_D_LVL6_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_D_LVL6_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_D_LVL6_CUST_ID))
                                     END
              ,HIER_D_LVL7_CUST_ID = CASE WHEN ISNUMERIC(HIER_D_LVL7_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_D_LVL7_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_D_LVL7_CUST_ID))
                                     END
              ,HIER_D_LVL8_CUST_ID = CASE WHEN ISNUMERIC(HIER_D_LVL8_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_D_LVL8_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_D_LVL8_CUST_ID))
                                     END
              ,HIER_D_LVL9_CUST_ID = CASE WHEN ISNUMERIC(HIER_D_LVL9_CUST_ID) = 1
                                          THEN  CAST(CAST(LTRIM(RTRIM(HIER_D_LVL9_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                          ELSE LTRIM(RTRIM(HIER_D_LVL9_CUST_ID))
                                     END
              ,HIER_D_LVL10_CUST_ID = CASE WHEN ISNUMERIC(HIER_D_LVL10_CUST_ID) = 1
                                           THEN  CAST(CAST(LTRIM(RTRIM(HIER_D_LVL10_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                           ELSE LTRIM(RTRIM(HIER_D_LVL10_CUST_ID))
                                      END
              ,HIER_D_LVL11_CUST_ID = CASE WHEN ISNUMERIC(HIER_D_LVL11_CUST_ID) = 1
                                           THEN  CAST(CAST(LTRIM(RTRIM(HIER_D_LVL11_CUST_ID)) AS BIGINT)  AS VARCHAR(10))
                                           ELSE LTRIM(RTRIM(HIER_D_LVL11_CUST_ID))
                                      END
		;
        /**************************INSERT ROWS TO FINAL TABLE*************************************/
        /**************************CAPTURE THE FINALTABLES INSERTED ROWCOUNT**********************/
        BEGIN TRANSACTION;
        DELETE dbo.KNA_MKTG_CUST_MSTR;
        INSERT INTO dbo.KNA_MKTG_CUST_MSTR ( CUST_ID, CUST_DESC, CUST_TYP, HIER_C_LVL1_CUST_ID, HIER_C_LVL1_CUST_DESC
		     , HIER_C_LVL2_CUST_ID, HIER_C_LVL2_CUST_DESC, HIER_C_LVL3_CUST_ID, HIER_C_LVL3_CUST_DESC, HIER_C_LVL4_CUST_ID
			 , HIER_C_LVL4_CUST_DESC, HIER_C_LVL5_CUST_ID, HIER_C_LVL5_CUST_DESC, HIER_C_LVL6_CUST_ID, HIER_C_LVL6_CUST_DESC
			 , HIER_C_LVL7_CUST_ID, HIER_C_LVL7_CUST_DESC, HIER_D_LVL1_CUST_ID, HIER_D_LVL1_CUST_DESC, HIER_D_LVL2_CUST_ID
			 , HIER_D_LVL2_CUST_DESC, HIER_D_LVL3_CUST_ID, HIER_D_LVL3_CUST_DESC, HIER_D_LVL4_CUST_ID, HIER_D_LVL4_CUST_DESC
			 , HIER_D_LVL5_CUST_ID, HIER_D_LVL5_CUST_DESC, HIER_D_LVL6_CUST_ID, HIER_D_LVL6_CUST_DESC, HIER_D_LVL7_CUST_ID
			 , HIER_D_LVL7_CUST_DESC, HIER_D_LVL8_CUST_ID, HIER_D_LVL8_CUST_DESC, HIER_D_LVL9_CUST_ID, HIER_D_LVL9_CUST_DESC
			 , HIER_D_LVL10_CUST_ID, HIER_D_LVL10_CUST_DESC, HIER_D_LVL11_CUST_ID, HIER_D_LVL11_CUST_DESC, PLN_TO, BUS_PARTNR
			 , CUST_CHNL, CUST_GRP2, CUST_GRP3, CUST_ADDR, CUST_LAT, CUST_LON, CUST_CITY, CUST_RGN, CUST_STORE_NBR
			 , CUST_CTRY, CUST_STR, CUST_ZIP_CODE, HIER_B_LVL1_CUST_ID, HIER_B_LVL1_CUST_DESC, HIER_B_LVL2_CUST_ID
			 , HIER_B_LVL2_CUST_DESC, HIER_B_LVL3_CUST_ID, HIER_B_LVL3_CUST_DESC, HIER_B_LVL4_CUST_ID, HIER_B_LVL4_CUST_DESC
			 , HIER_B_LVL5_CUST_ID, HIER_B_LVL5_CUST_DESC, HIER_B_LVL6_CUST_ID, HIER_B_LVL6_CUST_DESC, HIER_B_LVL7_CUST_ID
			 , HIER_B_LVL7_CUST_DESC, HIER_B_LVL8_CUST_ID, HIER_B_LVL8_CUST_DESC, HIER_B_LVL9_CUST_ID, HIER_B_LVL9_CUST_DESC
			 , HIER_B_LVL10_CUST_ID, HIER_B_LVL10_CUST_DESC)
        SELECT 
		       CUST_ID,   
               CUST_DESC,
               CUST_TYP,
               HIER_C_LVL1_CUST_ID,
               HIER_C_LVL1_CUST_DESC,
               HIER_C_LVL2_CUST_ID,
               HIER_C_LVL2_CUST_DESC,
               HIER_C_LVL3_CUST_ID,
               HIER_C_LVL3_CUST_DESC,
               HIER_C_LVL4_CUST_ID,
               HIER_C_LVL4_CUST_DESC,
               HIER_C_LVL5_CUST_ID,
               HIER_C_LVL5_CUST_DESC,
               HIER_C_LVL6_CUST_ID,
               HIER_C_LVL6_CUST_DESC,
               HIER_C_LVL7_CUST_ID,
               HIER_C_LVL7_CUST_DESC,
               HIER_D_LVL1_CUST_ID,
               HIER_D_LVL1_CUST_DESC,
               HIER_D_LVL2_CUST_ID,
               HIER_D_LVL2_CUST_DESC,
               HIER_D_LVL3_CUST_ID,
               HIER_D_LVL3_CUST_DESC,
               HIER_D_LVL4_CUST_ID,
               HIER_D_LVL4_CUST_DESC,
               HIER_D_LVL5_CUST_ID,
               HIER_D_LVL5_CUST_DESC,
               HIER_D_LVL6_CUST_ID,
               HIER_D_LVL6_CUST_DESC,
               HIER_D_LVL7_CUST_ID,
               HIER_D_LVL7_CUST_DESC,
               HIER_D_LVL8_CUST_ID,
               HIER_D_LVL8_CUST_DESC,
               HIER_D_LVL9_CUST_ID,
               HIER_D_LVL9_CUST_DESC,
               HIER_D_LVL10_CUST_ID,
               HIER_D_LVL10_CUST_DESC,
               HIER_D_LVL11_CUST_ID,
               HIER_D_LVL11_CUST_DESC, 
			   PLN_TO,
               BUS_PARTNR,
               CUST_CHNL,
               CUST_GRP2,
               CUST_GRP3,
               CUST_ADDR,
               CUST_LAT,
               CUST_LON,
               CUST_CITY,
               CUST_RGN,
               CUST_STORE_NBR,
               CUST_CTRY,
               CUST_STR,
               CUST_ZIP_CODE,
               HIER_B_LVL1_CUST_ID,
               HIER_B_LVL1_CUST_DESC,
               HIER_B_LVL2_CUST_ID,
               HIER_B_LVL2_CUST_DESC,
               HIER_B_LVL3_CUST_ID,
               HIER_B_LVL3_CUST_DESC,
               HIER_B_LVL4_CUST_ID,
               HIER_B_LVL4_CUST_DESC,
               HIER_B_LVL5_CUST_ID,
               HIER_B_LVL5_CUST_DESC,
               HIER_B_LVL6_CUST_ID,
               HIER_B_LVL6_CUST_DESC,
               HIER_B_LVL7_CUST_ID,
               HIER_B_LVL7_CUST_DESC,
               HIER_B_LVL8_CUST_ID,
               HIER_B_LVL8_CUST_DESC,
               HIER_B_LVL9_CUST_ID,
               HIER_B_LVL9_CUST_DESC,
               HIER_B_LVL10_CUST_ID,
               HIER_B_LVL10_CUST_DESC
        FROM   #TEMPT1;
        SELECT @INS_CNT = @@ROWCOUNT;
        COMMIT TRANSACTION;
    END TRY
    /**************************CAPUTURE LOGS**************************************************/
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK;
        SELECT 'INSIDE CATCH'
        DECLARE @CUSTOM_USER_MSG AS NVARCHAR (148), 
				@ERR_LOG AS NVARCHAR (200), 
				@ERR_MSG AS NVARCHAR (4000), 
				@ERR_NBR AS INT, 
				@ERR_LN AS INT, 
				@ERR_PROC AS NVARCHAR (128), 
				@ERR_SEV AS INT, 
				@ERR_STATE AS INT;
        SET @CUSTOM_USER_MSG = 'USP_PROC_MKTG_CUST FAILED. ERROR INFO AS FOLLOWS: ';
        SELECT @ERR_MSG = ERROR_MESSAGE(),
               @ERR_NBR = ERROR_NUMBER(),
               @ERR_LN = ERROR_LINE(),
               @ERR_PROC = ERROR_PROCEDURE(),
               @ERR_SEV = ERROR_SEVERITY(),
               @ERR_STATE = ERROR_STATE();
        SET @ERR_MSG = '; ERROR_MESSAGE: ' + ISNULL(@ERR_MSG, 'NULL');
        SET @ERR_LOG = '; ERROR_NUMBER: ' + CAST (ISNULL(@ERR_NBR, 'NULL') AS NVARCHAR (10)) + '; ERROR_LINE: ' + CAST (ISNULL(@ERR_LN, 'NULL') AS NVARCHAR (10)) + '; ERROR_PROCEDURE: ' + ISNULL(@ERR_PROC, 'NULL') + '; ERROR_SEVERITY: ' + CAST (ISNULL(@ERR_SEV, 'NULL') AS NVARCHAR (10)) + '; ERROR_STATE: ' + CAST (ISNULL(@ERR_STATE, 'NULL') AS NVARCHAR (10));
        SET @USER_ERR_MSG = LTRIM(RTRIM(@CUSTOM_USER_MSG)) + LTRIM(RTRIM(@ERR_LOG)) + SUBSTRING(LTRIM(RTRIM(@ERR_MSG)), 1, 1700);
    --			THROW 50001, @USER_ERR_MSG , @ERR_STATE
    END CATCH
END


GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_MKTG_PROD_HIER]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_PROC_MKTG_PROD_HIER]
@USER_ERR_MSG NVARCHAR (2048) OUTPUT, @INS_CNT INT OUTPUT, @UPD_CNT INT OUTPUT, @DEL_CNT INT OUTPUT
AS
/*******************************************************************************************
   
   NAME        :  USP_PROC_MKTG_PROD_HIER
   PURPOSE & 
   Description :  This SP reads source table T179T that is exact copy of SAP ECC system and builds master / look up table.
                  this doens't have any specific transformations.
                        
  REVISIONS:
   Ver          Date             AuthOR                     Change Reason
   ------    ----------      ---------------         ---------------------------------------
   1.0         04/11/2017       USCNXM74                1. Initial Version
   ------    ----------      ---------------         ---------------------------------------
--------------------------Execution Script--------------------------------------------------
Declare 
@USER_ERR_MSG_VAR  NVARCHAR(2048) ,
@INS_CNT_VAR       INT , 
@UPD_CNT_VAR       INT , 
@DEL_CNT_VAR       INT 

       EXEC USP_PROC_MKTG_PROD_HIER
		        @USER_ERR_MSG = @USER_ERR_MSG_VAR OUTPUT 
				@INS_CNT      = @INS_CNT_VAR      OUTPUT
				@UPD_CNT      = @UPD_CNT_VAR      OUTPUT
				@DEL_CNT      = @DEL_CNT_VAR      OUTPUT

SELECT @USER_ERR_MSG_VAR ,@INS_CNT_VAR, @UPD_CNT_VAR, @DEL_CNT_VAR


*********************************************************************************/
BEGIN
    DECLARE @VAR1 AS NVARCHAR (2048);
    BEGIN TRY
        /*********************MAIN LOGIC IN STOREDPROCEDURE ****************************/
        -- BUILD A TEMPORARY TABLE WITH ALL REQUIRED COLUMNS AND MORE.
        IF OBJECT_ID('tempdb..#TEMPT1') IS NOT NULL
            DROP TABLE #TEMPT1;
		SELECT  LTRIM(RTRIM(PRODH))  AS PROD_HIER_CODE
			   ,LTRIM(RTRIM(SPRAS))  AS PROD_HIER_LNG
			   ,LTRIM(RTRIM(VTEXT))  AS PROD_HIER_DESC
		  INTO  #TEMPT1
		  FROM  KNA_ECC.dbo.T179T T1
		 WHERE  1=1
		   AND  T1.SPRAS = 'E' ;
		   ------SELECT * FROM #TEMPT1

        /**************************INSERT ROWS TO FINAL TABLE*************************************/
        /**************************CAPTURE THE FINALTABLES INSERTED ROWCOUNT**********************/
        BEGIN TRANSACTION;
        DELETE dbo.KNA_MKTG_PROD_HIER;
		SELECT @DEL_CNT = @@ROWCOUNT;
        INSERT INTO dbo.KNA_MKTG_PROD_HIER ( PROD_HIER_CODE, PROD_HIER_LNG, PROD_HIER_DESC)
        SELECT 
		       PROD_HIER_CODE, 
			   PROD_HIER_LNG, 
			   PROD_HIER_DESC
        FROM   #TEMPT1;
        SELECT @INS_CNT = @@ROWCOUNT;
        COMMIT TRANSACTION;
    END TRY
    /**************************CAPUTURE LOGS**************************************************/
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK;
        SELECT 'INSIDE CATCH'
        DECLARE @CUSTOM_USER_MSG AS NVARCHAR (148), 
				@ERR_LOG AS NVARCHAR (200), 
				@ERR_MSG AS NVARCHAR (4000), 
				@ERR_NBR AS INT, 
				@ERR_LN AS INT, 
				@ERR_PROC AS NVARCHAR (128), 
				@ERR_SEV AS INT, 
				@ERR_STATE AS INT;
        SET @CUSTOM_USER_MSG = 'USP_PROC_MKTG_PROD_HIER FAILED. ERROR INFO AS FOLLOWS: ';
        SELECT @ERR_MSG = ERROR_MESSAGE(),
               @ERR_NBR = ERROR_NUMBER(),
               @ERR_LN = ERROR_LINE(),
               @ERR_PROC = ERROR_PROCEDURE(),
               @ERR_SEV = ERROR_SEVERITY(),
               @ERR_STATE = ERROR_STATE();
        SET @ERR_MSG = '; ERROR_MESSAGE: ' + ISNULL(@ERR_MSG, 'NULL');
        SET @ERR_LOG = '; ERROR_NUMBER: ' + CAST (ISNULL(@ERR_NBR, 'NULL') AS NVARCHAR (10)) + '; ERROR_LINE: ' + CAST (ISNULL(@ERR_LN, 'NULL') AS NVARCHAR (10)) + '; ERROR_PROCEDURE: ' + ISNULL(@ERR_PROC, 'NULL') + '; ERROR_SEVERITY: ' + CAST (ISNULL(@ERR_SEV, 'NULL') AS NVARCHAR (10)) + '; ERROR_STATE: ' + CAST (ISNULL(@ERR_STATE, 'NULL') AS NVARCHAR (10));
        SET @USER_ERR_MSG = LTRIM(RTRIM(@CUSTOM_USER_MSG)) + LTRIM(RTRIM(@ERR_LOG)) + SUBSTRING(LTRIM(RTRIM(@ERR_MSG)), 1, 1700);
    --			THROW 50001, @USER_ERR_MSG , @ERR_STATE
    END CATCH
END


GO
/****** Object:  UserDefinedFunction [dbo].[uftReadfileAsTable]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[uftReadfileAsTable]
(
@Path VARCHAR(255),
@Filename VARCHAR(100)
)
RETURNS 
@File TABLE
(
[LineNo] int identity(1,1), 
line varchar(8000)) 

AS
BEGIN

DECLARE  @objFileSystem int
        ,@objTextStream int,
        @objErrorObject int,
        @strErrorMessage Varchar(1000),
        @Command varchar(1000),
        @hr int,
        @String VARCHAR(8000),
        @YesOrNo INT

select @strErrorMessage='opening the File System Object'
EXECUTE @hr = sp_OACreate  'Scripting.FileSystemObject' , @objFileSystem OUT


if @HR=0 Select @objErrorObject=@objFileSystem, @strErrorMessage='Opening file "'+@path+'\'+@filename+'"',@command=@path+'\'+@filename

if @HR=0 execute @hr = sp_OAMethod   @objFileSystem  , 'OpenTextFile'
    , @objTextStream OUT, @command,1,false,0--for reading, FormatASCII

WHILE @hr=0
    BEGIN
    if @HR=0 Select @objErrorObject=@objTextStream, 
        @strErrorMessage='finding out if there is more to read in "'+@filename+'"'
    if @HR=0 execute @hr = sp_OAGetProperty @objTextStream, 'AtEndOfStream', @YesOrNo OUTPUT

    IF @YesOrNo<>0  break
    if @HR=0 Select @objErrorObject=@objTextStream, 
        @strErrorMessage='reading from the output file "'+@filename+'"'
    if @HR=0 execute @hr = sp_OAMethod  @objTextStream, 'Readline', @String OUTPUT
    INSERT INTO @file(line) SELECT @String
    END

if @HR=0 Select @objErrorObject=@objTextStream, 
    @strErrorMessage='closing the output file "'+@filename+'"'
if @HR=0 execute @hr = sp_OAMethod  @objTextStream, 'Close'


if @hr<>0
    begin
    Declare 
        @Source varchar(255),
        @Description Varchar(255),
        @Helpfile Varchar(255),
        @HelpID int

    EXECUTE sp_OAGetErrorInfo  @objErrorObject, 
        @source output,@Description output,@Helpfile output,@HelpID output
    Select @strErrorMessage='Error whilst '
            +coalesce(@strErrorMessage,'doing something')
            +', '+coalesce(@Description,'')
    insert into @File(line) select @strErrorMessage
    end
EXECUTE  sp_OADestroy @objTextStream
    -- Fill the table variable with the rows for your result set

    RETURN 
END

GO
/****** Object:  Table [dbo].[_FCST_SUM_FULL]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_FCST_SUM_FULL](
	[MATERIAL] [varchar](11) NULL,
	[_WEEK] [varchar](14) NULL,
	[FCST] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_FCST_SUM_FULL_2]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_FCST_SUM_FULL_2](
	[MATERIAL] [varchar](11) NULL,
	[_WEEK] [varchar](14) NULL,
	[FCST] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[_FCST_UPDATED]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_FCST_UPDATED](
	[MATERIAL] [varchar](11) NULL,
	[_WEEK] [varchar](14) NULL,
	[FCST] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[accounts]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[accounts](
	[ACCT] [varchar](32) NULL,
	[ACCTNAME] [varchar](34) NULL,
	[DATATYPE] [varchar](14) NULL,
	[REGION] [varchar](23) NULL,
	[FZ] [varchar](32) NULL,
	[MF] [varchar](32) NULL,
	[SN] [varchar](32) NULL,
	[SS] [varchar](32) NULL,
	[ACV] [float] NULL,
	[ACV_PRIOR] [float] NULL,
	[FZ_BASE] [varchar](32) NULL,
	[MF_BASE] [varchar](32) NULL,
	[SN_BASE] [varchar](32) NULL,
	[KA_BASE] [varchar](32) NULL,
	[SS_BASE] [varchar](32) NULL,
	[MKTKEY] [varchar](15) NULL,
	[MKTDESC] [varchar](37) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ACOSTA_HIERARCHY]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACOSTA_HIERARCHY](
	[KLG Banner] [nvarchar](255) NULL,
	[KLG Sr Mgr Agency Retail] [nvarchar](255) NULL,
	[Acosta Retail Bus Mgr] [nvarchar](255) NULL,
	[ACOSTA FRZ Bus Mgr] [nvarchar](255) NULL,
	[Frozen Region] [nvarchar](255) NULL,
	[KLG VP DRA Director] [nvarchar](255) NULL,
	[KLG Director MTS] [nvarchar](255) NULL,
	[Plan To] [nvarchar](255) NULL,
	[PT Name] [nvarchar](255) NULL,
	[BU] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Flag] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AMPS_For_Tableau_temp1]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AMPS_For_Tableau_temp1](
	[Source Tab] [nvarchar](255) NULL,
	[Database Name] [nvarchar](255) NULL,
	[Dol] [decimal](38, 6) NULL,
	[Base $] [decimal](38, 6) NULL,
	[Base Units] [decimal](38, 6) NULL,
	[Base $ % Chg YA] [decimal](38, 6) NULL,
	[All Markets] [nvarchar](255) NULL,
	[All Periods] [nvarchar](255) NULL,
	[Dol YA] [decimal](38, 17) NULL,
	[Base Unit Price] [decimal](38, 21) NULL,
	[Base Unit Price YA] [decimal](38, 14) NULL,
	[Avg # of Items] [decimal](38, 6) NULL,
	[Avg # of Items YA] [decimal](38, 6) NULL,
	[Any Disp # Disp] [decimal](38, 6) NULL,
	[Any Disp # Disp CYA] [decimal](38, 6) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AMPS_For_Tableau_temp2]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AMPS_For_Tableau_temp2](
	[ALL_PRODUCTS_B] [nvarchar](255) NULL,
	[Source Tab] [nvarchar](255) NULL,
	[COMBO] [nvarchar](1020) NULL,
	[All Markets] [nvarchar](255) NULL,
	[All Products] [nvarchar](510) NULL,
	[All Periods] [nvarchar](255) NULL,
	[Dol] [decimal](17, 3) NULL,
	[Dol YA] [decimal](17, 3) NULL,
	[Base $ YA] [decimal](17, 3) NULL,
	[Dol CYA] [decimal](18, 3) NULL,
	[Base $] [decimal](17, 3) NULL,
	[Base $ % Chg YA] [decimal](38, 16) NULL,
	[Base Dol Chg] [decimal](18, 3) NULL,
	[Dol % Chg YA] [decimal](38, 16) NULL,
	[Incr $] [decimal](17, 3) NULL,
	[Incr $ YA] [decimal](17, 3) NULL,
	[EQ] [decimal](17, 3) NULL,
	[EQ YA] [decimal](17, 3) NULL,
	[Units] [decimal](17, 3) NULL,
	[Units YA] [decimal](17, 3) NULL,
	[Units % Chg YA] [decimal](38, 16) NULL,
	[EQ % Chg YA] [decimal](38, 16) NULL,
	[Dol Shr - Prompt] [decimal](38, 14) NULL,
	[Dol Shr - Prompt YA] [decimal](38, 6) NULL,
	[Base Units] [decimal](17, 3) NULL,
	[Base Units YA] [decimal](17, 3) NULL,
	[Base Unit Price] [decimal](38, 21) NULL,
	[Base Unit Price CYA] [decimal](38, 21) NULL,
	[Base Unit Price YA] [decimal](38, 21) NULL,
	[Any Promo $ % Chg YA] [decimal](17, 3) NULL,
	[No Promo $ % Chg YA] [decimal](17, 3) NULL,
	[% $ No Promo] [decimal](17, 3) NULL,
	[Avg EQ Price] [decimal](38, 21) NULL,
	[Avg EQ Price CYA] [decimal](38, 21) NULL,
	[Avg Unit Price] [decimal](38, 21) NULL,
	[Avg Unit Price CYA] [decimal](38, 21) NULL,
	[Qual Unit Price] [decimal](17, 3) NULL,
	[Qual Unit Price CYA] [decimal](17, 3) NULL,
	[Any Disp # Disp] [decimal](17, 3) NULL,
	[Any Disp # Disp CYA] [decimal](17, 3) NULL,
	[Dol / $MM ACV / Item] [decimal](17, 3) NULL,
	[Dol / $MM ACV / Item CYA] [decimal](17, 3) NULL,
	[%ACV] [decimal](17, 3) NULL,
	[%ACV CYA] [decimal](17, 3) NULL,
	[TDP] [decimal](35, 6) NULL,
	[TDP YA] [decimal](37, 6) NULL,
	[Incr Dol Chg] [decimal](18, 3) NULL,
	[Avg # of Items] [decimal](17, 3) NULL,
	[Avg # of Items CYA] [decimal](17, 3) NULL,
	[Any Promo Units % Lift] [decimal](17, 3) NULL,
	[Any Promo Units % Lift CYA] [decimal](17, 3) NULL,
	[% Units Any Promo] [decimal](17, 3) NULL,
	[% Units Any Promo CYA] [decimal](17, 3) NULL,
	[Any Disp %ACV] [decimal](17, 3) NULL,
	[Any Disp %ACV CYA] [decimal](17, 3) NULL,
	[Qual CWW] [decimal](17, 3) NULL,
	[Qual CWW CYA] [decimal](17, 3) NULL,
	[Feat & Disp %ACV / Any Feat %ACV] [decimal](17, 3) NULL,
	[Feat & Disp %ACV / Any Feat %ACV CYA] [decimal](17, 3) NULL,
	[Incr Units] [decimal](17, 3) NULL,
	[Incr Units YA] [decimal](17, 3) NULL,
	[Price Decr Incr $] [decimal](17, 3) NULL,
	[Price Decr Incr $ YA] [decimal](17, 3) NULL,
	[Feat & Disp Incr $] [decimal](17, 3) NULL,
	[Feat & Disp Incr $ YA] [decimal](17, 3) NULL,
	[Disp w/o Feat Incr $] [decimal](17, 3) NULL,
	[Disp w/o Feat Incr $ YA] [decimal](17, 3) NULL,
	[Feat w/o Disp Incr $] [decimal](17, 3) NULL,
	[Feat w/o Disp Incr $ YA] [decimal](17, 3) NULL,
	[Incremental % Chg vs YA] [decimal](38, 15) NULL,
	[Display Share] [decimal](38, 14) NULL,
	[Display Share YA] [decimal](38, 13) NULL,
	[Declining Display Share] [decimal](38, 13) NULL,
	[LN ACV % Chg] [float] NULL,
	[LN Avg Item Chg] [float] NULL,
	[LN Price Decr Incr] [float] NULL,
	[LN Disp w/o Feat Incr] [float] NULL,
	[LN Feat w/o Disp Incr] [float] NULL,
	[LN Feat & Disp Incr] [float] NULL,
	[Rem Incr Dol] [decimal](21, 3) NULL,
	[Rem Incr Dol YA] [decimal](21, 3) NULL,
	[Any Promo Unit Price % Disc] [decimal](17, 3) NULL,
	[Any Promo Unit Price % Disc CYA] [decimal](17, 3) NULL,
	[% Subsidized Units] [decimal](17, 3) NULL,
	[Subsidized Base Unit Chg vs YA] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AMPS_For_Tableau_temp3]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AMPS_For_Tableau_temp3](
	[ALL_PRODUCTS_B] [nvarchar](255) NULL,
	[COMBO] [nvarchar](1020) NULL,
	[All Markets] [nvarchar](255) NULL,
	[All Products] [nvarchar](765) NULL,
	[All Periods] [nvarchar](255) NULL,
	[Dol] [decimal](17, 3) NULL,
	[Dol % Chg YA] [decimal](38, 16) NULL,
	[Base $ % Chg YA] [decimal](38, 16) NULL,
	[Base $] [decimal](17, 3) NULL,
	[Base $ YA] [decimal](17, 3) NULL,
	[Dol YA] [decimal](17, 3) NULL,
	[Dol CYA] [decimal](18, 3) NULL,
	[Incr $] [decimal](17, 3) NULL,
	[Incr $ YA] [decimal](17, 3) NULL,
	[EQ % Chg YA] [decimal](38, 16) NULL,
	[Units % Chg YA] [decimal](38, 16) NULL,
	[Dol Shr - Prompt] [decimal](38, 14) NULL,
	[Dol Shr CYA - Prompt] [decimal](38, 6) NULL,
	[Base Units] [decimal](17, 3) NULL,
	[Base Units YA] [decimal](17, 3) NULL,
	[Base Unit Price] [decimal](38, 21) NULL,
	[Base Unit Price YA] [decimal](38, 21) NULL,
	[Base Unit Price CYA] [decimal](38, 21) NULL,
	[Any Promo $ % Chg YA] [decimal](17, 3) NULL,
	[No Promo $ % Chg YA] [decimal](17, 3) NULL,
	[% $ No Promo] [decimal](17, 3) NULL,
	[Avg EQ Price CYA] [decimal](38, 21) NULL,
	[Avg EQ Price] [decimal](38, 21) NULL,
	[Units] [decimal](17, 3) NULL,
	[Avg Unit Price] [decimal](38, 21) NULL,
	[Units YA] [decimal](17, 3) NULL,
	[Qual Unit Price] [decimal](17, 3) NULL,
	[Qual Unit Price CYA] [decimal](17, 3) NULL,
	[Any Disp # Disp] [decimal](17, 3) NULL,
	[Any Disp # Disp CYA] [decimal](17, 3) NULL,
	[Dol / $MM ACV / Item] [decimal](17, 3) NULL,
	[Dol / $MM ACV / Item CYA] [decimal](17, 3) NULL,
	[%ACV] [decimal](17, 3) NULL,
	[%ACV CYA] [decimal](17, 3) NULL,
	[TDP] [decimal](35, 6) NULL,
	[TDP YA] [decimal](37, 6) NULL,
	[TDP % Chg YA] [decimal](38, 6) NULL,
	[Incr Dol Chg] [decimal](18, 3) NULL,
	[Avg Unit Price CYA] [decimal](38, 21) NULL,
	[Base Dol Chg] [decimal](18, 3) NULL,
	[Avg # of Items] [decimal](17, 3) NULL,
	[Avg # of Items CYA] [decimal](17, 3) NULL,
	[Any Promo Units % Lift] [decimal](17, 3) NULL,
	[Any Promo Units % Lift CYA] [decimal](17, 3) NULL,
	[% Units Any Promo] [decimal](17, 3) NULL,
	[% Units Any Promo CYA] [decimal](17, 3) NULL,
	[Any Disp %ACV] [decimal](17, 3) NULL,
	[Any Disp %ACV CYA] [decimal](17, 3) NULL,
	[Qual CWW] [decimal](17, 3) NULL,
	[Qual CWW CYA] [decimal](17, 3) NULL,
	[Feat & Disp %ACV / Any Feat %ACV] [decimal](17, 3) NULL,
	[Feat & Disp %ACV / Any Feat %ACV CYA] [decimal](17, 3) NULL,
	[Incr Units] [decimal](17, 3) NULL,
	[Incr Units YA] [decimal](17, 3) NULL,
	[Price Decr Incr $] [decimal](17, 3) NULL,
	[Price Decr Incr $ YA] [decimal](17, 3) NULL,
	[Feat & Disp Incr $] [decimal](17, 3) NULL,
	[Feat & Disp Incr $ YA] [decimal](17, 3) NULL,
	[Disp w/o Feat Incr $] [decimal](17, 3) NULL,
	[Disp w/o Feat Incr $ YA] [decimal](17, 3) NULL,
	[Feat w/o Disp Incr $] [decimal](17, 3) NULL,
	[Feat w/o Disp Incr $ YA] [decimal](17, 3) NULL,
	[Incremental % Chg vs YA] [decimal](38, 15) NULL,
	[Base U Price Gap] [decimal](38, 21) NULL,
	[Base U Price Gap Chg vs YA] [decimal](38, 14) NULL,
	[Display Share] [decimal](38, 14) NULL,
	[Display Share YA] [decimal](38, 13) NULL,
	[Declining Display Share] [decimal](38, 13) NULL,
	[Display/Dollar Index] [decimal](38, 6) NULL,
	[LN ACV % Chg] [float] NULL,
	[LN Avg Item Chg] [float] NULL,
	[LN Price Decr Incr] [float] NULL,
	[LN Disp w/o Feat Incr] [float] NULL,
	[LN Feat w/o Disp Incr] [float] NULL,
	[LN Feat & Disp Incr] [float] NULL,
	[Rem Incr Dol] [decimal](21, 3) NULL,
	[Rem Incr Dol YA] [decimal](21, 3) NULL,
	[LN Velocity Chg] [float] NULL,
	[LN Rem Incr Dol] [float] NULL,
	[LN Base Price Chg] [float] NULL,
	[LN Base Sum] [float] NULL,
	[LN Incr Sum] [float] NULL,
	[Any Promo Unit Price % Disc] [decimal](17, 3) NULL,
	[Any Promo Unit Price % Disc CYA] [decimal](17, 3) NULL,
	[% Subsidized Units] [decimal](17, 3) NULL,
	[Subsidized Base Unit Chg vs YA] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BPC_PERIOD_NAMES]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BPC_PERIOD_NAMES](
	[Posting Period] [nvarchar](255) NULL,
	[PERIOD] [nvarchar](255) NULL,
	[YEAR] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BU_USER_MAP]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BU_USER_MAP](
	[Business_Unit] [nvarchar](255) NULL,
	[ID] [nvarchar](255) NULL,
	[Last Name] [nvarchar](255) NULL,
	[First Name] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Can_Demand_Inv_Prod]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Can_Demand_Inv_Prod](
	[LOC] [varchar](4) NULL,
	[MATERIAL] [varchar](11) NULL,
	[MATERIAL_DESCRIPTION] [varchar](40) NULL,
	[SC_PLANNER] [varchar](15) NULL,
	[TEAM_MGR] [varchar](15) NULL,
	[IP_CODE] [varchar](40) NULL,
	[SKU_TYPE] [varchar](15) NULL,
	[STANDARD_PRICE] [float] NULL,
	[ABC_CLASS] [varchar](2) NULL,
	[MATERIAL_TYPE] [varchar](40) NULL,
	[MATERIAL_GROUP] [varchar](40) NULL,
	[LOT_CODE] [varchar](10) NULL,
	[ONHAND] [float] NULL,
	[Onhand_Week] [date] NULL,
	[ALIGNED_STOPSHIP_DT] [date] NULL,
	[ALIGNED_EXPIRATION_DT] [date] NULL,
	[DOS] [int] NULL,
	[Min_DOS_Target] [float] NULL,
	[Max_DOS_Target] [float] NULL,
	[Extendable] [varchar](4) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Ship_Remain] [float] NULL,
	[mi_date] [date] NULL,
	[New_date] [date] NULL,
	[Planned_Prod] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAN_FCST_UPDATED]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAN_FCST_UPDATED](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[FCST] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAN_FCSTSUM]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAN_FCSTSUM](
	[MATERIAL] [varchar](11) NULL,
	[MATL_DESC] [varchar](30) NULL,
	[WEEK] [date] NULL,
	[DEMAND_CS] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAN_FCSTSUM_SUMMAT]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAN_FCSTSUM_SUMMAT](
	[MATERIAL] [varchar](11) NULL,
	[Material_description] [varchar](30) NULL,
	[Total_DEMAND_CS] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAN_INV_UPDATED]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAN_INV_UPDATED](
	[MATERIAL] [varchar](11) NULL,
	[LOT_CODE] [varchar](10) NULL,
	[STOPSHIP_DT] [date] NULL,
	[EXPIRATION_DT] [date] NULL,
	[ONHAND] [float] NULL,
	[NEW_ONHAND] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAN_INVENTORY1]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAN_INVENTORY1](
	[LOC] [varchar](4) NULL,
	[MATERIAL] [varchar](11) NULL,
	[MATERIAL_DESCRIPTION] [varchar](40) NULL,
	[Inventory_Update] [date] NULL,
	[SC_PLANNER] [varchar](15) NULL,
	[TEAM_MGR] [varchar](15) NULL,
	[IP_CODE] [varchar](40) NULL,
	[SKU_TYPE] [varchar](15) NULL,
	[STANDARD_PRICE] [float] NULL,
	[ABC_CLASS] [varchar](2) NULL,
	[MATERIAL_TYPE] [varchar](40) NULL,
	[MATERIAL_GROUP] [varchar](40) NULL,
	[MATERIAL_CLASS] [varchar](30) NULL,
	[MATERIAL_CLASS_DESCRIPTION] [varchar](30) NULL,
	[LOT_CODE] [varchar](10) NULL,
	[ONHAND] [float] NULL,
	[STOPSHIP_DT] [date] NULL,
	[EXPIRATION_DT] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAN_INVENTORY2]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAN_INVENTORY2](
	[LOC] [varchar](4) NULL,
	[MATERIAL] [varchar](11) NULL,
	[MATERIAL_DESCRIPTION] [varchar](40) NULL,
	[Inventory_Update] [date] NULL,
	[SC_PLANNER] [varchar](15) NULL,
	[TEAM_MGR] [varchar](15) NULL,
	[IP_CODE] [varchar](40) NULL,
	[SKU_TYPE] [varchar](15) NULL,
	[STANDARD_PRICE] [float] NULL,
	[ABC_CLASS] [varchar](2) NULL,
	[MATERIAL_TYPE] [varchar](40) NULL,
	[MATERIAL_GROUP] [varchar](40) NULL,
	[MATERIAL_CLASS] [varchar](30) NULL,
	[MATERIAL_CLASS_DESCRIPTION] [varchar](30) NULL,
	[LOT_CODE] [varchar](10) NULL,
	[ONHAND] [float] NULL,
	[STOPSHIP_DT] [date] NULL,
	[EXPIRATION_DT] [date] NULL,
	[ALIGNED_STOPSHIP_DT] [date] NULL,
	[ALIGNED_EXPIRATION_DT] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Canada_Data_Mart_View]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Canada_Data_Mart_View](
	[BW Period] [varchar](8) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[BRAND] [varchar](40) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[DESCRIPTION] [varchar](40) NULL,
	[LE Ship $] [decimal](17, 2) NULL,
	[Actual Ship CS] [decimal](17, 3) NULL,
	[Actual Ship LBS] [decimal](17, 3) NULL,
	[Actual Ship KG] [decimal](17, 3) NULL,
	[Plan Ship CS] [decimal](17, 3) NULL,
	[Plan Ship KG] [decimal](17, 3) NULL,
	[Plan Ship $] [decimal](17, 2) NULL,
	[Calendar Week] [varchar](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Canada_Demand_Inventory]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Canada_Demand_Inventory](
	[LOC] [varchar](4) NULL,
	[MATERIAL] [varchar](11) NULL,
	[MATERIAL_DESCRIPTION] [varchar](40) NULL,
	[SC_PLANNER] [varchar](15) NULL,
	[TEAM_MGR] [varchar](15) NULL,
	[IP_CODE] [varchar](40) NULL,
	[SKU_TYPE] [varchar](15) NULL,
	[STANDARD_PRICE] [float] NULL,
	[ABC_CLASS] [varchar](2) NULL,
	[MATERIAL_TYPE] [varchar](40) NULL,
	[MATERIAL_GROUP] [varchar](40) NULL,
	[LOT_CODE] [varchar](10) NULL,
	[ONHAND] [float] NULL,
	[Onhand_Week] [date] NULL,
	[ALIGNED_STOPSHIP_DT] [date] NULL,
	[ALIGNED_EXPIRATION_DT] [date] NULL,
	[DOS] [int] NULL,
	[Min_DOS_Target] [float] NULL,
	[Max_DOS_Target] [float] NULL,
	[Extendable] [varchar](4) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DART_RISK_TEST]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DART_RISK_TEST](
	[LOC] [varchar](4) NULL,
	[MATERIAL] [varchar](11) NULL,
	[Material_Description] [varchar](40) NULL,
	[MATERIAL_GROUP] [varchar](40) NULL,
	[SC_PLANNER] [varchar](15) NULL,
	[TEAM_MGR] [varchar](15) NULL,
	[IP_CODE] [varchar](40) NULL,
	[SKU_TYPE] [varchar](15) NULL,
	[STANDARD_PRICE] [float] NULL,
	[ABC_CLASS] [varchar](2) NULL,
	[MATERIAL_TYPE] [varchar](40) NULL,
	[LOT_CODE] [varchar](10) NULL,
	[ONHAND] [float] NULL,
	[Onhand_Week] [date] NULL,
	[ALIGNED_STOPSHIP_DT] [date] NULL,
	[ALIGNED_EXPIRATION_DT] [date] NULL,
	[DOS] [int] NULL,
	[Min_DOS_Target] [float] NULL,
	[Max_DOS_Target] [float] NULL,
	[Extendable] [varchar](4) NULL,
	[WEEK] [date] NULL,
	[Demand_Cs] [float] NULL,
	[Ship_Remain] [float] NULL,
	[New_date] [date] NULL,
	[Planned_prod] [float] NULL,
	[INV_AT_RISK] [float] NULL,
	[INV_AT_RISK_DOL] [money] NULL,
	[unmet_demand] [float] NULL,
	[Supply_Risk_Dollars] [money] NULL,
	[Priority] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DART_RISK_VERSION_1]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DART_RISK_VERSION_1](
	[MATERIAL] [varchar](40) NULL,
	[Material_Description] [varchar](200) NULL,
	[DEMAND_CS] [float] NULL,
	[MATERIAL_TYPE] [varchar](40) NULL,
	[Inventory_Update] [date] NULL,
	[SNAPSHOT_DATE] [date] NULL,
	[TotalGSV] [money] NULL,
	[LOC] [varchar](4) NULL,
	[LOT_CODE] [varchar](10) NULL,
	[SC_PLANNER] [varchar](15) NULL,
	[TEAM_MGR] [varchar](15) NULL,
	[SKU_TYPE] [varchar](15) NULL,
	[IP_CODE] [varchar](40) NULL,
	[ONHAND] [float] NULL,
	[Case_Cost] [money] NULL,
	[ALIGNED_STOPSHIP_DT] [date] NULL,
	[ALIGNED_EXPIRATION_DT] [date] NULL,
	[Priority] [varchar](255) NULL,
	[Category] [varchar](23) NULL,
	[Brand] [varchar](10) NULL,
	[Brand_Desc] [varchar](33) NULL,
	[DOS] [int] NULL,
	[TotalDOS] [int] NULL,
	[TotalOnhand] [float] NULL,
	[UNMET_DEM] [float] NULL,
	[EXCESS_DOS] [varchar](10) NULL,
	[UNMET_DEM_AGE] [float] NULL,
	[SHIPREMAIN] [numeric](12, 0) NULL,
	[AGE_RISK_CS] [float] NULL,
	[AGE_RISK_DOLLAR] [money] NULL,
	[UNMET_GSV] [money] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DART_RISK_VERSION_2]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DART_RISK_VERSION_2](
	[MATERIAL] [varchar](11) NULL,
	[LOT_CODE] [varchar](10) NULL,
	[ALIGNED_STOPSHIP] [date] NULL,
	[EXPIRATION_DT] [date] NULL,
	[INV_AT_RISK] [float] NULL,
	[INV_AT_RISK_DOL] [money] NULL,
	[WEEK] [date] NULL,
	[Unmet_demand] [float] NULL,
	[Unmet_dem_dol] [money] NULL,
	[demand] [float] NULL,
	[ONHAND] [float] NULL,
	[Extendable] [varchar](3) NULL,
	[Total_DEMAND_CS] [float] NULL,
	[TOTAL_ONHAND] [float] NULL,
	[Proj_Production] [varchar](255) NULL,
	[Priority] [varchar](255) NULL,
	[Category] [varchar](23) NULL,
	[Brand] [varchar](10) NULL,
	[Brand_Desc] [varchar](33) NULL,
	[MATERIAL_DESCRIPTION] [varchar](40) NULL,
	[SC_PLANNER] [varchar](15) NULL,
	[TEAM_MGR] [varchar](15) NULL,
	[Ship_Remain] [float] NULL,
	[DOS] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DART_RISK_VERSION_3]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DART_RISK_VERSION_3](
	[LOC] [varchar](4) NULL,
	[MATERIAL] [varchar](11) NULL,
	[MATERIAL_DESCRIPTION] [varchar](40) NULL,
	[SC_PLANNER] [varchar](15) NULL,
	[TEAM_MGR] [varchar](15) NULL,
	[IP_CODE] [varchar](40) NULL,
	[SKU_TYPE] [varchar](15) NULL,
	[STANDARD_PRICE] [float] NULL,
	[ABC_CLASS] [varchar](2) NULL,
	[MATERIAL_TYPE] [varchar](40) NULL,
	[MATERIAL_GROUP] [varchar](40) NULL,
	[LOT_CODE] [varchar](10) NULL,
	[ONHAND] [float] NULL,
	[Onhand_Week] [date] NULL,
	[ALIGNED_STOPSHIP_DT] [date] NULL,
	[ALIGNED_EXPIRATION_DT] [date] NULL,
	[DOS] [int] NULL,
	[Min_DOS_Target] [float] NULL,
	[Max_DOS_Target] [float] NULL,
	[Extendable] [varchar](4) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Ship_Remain] [float] NULL,
	[mi_date] [date] NULL,
	[New_date] [date] NULL,
	[Planned_Prod] [float] NULL,
	[INV_AT_RISK] [float] NULL,
	[INV_AT_RISK_DOL] [money] NULL,
	[unmet_demand] [float] NULL,
	[Supply_Risk_Dollars] [money] NULL,
	[Priority] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DART_RISK_VERSION_3_B]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DART_RISK_VERSION_3_B](
	[LOC] [varchar](4) NULL,
	[MATERIAL] [varchar](11) NULL,
	[MATERIAL_DESCRIPTION] [varchar](40) NULL,
	[SC_PLANNER] [varchar](15) NULL,
	[TEAM_MGR] [varchar](15) NULL,
	[IP_CODE] [varchar](40) NULL,
	[SKU_TYPE] [varchar](15) NULL,
	[STANDARD_PRICE] [float] NULL,
	[ABC_CLASS] [varchar](2) NULL,
	[MATERIAL_TYPE] [varchar](40) NULL,
	[MATERIAL_GROUP] [varchar](40) NULL,
	[LOT_CODE] [varchar](10) NULL,
	[ONHAND] [float] NULL,
	[Onhand_Week] [date] NULL,
	[ALIGNED_STOPSHIP_DT] [date] NULL,
	[ALIGNED_EXPIRATION_DT] [date] NULL,
	[DOS] [int] NULL,
	[Min_DOS_Target] [float] NULL,
	[Max_DOS_Target] [float] NULL,
	[Extendable] [varchar](4) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Ship_Remain] [float] NULL,
	[mi_date] [date] NULL,
	[New_date] [date] NULL,
	[Planned_Prod] [float] NULL,
	[INV_AT_RISK] [float] NULL,
	[INV_AT_RISK_DOL] [money] NULL,
	[unmet_demand] [float] NULL,
	[Supply_Risk_Dollars] [money] NULL,
	[Priority] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DART_RISK_VERSION_3_C]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DART_RISK_VERSION_3_C](
	[LOC] [varchar](4) NULL,
	[MATERIAL] [varchar](11) NULL,
	[MATERIAL_DESCRIPTION] [varchar](40) NULL,
	[MATERIAL_GROUP] [varchar](40) NULL,
	[SC_PLANNER] [varchar](15) NULL,
	[TEAM_MGR] [varchar](15) NULL,
	[IP_CODE] [varchar](40) NULL,
	[SKU_TYPE] [varchar](15) NULL,
	[STANDARD_PRICE] [float] NULL,
	[ABC_CLASS] [varchar](2) NULL,
	[MATERIAL_TYPE] [varchar](40) NULL,
	[LOT_CODE] [varchar](10) NULL,
	[ONHAND] [float] NULL,
	[Onhand_Week] [date] NULL,
	[ALIGNED_STOPSHIP_DT] [date] NULL,
	[ALIGNED_EXPIRATION_DT] [date] NULL,
	[DOS] [int] NULL,
	[Min_DOS_Target] [float] NULL,
	[Max_DOS_Target] [float] NULL,
	[Extendable] [varchar](4) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Ship_Remain] [float] NULL,
	[New_date] [date] NULL,
	[Planned_Prod] [float] NULL,
	[INV_AT_RISK] [float] NULL,
	[INV_AT_RISK_DOL] [money] NULL,
	[unmet_demand] [float] NULL,
	[Supply_Risk_Dollars] [money] NULL,
	[Priority] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DART_RISK_VERSION_3_Test]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DART_RISK_VERSION_3_Test](
	[LOC] [varchar](4) NULL,
	[MATERIAL] [varchar](11) NULL,
	[MATERIAL_DESCRIPTION] [varchar](40) NULL,
	[SC_PLANNER] [varchar](15) NULL,
	[TEAM_MGR] [varchar](15) NULL,
	[IP_CODE] [varchar](40) NULL,
	[SKU_TYPE] [varchar](15) NULL,
	[STANDARD_PRICE] [float] NULL,
	[ABC_CLASS] [varchar](2) NULL,
	[MATERIAL_TYPE] [varchar](40) NULL,
	[MATERIAL_GROUP] [varchar](40) NULL,
	[LOT_CODE] [varchar](10) NULL,
	[ONHAND] [float] NULL,
	[Onhand_Week] [date] NULL,
	[ALIGNED_STOPSHIP_DT] [date] NULL,
	[ALIGNED_EXPIRATION_DT] [date] NULL,
	[DOS] [int] NULL,
	[Min_DOS_Target] [float] NULL,
	[Max_DOS_Target] [float] NULL,
	[Extendable] [varchar](4) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Ship_Remain] [float] NULL,
	[mi_date] [date] NULL,
	[New_date] [date] NULL,
	[Planned_Prod] [float] NULL,
	[INV_AT_RISK] [float] NULL,
	[INV_AT_RISK_DOL] [money] NULL,
	[unmet_demand] [float] NULL,
	[Supply_Risk_Dollars] [money] NULL,
	[Priority] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DART_RISK_VERSION_4]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DART_RISK_VERSION_4](
	[Category] [varchar](23) NULL,
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[STOCK] [float] NULL,
	[Demand_CS] [float] NULL,
	[Production_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[Proj_Inventory_CS] [float] NULL,
	[DOS] [int] NULL,
	[Unmet_Dem_CS] [float] NULL,
	[LOT_CODE] [varchar](10) NULL,
	[Inventory_Risk_CS] [numeric](10, 0) NULL,
	[STOPSHIP_DT] [date] NULL,
	[EXPIRATION_DT] [date] NULL,
	[Matl_desc] [varchar](41) NULL,
	[No_demand] [varchar](12) NULL,
	[Material_Group] [varchar](24) NULL,
	[Material_Type] [varchar](38) NULL,
	[Priority] [varchar](255) NULL,
	[Min_DOS_Target] [float] NULL,
	[Max_DOS_Target] [float] NULL,
	[SC_PLANNER] [varchar](15) NULL,
	[TEAM_MGR] [varchar](15) NULL,
	[SKU_TYPE] [varchar](15) NULL,
	[COP] [float] NULL,
	[Inventory_Risk_dol] [money] NULL,
	[Supply_Risk_dol] [money] NULL,
	[Extendable] [varchar](4) NULL,
	[Age_Supply_Risk] [varchar](4) NULL,
	[Cases_in_transit] [float] NULL,
	[Cases_delivered] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DAY10_temp5]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DAY10_temp5](
	[PlanTo#] [float] NULL,
	[Current PT name] [varchar](255) NULL,
	[Sales Mgmt B name] [varchar](255) NULL,
	[Nielsen Market] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[deb_sales_hierarchy]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deb_sales_hierarchy](
	[PT# TEXT] [nvarchar](255) NULL,
	[PT#] [nvarchar](255) NULL,
	[PT NAME] [nvarchar](255) NULL,
	[DEB HIERARCHY] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EG_USERS__delete]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EG_USERS__delete](
	[Promotion ID] [varchar](24) NULL,
	[CHANGED_BY] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[final_forecast_sim]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[final_forecast_sim](
	[discount_lift] [float] NULL,
	[DISCOUNT2] [float] NULL,
	[PARMS_LOGDISC] [float] NULL,
	[fo_lift] [float] NULL,
	[fo] [float] NULL,
	[PARMS_LOGFO] [float] NULL,
	[do_lift] [float] NULL,
	[do] [float] NULL,
	[PARMS_LOGDO] [float] NULL,
	[fd_lift] [float] NULL,
	[fd] [float] NULL,
	[PARMS_LOGFD] [float] NULL,
	[INCREMENTAL_LIFT] [float] NULL,
	[TOTAL_PROMO_UNITS] [float] NULL,
	[Sugg_Base_Volume] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[finance]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[finance](
	[Channel] [nvarchar](255) NULL,
	[CC] [nvarchar](255) NULL,
	[Profit_Center] [nvarchar](255) NULL,
	[Cur.] [nvarchar](255) NULL,
	[Summary_Account] [nvarchar](255) NULL,
	[Year.Period] [nvarchar](255) NULL,
	[Version] [nvarchar](255) NULL,
	[Amount] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FSU_SALES_OUTLOOK_FEED_FROM_SAS]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FSU_SALES_OUTLOOK_FEED_FROM_SAS](
	[Level_A] [varchar](255) NULL,
	[Level_B] [varchar](255) NULL,
	[Level_C] [varchar](255) NULL,
	[Level_D] [varchar](255) NULL,
	[Level_E] [varchar](255) NULL,
	[PLANTO_NUMBER] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[Tier_Name] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[POSTING_PERIOD] [varchar](12) NULL,
	[YEAR] [varchar](4) NULL,
	[BUD_GSV] [numeric](21, 0) NULL,
	[BUD_KMF] [numeric](21, 0) NULL,
	[BUD_KMF_ADJ] [numeric](21, 0) NULL,
	[IBP_GSV] [numeric](21, 0) NULL,
	[IBP_KMF] [numeric](21, 0) NULL,
	[TPM_LE_GSV] [numeric](18, 2) NULL,
	[TPM_LE_KMF] [numeric](18, 2) NULL,
	[LE_COP] [numeric](18, 2) NULL,
	[LE_LBS] [numeric](18, 3) NULL,
	[SE_GSV_ORIG] [numeric](21, 0) NULL,
	[SE_KMF_ORIG] [numeric](21, 0) NULL,
	[SE_KMF_ADJ] [numeric](21, 0) NULL,
	[YAG_TPM_LE_GSV] [numeric](18, 2) NULL,
	[YAG_TPM_LE_KMF] [numeric](18, 2) NULL,
	[YAG_LE_COP] [numeric](18, 2) NULL,
	[YAG_LE_LBS] [numeric](18, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IBP_ALTERNATE_CATEGORIES_201710242124]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IBP_ALTERNATE_CATEGORIES_201710242124](
	[PRD_CATG] [nvarchar](255) NULL,
	[BPC_ACCT] [nvarchar](255) NULL,
	[BUS_UNIT] [nvarchar](255) NULL,
	[DATASRC] [nvarchar](255) NULL,
	[PLAN_TO] [nvarchar](255) NULL,
	[RPTCURRENCY] [nvarchar](255) NULL,
	[TIME] [nvarchar](255) NULL,
	[VERSION] [nvarchar](255) NULL,
	[APPTYPE] [nvarchar](255) NULL,
	[SIGNEDDATA] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[INDIRECT_MAPPING]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INDIRECT_MAPPING](
	[Source_PT_Num] [nvarchar](255) NULL,
	[Source_PT_Name] [nvarchar](255) NULL,
	[Ind_PT_Num] [nvarchar](255) NULL,
	[Ind_PT_Name] [nvarchar](255) NULL,
	[BU] [nvarchar](255) NULL,
	[Cat] [nvarchar](255) NULL,
	[Per_of_Source] [nvarchar](255) NULL,
	[Per_of_PT] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[INDIRECT_PERCENT]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INDIRECT_PERCENT](
	[CUSTOMER] [varchar](10) NULL,
	[CandS] [varchar](6) NOT NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[Per_of_PT] [nvarchar](255) NULL,
	[ACTUALS] [decimal](38, 2) NULL,
	[ONLY_IND] [decimal](38, 4) NULL,
	[TOTALS] [decimal](38, 4) NULL,
	[PERCENT_] [decimal](38, 6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[keep_list]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[keep_list](
	[MATERIAL] [varchar](11) NULL,
	[first_lc] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_AMPS_GM_FIN]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_AMPS_GM_FIN](
	[All Markets] [nvarchar](255) NULL,
	[All Products] [nvarchar](255) NULL,
	[All Periods] [nvarchar](255) NULL,
	[Dol] [decimal](20, 5) NULL,
	[Dol % Chg YA] [decimal](20, 5) NULL,
	[Base $ % Chg YA] [decimal](20, 5) NULL,
	[Dol CYA] [decimal](20, 5) NULL,
	[Incr $] [decimal](20, 5) NULL,
	[Incr $ YA] [decimal](20, 5) NULL,
	[EQ % Chg YA] [decimal](20, 5) NULL,
	[Units % Chg YA] [decimal](20, 5) NULL,
	[% Subsidized Units] [decimal](20, 5) NULL,
	[% Subsidized Units CYA] [decimal](20, 5) NULL,
	[Dol Shr - Prompt] [decimal](20, 5) NULL,
	[Dol Shr CYA - Prompt] [decimal](20, 5) NULL,
	[Any Promo $ % Chg YA] [decimal](20, 5) NULL,
	[No Promo $ % Chg YA] [decimal](20, 5) NULL,
	[% $ No Promo] [decimal](20, 5) NULL,
	[Avg EQ Price CYA] [decimal](20, 5) NULL,
	[Avg EQ Price] [decimal](20, 5) NULL,
	[Any Promo Unit Price % Disc] [decimal](20, 5) NULL,
	[Any Promo Unit Price % Disc CYA] [decimal](20, 5) NULL,
	[Base Unit Price YA] [decimal](20, 5) NULL,
	[Base Unit Price] [decimal](20, 5) NULL,
	[Base Unit Price CYA] [decimal](20, 5) NULL,
	[Avg Unit Price] [decimal](20, 5) NULL,
	[Avg Unit Price CYA] [decimal](20, 5) NULL,
	[Qual Unit Price] [decimal](20, 5) NULL,
	[Qual Unit Price CYA] [decimal](20, 5) NULL,
	[Any Disp # Disp] [decimal](20, 5) NULL,
	[Any Disp # Disp CYA] [decimal](20, 5) NULL,
	[Dol / $MM ACV / Item] [decimal](20, 5) NULL,
	[Dol / $MM ACV / Item CYA] [decimal](20, 5) NULL,
	[%ACV] [decimal](20, 5) NULL,
	[%ACV CYA] [decimal](20, 5) NULL,
	[TDP] [decimal](20, 5) NULL,
	[TDP % Chg YA] [decimal](20, 5) NULL,
	[Avg # of Items] [decimal](20, 5) NULL,
	[Avg # of Items CYA] [decimal](20, 5) NULL,
	[Any Promo Units % Lift] [decimal](20, 5) NULL,
	[Any Promo Units % Lift CYA] [decimal](20, 5) NULL,
	[% Units Any Promo] [decimal](20, 5) NULL,
	[% Units Any Promo CYA] [decimal](20, 5) NULL,
	[Any Disp %ACV] [decimal](20, 5) NULL,
	[Any Disp %ACV CYA] [decimal](20, 5) NULL,
	[Qual CWW] [decimal](20, 5) NULL,
	[Qual CWW CYA] [decimal](20, 5) NULL,
	[Feat & Disp %ACV / Any Feat %ACV] [decimal](20, 5) NULL,
	[Feat & Disp %ACV / Any Feat %ACV CYA] [decimal](20, 5) NULL,
	[Category] [nvarchar](255) NULL,
	[Mask] [nvarchar](255) NULL,
	[Nielsen Name] [nvarchar](255) NULL,
	[Order] [nvarchar](255) NULL,
	[Level] [nvarchar](255) NULL,
	[Agg] [nvarchar](255) NULL,
	[Level Name] [nvarchar](255) NULL,
	[Brand] [nvarchar](255) NULL,
	[Corp] [nvarchar](255) NULL,
	[Segment] [nvarchar](255) NULL,
	[Sub Segment] [nvarchar](255) NULL,
	[BW Category] [nvarchar](255) NULL,
	[BW BU] [nvarchar](255) NULL,
	[BW Number] [nvarchar](255) NULL,
	[BW Name] [nvarchar](255) NULL,
	[Profit Center] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_AMPS_GM_FIN_old]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_AMPS_GM_FIN_old](
	[All Markets] [nvarchar](255) NULL,
	[Nielsen Name] [nvarchar](255) NULL,
	[Mask] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Order] [nvarchar](255) NULL,
	[Level] [nvarchar](255) NULL,
	[Agg] [nvarchar](255) NULL,
	[Level Name] [nvarchar](255) NULL,
	[Brand] [nvarchar](255) NULL,
	[Corp] [nvarchar](255) NULL,
	[Segment] [nvarchar](255) NULL,
	[Sub Segment] [nvarchar](255) NULL,
	[BW Category] [nvarchar](255) NULL,
	[BW BU] [nvarchar](255) NULL,
	[BW Number] [nvarchar](255) NULL,
	[BW Name] [nvarchar](255) NULL,
	[Dol] [decimal](20, 5) NULL,
	[Dol % Chg YA] [decimal](20, 5) NULL,
	[Base $ % Chg YA] [decimal](20, 5) NULL,
	[Dol CYA] [decimal](20, 5) NULL,
	[Incr $] [decimal](20, 5) NULL,
	[Incr $ YA] [decimal](20, 5) NULL,
	[EQ % Chg YA] [decimal](20, 5) NULL,
	[Units % Chg YA] [decimal](20, 5) NULL,
	[% Subsidized Units] [decimal](20, 5) NULL,
	[% Subsidized Units CYA] [decimal](20, 5) NULL,
	[Dol Shr - Prompt] [decimal](20, 5) NULL,
	[Dol Shr CYA - Prompt] [decimal](20, 5) NULL,
	[Any Promo $ % Chg YA] [decimal](20, 5) NULL,
	[No Promo $ % Chg YA] [decimal](20, 5) NULL,
	[% $ No Promo] [decimal](20, 5) NULL,
	[Avg EQ Price CYA] [decimal](20, 5) NULL,
	[Avg EQ Price] [decimal](20, 5) NULL,
	[Any Promo Unit Price % Disc] [decimal](20, 5) NULL,
	[Any Promo Unit Price % Disc CYA] [decimal](20, 5) NULL,
	[Base Unit Price YA] [decimal](20, 5) NULL,
	[Base Unit Price] [decimal](20, 5) NULL,
	[Base Unit Price CYA] [decimal](20, 5) NULL,
	[Avg Unit Price] [decimal](20, 5) NULL,
	[Avg Unit Price CYA] [decimal](20, 5) NULL,
	[Qual Unit Price] [decimal](20, 5) NULL,
	[Qual Unit Price CYA] [decimal](20, 5) NULL,
	[Any Disp # Disp] [decimal](20, 5) NULL,
	[Any Disp # Disp CYA] [decimal](20, 5) NULL,
	[Dol / $MM ACV / Item] [decimal](20, 5) NULL,
	[Dol / $MM ACV / Item CYA] [decimal](20, 5) NULL,
	[%ACV] [decimal](20, 5) NULL,
	[%ACV CYA] [decimal](20, 5) NULL,
	[TDP] [decimal](20, 5) NULL,
	[TDP % Chg YA] [decimal](20, 5) NULL,
	[Avg # of Items] [decimal](20, 5) NULL,
	[Avg # of Items CYA] [decimal](20, 5) NULL,
	[Any Promo Units % Lift] [decimal](20, 5) NULL,
	[Any Promo Units % Lift CYA] [decimal](20, 5) NULL,
	[% Units Any Promo] [decimal](20, 5) NULL,
	[% Units Any Promo CYA] [decimal](20, 5) NULL,
	[Any Disp %ACV] [decimal](20, 5) NULL,
	[Any Disp %ACV CYA] [decimal](20, 5) NULL,
	[Qual CWW] [decimal](20, 5) NULL,
	[Qual CWW CYA] [decimal](20, 5) NULL,
	[Feat & Disp %ACV / Any Feat %ACV] [decimal](20, 5) NULL,
	[Feat & Disp %ACV / Any Feat %ACV CYA] [decimal](20, 5) NULL,
	[All Periods] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_AMPS_US_FINAL]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_AMPS_US_FINAL](
	[ALL_PRODUCTS] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Mask] [nvarchar](255) NULL,
	[Nielsen Name] [nvarchar](255) NULL,
	[Order] [nvarchar](255) NULL,
	[Level] [nvarchar](255) NULL,
	[Agg] [nvarchar](255) NULL,
	[Level Name] [nvarchar](255) NULL,
	[Brand] [nvarchar](255) NULL,
	[Corp] [nvarchar](255) NULL,
	[Segment] [nvarchar](255) NULL,
	[Sub Segment] [nvarchar](255) NULL,
	[BW Category] [nvarchar](255) NULL,
	[BW BU] [nvarchar](255) NULL,
	[BW Number] [nvarchar](255) NULL,
	[BW Name] [nvarchar](255) NULL,
	[Profit Center] [nvarchar](255) NULL,
	[COMBO] [nvarchar](1020) NULL,
	[All Markets] [nvarchar](255) NULL,
	[All Products] [nvarchar](510) NULL,
	[All Periods] [nvarchar](255) NULL,
	[Dol] [decimal](20, 5) NULL,
	[Dol % Chg YA] [decimal](20, 5) NULL,
	[Base $ % Chg YA] [decimal](20, 5) NULL,
	[Dol CYA] [decimal](20, 5) NULL,
	[EQ % Chg YA] [decimal](20, 5) NULL,
	[Incr $] [decimal](20, 5) NULL,
	[Incr $ YA] [decimal](20, 5) NULL,
	[Units % Chg YA] [decimal](20, 5) NULL,
	[Dol Shr - Prompt] [decimal](20, 5) NULL,
	[Dol Shr CYA - Prompt] [decimal](20, 5) NULL,
	[Any Promo $ % Chg YA] [decimal](20, 5) NULL,
	[No Promo $ % Chg YA] [decimal](20, 5) NULL,
	[% $ No Promo] [decimal](20, 5) NULL,
	[Avg EQ Price CYA] [decimal](20, 5) NULL,
	[Avg EQ Price] [decimal](20, 5) NULL,
	[Base Unit Price YA] [decimal](20, 5) NULL,
	[Base Unit Price] [decimal](20, 5) NULL,
	[Base Unit Price CYA] [decimal](20, 5) NULL,
	[Avg Unit Price] [decimal](20, 5) NULL,
	[Avg Unit Price CYA] [decimal](20, 5) NULL,
	[Qual Unit Price] [decimal](20, 5) NULL,
	[Qual Unit Price CYA] [decimal](20, 5) NULL,
	[Any Disp # Disp] [decimal](20, 5) NULL,
	[Any Disp # Disp CYA] [decimal](20, 5) NULL,
	[Dol / $MM ACV / Item] [decimal](20, 5) NULL,
	[Dol / $MM ACV / Item CYA] [decimal](20, 5) NULL,
	[%ACV] [decimal](20, 5) NULL,
	[%ACV CYA] [decimal](20, 5) NULL,
	[TDP] [decimal](20, 5) NULL,
	[TDP % Chg YA] [decimal](20, 5) NULL,
	[Avg # of Items] [decimal](20, 5) NULL,
	[Avg # of Items CYA] [decimal](20, 5) NULL,
	[Any Promo Units % Lift] [decimal](20, 5) NULL,
	[Any Promo Units % Lift CYA] [decimal](20, 5) NULL,
	[% Units Any Promo] [decimal](20, 5) NULL,
	[% Units Any Promo CYA] [decimal](20, 5) NULL,
	[Any Disp %ACV] [decimal](20, 5) NULL,
	[Any Disp %ACV CYA] [decimal](20, 5) NULL,
	[Qual CWW] [decimal](20, 5) NULL,
	[Qual CWW CYA] [decimal](20, 5) NULL,
	[Feat & Disp %ACV / Any Feat %ACV] [decimal](20, 5) NULL,
	[Feat & Disp %ACV / Any Feat %ACV CYA] [decimal](20, 5) NULL,
	[Incremental % Chg vs YA] [decimal](38, 12) NULL,
	[Base U Price Gap] [decimal](38, 6) NULL,
	[Base U Price Gap Chg vs YA] [decimal](38, 6) NULL,
	[Item Share of Category] [decimal](38, 6) NULL,
	[Item Share of Category CYA] [numeric](38, 6) NULL,
	[Display Share] [decimal](38, 13) NULL,
	[Display Share YA] [decimal](38, 12) NULL,
	[Declining Display Share] [decimal](38, 12) NULL,
	[Display/Dollar Index] [decimal](38, 6) NULL,
	[Any Promo Unit Price % Disc] [decimal](20, 5) NULL,
	[Any Promo Unit Price % Disc CYA] [decimal](20, 5) NULL,
	[% Subsidized Units] [decimal](20, 5) NULL,
	[Subsidized Base Unit Chg vs YA] [decimal](20, 5) NULL,
	[Display/Dollar Index CYA] [decimal](38, 6) NULL,
	[Display/Dollar Index YAG] [decimal](38, 6) NULL,
	[Week_Ending] [nvarchar](8) NULL,
	[Time] [nvarchar](255) NULL,
	[MKT Mask] [varchar](250) NULL,
	[Mkt Sort Order] [varchar](250) NULL,
	[Mkt Grouping Level] [varchar](250) NULL,
	[All Regions] [varchar](250) NULL,
	[Executive] [varchar](250) NULL,
	[East] [varchar](250) NULL,
	[West] [varchar](250) NULL,
	[Channels] [varchar](250) NULL,
	[Totals] [varchar](250) NULL,
	[Customer] [varchar](250) NULL,
	[Customer Sort Order] [varchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_AOD_NIELSEN_AMPS_TABLEAU]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_AOD_NIELSEN_AMPS_TABLEAU](
	[Source File] [nvarchar](255) NULL,
	[Source Tab] [nvarchar](255) NULL,
	[Extract Date] [nvarchar](255) NULL,
	[All Markets] [nvarchar](255) NULL,
	[All Products] [nvarchar](255) NULL,
	[All Periods] [nvarchar](255) NULL,
	[Dol] [decimal](17, 3) NULL,
	[Incr $] [decimal](17, 3) NULL,
	[Incr $ YA] [decimal](17, 3) NULL,
	[Base $] [decimal](17, 3) NULL,
	[Dol YA] [decimal](17, 3) NULL,
	[Base $ YA] [decimal](17, 3) NULL,
	[EQ] [decimal](17, 3) NULL,
	[EQ YA] [decimal](17, 3) NULL,
	[% Subsidized Units] [decimal](17, 3) NULL,
	[% Subsidized Units CYA] [decimal](17, 3) NULL,
	[Units] [decimal](17, 3) NULL,
	[Base Units] [decimal](17, 3) NULL,
	[Base Units YA] [decimal](17, 3) NULL,
	[Incr Units] [decimal](17, 3) NULL,
	[Incr Units YA] [decimal](17, 3) NULL,
	[Units YA] [decimal](17, 3) NULL,
	[Any Promo $ % Chg YA] [decimal](17, 3) NULL,
	[No Promo $ % Chg YA] [decimal](17, 3) NULL,
	[% $ No Promo] [decimal](17, 3) NULL,
	[Price Decr Incr $] [decimal](17, 3) NULL,
	[Price Decr Incr $ YA] [decimal](17, 3) NULL,
	[Feat & Disp Incr $] [decimal](17, 3) NULL,
	[Feat & Disp Incr $ YA] [decimal](17, 3) NULL,
	[Disp w/o Feat Incr $] [decimal](17, 3) NULL,
	[Disp w/o Feat Incr $ YA] [decimal](17, 3) NULL,
	[Feat w/o Disp Incr $] [decimal](17, 3) NULL,
	[Feat w/o Disp Incr $ YA] [decimal](17, 3) NULL,
	[Any Promo Unit Price % Disc] [decimal](17, 3) NULL,
	[Any Promo Unit Price % Disc CYA] [decimal](17, 3) NULL,
	[Qual Unit Price] [decimal](17, 3) NULL,
	[Qual Unit Price CYA] [decimal](17, 3) NULL,
	[Any Disp # Disp] [decimal](17, 3) NULL,
	[Any Disp # Disp CYA] [decimal](17, 3) NULL,
	[Dol / $MM ACV / Item] [decimal](17, 3) NULL,
	[Dol / $MM ACV / Item CYA] [decimal](17, 3) NULL,
	[%ACV] [decimal](17, 3) NULL,
	[%ACV CYA] [decimal](17, 3) NULL,
	[Avg # of Items] [decimal](17, 3) NULL,
	[Avg # of Items CYA] [decimal](17, 3) NULL,
	[Any Promo Units % Lift] [decimal](17, 3) NULL,
	[Any Promo Units % Lift CYA] [decimal](17, 3) NULL,
	[% Units Any Promo] [decimal](17, 3) NULL,
	[% Units Any Promo CYA] [decimal](17, 3) NULL,
	[Any Disp %ACV] [decimal](17, 3) NULL,
	[Any Disp %ACV CYA] [decimal](17, 3) NULL,
	[Qual CWW] [decimal](17, 3) NULL,
	[Qual CWW CYA] [decimal](17, 3) NULL,
	[Feat & Disp %ACV / Any Feat %ACV] [decimal](17, 3) NULL,
	[Feat & Disp %ACV / Any Feat %ACV CYA] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_AOD_NIELSEN_ICEBERGS_EXPORT1]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_AOD_NIELSEN_ICEBERGS_EXPORT1](
	[Source File] [nvarchar](255) NULL,
	[Source Tab] [nvarchar](255) NULL,
	[Extract Date] [nvarchar](255) NULL,
	[All Markets] [nvarchar](255) NULL,
	[All Products] [nvarchar](255) NULL,
	[All Periods] [nvarchar](255) NULL,
	[$] [decimal](17, 3) NULL,
	[$ % Chg YA] [decimal](17, 3) NULL,
	[Base $ % Chg YA] [decimal](17, 3) NULL,
	[Incr $ % Chg YA] [decimal](17, 3) NULL,
	[$ Shr - Prompt] [decimal](17, 3) NULL,
	[$ Shr CYA - Prompt] [decimal](17, 3) NULL,
	[KEL_CATEGORY] [nvarchar](255) NULL,
	[KEL_SUB-SEGMENT] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_AOD_NIELSEN_ICEBERGS_EXPORT2]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_AOD_NIELSEN_ICEBERGS_EXPORT2](
	[Source File] [nvarchar](255) NULL,
	[Source Tab] [nvarchar](255) NULL,
	[Extract Date] [nvarchar](255) NULL,
	[All Markets] [nvarchar](255) NULL,
	[All Products] [nvarchar](255) NULL,
	[All Periods] [nvarchar](255) NULL,
	[$] [decimal](17, 3) NULL,
	[$ % Chg YA] [decimal](17, 3) NULL,
	[Base $ % Chg YA] [decimal](17, 3) NULL,
	[Incr $ % Chg YA] [decimal](17, 3) NULL,
	[$ Shr - Prompt] [decimal](17, 3) NULL,
	[$ Shr CYA - Prompt] [decimal](17, 3) NULL,
	[KEL_CATEGORY] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_AOD_NIELSEN_ICEBERGS_EXPORT3]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_AOD_NIELSEN_ICEBERGS_EXPORT3](
	[Source File] [nvarchar](255) NULL,
	[Source Tab] [nvarchar](255) NULL,
	[Extract Date] [nvarchar](255) NULL,
	[All Markets] [nvarchar](255) NULL,
	[All Products] [nvarchar](255) NULL,
	[All Periods] [nvarchar](255) NULL,
	[$] [decimal](17, 3) NULL,
	[$ % Chg YA] [decimal](17, 3) NULL,
	[Base $ % Chg YA] [decimal](17, 3) NULL,
	[Incr $ % Chg YA] [decimal](17, 3) NULL,
	[$ Shr - Prompt] [decimal](17, 3) NULL,
	[$ Shr CYA - Prompt] [decimal](17, 3) NULL,
	[KEL_CATEGORY] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_AOD_NIELSEN_ICEBERGS_EXPORT4]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_AOD_NIELSEN_ICEBERGS_EXPORT4](
	[Source File] [nvarchar](255) NULL,
	[Source Tab] [nvarchar](255) NULL,
	[Extract Date] [nvarchar](255) NULL,
	[All Markets] [nvarchar](255) NULL,
	[All Products] [nvarchar](255) NULL,
	[All Periods] [nvarchar](255) NULL,
	[$] [decimal](17, 3) NULL,
	[$ % Chg YA] [decimal](17, 3) NULL,
	[Base $ % Chg YA] [decimal](17, 3) NULL,
	[Incr $ % Chg YA] [decimal](17, 3) NULL,
	[$ Shr - Prompt] [decimal](17, 3) NULL,
	[$ Shr CYA - Prompt] [decimal](17, 3) NULL,
	[KEL_CATEGORY] [nvarchar](255) NULL,
	[KEL_SEGMENT] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_AOD_NIELSEN_ICEBERGS_FINAL_TABLE]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_AOD_NIELSEN_ICEBERGS_FINAL_TABLE](
	[Source File] [nvarchar](255) NULL,
	[Source Tab] [nvarchar](255) NULL,
	[Extract Date] [nvarchar](255) NULL,
	[All Markets] [nvarchar](255) NULL,
	[All Products] [nvarchar](255) NULL,
	[All Periods] [nvarchar](255) NULL,
	[$] [decimal](17, 3) NULL,
	[$ % Chg YA] [decimal](17, 3) NULL,
	[Base $ % Chg YA] [decimal](17, 3) NULL,
	[Incr $ % Chg YA] [decimal](17, 3) NULL,
	[$ Shr - Prompt] [decimal](17, 3) NULL,
	[$ Shr CYA - Prompt] [decimal](17, 3) NULL,
	[KEL_CATEGORY] [nvarchar](255) NULL,
	[KEL_SEGMENT] [nvarchar](255) NULL,
	[KEL_SUB-SEGMENT] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_AOD_NIELSEN_RICHMOND_PULL]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_AOD_NIELSEN_RICHMOND_PULL](
	[Source File] [nvarchar](255) NULL,
	[Source Tab] [nvarchar](255) NULL,
	[Extract Date] [nvarchar](255) NULL,
	[All Markets] [nvarchar](255) NULL,
	[KEL_CATEGORY] [nvarchar](255) NULL,
	[All Products] [nvarchar](255) NULL,
	[All Periods] [nvarchar](255) NULL,
	[Dol] [decimal](17, 3) NULL,
	[Dol YA] [decimal](17, 3) NULL,
	[Units] [decimal](17, 3) NULL,
	[Units YA] [decimal](17, 3) NULL,
	[EQ] [decimal](17, 3) NULL,
	[EQ YA] [decimal](17, 3) NULL,
	[Dol Shr - KEL_Category] [decimal](17, 3) NULL,
	[Dol Shr YA - KEL_Category] [decimal](17, 3) NULL,
	[EQ Shr - KEL_Category] [nvarchar](17) NULL,
	[EQ Shr YA - KEL_Category] [nvarchar](17) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_AOD_Share_To_Mapping_Icebergs]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_AOD_Share_To_Mapping_Icebergs](
	[Source Tab] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_CANADA_CAT_MAP]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_CANADA_CAT_MAP](
	[Category] [nvarchar](255) NULL,
	[Ca Category] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_CLF_BIAS_REPORTING_TABLE]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_CLF_BIAS_REPORTING_TABLE](
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[SUBBARAND] [varchar](30) NULL,
	[Brand] [varchar](60) NULL,
	[Type] [varchar](60) NULL,
	[ALT_SEGMENT] [varchar](30) NULL,
	[QUARTER_NUMBER] [varchar](1) NULL,
	[PERIOD_NUMBER] [numeric](11, 0) NULL,
	[BW_WEEK] [varchar](7) NULL,
	[WK] [varchar](2) NULL,
	[YEAR] [varchar](4) NULL,
	[WEEK_STARTING] [date] NULL,
	[PT_TEXT] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[Level_A] [varchar](255) NULL,
	[Level_B] [varchar](255) NULL,
	[Level_C] [varchar](255) NULL,
	[Level_D] [varchar](255) NULL,
	[Level_E] [varchar](255) NULL,
	[Tier_Name] [varchar](255) NULL,
	[Actual_GSV] [float] NULL,
	[Plan_GSV] [float] NULL,
	[Consensus_Dol] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_CLF_CON_TPM_LATEST_VER]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_CLF_CON_TPM_LATEST_VER](
	[PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [nvarchar](255) NULL,
	[CONSENSUS_GSV] [decimal](38, 2) NULL,
	[CONSENSUS_GSV_PREV] [decimal](38, 2) NULL,
	[Plan Ship $] [decimal](38, 2) NULL,
	[Plan Ship $ PREV] [decimal](38, 2) NULL,
	[CURRENT_SNAPSHOT] [varchar](7) NULL,
	[PREV_SNAPSHOT] [varchar](7) NULL,
	[TPM_PREV_SNAPSHOT] [varchar](10) NULL,
	[TPM_CURR_SNAPSHOT] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_CLF_TPM_CON_ACTUALS]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_CLF_TPM_CON_ACTUALS](
	[ACCT] [varchar](12) NULL,
	[MATERIAL] [varchar](18) NULL,
	[WEEK] [varchar](10) NULL,
	[BW_Week] [varchar](7) NULL,
	[PERIOD] [varchar](3) NULL,
	[PLAN_SHIP_DOL] [float] NULL,
	[ACTUALS_DOL] [float] NULL,
	[CONSENSUS_DOL] [float] NULL,
	[YEAR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_CLF_TPM_CON_ACTUALS_archive]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_CLF_TPM_CON_ACTUALS_archive](
	[ACCT] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[WEEK] [varchar](10) NULL,
	[BW_Week] [varchar](9) NULL,
	[PERIOD] [varchar](3) NULL,
	[PLAN_SHIP_DOL] [float] NULL,
	[ACTUALS_DOL] [float] NULL,
	[CONSENSUS_DOL] [float] NULL,
	[YEAR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_FACT_TYPE]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_FACT_TYPE](
	[PT#_TEXT] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[LIFELINE] [nvarchar](255) NULL,
	[Tier_Name] [nvarchar](255) NULL,
	[Business Unit] [varchar](60) NULL,
	[Category] [varchar](30) NULL,
	[Sub Category] [varchar](30) NULL,
	[Brand ID] [varchar](18) NULL,
	[Brand Name] [varchar](60) NULL,
	[Type ID] [varchar](18) NULL,
	[Type Name] [varchar](60) NULL,
	[YEAR] [varchar](4) NULL,
	[Period Year] [varchar](10) NULL,
	[Period] [int] NULL,
	[LE GSV] [decimal](38, 2) NULL,
	[LE COP] [decimal](38, 2) NULL,
	[LE KMF $] [decimal](38, 2) NULL,
	[LE Ship LB] [decimal](38, 3) NULL,
	[LE Ship Units] [decimal](38, 3) NULL,
	[Plan Ship $] [decimal](38, 2) NULL,
	[Plan Scan Base LB] [decimal](38, 3) NULL,
	[Plan Scan Incr LB] [decimal](38, 3) NULL,
	[Plan Scan LB] [decimal](38, 3) NULL,
	[Plan Ship LB] [decimal](38, 3) NULL,
	[Total Planned COP $] [decimal](38, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_FSU_SALES_OUTLOOK_FEED]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_FSU_SALES_OUTLOOK_FEED](
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[YEAR] [nvarchar](4) NULL,
	[Plan To] [nvarchar](255) NULL,
	[PT NAME] [nvarchar](255) NULL,
	[ALL_IN_FLAG] [varchar](1) NULL,
	[Business Unit] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Posting period] [nvarchar](255) NULL,
	[CRM Latest Estimate Original Gross Sales (monthly)] [decimal](17, 0) NULL,
	[CRM Base KMF (OI+BB)] [decimal](17, 0) NULL,
	[IBP GSV] [decimal](17, 0) NULL,
	[IBP KMF] [decimal](17, 0) NULL,
	[BUD GSV] [decimal](17, 0) NULL,
	[BUD KMF] [decimal](17, 0) NULL,
	[YAG GSV] [decimal](17, 0) NULL,
	[YAG KMF] [decimal](17, 0) NULL,
	[LP IBP GSV] [decimal](17, 0) NULL,
	[LP IBP KMF] [decimal](17, 0) NULL,
	[SE GSV] [decimal](17, 0) NULL,
	[SE KMF] [decimal](17, 0) NULL,
	[CON GSV] [decimal](17, 0) NULL,
	[CRM LE COP] [decimal](17, 0) NULL,
	[YAG CRM LE COP] [decimal](17, 0) NULL,
	[CRM LE LBS] [decimal](17, 0) NULL,
	[YAG CRM LE LBS] [decimal](17, 0) NULL,
	[COP SE] [decimal](17, 0) NULL,
	[COP BUDGET] [decimal](17, 0) NULL,
	[BUD KMF ADJ] [decimal](17, 0) NULL,
	[SE KMF ADJ] [decimal](17, 0) NULL,
	[FLAG] [varchar](10) NOT NULL,
	[KLG_BANNER] [varchar](255) NULL,
	[KLG Sr Mgr Agency Retail] [varchar](255) NULL,
	[Acosta Retail Bus Mgr] [varchar](255) NULL,
	[ACOSTA FRZ Bus Mgr] [varchar](255) NULL,
	[Frozen Region] [varchar](255) NULL,
	[KLG VP DRA Director] [varchar](255) NULL,
	[KLG Director MTS] [varchar](255) NULL,
	[To Date - Year] [varchar](7) NULL,
	[Period Year] [varchar](63) NULL,
	[HIERARCHY] [varchar](10) NOT NULL,
	[QUARTER] [varchar](2) NOT NULL,
	[QUARTER_NUM] [int] NOT NULL,
	[PERIOD_NUM] [nvarchar](255) NULL,
	[Update Date] [date] NULL,
	[TIER] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_FSU_SALES_OUTLOOK_FEED_BW_hierarchy]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_FSU_SALES_OUTLOOK_FEED_BW_hierarchy](
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[YEAR] [nvarchar](4) NULL,
	[Plan To] [nvarchar](255) NULL,
	[PT NAME] [nvarchar](255) NULL,
	[LIFELINE] [varchar](1) NOT NULL,
	[Business Unit] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Posting period] [nvarchar](255) NULL,
	[CRM Latest Estimate Original Gross Sales (monthly)] [decimal](17, 0) NULL,
	[CRM Base KMF (OI+BB)] [decimal](17, 0) NULL,
	[BUD GSV] [decimal](17, 0) NULL,
	[BUD KMF] [decimal](17, 0) NULL,
	[YAG GSV] [decimal](17, 0) NULL,
	[YAG KMF] [decimal](17, 0) NULL,
	[SE GSV] [decimal](17, 0) NULL,
	[SE KMF] [decimal](17, 0) NULL,
	[CON GSV] [decimal](17, 0) NULL,
	[CRM LE COP] [decimal](17, 0) NULL,
	[YAG CRM LE COP] [decimal](17, 0) NULL,
	[CRM LE LBS] [decimal](17, 0) NULL,
	[YAG CRM LE LBS] [decimal](17, 0) NULL,
	[COP SE] [decimal](17, 0) NULL,
	[COP BUDGET] [decimal](17, 0) NULL,
	[BUD KMF ADJ] [decimal](17, 0) NULL,
	[SE KMF ADJ] [decimal](17, 0) NULL,
	[IBP GSV] [decimal](17, 0) NULL,
	[IBP KMF] [decimal](17, 0) NULL,
	[LP IBP GSV] [decimal](17, 0) NULL,
	[LP IBP KMF] [decimal](17, 0) NULL,
	[Flag] [varchar](10) NOT NULL,
	[KLG_BANNER] [varchar](255) NULL,
	[KLG Sr Mgr Agency Retail] [varchar](255) NULL,
	[Acosta Retail Bus Mgr] [varchar](255) NULL,
	[ACOSTA FRZ Bus Mgr] [varchar](255) NULL,
	[Frozen Region] [varchar](255) NULL,
	[KLG VP DRA Director] [varchar](255) NULL,
	[KLG Director MTS] [varchar](255) NULL,
	[To Date - Year] [varchar](7) NULL,
	[Period Year] [varchar](63) NULL,
	[HIERARCHY] [varchar](10) NOT NULL,
	[QUARTER] [varchar](2) NOT NULL,
	[QUARTER_NUM] [int] NOT NULL,
	[PERIOD_NUM] [nvarchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_GRANULAR_GROWTH_MAP]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_GRANULAR_GROWTH_MAP](
	[Brand_ID] [nvarchar](255) NULL,
	[Brand_Name] [nvarchar](255) NULL,
	[Brand_Priority_Num] [nvarchar](255) NULL,
	[Brand_Priority] [nvarchar](255) NULL,
	[Sub_Priority] [nvarchar](255) NULL,
	[Core] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_KASHI_PIVOT_FEED]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_KASHI_PIVOT_FEED](
	[CUSTOMER] [varchar](10) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Calendar Week] [varchar](7) NULL,
	[Actual Ship $] [decimal](38, 2) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[Plan To] [nvarchar](255) NULL,
	[Planto Name] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[LEVEL_C] [nvarchar](255) NULL,
	[LEVEL_D] [nvarchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_KNA_Top_25]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_KNA_Top_25](
	[CUSTOMER_NAME] [nvarchar](255) NULL,
	[YEAR] [varchar](4) NULL,
	[QUARTER] [varchar](2) NULL,
	[CATEGORY] [varchar](30) NULL,
	[GSV] [decimal](38, 2) NULL,
	[KMF] [decimal](38, 2) NULL,
	[TPM LE LBS] [decimal](38, 3) NULL,
	[TPM LE KG] [decimal](38, 3) NULL,
	[Actual Ship LBS] [decimal](38, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_KPEL_TPM]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_KPEL_TPM](
	[Promo_ID] [varchar](255) NULL,
	[Plan_To_Number] [varchar](255) NULL,
	[Retailer_Dollars] [decimal](38, 2) NULL,
	[Promo_Units] [decimal](38, 3) NULL,
	[Incr_GSV_Dollars] [decimal](38, 2) NULL,
	[Promo_COP] [decimal](38, 2) NULL,
	[Promo_GSV_Dollars] [decimal](38, 2) NULL,
	[Total_KMF] [decimal](38, 2) NULL,
	[Promo_Incremental_COP] [decimal](38, 2) NULL,
	[Total_Investment] [decimal](38, 2) NULL,
	[Incremental_Contribution_Dollars] [decimal](38, 2) NULL,
	[DISPLAY] [decimal](17, 2) NULL,
	[Promo_Desc] [varchar](255) NULL,
	[Promo_Start_Date] [varchar](255) NULL,
	[Promo_End_Date] [varchar](255) NULL,
	[Key_Event_Desc] [varchar](255) NULL,
	[Category] [varchar](255) NULL,
	[Brand] [varchar](255) NULL,
	[Type] [varchar](255) NULL,
	[Qtr_Num] [varchar](255) NULL,
	[YEAR] [varchar](255) NULL,
	[Source] [varchar](255) NULL,
	[Promo_Incremental_Units] [decimal](38, 2) NULL,
	[Promo_LB] [decimal](38, 2) NULL,
	[Business_Unit] [varchar](255) NULL,
	[Promo_Base_Units] [varchar](255) NULL,
	[Promo_Fixed_Fees] [varchar](255) NULL,
	[F&D] [decimal](17, 2) NULL,
	[Feat] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_MEIJER_PROMO_MAT]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_MEIJER_PROMO_MAT](
	[Promotion ID] [varchar](24) NULL,
	[Calender Week] [varchar](7) NULL,
	[Plan To] [varchar](10) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](38, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](38, 3) NULL,
	[Gross Sales $] [decimal](38, 2) NULL,
	[Planned Ship $] [decimal](38, 2) NULL,
	[Planned Incremental Volume $] [decimal](38, 2) NULL,
	[Planned Promo COP $] [decimal](38, 2) NULL,
	[LE Total Non-Trade] [decimal](38, 2) NULL,
	[LE Total Fixed KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo $] [decimal](38, 2) NULL,
	[Reserved Total KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo Units] [decimal](38, 2) NULL,
	[Reserved CSM Trade $] [decimal](38, 2) NULL,
	[Total Modeled Promo $] [decimal](38, 2) NULL,
	[Plan Incremental COP $] [decimal](38, 2) NULL,
	[DISPLAY] [decimal](17, 2) NULL,
	[FEATURE] [decimal](17, 2) NULL,
	[F&D] [decimal](17, 2) NULL,
	[Sugg TPQ] [decimal](38, 2) NULL,
	[Sugg Incr] [decimal](38, 2) NULL,
	[SVP: Planned Shelf Price] [decimal](17, 2) NULL,
	[Planned Incrementality %] [decimal](17, 2) NULL,
	[Plan Activity GSV] [decimal](38, 2) NULL,
	[EDLP Spend] [decimal](38, 2) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](38, 2) NULL,
	[SVP: Suggested Base] [decimal](38, 2) NULL,
	[Planned Promo LB] [decimal](38, 3) NULL,
	[Planned Promo KG] [decimal](38, 3) NULL,
	[Planned Promo Incremental Units] [decimal](38, 3) NULL,
	[Planned Promo Base Units] [decimal](38, 3) NULL,
	[Incremental EDLP SPEND] [decimal](38, 6) NULL,
	[Total Planned Shipment CS] [decimal](38, 3) NULL,
	[Total Planned Shipment Eaches] [decimal](38, 3) NULL,
	[ACTIVITY_DESC] [varchar](40) NULL,
	[Promo_Desc] [varchar](40) NULL,
	[ACTIVITY_TYPE] [varchar](2) NULL,
	[SHIP_DATE_FROM] [varchar](10) NULL,
	[SHIP_DATE_TO] [varchar](10) NULL,
	[PROMOTION_DESC] [varchar](40) NULL,
	[SCANNER_APPS_ID] [varchar](60) NULL,
	[EMPLOYEE_RESPONSIBLE] [varchar](10) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[LAST_CHANGED_ON] [varchar](10) NULL,
	[PERSON_NAME] [varchar](12) NULL,
	[DATE_CREATED] [varchar](10) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[CAMPAIGN_DESC] [varchar](40) NULL,
	[PLANNED_DATE_FROM] [varchar](10) NULL,
	[Promo_ Start_Value] [int] NULL,
	[PLANNED_DATE_TO] [varchar](10) NULL,
	[KEY_EVENT_DESC] [varchar](40) NULL,
	[CURRENCY_KEY] [varchar](5) NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL,
	[BW Period] [varchar](8) NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[ALT_SUBCATEGORY] [varchar](30) NULL,
	[PROD_H4] [varchar](18) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PROD_H5] [varchar](18) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PLANTO] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Tier_Name] [nvarchar](255) NULL,
	[Tier] [nvarchar](255) NULL,
	[AKV] [nvarchar](255) NULL,
	[Ca Category] [nvarchar](255) NULL,
	[Tent_Pole_Desc] [nvarchar](255) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[DESCRIPTION] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_NIEL_AMPS_MARKET_ATT]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_NIEL_AMPS_MARKET_ATT](
	[All Markets] [varchar](250) NULL,
	[MKT Mask] [varchar](250) NULL,
	[Mkt Sort Order] [varchar](250) NULL,
	[Mkt Grouping Level] [varchar](250) NULL,
	[All Regions] [varchar](250) NULL,
	[Executive] [varchar](250) NULL,
	[East] [varchar](250) NULL,
	[West] [varchar](250) NULL,
	[Channels] [varchar](250) NULL,
	[Totals] [varchar](250) NULL,
	[Customer] [varchar](250) NULL,
	[Customer Sort Order] [varchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_NIEL_AMPS_US_SRC]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_NIEL_AMPS_US_SRC](
	[Source File] [nvarchar](255) NULL,
	[Source Tab] [nvarchar](255) NULL,
	[Extract Date] [nvarchar](255) NULL,
	[All Markets] [nvarchar](255) NULL,
	[All Products] [nvarchar](255) NULL,
	[All Periods] [nvarchar](255) NULL,
	[Dol] [decimal](20, 5) NULL,
	[Dol % Chg YA] [decimal](20, 5) NULL,
	[Base $ % Chg YA] [decimal](20, 5) NULL,
	[Dol CYA] [decimal](20, 5) NULL,
	[Incr $] [decimal](20, 5) NULL,
	[Incr $ YA] [decimal](20, 5) NULL,
	[EQ % Chg YA] [decimal](20, 5) NULL,
	[Units % Chg YA] [decimal](20, 5) NULL,
	[% Subsidized Units] [decimal](20, 5) NULL,
	[% Subsidized Units CYA] [decimal](20, 5) NULL,
	[Dol Shr - Prompt] [decimal](20, 5) NULL,
	[Dol Shr CYA - Prompt] [decimal](20, 5) NULL,
	[Any Promo $ % Chg YA] [decimal](20, 5) NULL,
	[No Promo $ % Chg YA] [decimal](20, 5) NULL,
	[% $ No Promo] [decimal](20, 5) NULL,
	[Avg EQ Price CYA] [decimal](20, 5) NULL,
	[Avg EQ Price] [decimal](20, 5) NULL,
	[Any Promo Unit Price % Disc] [decimal](20, 5) NULL,
	[Any Promo Unit Price % Disc CYA] [decimal](20, 5) NULL,
	[Base Unit Price YA] [decimal](20, 5) NULL,
	[Base Unit Price] [decimal](20, 5) NULL,
	[Base Unit Price CYA] [decimal](20, 5) NULL,
	[Avg Unit Price] [decimal](20, 5) NULL,
	[Avg Unit Price CYA] [decimal](20, 5) NULL,
	[Qual Unit Price] [decimal](20, 5) NULL,
	[Qual Unit Price CYA] [decimal](20, 5) NULL,
	[Any Disp # Disp] [decimal](20, 5) NULL,
	[Any Disp # Disp CYA] [decimal](20, 5) NULL,
	[Dol / $MM ACV / Item] [decimal](20, 5) NULL,
	[Dol / $MM ACV / Item CYA] [decimal](20, 5) NULL,
	[%ACV] [decimal](20, 5) NULL,
	[%ACV CYA] [decimal](20, 5) NULL,
	[TDP] [decimal](20, 5) NULL,
	[TDP % Chg YA] [decimal](20, 5) NULL,
	[Avg # of Items] [decimal](20, 5) NULL,
	[Avg # of Items CYA] [decimal](20, 5) NULL,
	[Any Promo Units % Lift] [decimal](20, 5) NULL,
	[Any Promo Units % Lift CYA] [decimal](20, 5) NULL,
	[% Units Any Promo] [decimal](20, 5) NULL,
	[% Units Any Promo CYA] [decimal](20, 5) NULL,
	[Any Disp %ACV] [decimal](20, 5) NULL,
	[Any Disp %ACV CYA] [decimal](20, 5) NULL,
	[Qual CWW] [decimal](20, 5) NULL,
	[Qual CWW CYA] [decimal](20, 5) NULL,
	[Feat & Disp %ACV / Any Feat %ACV] [decimal](20, 5) NULL,
	[Feat & Disp %ACV / Any Feat %ACV CYA] [decimal](20, 5) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_NIEL_AMPS_US_SRC_Q2_2016]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_NIEL_AMPS_US_SRC_Q2_2016](
	[Source File] [nvarchar](255) NULL,
	[Source Tab] [nvarchar](255) NULL,
	[Extract Date] [nvarchar](255) NULL,
	[All Markets] [nvarchar](255) NULL,
	[All Products] [nvarchar](255) NULL,
	[All Periods] [nvarchar](255) NULL,
	[Dol] [decimal](20, 5) NULL,
	[Dol % Chg YA] [decimal](20, 5) NULL,
	[Base $ % Chg YA] [decimal](20, 5) NULL,
	[Dol CYA] [decimal](20, 5) NULL,
	[Incr $] [decimal](20, 5) NULL,
	[Incr $ YA] [decimal](20, 5) NULL,
	[EQ % Chg YA] [decimal](20, 5) NULL,
	[Units % Chg YA] [decimal](20, 5) NULL,
	[% Subsidized Units] [decimal](20, 5) NULL,
	[% Subsidized Units CYA] [decimal](20, 5) NULL,
	[Dol Shr - Prompt] [decimal](20, 5) NULL,
	[Dol Shr CYA - Prompt] [decimal](20, 5) NULL,
	[Any Promo $ % Chg YA] [decimal](20, 5) NULL,
	[No Promo $ % Chg YA] [decimal](20, 5) NULL,
	[% $ No Promo] [decimal](20, 5) NULL,
	[Avg EQ Price CYA] [decimal](20, 5) NULL,
	[Avg EQ Price] [decimal](20, 5) NULL,
	[Any Promo Unit Price % Disc] [decimal](20, 5) NULL,
	[Any Promo Unit Price % Disc CYA] [decimal](20, 5) NULL,
	[Base Unit Price YA] [decimal](20, 5) NULL,
	[Base Unit Price] [decimal](20, 5) NULL,
	[Base Unit Price CYA] [decimal](20, 5) NULL,
	[Avg Unit Price] [decimal](20, 5) NULL,
	[Avg Unit Price CYA] [decimal](20, 5) NULL,
	[Qual Unit Price] [decimal](20, 5) NULL,
	[Qual Unit Price CYA] [decimal](20, 5) NULL,
	[Any Disp # Disp] [decimal](20, 5) NULL,
	[Any Disp # Disp CYA] [decimal](20, 5) NULL,
	[Dol / $MM ACV / Item] [decimal](20, 5) NULL,
	[Dol / $MM ACV / Item CYA] [decimal](20, 5) NULL,
	[%ACV] [decimal](20, 5) NULL,
	[%ACV CYA] [decimal](20, 5) NULL,
	[TDP] [decimal](20, 5) NULL,
	[TDP % Chg YA] [decimal](20, 5) NULL,
	[Avg # of Items] [decimal](20, 5) NULL,
	[Avg # of Items CYA] [decimal](20, 5) NULL,
	[Any Promo Units % Lift] [decimal](20, 5) NULL,
	[Any Promo Units % Lift CYA] [decimal](20, 5) NULL,
	[% Units Any Promo] [decimal](20, 5) NULL,
	[% Units Any Promo CYA] [decimal](20, 5) NULL,
	[Any Disp %ACV] [decimal](20, 5) NULL,
	[Any Disp %ACV CYA] [decimal](20, 5) NULL,
	[Qual CWW] [decimal](20, 5) NULL,
	[Qual CWW CYA] [decimal](20, 5) NULL,
	[Feat & Disp %ACV / Any Feat %ACV] [decimal](20, 5) NULL,
	[Feat & Disp %ACV / Any Feat %ACV CYA] [decimal](20, 5) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_NIEL_PRODUCT_SHARE_MAP]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_NIEL_PRODUCT_SHARE_MAP](
	[Source Tab] [nvarchar](255) NULL,
	[Share To] [nvarchar](255) NULL,
	[Database Name] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_NIEL_PRODUCT_XREF]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_NIEL_PRODUCT_XREF](
	[All Products] [nvarchar](255) NULL,
	[Combo] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Mask] [nvarchar](255) NULL,
	[Nielsen Name] [nvarchar](255) NULL,
	[Order] [nvarchar](255) NULL,
	[Level] [nvarchar](255) NULL,
	[Agg] [nvarchar](255) NULL,
	[Level Name] [nvarchar](255) NULL,
	[Brand] [nvarchar](255) NULL,
	[Corp] [nvarchar](255) NULL,
	[Segment] [nvarchar](255) NULL,
	[Sub Segment] [nvarchar](255) NULL,
	[BW Category] [nvarchar](255) NULL,
	[BW BU] [nvarchar](255) NULL,
	[BW Number] [nvarchar](255) NULL,
	[BW Name] [nvarchar](255) NULL,
	[Profit Center] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_NIELSEN_PT_MAP]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_NIELSEN_PT_MAP](
	[All Markets] [nvarchar](255) NULL,
	[Planto_Number] [nvarchar](255) NULL,
	[LEVEL_A] [nvarchar](255) NULL,
	[LEVEL_B] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_PLANTO_INREMENTAL_SNACKTRANS]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_PLANTO_INREMENTAL_SNACKTRANS](
	[PT# TEXT] [nvarchar](255) NULL,
	[PT NAME] [nvarchar](255) NULL,
	[Level A] [nvarchar](255) NULL,
	[Level B] [nvarchar](255) NULL,
	[Level C] [nvarchar](255) NULL,
	[Level D] [nvarchar](255) NULL,
	[Level E] [nvarchar](255) NULL,
	[Tier Name] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Business Unit] [varchar](60) NULL,
	[Category] [varchar](30) NULL,
	[Sub Category] [varchar](30) NULL,
	[Brand ID] [varchar](18) NULL,
	[Brand Name] [varchar](60) NULL,
	[Type ID] [varchar](18) NULL,
	[Type Name] [varchar](60) NULL,
	[YEAR] [varchar](4) NULL,
	[Quarter] [varchar](1) NULL,
	[Period Year] [varchar](10) NULL,
	[Period] [int] NULL,
	[Size] [nvarchar](255) NULL,
	[LE GSV] [decimal](38, 2) NULL,
	[LE Ship Units] [decimal](38, 3) NULL,
	[Plan Incr Ship Units] [decimal](38, 3) NULL,
	[LE Ship Cases] [decimal](38, 3) NULL,
	[Plan Incr Ship Cases] [decimal](38, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_PLANTO_MAT_ACT]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_PLANTO_MAT_ACT](
	[PT_N_TEXT] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[Tier_Name] [nvarchar](255) NULL,
	[Business Unit] [varchar](60) NULL,
	[Category] [varchar](30) NULL,
	[Sub Category] [varchar](30) NULL,
	[Brand ID] [varchar](18) NULL,
	[Brand Name] [varchar](60) NULL,
	[Type ID] [varchar](18) NULL,
	[Type Name] [varchar](60) NULL,
	[Material ID] [varchar](18) NULL,
	[Material Desc] [varchar](40) NULL,
	[YEAR] [varchar](4) NULL,
	[Quarter] [varchar](1) NULL,
	[Period Year] [varchar](10) NULL,
	[Period] [int] NULL,
	[Size] [nvarchar](255) NULL,
	[LE GSV] [decimal](38, 2) NULL,
	[LE Ship Units] [decimal](38, 3) NULL,
	[Plan Incr Ship Units] [decimal](38, 3) NULL,
	[LE Ship Cases] [decimal](38, 3) NULL,
	[Plan Incr Ship Cases] [decimal](38, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_PLANTO_TYPE_PER_PERFORM]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_PLANTO_TYPE_PER_PERFORM](
	[PT# TEXT] [nvarchar](255) NULL,
	[PT NAME] [nvarchar](255) NULL,
	[Level A] [nvarchar](255) NULL,
	[Level B] [nvarchar](255) NULL,
	[Level C] [nvarchar](255) NULL,
	[Level D] [nvarchar](255) NULL,
	[Level E] [nvarchar](255) NULL,
	[Tier Name] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Business Unit] [varchar](60) NULL,
	[Category] [varchar](30) NULL,
	[Ca Category] [nvarchar](255) NULL,
	[Sub Category] [varchar](30) NULL,
	[Brand ID] [varchar](18) NULL,
	[Brand Name] [varchar](60) NULL,
	[Type ID] [varchar](18) NULL,
	[Type Name] [varchar](60) NULL,
	[Material ID] [varchar](18) NULL,
	[Material Desc] [varchar](40) NULL,
	[GGS Brand Priority Number] [nvarchar](255) NULL,
	[GGS Brand Priority] [nvarchar](255) NULL,
	[GGS Brand Sub Priority] [nvarchar](255) NULL,
	[YEAR] [varchar](4) NULL,
	[Quarter] [varchar](1) NULL,
	[Period Year] [varchar](10) NULL,
	[Period] [int] NULL,
	[Size] [nvarchar](255) NULL,
	[LE GSV] [decimal](38, 2) NULL,
	[LE COP] [decimal](38, 2) NULL,
	[LE KMF $] [decimal](38, 2) NULL,
	[LE Ship LB] [decimal](38, 3) NULL,
	[LE Ship Units] [decimal](38, 3) NULL,
	[Plan KMF] [decimal](38, 2) NULL,
	[LE NSV PRXY $] [decimal](38, 2) NULL,
	[LE SC PRXY $] [decimal](38, 2) NULL,
	[LE SC PRXY $ GSV] [decimal](38, 2) NULL,
	[LE COP Fixed] [decimal](38, 5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_PLANTO_TYPE_WEEK_PERFORM]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_PLANTO_TYPE_WEEK_PERFORM](
	[PT# TEXT] [nvarchar](255) NULL,
	[PT NAME] [nvarchar](255) NULL,
	[Level A] [nvarchar](255) NULL,
	[Level B] [nvarchar](255) NULL,
	[Level C] [nvarchar](255) NULL,
	[Level D] [nvarchar](255) NULL,
	[Level E] [nvarchar](255) NULL,
	[Tier Name] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Business Unit] [varchar](60) NULL,
	[Category] [varchar](30) NULL,
	[Ca Category] [nvarchar](255) NULL,
	[Sub Category] [varchar](30) NULL,
	[Brand ID] [varchar](18) NULL,
	[Brand Name] [varchar](60) NULL,
	[Type ID] [varchar](18) NULL,
	[Type Name] [varchar](60) NULL,
	[GGS Brand Priority Number] [nvarchar](255) NULL,
	[GGS Brand Priority] [nvarchar](255) NULL,
	[GGS Brand Sub Priority] [nvarchar](255) NULL,
	[YEAR] [varchar](4) NULL,
	[Quarter] [varchar](1) NULL,
	[Period Year] [varchar](10) NULL,
	[Period] [int] NULL,
	[Week Ending] [date] NULL,
	[Size] [nvarchar](255) NULL,
	[Plan Ship $] [decimal](38, 2) NULL,
	[Acutal Ship $] [decimal](38, 2) NULL,
	[Plan Ship EA] [decimal](38, 3) NULL,
	[Actual Ship EA] [decimal](38, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_PRICE_IMPACT]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_PRICE_IMPACT](
	[CUSTOMER] [varchar](10) NULL,
	[Period Year] [varchar](10) NULL,
	[GSV Price Chg] [decimal](38, 6) NULL,
	[Type Name] [varchar](60) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_PROMO_BSR]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_PROMO_BSR](
	[CUSTOMER] [varchar](10) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[PROD_H4] [varchar](18) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PROD_H5] [varchar](18) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[YEAR] [varchar](4) NULL,
	[QUARTER] [varchar](2) NULL,
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[GSV] [float] NULL,
	[LBS] [float] NULL,
	[KMF] [float] NULL,
	[COP] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_PROMO_DUB_NEG]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_PROMO_DUB_NEG](
	[PLAN_TO] [varchar](10) NULL,
	[PROMOTION] [varchar](24) NULL,
	[TYPE] [varchar](18) NULL,
	[QUARTER] [varchar](2) NULL,
	[PROMO_TYPE] [varchar](40) NULL,
	[Promo_Desc] [varchar](40) NULL,
	[PROMOTION_DESC] [varchar](40) NULL,
	[TYPEDESC] [varchar](60) NULL,
	[PT_NAME] [varchar](255) NULL,
	[REGION] [varchar](255) NULL,
	[PROMO_START_DATE] [date] NULL,
	[PROMO_END_DATE] [date] NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[KEY_EVENT] [varchar](3) NULL,
	[KEY_EVENT_DESC] [varchar](40) NULL,
	[PLANNED_SHIP_DOLLARS] [float] NULL,
	[Reserved_Total_KMF_DOL] [float] NULL,
	[PLANNED_SHIP_CASES] [float] NULL,
	[PLANNED_SHIP_UNITS] [float] NULL,
	[TPM_PLANNED_TPQ_EACHES] [float] NULL,
	[TPM_Planned_Retailer_Promotion] [float] NULL,
	[PLANNED_SHELF_PRICE] [numeric](18, 2) NULL,
	[COP] [float] NULL,
	[COP_PER_UNIT] [money] NULL,
	[PLAN_INCR_COP] [float] NULL,
	[EDLP_SPEND] [float] NULL,
	[LE_TOTAL_FIX_KMF] [float] NULL,
	[PLANNED_INCR_UNITS] [float] NULL,
	[PLAN_INCR_VOL] [float] NULL,
	[INCR_EDLP_SPEND] [float] NULL,
	[PLAN_SHIP_LB] [float] NULL,
	[PLAN_INCR_LB] [float] NULL,
	[PLAN_RET_SALES_DOL] [float] NULL,
	[PROMO_SCAN_PERC_TTL] [float] NULL,
	[SCAN_RATE_TTL] [float] NULL,
	[LUMP_SUM] [float] NULL,
	[PLAN_BASE_EA] [float] NULL,
	[PLAN_TPQ_EA] [float] NULL,
	[PLAN_INCR_EA] [float] NULL,
	[AVG_PROMO_PRICE] [float] NULL,
	[CASEPACK] [float] NULL,
	[KMF_P_UNIT] [float] NULL,
	[RED_K] [float] NULL,
	[LOW_PROMO_PRICE] [float] NULL,
	[MIN_NET_UNIT] [float] NULL,
	[PLAN_MIN_NET_UNIT] [float] NULL,
	[MIR] [float] NULL,
	[PP_FLAG] [float] NULL,
	[NET_FLAG] [float] NULL,
	[DOUBLE_NEG] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_PROMO_EDLP_TEMP]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_PROMO_EDLP_TEMP](
	[Promotion ID] [varchar](24) NULL,
	[Calender Week] [varchar](7) NULL,
	[Plan To] [varchar](10) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](38, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](38, 3) NULL,
	[Gross Sales $] [decimal](38, 2) NULL,
	[Planned Ship $] [decimal](38, 2) NULL,
	[Planned Incremental Volume $] [decimal](38, 2) NULL,
	[Planned Promo COP $] [decimal](38, 2) NULL,
	[LE Total Non-Trade] [decimal](38, 2) NULL,
	[LE Total Fixed KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo $] [decimal](38, 2) NULL,
	[Reserved Total KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo Units] [decimal](38, 2) NULL,
	[Reserved CSM Trade $] [decimal](38, 2) NULL,
	[Total Modeled Promo $] [decimal](38, 2) NULL,
	[Plan Incremental COP $] [decimal](38, 2) NULL,
	[DISPLAY] [decimal](17, 2) NULL,
	[FEATURE] [decimal](17, 2) NULL,
	[F&D] [decimal](17, 2) NULL,
	[Sugg TPQ] [decimal](38, 2) NULL,
	[Sugg Incr] [decimal](38, 2) NULL,
	[SVP: Planned Shelf Price] [decimal](17, 2) NULL,
	[Planned Incrementality %] [decimal](17, 2) NULL,
	[Plan Activity GSV] [decimal](38, 2) NULL,
	[EDLP Spend] [decimal](38, 2) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](38, 2) NULL,
	[SVP: Suggested Base] [decimal](38, 2) NULL,
	[Planned Promo LB] [decimal](38, 3) NULL,
	[Planned Promo KG] [decimal](38, 3) NULL,
	[Planned Promo Incremental Units] [decimal](38, 3) NULL,
	[Plan Ship Units] [decimal](38, 3) NULL,
	[ACTIVITY_DESC] [varchar](40) NULL,
	[Promo_Desc] [varchar](40) NULL,
	[ACTIVITY_TYPE] [varchar](2) NULL,
	[SHIP_DATE_FROM] [varchar](10) NULL,
	[SHIP_DATE_TO] [varchar](10) NULL,
	[PROMOTION_DESC] [varchar](40) NULL,
	[SCANNER_APPS_ID] [varchar](60) NULL,
	[EMPLOYEE_RESPONSIBLE] [varchar](10) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[LAST_CHANGED_ON] [varchar](10) NULL,
	[PERSON_NAME] [varchar](12) NULL,
	[DATE_CREATED] [varchar](10) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[CAMPAIGN_DESC] [varchar](40) NULL,
	[PLANNED_DATE_FROM] [varchar](10) NULL,
	[Promo_ Start_Value] [int] NULL,
	[PLANNED_DATE_TO] [varchar](10) NULL,
	[KEY_EVENT_DESC] [varchar](40) NULL,
	[CURRENCY_KEY] [varchar](5) NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL,
	[BW Period] [varchar](8) NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[ALT_SUBCATEGORY] [varchar](30) NULL,
	[PROD_H4] [varchar](18) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PROD_H5] [varchar](18) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PLANTO] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Ca Category] [nvarchar](255) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[DESCRIPTION] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_PROMO_FACT_MAT_WEEKLY_TRACKING]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_PROMO_FACT_MAT_WEEKLY_TRACKING](
	[Promotion ID] [varchar](24) NULL,
	[Calender Week] [varchar](7) NULL,
	[Plan To] [varchar](10) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](38, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](38, 3) NULL,
	[Gross Sales $] [decimal](38, 2) NULL,
	[Planned Ship $] [decimal](38, 2) NULL,
	[Planned Incremental Volume $] [decimal](38, 2) NULL,
	[Planned Promo COP $] [decimal](38, 2) NULL,
	[LE Total Non-Trade] [decimal](38, 2) NULL,
	[LE Total Fixed KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo $] [decimal](38, 2) NULL,
	[Reserved Total KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo Units] [decimal](38, 2) NULL,
	[Reserved CSM Trade $] [decimal](38, 2) NULL,
	[Total Modeled Promo $] [decimal](38, 2) NULL,
	[Plan Incremental COP $] [decimal](38, 2) NULL,
	[DISPLAY] [decimal](17, 2) NULL,
	[FEATURE] [decimal](17, 2) NULL,
	[F&D] [decimal](17, 2) NULL,
	[Sugg TPQ] [decimal](38, 2) NULL,
	[Sugg Incr] [decimal](38, 2) NULL,
	[SVP: Planned Shelf Price] [decimal](17, 2) NULL,
	[Planned Incrementality %] [decimal](17, 2) NULL,
	[Plan Activity GSV] [decimal](38, 2) NULL,
	[EDLP Spend] [decimal](38, 2) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](38, 2) NULL,
	[SVP: Suggested Base] [decimal](38, 2) NULL,
	[Planned Promo LB] [decimal](38, 3) NULL,
	[Planned Promo KG] [decimal](38, 3) NULL,
	[Planned Promo Incremental Units] [decimal](38, 3) NULL,
	[ACTIVITY_DESC] [varchar](40) NULL,
	[Promo_Desc] [varchar](40) NULL,
	[ACTIVITY_TYPE] [varchar](2) NULL,
	[SHIP_DATE_FROM] [varchar](10) NULL,
	[SHIP_DATE_TO] [varchar](10) NULL,
	[PROMOTION_DESC] [varchar](40) NULL,
	[SCANNER_APPS_ID] [varchar](60) NULL,
	[EMPLOYEE_RESPONSIBLE] [varchar](10) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[LAST_CHANGED_ON] [varchar](10) NULL,
	[PERSON_NAME] [varchar](12) NULL,
	[DATE_CREATED] [varchar](10) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[CAMPAIGN_DESC] [varchar](40) NULL,
	[PLANNED_DATE_FROM] [varchar](10) NULL,
	[Promo_ Start_Value] [int] NULL,
	[PLANNED_DATE_TO] [varchar](10) NULL,
	[KEY_EVENT_DESC] [varchar](40) NULL,
	[CURRENCY_KEY] [varchar](5) NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL,
	[BW Period] [varchar](8) NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[ALT_SUBCATEGORY] [varchar](30) NULL,
	[PROD_H4] [varchar](18) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PROD_H5] [varchar](18) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PLANTO] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Ca Category] [nvarchar](255) NULL,
	[Mixed Pallet Material] [varchar](18) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_PROMO_MAT]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_PROMO_MAT](
	[Promotion ID] [varchar](24) NULL,
	[Calender Week] [varchar](7) NULL,
	[Plan To] [varchar](10) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](38, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](38, 3) NULL,
	[Gross Sales $] [decimal](38, 2) NULL,
	[Planned Ship $] [decimal](38, 2) NULL,
	[Planned Incremental Volume $] [decimal](38, 2) NULL,
	[Planned Promo COP $] [decimal](38, 2) NULL,
	[LE Total Non-Trade] [decimal](38, 2) NULL,
	[LE Total Fixed KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo $] [decimal](38, 2) NULL,
	[Reserved Total KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo Units] [decimal](38, 2) NULL,
	[Reserved CSM Trade $] [decimal](38, 2) NULL,
	[Total Modeled Promo $] [decimal](38, 2) NULL,
	[Plan Incremental COP $] [decimal](38, 2) NULL,
	[DISPLAY] [decimal](17, 2) NULL,
	[FEATURE] [decimal](17, 2) NULL,
	[F&D] [decimal](17, 2) NULL,
	[Sugg TPQ] [decimal](38, 2) NULL,
	[Sugg Incr] [decimal](38, 2) NULL,
	[SVP: Planned Shelf Price] [decimal](17, 2) NULL,
	[Planned Incrementality %] [decimal](17, 2) NULL,
	[Plan Activity GSV] [decimal](38, 2) NULL,
	[EDLP Spend] [decimal](38, 2) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](38, 2) NULL,
	[SVP: Suggested Base] [decimal](38, 2) NULL,
	[Planned Promo LB] [decimal](38, 3) NULL,
	[Planned Promo KG] [decimal](38, 3) NULL,
	[Planned Promo Incremental Units] [decimal](38, 3) NULL,
	[Planned Promo Base Units] [decimal](38, 3) NULL,
	[Incremental EDLP SPEND] [decimal](38, 6) NULL,
	[Total Planned Shipment CS] [decimal](38, 3) NULL,
	[Total Planned Shipment Eaches] [decimal](38, 3) NULL,
	[ACTIVITY_DESC] [varchar](40) NULL,
	[Promo_Desc] [varchar](40) NULL,
	[ACTIVITY_TYPE] [varchar](2) NULL,
	[SHIP_DATE_FROM] [varchar](10) NULL,
	[SHIP_DATE_TO] [varchar](10) NULL,
	[PROMOTION_DESC] [varchar](40) NULL,
	[SCANNER_APPS_ID] [varchar](60) NULL,
	[EMPLOYEE_RESPONSIBLE] [varchar](10) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[LAST_CHANGED_ON] [varchar](10) NULL,
	[PERSON_NAME] [varchar](12) NULL,
	[DATE_CREATED] [varchar](10) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[CAMPAIGN_DESC] [varchar](40) NULL,
	[PLANNED_DATE_FROM] [varchar](10) NULL,
	[Promo_ Start_Value] [int] NULL,
	[PLANNED_DATE_TO] [varchar](10) NULL,
	[KEY_EVENT_DESC] [varchar](40) NULL,
	[CURRENCY_KEY] [varchar](5) NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL,
	[BW Period] [varchar](8) NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[ALT_SUBCATEGORY] [varchar](30) NULL,
	[PROD_H4] [varchar](18) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PROD_H5] [varchar](18) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PLANTO] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Tier_Name] [nvarchar](255) NULL,
	[Tier] [nvarchar](255) NULL,
	[AKV] [nvarchar](255) NULL,
	[Ca Category] [nvarchar](255) NULL,
	[Tent_Pole_Desc] [nvarchar](255) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[DESCRIPTION] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_PROMO_MAT_OTC]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_PROMO_MAT_OTC](
	[Promotion ID] [varchar](24) NULL,
	[Calender Week] [varchar](7) NULL,
	[Plan To] [varchar](10) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](38, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](38, 3) NULL,
	[Gross Sales $] [decimal](38, 2) NULL,
	[Planned Ship $] [decimal](38, 2) NULL,
	[Planned Incremental Volume $] [decimal](38, 2) NULL,
	[Total Planned Promo $] [decimal](38, 2) NULL,
	[Reserved Total KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo Units] [decimal](38, 2) NULL,
	[DISPLAY] [decimal](17, 2) NULL,
	[FEATURE] [decimal](17, 2) NULL,
	[F&D] [decimal](17, 2) NULL,
	[SVP: Planned Shelf Price] [decimal](17, 2) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](38, 2) NULL,
	[SVP: Suggested Base] [decimal](38, 2) NULL,
	[Planned Promo LB] [decimal](38, 3) NULL,
	[Planned Promo KG] [decimal](38, 3) NULL,
	[Planned Promo Incremental Units] [decimal](38, 3) NULL,
	[Planned Ship Cases] [decimal](38, 3) NULL,
	[ACTIVITY_DESC] [varchar](40) NULL,
	[Promo_Desc] [varchar](40) NULL,
	[ACTIVITY_TYPE] [varchar](2) NULL,
	[SHIP_DATE_FROM] [varchar](10) NULL,
	[SHIP_DATE_TO] [varchar](10) NULL,
	[PROMOTION_DESC] [varchar](40) NULL,
	[EMPLOYEE_RESPONSIBLE] [varchar](10) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[LAST_CHANGED_ON] [varchar](10) NULL,
	[PERSON_NAME] [varchar](12) NULL,
	[DATE_CREATED] [varchar](10) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[CAMPAIGN_DESC] [varchar](40) NULL,
	[PLANNED_DATE_FROM] [varchar](10) NULL,
	[Promo_ Start_Value] [int] NULL,
	[PLANNED_DATE_TO] [varchar](10) NULL,
	[KEY_EVENT_DESC] [varchar](40) NULL,
	[CURRENCY_KEY] [varchar](5) NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL,
	[BW Period] [varchar](8) NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[ALT_SUBCATEGORY] [varchar](30) NULL,
	[PROD_H4] [varchar](18) NULL,
	[Brand] [varchar](60) NULL,
	[PROD_H5] [varchar](18) NULL,
	[Type] [varchar](60) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Material Description] [varchar](40) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PLANTO] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Ca Category] [nvarchar](255) NULL,
	[Update Date] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_PROMO_MAT_OTC_424]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_PROMO_MAT_OTC_424](
	[Promotion ID] [varchar](24) NULL,
	[Calender Week] [varchar](7) NULL,
	[Plan To] [varchar](10) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](38, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](38, 3) NULL,
	[Gross Sales $] [decimal](38, 2) NULL,
	[Planned Ship $] [decimal](38, 2) NULL,
	[Planned Incremental Volume $] [decimal](38, 2) NULL,
	[Total Planned Promo $] [decimal](38, 2) NULL,
	[Reserved Total KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo Units] [decimal](38, 2) NULL,
	[DISPLAY] [decimal](17, 2) NULL,
	[FEATURE] [decimal](17, 2) NULL,
	[F&D] [decimal](17, 2) NULL,
	[SVP: Planned Shelf Price] [decimal](17, 2) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](38, 2) NULL,
	[SVP: Suggested Base] [decimal](38, 2) NULL,
	[Planned Promo LB] [decimal](38, 3) NULL,
	[Planned Promo KG] [decimal](38, 3) NULL,
	[Planned Promo Incremental Units] [decimal](38, 3) NULL,
	[Planned Ship Cases] [decimal](38, 3) NULL,
	[ACTIVITY_DESC] [varchar](40) NULL,
	[Promo_Desc] [varchar](40) NULL,
	[ACTIVITY_TYPE] [varchar](2) NULL,
	[SHIP_DATE_FROM] [varchar](10) NULL,
	[SHIP_DATE_TO] [varchar](10) NULL,
	[PROMOTION_DESC] [varchar](40) NULL,
	[EMPLOYEE_RESPONSIBLE] [varchar](10) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[LAST_CHANGED_ON] [varchar](10) NULL,
	[PERSON_NAME] [varchar](12) NULL,
	[DATE_CREATED] [varchar](10) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[CAMPAIGN_DESC] [varchar](40) NULL,
	[PLANNED_DATE_FROM] [varchar](10) NULL,
	[Promo_ Start_Value] [int] NULL,
	[PLANNED_DATE_TO] [varchar](10) NULL,
	[KEY_EVENT_DESC] [varchar](40) NULL,
	[CURRENCY_KEY] [varchar](5) NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL,
	[BW Period] [varchar](8) NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[ALT_SUBCATEGORY] [varchar](30) NULL,
	[PROD_H4] [varchar](18) NULL,
	[Brand] [varchar](60) NULL,
	[PROD_H5] [varchar](18) NULL,
	[Type] [varchar](60) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Material Description] [varchar](40) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PLANTO] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Ca Category] [nvarchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_PROMO_MAT_OTC_515]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_PROMO_MAT_OTC_515](
	[Promotion ID] [varchar](24) NULL,
	[Calender Week] [varchar](7) NULL,
	[Plan To] [varchar](10) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](38, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](38, 3) NULL,
	[Gross Sales $] [decimal](38, 2) NULL,
	[Planned Ship $] [decimal](38, 2) NULL,
	[Planned Incremental Volume $] [decimal](38, 2) NULL,
	[Total Planned Promo $] [decimal](38, 2) NULL,
	[Reserved Total KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo Units] [decimal](38, 2) NULL,
	[DISPLAY] [decimal](17, 2) NULL,
	[FEATURE] [decimal](17, 2) NULL,
	[F&D] [decimal](17, 2) NULL,
	[SVP: Planned Shelf Price] [decimal](17, 2) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](38, 2) NULL,
	[SVP: Suggested Base] [decimal](38, 2) NULL,
	[Planned Promo LB] [decimal](38, 3) NULL,
	[Planned Promo KG] [decimal](38, 3) NULL,
	[Planned Promo Incremental Units] [decimal](38, 3) NULL,
	[Planned Ship Cases] [decimal](38, 3) NULL,
	[ACTIVITY_DESC] [varchar](40) NULL,
	[Promo_Desc] [varchar](40) NULL,
	[ACTIVITY_TYPE] [varchar](2) NULL,
	[SHIP_DATE_FROM] [varchar](10) NULL,
	[SHIP_DATE_TO] [varchar](10) NULL,
	[PROMOTION_DESC] [varchar](40) NULL,
	[EMPLOYEE_RESPONSIBLE] [varchar](10) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[LAST_CHANGED_ON] [varchar](10) NULL,
	[PERSON_NAME] [varchar](12) NULL,
	[DATE_CREATED] [varchar](10) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[CAMPAIGN_DESC] [varchar](40) NULL,
	[PLANNED_DATE_FROM] [varchar](10) NULL,
	[Promo_ Start_Value] [int] NULL,
	[PLANNED_DATE_TO] [varchar](10) NULL,
	[KEY_EVENT_DESC] [varchar](40) NULL,
	[CURRENCY_KEY] [varchar](5) NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL,
	[BW Period] [varchar](8) NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[ALT_SUBCATEGORY] [varchar](30) NULL,
	[PROD_H4] [varchar](18) NULL,
	[Brand] [varchar](60) NULL,
	[PROD_H5] [varchar](18) NULL,
	[Type] [varchar](60) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Material Description] [varchar](40) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PLANTO] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Ca Category] [nvarchar](255) NULL,
	[Update Date] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_PROMO_MAT_OTC_522]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_PROMO_MAT_OTC_522](
	[Promotion ID] [varchar](24) NULL,
	[Calender Week] [varchar](7) NULL,
	[Plan To] [varchar](10) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](38, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](38, 3) NULL,
	[Gross Sales $] [decimal](38, 2) NULL,
	[Planned Ship $] [decimal](38, 2) NULL,
	[Planned Incremental Volume $] [decimal](38, 2) NULL,
	[Total Planned Promo $] [decimal](38, 2) NULL,
	[Reserved Total KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo Units] [decimal](38, 2) NULL,
	[DISPLAY] [decimal](17, 2) NULL,
	[FEATURE] [decimal](17, 2) NULL,
	[F&D] [decimal](17, 2) NULL,
	[SVP: Planned Shelf Price] [decimal](17, 2) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](38, 2) NULL,
	[SVP: Suggested Base] [decimal](38, 2) NULL,
	[Planned Promo LB] [decimal](38, 3) NULL,
	[Planned Promo KG] [decimal](38, 3) NULL,
	[Planned Promo Incremental Units] [decimal](38, 3) NULL,
	[Planned Ship Cases] [decimal](38, 3) NULL,
	[ACTIVITY_DESC] [varchar](40) NULL,
	[Promo_Desc] [varchar](40) NULL,
	[ACTIVITY_TYPE] [varchar](2) NULL,
	[SHIP_DATE_FROM] [varchar](10) NULL,
	[SHIP_DATE_TO] [varchar](10) NULL,
	[PROMOTION_DESC] [varchar](40) NULL,
	[EMPLOYEE_RESPONSIBLE] [varchar](10) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[LAST_CHANGED_ON] [varchar](10) NULL,
	[PERSON_NAME] [varchar](12) NULL,
	[DATE_CREATED] [varchar](10) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[CAMPAIGN_DESC] [varchar](40) NULL,
	[PLANNED_DATE_FROM] [varchar](10) NULL,
	[Promo_ Start_Value] [int] NULL,
	[PLANNED_DATE_TO] [varchar](10) NULL,
	[KEY_EVENT_DESC] [varchar](40) NULL,
	[CURRENCY_KEY] [varchar](5) NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL,
	[BW Period] [varchar](8) NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[ALT_SUBCATEGORY] [varchar](30) NULL,
	[PROD_H4] [varchar](18) NULL,
	[Brand] [varchar](60) NULL,
	[PROD_H5] [varchar](18) NULL,
	[Type] [varchar](60) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Material Description] [varchar](40) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PLANTO] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Ca Category] [nvarchar](255) NULL,
	[Update Date] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_PROMO_MAT_WEEKLY_TRACKING]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_PROMO_MAT_WEEKLY_TRACKING](
	[Promotion ID] [varchar](24) NULL,
	[Calender Week] [varchar](7) NULL,
	[Plan To] [varchar](10) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](38, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](38, 3) NULL,
	[Gross Sales $] [decimal](38, 2) NULL,
	[Planned Ship $] [decimal](38, 2) NULL,
	[Planned Incremental Volume $] [decimal](38, 2) NULL,
	[Planned Promo COP $] [decimal](38, 2) NULL,
	[LE Total Non-Trade] [decimal](38, 2) NULL,
	[LE Total Fixed KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo $] [decimal](38, 2) NULL,
	[Reserved Total KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo Units] [decimal](38, 2) NULL,
	[Reserved CSM Trade $] [decimal](38, 2) NULL,
	[Total Modeled Promo $] [decimal](38, 2) NULL,
	[Plan Incremental COP $] [decimal](38, 2) NULL,
	[DISPLAY] [decimal](17, 2) NULL,
	[FEATURE] [decimal](17, 2) NULL,
	[F&D] [decimal](17, 2) NULL,
	[Sugg TPQ] [decimal](38, 2) NULL,
	[Sugg Incr] [decimal](38, 2) NULL,
	[SVP: Planned Shelf Price] [decimal](17, 2) NULL,
	[Planned Incrementality %] [decimal](17, 2) NULL,
	[Plan Activity GSV] [decimal](38, 2) NULL,
	[EDLP Spend] [decimal](38, 2) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](38, 2) NULL,
	[SVP: Suggested Base] [decimal](38, 2) NULL,
	[ACTIVITY_DESC] [varchar](40) NULL,
	[Promo_Desc] [varchar](40) NULL,
	[ACTIVITY_TYPE] [varchar](2) NULL,
	[SHIP_DATE_FROM] [varchar](10) NULL,
	[SHIP_DATE_TO] [varchar](10) NULL,
	[PROMOTION_DESC] [varchar](40) NULL,
	[SCANNER_APPS_ID] [varchar](60) NULL,
	[EMPLOYEE_RESPONSIBLE] [varchar](10) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[LAST_CHANGED_ON] [varchar](10) NULL,
	[PERSON_NAME] [varchar](12) NULL,
	[DATE_CREATED] [varchar](10) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[CAMPAIGN_DESC] [varchar](40) NULL,
	[PLANNED_DATE_FROM] [varchar](10) NULL,
	[Promo_ Start_Value] [int] NULL,
	[PLANNED_DATE_TO] [varchar](10) NULL,
	[KEY_EVENT_DESC] [varchar](40) NULL,
	[CURRENCY_KEY] [varchar](5) NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL,
	[BW Period] [varchar](8) NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[ALT_SUBCATEGORY] [varchar](30) NULL,
	[PROD_H4] [varchar](18) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PROD_H5] [varchar](18) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PLANTO] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Ca Category] [nvarchar](255) NULL,
	[Mixed Pallet Material] [varchar](18) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_PROMO_SNACK_TRANSITION]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_PROMO_SNACK_TRANSITION](
	[Promotion ID] [varchar](24) NULL,
	[Calender Week] [varchar](7) NULL,
	[Plan To] [varchar](10) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](38, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](38, 3) NULL,
	[Gross Sales $] [decimal](38, 2) NULL,
	[Planned Ship $] [decimal](38, 2) NULL,
	[Planned Incremental Volume $] [decimal](38, 2) NULL,
	[Planned Promo COP $] [decimal](38, 2) NULL,
	[LE Total Fixed KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo $] [decimal](38, 2) NULL,
	[Reserved Total KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo Units] [decimal](38, 2) NULL,
	[Plan Incremental COP $] [decimal](38, 2) NULL,
	[Plan Activity GSV] [decimal](38, 2) NULL,
	[EDLP Spend] [decimal](38, 2) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](38, 2) NULL,
	[SVP: Suggested Base] [decimal](38, 2) NULL,
	[Planned Promo Incremental Units] [decimal](38, 3) NULL,
	[Planned Promo Base Units] [decimal](38, 3) NULL,
	[Total Planned Shipment CS] [decimal](38, 3) NULL,
	[Total Planned Shipment Eaches] [decimal](38, 3) NULL,
	[Promo Scan Rate Total] [decimal](38, 2) NULL,
	[Off-Invoice Rate Total] [decimal](38, 2) NULL,
	[Bill-back Rate Total] [decimal](38, 2) NULL,
	[ACTIVITY_DESC] [varchar](40) NULL,
	[Promo_Desc] [varchar](40) NULL,
	[ACTIVITY_TYPE] [varchar](2) NULL,
	[SHIP_DATE_FROM] [varchar](10) NULL,
	[SHIP_DATE_TO] [varchar](10) NULL,
	[PROMOTION_DESC] [varchar](40) NULL,
	[EMPLOYEE_RESPONSIBLE] [varchar](10) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[LAST_CHANGED_ON] [varchar](10) NULL,
	[PERSON_NAME] [varchar](12) NULL,
	[DATE_CREATED] [varchar](10) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[CAMPAIGN_DESC] [varchar](40) NULL,
	[PLANNED_DATE_FROM] [varchar](10) NULL,
	[PLANNED_DATE_TO] [varchar](10) NULL,
	[KEY_EVENT_DESC] [varchar](40) NULL,
	[CURRENCY_KEY] [varchar](5) NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL,
	[BW Period] [varchar](8) NULL,
	[Niel Week] [varchar](40) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[ALT_SUBCATEGORY] [varchar](30) NULL,
	[PROD_H4] [varchar](18) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PROD_H5] [varchar](18) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[Material Description] [varchar](40) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PLANTO] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Tier_Name] [nvarchar](255) NULL,
	[Tier] [nvarchar](255) NULL,
	[AKV] [nvarchar](255) NULL,
	[Ca Category] [nvarchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_PROMO_TYPE]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_PROMO_TYPE](
	[Promotion ID] [varchar](24) NULL,
	[Calender Week] [varchar](7) NULL,
	[Plan To] [varchar](10) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](38, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](38, 3) NULL,
	[Gross Sales $] [decimal](38, 2) NULL,
	[Planned Ship $] [decimal](38, 2) NULL,
	[Planned Incremental Volume $] [decimal](38, 2) NULL,
	[Planned Promo COP $] [decimal](38, 2) NULL,
	[LE Total Non-Trade] [decimal](38, 2) NULL,
	[LE Total Fixed KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo $] [decimal](38, 2) NULL,
	[Reserved Total KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo Units] [decimal](38, 2) NULL,
	[Reserved CSM Trade $] [decimal](38, 2) NULL,
	[Total Modeled Promo $] [decimal](38, 2) NULL,
	[Plan Incremental COP $] [decimal](38, 2) NULL,
	[DISPLAY] [decimal](17, 2) NULL,
	[FEATURE] [decimal](17, 2) NULL,
	[F&D] [decimal](17, 2) NULL,
	[Sugg TPQ] [decimal](38, 2) NULL,
	[Sugg Incr] [decimal](38, 2) NULL,
	[SVP: Planned Shelf Price] [decimal](17, 2) NULL,
	[Planned Incrementality %] [decimal](17, 2) NULL,
	[Plan Activity GSV] [decimal](38, 2) NULL,
	[EDLP Spend] [decimal](38, 2) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](38, 2) NULL,
	[SVP: Suggested Base] [decimal](38, 2) NULL,
	[Planned Promo LB] [decimal](38, 3) NULL,
	[Planned Promo KG] [decimal](38, 3) NULL,
	[Planned Promo Incremental Units] [decimal](38, 3) NULL,
	[Planned Promo Base Units] [decimal](38, 3) NULL,
	[Incremental EDLP SPEND] [decimal](38, 6) NULL,
	[Total Planned Shipment CS] [decimal](38, 3) NULL,
	[Total Planned Shipment Eaches] [decimal](38, 3) NULL,
	[ACTIVITY_DESC] [varchar](40) NULL,
	[Promo_Desc] [varchar](40) NULL,
	[ACTIVITY_TYPE] [varchar](2) NULL,
	[SHIP_DATE_FROM] [varchar](10) NULL,
	[SHIP_DATE_TO] [varchar](10) NULL,
	[PROMOTION_DESC] [varchar](40) NULL,
	[SCANNER_APPS_ID] [varchar](60) NULL,
	[EMPLOYEE_RESPONSIBLE] [varchar](10) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[LAST_CHANGED_ON] [varchar](10) NULL,
	[PERSON_NAME] [varchar](12) NULL,
	[DATE_CREATED] [varchar](10) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[CAMPAIGN_DESC] [varchar](40) NULL,
	[PLANNED_DATE_FROM] [varchar](10) NULL,
	[Promo_ Start_Value] [int] NULL,
	[PLANNED_DATE_TO] [varchar](10) NULL,
	[KEY_EVENT_DESC] [varchar](40) NULL,
	[CURRENCY_KEY] [varchar](5) NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL,
	[BW Period] [varchar](8) NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[ALT_SUBCATEGORY] [varchar](30) NULL,
	[PROD_H4] [varchar](18) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PROD_H5] [varchar](18) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PLANTO] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Tier_Name] [nvarchar](255) NULL,
	[Tier] [nvarchar](255) NULL,
	[AKV] [nvarchar](255) NULL,
	[Ca Category] [nvarchar](255) NULL,
	[Tent_Pole_Desc] [nvarchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_PROMO_TYPE_HISTORY]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_PROMO_TYPE_HISTORY](
	[Promotion ID] [varchar](24) NULL,
	[Calender Week] [varchar](7) NULL,
	[Plan To] [varchar](10) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](38, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](38, 3) NULL,
	[Gross Sales $] [decimal](38, 2) NULL,
	[Planned Ship $] [decimal](38, 2) NULL,
	[Planned Incremental Volume $] [decimal](38, 2) NULL,
	[Planned Promo COP $] [decimal](38, 2) NULL,
	[LE Total Non-Trade] [decimal](38, 2) NULL,
	[LE Total Fixed KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo $] [decimal](38, 2) NULL,
	[Reserved Total KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo Units] [decimal](38, 2) NULL,
	[Reserved CSM Trade $] [decimal](38, 2) NULL,
	[Total Modeled Promo $] [decimal](38, 2) NULL,
	[Plan Incremental COP $] [decimal](38, 2) NULL,
	[DISPLAY] [decimal](17, 2) NULL,
	[FEATURE] [decimal](17, 2) NULL,
	[F&D] [decimal](17, 2) NULL,
	[Sugg TPQ] [decimal](38, 2) NULL,
	[Sugg Incr] [decimal](38, 2) NULL,
	[SVP: Planned Shelf Price] [decimal](17, 2) NULL,
	[Planned Incrementality %] [decimal](17, 2) NULL,
	[Plan Activity GSV] [decimal](38, 2) NULL,
	[EDLP Spend] [decimal](38, 2) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](38, 2) NULL,
	[SVP: Suggested Base] [decimal](38, 2) NULL,
	[Planned Promo LB] [decimal](38, 3) NULL,
	[Planned Promo KG] [decimal](38, 3) NULL,
	[Planned Promo Incremental Units] [decimal](38, 3) NULL,
	[Planned Promo Base Units] [decimal](38, 3) NULL,
	[Incremental EDLP SPEND] [decimal](38, 6) NULL,
	[Total Planned Shipment CS] [decimal](38, 3) NULL,
	[Total Planned Shipment Eaches] [decimal](38, 3) NULL,
	[ACTIVITY_DESC] [varchar](40) NULL,
	[Promo_Desc] [varchar](40) NULL,
	[ACTIVITY_TYPE] [varchar](2) NULL,
	[SHIP_DATE_FROM] [varchar](10) NULL,
	[SHIP_DATE_TO] [varchar](10) NULL,
	[PROMOTION_DESC] [varchar](40) NULL,
	[SCANNER_APPS_ID] [varchar](60) NULL,
	[EMPLOYEE_RESPONSIBLE] [varchar](10) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[LAST_CHANGED_ON] [varchar](10) NULL,
	[PERSON_NAME] [varchar](12) NULL,
	[DATE_CREATED] [varchar](10) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[CAMPAIGN_DESC] [varchar](40) NULL,
	[PLANNED_DATE_FROM] [varchar](10) NULL,
	[Promo_ Start_Value] [int] NULL,
	[PLANNED_DATE_TO] [varchar](10) NULL,
	[KEY_EVENT_DESC] [varchar](40) NULL,
	[CURRENCY_KEY] [varchar](5) NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL,
	[BW Period] [varchar](8) NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[ALT_SUBCATEGORY] [varchar](30) NULL,
	[PROD_H4] [varchar](18) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PROD_H5] [varchar](18) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PLANTO] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Tier_Name] [nvarchar](255) NULL,
	[Tier] [nvarchar](255) NULL,
	[AKV] [nvarchar](255) NULL,
	[Ca Category] [nvarchar](255) NULL,
	[Tent_Pole_Desc] [nvarchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_PROMO_TYPE_old]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_PROMO_TYPE_old](
	[Promotion ID] [varchar](24) NULL,
	[Calender Week] [varchar](7) NULL,
	[Plan To] [varchar](10) NULL,
	[TPM: Planned Retailer Promotion Sales] [decimal](38, 2) NULL,
	[TPM: Planned TPQ Eaches] [decimal](38, 3) NULL,
	[Gross Sales $] [decimal](38, 2) NULL,
	[Planned Ship $] [decimal](38, 2) NULL,
	[Planned Incremental Volume $] [decimal](38, 2) NULL,
	[Planned Promo COP $] [decimal](38, 2) NULL,
	[LE Total Non-Trade] [decimal](38, 2) NULL,
	[LE Total Fixed KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo $] [decimal](38, 2) NULL,
	[Reserved Total KMF $] [decimal](38, 2) NULL,
	[Total Planned Promo Units] [decimal](38, 2) NULL,
	[Reserved CSM Trade $] [decimal](38, 2) NULL,
	[Total Modeled Promo $] [decimal](38, 2) NULL,
	[Plan Incremental COP $] [decimal](38, 2) NULL,
	[DISPLAY] [decimal](17, 2) NULL,
	[FEATURE] [decimal](17, 2) NULL,
	[F&D] [decimal](17, 2) NULL,
	[Sugg TPQ] [decimal](38, 2) NULL,
	[Sugg Incr] [decimal](38, 2) NULL,
	[SVP: Planned Shelf Price] [decimal](17, 2) NULL,
	[Planned Incrementality %] [decimal](17, 2) NULL,
	[Plan Activity GSV] [decimal](38, 2) NULL,
	[EDLP Spend] [decimal](38, 2) NULL,
	[TPM: Planned Promo Dollars @ Full Price] [decimal](38, 2) NULL,
	[SVP: Suggested Base] [decimal](38, 2) NULL,
	[Planned Promo LB] [decimal](38, 3) NULL,
	[Planned Promo KG] [decimal](38, 3) NULL,
	[Planned Promo Incremental Units] [decimal](38, 3) NULL,
	[Planned Promo Base Units] [decimal](38, 3) NULL,
	[Incremental EDLP SPEND] [decimal](38, 6) NULL,
	[Total Planned Shipment CS] [decimal](38, 3) NULL,
	[Total Planned Shipment Eaches] [decimal](38, 3) NULL,
	[ACTIVITY_DESC] [varchar](40) NULL,
	[Promo_Desc] [varchar](40) NULL,
	[ACTIVITY_TYPE] [varchar](2) NULL,
	[SHIP_DATE_FROM] [varchar](10) NULL,
	[SHIP_DATE_TO] [varchar](10) NULL,
	[PROMOTION_DESC] [varchar](40) NULL,
	[SCANNER_APPS_ID] [varchar](60) NULL,
	[EMPLOYEE_RESPONSIBLE] [varchar](10) NULL,
	[CHANGED_BY] [varchar](12) NULL,
	[LAST_CHANGED_ON] [varchar](10) NULL,
	[PERSON_NAME] [varchar](12) NULL,
	[DATE_CREATED] [varchar](10) NULL,
	[CAMPAIGN_TYPE] [varchar](4) NULL,
	[CAMPAIGN_DESC] [varchar](40) NULL,
	[PLANNED_DATE_FROM] [varchar](10) NULL,
	[Promo_ Start_Value] [int] NULL,
	[PLANNED_DATE_TO] [varchar](10) NULL,
	[KEY_EVENT_DESC] [varchar](40) NULL,
	[CURRENCY_KEY] [varchar](5) NULL,
	[PERIOD] [varchar](3) NULL,
	[Period Number] [int] NULL,
	[Period Year] [varchar](10) NULL,
	[QUARTER] [varchar](2) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Quarter Year] [varchar](7) NULL,
	[YEAR] [varchar](4) NULL,
	[BW Period] [varchar](8) NULL,
	[Niel Week] [varchar](40) NULL,
	[Pay Week] [int] NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[ALT_SUBCATEGORY] [varchar](30) NULL,
	[PROD_H4] [varchar](18) NULL,
	[PROD_HIER_TEXT4] [varchar](60) NULL,
	[PROD_H5] [varchar](18) NULL,
	[PROD_HIER_TEXT5] [varchar](60) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[PLANTO] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Tier_Name] [nvarchar](255) NULL,
	[Tier] [nvarchar](255) NULL,
	[AKV] [nvarchar](255) NULL,
	[Ca Category] [nvarchar](255) NULL,
	[Tent_Pole_Desc] [nvarchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_BUDGET_RS_TEMP1]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_BUDGET_RS_TEMP1](
	[PT_NAME] [varchar](255) NULL,
	[PT_NUM] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_BUDGET_RS_TEMP2]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_BUDGET_RS_TEMP2](
	[POSTING_PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_BUDGET_RS_TEMP3]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_BUDGET_RS_TEMP3](
	[PT_NAME] [varchar](255) NULL,
	[PT_NUM] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[POSTING_PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_BUDGET_RS_TEMP4]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_BUDGET_RS_TEMP4](
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PT_NUM] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[POSTING_PERIOD] [varchar](3) NULL,
	[YEAR] [int] NULL,
	[BUD_GSV] [decimal](20, 2) NULL,
	[BUD_KMF] [decimal](20, 0) NULL,
	[BUD_KMF_ADJ] [decimal](20, 0) NULL,
	[BUD_NSV] [decimal](20, 0) NULL,
	[IBP_GSV] [decimal](20, 0) NULL,
	[IBP_KMF] [decimal](20, 0) NULL,
	[IBP_NSV] [decimal](20, 0) NULL,
	[TPM_LE_GSV] [decimal](17, 2) NULL,
	[TPM_LE_KMF] [decimal](17, 2) NULL,
	[LE_COP] [decimal](17, 2) NULL,
	[LE_LBS] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_RGM_KPI_SC_BUDGET_RS_TEMP5]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_RGM_KPI_SC_BUDGET_RS_TEMP5](
	[PT_NAME] [varchar](255) NULL,
	[PT_NUM] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[CATEGORY] [varchar](30) NULL,
	[POSTING_PERIOD] [varchar](3) NULL,
	[YEAR] [varchar](4) NULL,
	[BUD_GSV] [decimal](20, 2) NULL,
	[BUD_KMF] [decimal](20, 0) NULL,
	[BUD_KMF_ADJ] [decimal](20, 0) NULL,
	[BUD_NSV] [decimal](20, 0) NULL,
	[IBP_GSV] [decimal](20, 0) NULL,
	[IBP_KMF] [decimal](20, 0) NULL,
	[IBP_NSV] [decimal](20, 0) NULL,
	[TPM_LE_GSV] [decimal](17, 2) NULL,
	[TPM_LE_KMF] [decimal](17, 2) NULL,
	[LE_COP] [decimal](17, 2) NULL,
	[LE_LBS] [decimal](17, 3) NULL,
	[TPM_LE_GSV_YAG] [decimal](17, 2) NULL,
	[TPM_LE_KMF_YAG] [decimal](17, 2) NULL,
	[LE_COP_YAG] [decimal](17, 2) NULL,
	[LE_LBS_YAG] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_SCIM_STAT_FORECAST]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_SCIM_STAT_FORECAST](
	[Market] [varchar](15) NULL,
	[Product] [varchar](25) NULL,
	[Category_Level] [varchar](7) NULL,
	[FCST_LB] [float] NULL,
	[FCST_Base_LB] [float] NULL,
	[FCST_$] [float] NULL,
	[FCST_Base_$] [float] NULL,
	[DATE] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_SCIM_WEEK_REGION_FACT_USR]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_SCIM_WEEK_REGION_FACT_USR](
	[Combo] [nvarchar](352) NOT NULL,
	[YEAR] [varchar](4) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[Alternative Category] [varchar](30) NULL,
	[BW Week] [varchar](7) NULL,
	[PERIOD] [varchar](3) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Week Ending] [date] NULL,
	[Plan Base LBS] [decimal](38, 3) NULL,
	[Plan INCR LBS] [decimal](38, 3) NULL,
	[Plan Base Ret $'s] [decimal](38, 2) NULL,
	[Plan Incr Ret $'s] [decimal](38, 2) NULL,
	[Plan Ship $] [decimal](38, 2) NULL,
	[Plan Ship LBS] [decimal](38, 3) NULL,
	[Actual Ship $] [decimal](38, 2) NULL,
	[Actual Ship LBS] [decimal](38, 3) NULL,
	[LE KMF $] [decimal](38, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_SO_ACOSTA_SCORECARD_FEED]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_SO_ACOSTA_SCORECARD_FEED](
	[LEVEL_A] [nvarchar](255) NULL,
	[LEVEL_B] [nvarchar](255) NULL,
	[LEVEL_C] [nvarchar](255) NULL,
	[Plan To] [nvarchar](255) NULL,
	[PT NAME] [nvarchar](255) NULL,
	[LIFELINE] [varchar](1) NOT NULL,
	[Business Unit] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Posting Period] [nvarchar](255) NULL,
	[KEY_FIGURE] [varchar](13) NOT NULL,
	[GSV] [decimal](17, 0) NULL,
	[KMF] [decimal](17, 0) NULL,
	[Flag] [varchar](10) NOT NULL,
	[Klg Banner] [nvarchar](255) NULL,
	[K-SMAS] [nvarchar](255) NULL,
	[A-FRZN Bus Mgr] [nvarchar](255) NULL,
	[Acosta Regions] [nvarchar](255) NULL,
	[Kellogg SMH] [nvarchar](255) NULL,
	[Klg Director] [nvarchar](255) NULL,
	[Frozen BU slicer] [nvarchar](255) NULL,
	[Klg AE] [nvarchar](255) NULL,
	[LEVEL AA] [varchar](10) NOT NULL,
	[ADJUSTMENTS] [decimal](17, 0) NULL,
	[Plan_To] [nvarchar](511) NULL,
	[To Date - Year] [varchar](7) NULL,
	[ACOSTA] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_CON_2016_ALL_VERSIONS]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_CON_2016_ALL_VERSIONS](
	[CUSTOMER] [varchar](10) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[CALENDER_WEEK] [varchar](7) NULL,
	[CONSENSUS_GSV] [decimal](17, 2) NULL,
	[SNAPSHOT_WEEK] [varchar](7) NULL,
	[CURRENT_CALWEEK] [varchar](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_KPEL]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_KPEL](
	[EVENT_NAME] [varchar](255) NULL,
	[EVENT_PRODUCT] [varchar](255) NULL,
	[PRODUCT_DESCRIPTION_2] [nvarchar](255) NULL,
	[START_DATE] [varchar](255) NULL,
	[END_DATE] [varchar](255) NULL,
	[NIELSEN_WEEK_ENDING] [varchar](255) NULL,
	[PLAN_TO_NAME] [varchar](255) NULL,
	[Plan_TO] [varchar](255) NULL,
	[T_ID] [varchar](255) NULL,
	[BRAND] [varchar](255) NULL,
	[SIZE] [varchar](255) NULL,
	[VENDOR] [varchar](255) NULL,
	[CATEGORY] [varchar](255) NULL,
	[SUBBRAND] [varchar](255) NULL,
	[SEGMENT] [varchar](255) NULL,
	[YEAR] [varchar](255) NULL,
	[QTR] [varchar](255) NULL,
	[ADJ_PROMO_START] [varchar](255) NULL,
	[ADJ_PROMO_END] [varchar](255) NULL,
	[WEEK_IN_PROMO] [varchar](255) NULL,
	[Price Tactic] [varchar](255) NULL,
	[Price Desc] [varchar](255) NULL,
	[Overlay Tactic] [varchar](255) NULL,
	[Overlay Desc] [varchar](255) NULL,
	[National Program] [varchar](255) NULL,
	[Customer Program] [varchar](255) NULL,
	[Rev Size] [varchar](255) NULL,
	[Demo Flag] [varchar](255) NULL,
	[ISB Flag] [varchar](255) NULL,
	[TOTAL_UNITS] [decimal](38, 15) NULL,
	[BASE_UNITS_WITH_EDLP] [decimal](38, 15) NULL,
	[INCR_UNITS_WITH_EDLP] [decimal](38, 15) NULL,
	[TOTAL_RETAIL_SALES_DOLLARS] [decimal](38, 15) NULL,
	[BASE_RETAIL_SALES_DOLLARS] [decimal](38, 15) NULL,
	[INCR_RETAIL_SALES_DOLLARS] [decimal](38, 15) NULL,
	[TOTAL_GSV] [decimal](38, 15) NULL,
	[BASE_GSV] [decimal](38, 15) NULL,
	[INCR_GSV] [decimal](38, 15) NULL,
	[TTL_INVESTMENT] [decimal](38, 15) NULL,
	[ANY_DISP] [decimal](38, 15) NULL,
	[INCR_GM] [decimal](38, 15) NULL,
	[TOTAL_RETAILER_MARGIN] [decimal](38, 15) NULL,
	[LIST_UNIT] [decimal](38, 15) NULL,
	[NUMBER_OF_SKUS] [decimal](38, 15) NULL,
	[PROMO_LENGTH] [decimal](38, 15) NULL,
	[KMF_COST] [decimal](38, 15) NULL,
	[TOTAL_COP] [decimal](38, 15) NULL,
	[Base_Profit] [decimal](38, 15) NULL,
	[Incr_Profit] [decimal](38, 15) NULL,
	[Total_Profit] [decimal](38, 15) NULL,
	[Base_Edlp_Spend] [decimal](38, 15) NULL,
	[Sku Weeks] [decimal](38, 15) NULL,
	[Price Point] [varchar](255) NULL,
	[Event Avg Price] [varchar](255) NULL,
	[Shopper Marketing] [varchar](255) NULL,
	[Overlay Select] [varchar](255) NULL,
	[Price Strategy] [varchar](255) NULL,
	[BU] [varchar](255) NULL,
	[Register Flag] [varchar](255) NULL,
	[LBS] [decimal](38, 15) NULL,
	[BLBS] [decimal](38, 15) NULL,
	[INCR_LBS] [decimal](38, 15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_NIEL_SCIM_CORP_TGT]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_TPE_NIEL_SCIM_CORP_TGT](
	[Source_File] [nvarchar](255) NULL,
	[Source_Tab] [nvarchar](255) NULL,
	[Extract_Date] [nvarchar](255) NULL,
	[All_Markets] [nvarchar](255) NULL,
	[All_Products] [nvarchar](255) NULL,
	[All_Periods] [nvarchar](255) NULL,
	[Ret_$] [decimal](20, 5) NULL,
	[Ret_Base_$] [decimal](20, 5) NULL,
	[Ret_Incr_$] [decimal](20, 5) NULL,
	[Ret_LB] [decimal](20, 5) NULL,
	[Ret_Base_LB] [decimal](20, 5) NULL,
	[Ret_Incr_LB] [decimal](20, 5) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_TPE_NIEL_SCIM_CORP_USR]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_TPE_NIEL_SCIM_CORP_USR](
	[Source_File] [nvarchar](255) NULL,
	[Source_Tab] [nvarchar](255) NULL,
	[Extract_Date] [nvarchar](255) NULL,
	[All_Markets] [nvarchar](255) NULL,
	[All_Products] [nvarchar](255) NULL,
	[All_Periods] [nvarchar](255) NULL,
	[Ret_$] [decimal](20, 5) NULL,
	[Ret_Base_$] [decimal](20, 5) NULL,
	[Ret_Incr_$] [decimal](20, 5) NULL,
	[Ret_LB] [decimal](20, 5) NULL,
	[Ret_Base_LB] [decimal](20, 5) NULL,
	[Ret_Incr_LB] [decimal](20, 5) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_TPE_PLANTO_MAP_DIM_USR]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_TPE_PLANTO_MAP_DIM_USR](
	[PT#_TEXT] [nvarchar](255) NULL,
	[PT#] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[LIFELINE] [nvarchar](255) NULL,
	[Cons_Class] [nvarchar](255) NULL,
	[TIER] [nvarchar](255) NULL,
	[Tier_Name] [nvarchar](255) NULL,
	[Nielsen_Mkt] [nvarchar](255) NULL,
	[Pricing_Strategy] [nvarchar](255) NULL,
	[ALT_Level_B] [nvarchar](255) NULL,
	[CHANNEL] [nvarchar](255) NULL,
	[DP#] [nvarchar](255) NULL,
	[DP_Text] [nvarchar](255) NULL,
	[DP_Group] [nvarchar](255) NULL,
	[AKV] [nvarchar](255) NULL,
	[Niel_ACV] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_TPE_SCIM_MF_WEEK_BRAND_FACT_USR]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_SCIM_MF_WEEK_BRAND_FACT_USR](
	[YEAR] [varchar](4) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[Alternative Category] [varchar](30) NULL,
	[Brand Name] [varchar](60) NULL,
	[BW Week] [varchar](7) NULL,
	[PERIOD] [varchar](3) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Cons_Class] [nvarchar](255) NULL,
	[Tier_Name] [nvarchar](255) NULL,
	[Week Ending] [date] NULL,
	[Plan Base LBS] [decimal](38, 3) NULL,
	[Plan INCR LBS] [decimal](38, 3) NULL,
	[Plan Base Ret $'s] [decimal](38, 2) NULL,
	[Plan Incr Ret $'s] [decimal](38, 2) NULL,
	[Plan Ship $] [decimal](38, 2) NULL,
	[Plan Ship LBS] [decimal](38, 3) NULL,
	[Actual Ship $] [decimal](38, 2) NULL,
	[Actual Ship LBS] [decimal](38, 3) NULL,
	[LE KMF $] [decimal](38, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_SCIM_WEEK_CONSENSUS_USR]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_SCIM_WEEK_CONSENSUS_USR](
	[Combo] [nvarchar](352) NOT NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[CALENDER_WEEK] [varchar](7) NULL,
	[Week Ending] [date] NULL,
	[Period Number] [int] NULL,
	[Quarter Number] [varchar](1) NULL,
	[YEAR] [varchar](4) NULL,
	[Cons_Class] [nvarchar](255) NULL,
	[Consensus_GSV] [decimal](38, 2) NULL,
	[Consensus_LB] [decimal](38, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_SCIM_WEEK_FACT_USR]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_SCIM_WEEK_FACT_USR](
	[Combo] [nvarchar](352) NOT NULL,
	[YEAR] [varchar](4) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[Alternative Category] [varchar](30) NULL,
	[BW Week] [varchar](7) NULL,
	[PERIOD] [varchar](3) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Cons_Class] [nvarchar](255) NULL,
	[Week Ending] [date] NULL,
	[Plan Base LBS] [decimal](38, 3) NULL,
	[Plan INCR LBS] [decimal](38, 3) NULL,
	[Plan Base Ret $'s] [decimal](38, 2) NULL,
	[Plan Incr Ret $'s] [decimal](38, 2) NULL,
	[Plan Ship $] [decimal](38, 2) NULL,
	[Plan Ship LBS] [decimal](38, 3) NULL,
	[Actual Ship $] [decimal](38, 2) NULL,
	[Actual Ship LBS] [decimal](38, 3) NULL,
	[LE KMF $] [decimal](38, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_SCIM_WEEK_FACT_USRh]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_SCIM_WEEK_FACT_USRh](
	[Combo] [nvarchar](352) NOT NULL,
	[YEAR] [varchar](4) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[Alternative Category] [varchar](30) NULL,
	[BW Week] [varchar](7) NULL,
	[PERIOD] [varchar](3) NULL,
	[Quarter Number] [varchar](1) NULL,
	[Cons_Class] [nvarchar](255) NULL,
	[Week Ending] [date] NULL,
	[Plan Base LBS] [decimal](38, 3) NULL,
	[Plan INCR LBS] [decimal](38, 3) NULL,
	[Plan Base Ret $'s] [decimal](38, 2) NULL,
	[Plan Incr Ret $'s] [decimal](38, 2) NULL,
	[Plan Ship $] [decimal](38, 2) NULL,
	[Plan Ship LBS] [decimal](38, 3) NULL,
	[Actual Ship $] [decimal](38, 2) NULL,
	[Actual Ship LBS] [decimal](38, 3) NULL,
	[LE KMF $] [decimal](38, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_SCIM_WEEK_REGION_FACT_USR]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_SCIM_WEEK_REGION_FACT_USR](
	[Combo] [nvarchar](352) NOT NULL,
	[YEAR] [varchar](4) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[Alternative Category] [varchar](30) NULL,
	[BW Week] [varchar](7) NULL,
	[PERIOD] [varchar](3) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Week Ending] [date] NULL,
	[Plan Base LBS] [decimal](38, 3) NULL,
	[Plan INCR LBS] [decimal](38, 3) NULL,
	[Plan Base Ret $'s] [decimal](38, 2) NULL,
	[Plan Incr Ret $'s] [decimal](38, 2) NULL,
	[Plan Ship $] [decimal](38, 2) NULL,
	[Plan Ship LBS] [decimal](38, 3) NULL,
	[Actual Ship $] [decimal](38, 2) NULL,
	[Actual Ship LBS] [decimal](38, 3) NULL,
	[LE KMF $] [decimal](38, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_SNACKS_TPM_LE_RICH]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_TPE_SNACKS_TPM_LE_RICH](
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Period Number] [int] NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[TPM_LE_CS] [decimal](38, 3) NULL,
	[TPM_LE_GSV] [decimal](38, 2) NULL,
	[TPM_LE_Units] [decimal](38, 3) NULL,
	[RED_K] [smallmoney] NULL,
	[New Red k] [money] NULL,
	[Week Ending] [date] NULL,
	[REDK_CONVERSION_DATE] [date] NULL,
	[QC_TPM_GSV] [decimal](38, 2) NULL,
	[NEW_TPM_LE_GSV] [decimal](38, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_TPE_TPM_BZ_AN_USER]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_TPE_TPM_BZ_AN_USER](
	[Acct] [nvarchar](255) NULL,
	[Material] [nvarchar](255) NULL,
	[week] [nvarchar](255) NULL,
	[Cases_DI] [nvarchar](255) NULL,
	[Eaches_DI] [nvarchar](255) NULL,
	[GSV_DI] [nvarchar](255) NULL,
	[PLAN_BASE_CS] [nvarchar](255) NULL,
	[PLAN_INCR_CS] [nvarchar](255) NULL,
	[PLAN_BASE_EA] [nvarchar](255) NULL,
	[PLAN_INCR_EA] [nvarchar](255) NULL,
	[PLAN_SHIP_CS] [nvarchar](255) NULL,
	[PLAN_SHIP_EA] [nvarchar](255) NULL,
	[CASEPACK] [nvarchar](255) NULL,
	[PromoName] [nvarchar](255) NULL,
	[Avg_Promo_Price] [nvarchar](255) NULL,
	[material_description] [nvarchar](255) NULL,
	[acctname] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_TPE_USER_AUTH_TGT_SRC]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KLG_TPE_USER_AUTH_TGT_SRC](
	[User Name] [nvarchar](255) NULL,
	[BU] [nvarchar](255) NULL,
	[Plan To Number] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KLG_TPE_ZC_CON52_SRC]    Script Date: 11/20/2018 5:53:01 PM ******/
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
/****** Object:  Table [dbo].[KNA_HIERARCHY_N]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KNA_HIERARCHY_N](
	[PT_N_ TEXT] [nvarchar](255) NULL,
	[PLANTO] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[BU] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Cons_Class] [nvarchar](255) NULL,
	[TIER] [nvarchar](255) NULL,
	[Tier_Name] [nvarchar](255) NULL,
	[Nielsen_Mkt] [nvarchar](255) NULL,
	[Pricing_Strategy] [nvarchar](255) NULL,
	[CHANNEL] [nvarchar](255) NULL,
	[AKV] [nvarchar](255) NULL,
	[Niel_ACV] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KNA_MKTG_CUST_MSTR]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNA_MKTG_CUST_MSTR](
	[CUST_ID] [varchar](10) NOT NULL,
	[CUST_DESC] [varchar](40) NULL,
	[CUST_TYP] [varchar](2) NULL,
	[HIER_C_LVL1_CUST_ID] [varchar](10) NULL,
	[HIER_C_LVL1_CUST_DESC] [varchar](40) NULL,
	[HIER_C_LVL2_CUST_ID] [varchar](10) NULL,
	[HIER_C_LVL2_CUST_DESC] [varchar](40) NULL,
	[HIER_C_LVL3_CUST_ID] [varchar](10) NULL,
	[HIER_C_LVL3_CUST_DESC] [varchar](40) NULL,
	[HIER_C_LVL4_CUST_ID] [varchar](10) NULL,
	[HIER_C_LVL4_CUST_DESC] [varchar](40) NULL,
	[HIER_C_LVL5_CUST_ID] [varchar](10) NULL,
	[HIER_C_LVL5_CUST_DESC] [varchar](40) NULL,
	[HIER_C_LVL6_CUST_ID] [varchar](10) NULL,
	[HIER_C_LVL6_CUST_DESC] [varchar](40) NULL,
	[HIER_C_LVL7_CUST_ID] [varchar](10) NULL,
	[HIER_C_LVL7_CUST_DESC] [varchar](40) NULL,
	[HIER_D_LVL1_CUST_ID] [varchar](10) NULL,
	[HIER_D_LVL1_CUST_DESC] [varchar](40) NULL,
	[HIER_D_LVL2_CUST_ID] [varchar](10) NULL,
	[HIER_D_LVL2_CUST_DESC] [varchar](40) NULL,
	[HIER_D_LVL3_CUST_ID] [varchar](10) NULL,
	[HIER_D_LVL3_CUST_DESC] [varchar](40) NULL,
	[HIER_D_LVL4_CUST_ID] [varchar](10) NULL,
	[HIER_D_LVL4_CUST_DESC] [varchar](40) NULL,
	[HIER_D_LVL5_CUST_ID] [varchar](10) NULL,
	[HIER_D_LVL5_CUST_DESC] [varchar](40) NULL,
	[HIER_D_LVL6_CUST_ID] [varchar](10) NULL,
	[HIER_D_LVL6_CUST_DESC] [varchar](40) NULL,
	[HIER_D_LVL7_CUST_ID] [varchar](10) NULL,
	[HIER_D_LVL7_CUST_DESC] [varchar](40) NULL,
	[HIER_D_LVL8_CUST_ID] [varchar](10) NULL,
	[HIER_D_LVL8_CUST_DESC] [varchar](40) NULL,
	[HIER_D_LVL9_CUST_ID] [varchar](10) NULL,
	[HIER_D_LVL9_CUST_DESC] [varchar](40) NULL,
	[HIER_D_LVL10_CUST_ID] [varchar](10) NULL,
	[HIER_D_LVL10_CUST_DESC] [varchar](40) NULL,
	[HIER_D_LVL11_CUST_ID] [varchar](10) NULL,
	[HIER_D_LVL11_CUST_DESC] [varchar](40) NULL,
	[PLN_TO] [varchar](10) NULL,
	[BUS_PARTNR] [varchar](10) NULL,
	[CUST_CHNL] [varchar](2) NULL,
	[CUST_GRP2] [varchar](3) NULL,
	[CUST_GRP3] [varchar](3) NULL,
	[CUST_ADDR] [varchar](10) NULL,
	[CUST_LAT] [decimal](10, 3) NULL,
	[CUST_LON] [decimal](10, 3) NULL,
	[CUST_CITY] [varchar](35) NULL,
	[CUST_RGN] [varchar](3) NULL,
	[CUST_STORE_NBR] [varchar](15) NULL,
	[CUST_CTRY] [varchar](3) NULL,
	[CUST_STR] [varchar](35) NULL,
	[CUST_ZIP_CODE] [varchar](10) NULL,
	[HIER_B_LVL1_CUST_ID] [varchar](10) NULL,
	[HIER_B_LVL1_CUST_DESC] [varchar](40) NULL,
	[HIER_B_LVL2_CUST_ID] [varchar](10) NULL,
	[HIER_B_LVL2_CUST_DESC] [varchar](40) NULL,
	[HIER_B_LVL3_CUST_ID] [varchar](10) NULL,
	[HIER_B_LVL3_CUST_DESC] [varchar](40) NULL,
	[HIER_B_LVL4_CUST_ID] [varchar](10) NULL,
	[HIER_B_LVL4_CUST_DESC] [varchar](40) NULL,
	[HIER_B_LVL5_CUST_ID] [varchar](10) NULL,
	[HIER_B_LVL5_CUST_DESC] [varchar](40) NULL,
	[HIER_B_LVL6_CUST_ID] [varchar](10) NULL,
	[HIER_B_LVL6_CUST_DESC] [varchar](40) NULL,
	[HIER_B_LVL7_CUST_ID] [varchar](10) NULL,
	[HIER_B_LVL7_CUST_DESC] [varchar](40) NULL,
	[HIER_B_LVL8_CUST_ID] [varchar](10) NULL,
	[HIER_B_LVL8_CUST_DESC] [varchar](40) NULL,
	[HIER_B_LVL9_CUST_ID] [varchar](10) NULL,
	[HIER_B_LVL9_CUST_DESC] [varchar](40) NULL,
	[HIER_B_LVL10_CUST_ID] [varchar](10) NULL,
	[HIER_B_LVL10_CUST_DESC] [varchar](40) NULL,
 CONSTRAINT [PK_KNA_MKTG_CUST_MSTR] PRIMARY KEY CLUSTERED 
(
	[CUST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNA_MKTG_CUST_MSTR_TEMP]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNA_MKTG_CUST_MSTR_TEMP](
	[CUST_ID] [varchar](10) NULL,
	[CUST_DESC] [varchar](35) NULL,
	[CUST_TYP] [varchar](2) NULL,
	[CUST_CITY] [varchar](35) NULL,
	[CUST_RGN] [varchar](3) NULL,
	[CUST_STORE_NBR] [varchar](15) NULL,
	[CUST_CTRY] [varchar](3) NULL,
	[CUST_STR] [varchar](35) NULL,
	[CUST_ZIP_CODE] [varchar](10) NULL,
	[PLN_TO_IND] [varchar](2) NULL,
	[PLN_TO_ALT] [varchar](10) NULL,
	[PLN_TO] [varchar](10) NULL,
	[BUS_PARTNR] [varchar](10) NULL,
	[CUST_CHNL] [varchar](10) NULL,
	[CUST_GRP2] [varchar](3) NULL,
	[CUST_GRP3] [varchar](3) NULL,
	[CUST_ADDR] [varchar](10) NULL,
	[CUST_LAT] [decimal](10, 3) NULL,
	[CUST_LON] [decimal](10, 3) NULL,
	[HIER_B_LVL1_CUST_ID] [varchar](10) NULL,
	[HIER_B_LVL1_CUST_DESC] [varchar](40) NULL,
	[HIER_B_LVL2_CUST_ID] [varchar](10) NULL,
	[HIER_B_LVL2_CUST_DESC] [varchar](40) NULL,
	[HIER_B_LVL3_CUST_ID] [varchar](10) NULL,
	[HIER_B_LVL3_CUST_DESC] [varchar](40) NULL,
	[HIER_B_LVL4_CUST_ID] [varchar](10) NULL,
	[HIER_B_LVL4_CUST_DESC] [varchar](40) NULL,
	[HIER_B_LVL5_CUST_ID] [varchar](10) NULL,
	[HIER_B_LVL5_CUST_DESC] [varchar](40) NULL,
	[HIER_B_LVL6_CUST_ID] [varchar](10) NULL,
	[HIER_B_LVL6_CUST_DESC] [varchar](40) NULL,
	[HIER_B_LVL7_CUST_ID] [varchar](10) NULL,
	[HIER_B_LVL7_CUST_DESC] [varchar](40) NULL,
	[HIER_B_LVL8_CUST_ID] [varchar](10) NULL,
	[HIER_B_LVL8_CUST_DESC] [varchar](40) NULL,
	[HIER_B_LVL9_CUST_ID] [varchar](10) NULL,
	[HIER_B_LVL9_CUST_DESC] [varchar](40) NULL,
	[HIER_B_LVL10_CUST_ID] [varchar](10) NULL,
	[HIER_B_LVL10_CUST_DESC] [varchar](40) NULL,
	[HIER_C_LVL1_CUST_ID] [varchar](10) NULL,
	[HIER_C_LVL1_CUST_DESC] [varchar](40) NULL,
	[HIER_C_LVL2_CUST_ID] [varchar](10) NULL,
	[HIER_C_LVL2_CUST_DESC] [varchar](40) NULL,
	[HIER_C_LVL3_CUST_ID] [varchar](10) NULL,
	[HIER_C_LVL3_CUST_DESC] [varchar](40) NULL,
	[HIER_C_LVL4_CUST_ID] [varchar](10) NULL,
	[HIER_C_LVL4_CUST_DESC] [varchar](40) NULL,
	[HIER_C_LVL5_CUST_ID] [varchar](10) NULL,
	[HIER_C_LVL5_CUST_DESC] [varchar](40) NULL,
	[HIER_C_LVL6_CUST_ID] [varchar](10) NULL,
	[HIER_C_LVL6_CUST_DESC] [varchar](40) NULL,
	[HIER_C_LVL7_CUST_ID] [varchar](10) NULL,
	[HIER_C_LVL7_CUST_DESC] [varchar](40) NULL,
	[HIER_D_LVL1_CUST_ID] [varchar](10) NULL,
	[HIER_D_LVL1_CUST_DESC] [varchar](40) NULL,
	[HIER_D_LVL2_CUST_ID] [varchar](10) NULL,
	[HIER_D_LVL2_CUST_DESC] [varchar](40) NULL,
	[HIER_D_LVL3_CUST_ID] [varchar](10) NULL,
	[HIER_D_LVL3_CUST_DESC] [varchar](40) NULL,
	[HIER_D_LVL4_CUST_ID] [varchar](10) NULL,
	[HIER_D_LVL4_CUST_DESC] [varchar](40) NULL,
	[HIER_D_LVL5_CUST_ID] [varchar](10) NULL,
	[HIER_D_LVL5_CUST_DESC] [varchar](40) NULL,
	[HIER_D_LVL6_CUST_ID] [varchar](10) NULL,
	[HIER_D_LVL6_CUST_DESC] [varchar](40) NULL,
	[HIER_D_LVL7_CUST_ID] [varchar](10) NULL,
	[HIER_D_LVL7_CUST_DESC] [varchar](40) NULL,
	[HIER_D_LVL8_CUST_ID] [varchar](10) NULL,
	[HIER_D_LVL8_CUST_DESC] [varchar](40) NULL,
	[HIER_D_LVL9_CUST_ID] [varchar](10) NULL,
	[HIER_D_LVL9_CUST_DESC] [varchar](40) NULL,
	[HIER_D_LVL10_CUST_ID] [varchar](10) NULL,
	[HIER_D_LVL10_CUST_DESC] [varchar](40) NULL,
	[HIER_D_LVL11_CUST_ID] [varchar](10) NULL,
	[HIER_D_LVL11_CUST_DESC] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNA_MKTG_MATRL_ALT_UOM_MSTR]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNA_MKTG_MATRL_ALT_UOM_MSTR](
	[MATRL_ID] [varchar](18) NOT NULL,
	[BASE_MATRL] [varchar](18) NULL,
	[CS_EAN_UPC] [varchar](18) NULL,
	[CS_GTIN] [varchar](18) NULL,
	[CS_UPC] [varchar](18) NULL,
	[CS_WGT_UNIT] [varchar](3) NULL,
	[CS_GROS_WGT] [decimal](17, 3) NULL,
	[CS_SZ_UNIT] [varchar](3) NULL,
	[CS_HGT] [decimal](17, 3) NULL,
	[CS_LEN] [decimal](17, 3) NULL,
	[CS_WID] [decimal](17, 3) NULL,
	[CS_VOL_UNIT] [varchar](3) NULL,
	[CS_VOL] [decimal](17, 3) NULL,
	[PKG_EAN_UPC] [varchar](18) NULL,
	[PKG_GTIN] [varchar](18) NULL,
	[PKG_UPC] [varchar](18) NULL,
	[PKG_WGT_UNIT] [varchar](3) NULL,
	[PKG_GROS_WGT] [decimal](17, 3) NULL,
	[PKG_NET_WGT] [decimal](17, 3) NULL,
	[PKG_SZ_UNIT] [varchar](3) NULL,
	[PKG_HGT] [decimal](17, 3) NULL,
	[PKG_LEN] [decimal](17, 3) NULL,
	[PKG_WID] [decimal](17, 3) NULL,
	[PKG_VOL_UNIT] [varchar](3) NULL,
	[PKG_VOL] [decimal](17, 3) NULL,
	[UL_EAN_UPC] [varchar](18) NULL,
	[UL_GTIN] [varchar](18) NULL,
	[UL_UPC] [varchar](18) NULL,
	[UL_WGT_UNIT] [varchar](3) NULL,
	[UL_GROS_WGT] [decimal](17, 3) NULL,
	[UL_SZ_UNIT] [varchar](3) NULL,
	[UL_HGT] [decimal](17, 3) NULL,
	[UL_LEN] [decimal](17, 3) NULL,
	[UL_WID] [decimal](17, 3) NULL,
	[UL_VOL_UNIT] [varchar](3) NULL,
	[UL_VOL] [decimal](17, 3) NULL,
 CONSTRAINT [PK_KNA_MKTG_MATRL_ALT_UOM_MSTR] PRIMARY KEY CLUSTERED 
(
	[MATRL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KNA_MKTG_PROD_HIER]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KNA_MKTG_PROD_HIER](
	[PROD_HIER_CODE] [varchar](18) NOT NULL,
	[PROD_HIER_LNG] [varchar](2) NOT NULL,
	[PROD_HIER_DESC] [varchar](40) NULL,
 CONSTRAINT [PK_KNA_MKTG_PROD_HIER] PRIMARY KEY CLUSTERED 
(
	[PROD_HIER_CODE] ASC,
	[PROD_HIER_LNG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KUSA_TRACK_CALENDAR]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KUSA_TRACK_CALENDAR](
	[Calendar Day Text] [date] NULL,
	[Caledary Day Value] [date] NULL,
	[YEAR] [numeric](37, 0) NULL,
	[PERIOD] [numeric](37, 0) NULL,
	[Weeks in Period] [numeric](37, 0) NULL,
	[Wk_Year] [numeric](37, 0) NULL,
	[Wk_Pd] [numeric](37, 0) NULL,
	[DAY OF PD] [numeric](37, 0) NULL,
	[DC Year] [numeric](37, 0) NULL,
	[DC Period] [numeric](37, 0) NULL,
	[DC Day of Week] [numeric](37, 0) NULL,
	[DC Day] [numeric](37, 0) NULL,
	[Prior Track Day] [date] NULL,
	[TRACK DAY] [numeric](37, 0) NULL,
	[DAY] [nvarchar](255) NULL,
	[Ship Day Type Flag] [nvarchar](255) NULL,
	[Ship Day Type Desc] [nvarchar](255) NULL,
	[Order Day] [numeric](37, 0) NULL,
	[Holiday Name] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KUSA_TRACK_DEMCAP_2015]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KUSA_TRACK_DEMCAP_2015](
	[Track Day] [nvarchar](255) NULL,
	[Level A] [nvarchar](255) NULL,
	[Level B] [nvarchar](255) NULL,
	[Level C] [nvarchar](255) NULL,
	[Level D] [nvarchar](255) NULL,
	[Business Unit] [nvarchar](255) NULL,
	[Level E] [nvarchar](255) NULL,
	[Plan To] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Sub Category] [nvarchar](255) NULL,
	[Open_Order $] [numeric](37, 0) NULL,
	[P Gross_Sales $] [numeric](37, 0) NULL,
	[Q Gross_Sales $] [numeric](37, 0) NULL,
	[Y Gross_Sales $] [numeric](37, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KUSA_TRACK_DEMCAP_2016]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KUSA_TRACK_DEMCAP_2016](
	[Track Day] [nvarchar](255) NULL,
	[Plan To] [nvarchar](255) NULL,
	[Business Unit] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Sub Category] [nvarchar](255) NULL,
	[Open_Order $] [numeric](37, 0) NULL,
	[P Gross_Sales $] [numeric](37, 0) NULL,
	[Q Gross_Sales $] [numeric](37, 0) NULL,
	[Y Gross_Sales $] [numeric](37, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KUSA_TRACK_GSV_Loader]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KUSA_TRACK_GSV_Loader](
	[PT] [nvarchar](255) NULL,
	[PT Name] [nvarchar](255) NULL,
	[BU] [nvarchar](255) NULL,
	[Brand#] [nvarchar](255) NULL,
	[Brand] [nvarchar](255) NULL,
	[Open Order $] [decimal](38, 5) NULL,
	[PTD GSV$] [decimal](38, 5) NULL,
	[QTD GSV$] [decimal](38, 5) NULL,
	[YTD GSV$] [decimal](38, 5) NULL,
	[PTD YAG GSV$] [decimal](38, 5) NULL,
	[QTD YAG GSV$] [decimal](38, 5) NULL,
	[YTD YAG GSV$] [decimal](38, 5) NULL,
	[Next Period OO] [decimal](38, 5) NULL,
	[Last Refresh Date] [nvarchar](255) NULL,
	[Track Day] [nvarchar](255) NULL,
	[Period] [nvarchar](255) NULL,
	[Year] [nvarchar](255) NULL,
	[Today GSV$] [decimal](38, 5) NULL,
	[Today OO$] [decimal](38, 5) NULL,
	[PTD Combo Key] [nvarchar](255) NULL,
	[YEST Combo Key] [nvarchar](255) NULL,
	[YEST OO$] [decimal](38, 5) NULL,
	[YEST GSV$] [decimal](38, 5) NULL,
	[YEST PT] [nvarchar](255) NULL,
	[YEST PT Name] [nvarchar](255) NULL,
	[YEST BU] [nvarchar](255) NULL,
	[YEST Brand#] [nvarchar](255) NULL,
	[YEST Brand] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KUSA_TRACK_INDIRECT_Loader]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KUSA_TRACK_INDIRECT_Loader](
	[Period_Year] [nvarchar](255) NULL,
	[PT] [nvarchar](255) NULL,
	[PT Name] [nvarchar](255) NULL,
	[BU] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[CURR PD IND$] [decimal](38, 5) NULL,
	[PTD IND$] [decimal](38, 5) NULL,
	[PTD Pace] [decimal](38, 5) NULL,
	[QTD Pace] [decimal](38, 5) NULL,
	[YTD Pace] [decimal](38, 5) NULL,
	[Last Refresh Date] [date] NULL,
	[Track Day] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KUSA_TRACK_KPI_Loader]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KUSA_TRACK_KPI_Loader](
	[Plan To] [nvarchar](255) NULL,
	[Plan To Name] [nvarchar](255) NULL,
	[Business Unit] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[P IBP PER] [decimal](38, 5) NULL,
	[Q IBP PER] [decimal](38, 5) NULL,
	[Y IBP PER] [decimal](38, 5) NULL,
	[P BUDGET PER] [decimal](38, 5) NULL,
	[Q BUDGET PER] [decimal](38, 5) NULL,
	[Y BUDGET PER] [decimal](38, 5) NULL,
	[P SE PER] [decimal](38, 5) NULL,
	[Q SE PER] [decimal](38, 5) NULL,
	[Y SE PER] [decimal](38, 5) NULL,
	[Last Refresh Date] [date] NULL,
	[Track Day] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KUSA_TRACK_SHAPE_Loader]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KUSA_TRACK_SHAPE_Loader](
	[Shape Pd] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Business Unit] [nvarchar](255) NULL,
	[Track Day] [date] NULL,
	[DC Day] [nvarchar](255) NULL,
	[Week] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Cur Shape %] [decimal](38, 6) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LIFELINE]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LIFELINE](
	[Acct] [nvarchar](255) NULL,
	[Sweetbay] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LIFELINE_BY_PERIOD]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LIFELINE_BY_PERIOD](
	[Acct] [nvarchar](255) NULL,
	[Sweetbay] [nvarchar](255) NULL,
	[PERIOD P1] [nvarchar](255) NULL,
	[COMBO] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LIFELINE_PERCENT]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LIFELINE_PERCENT](
	[Sweetbay] [nvarchar](255) NULL,
	[ACCT] [nvarchar](255) NULL,
	[Mixed Pallet Material] [varchar](18) NULL,
	[TOTAL_BY_ACCT] [decimal](38, 2) NULL,
	[TOTAL_SWEETBAY] [decimal](38, 2) NULL,
	[PERCENT_LIFELINE] [decimal](38, 6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LIFELINE_PERCENT_BY_PERIOD]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LIFELINE_PERCENT_BY_PERIOD](
	[ALT_CATEGORY] [varchar](30) NULL,
	[Sweetbay] [nvarchar](255) NULL,
	[CUSTOMER] [varchar](10) NULL,
	[PERIOD] [nvarchar](255) NULL,
	[TOTAL] [decimal](38, 2) NULL,
	[BY_CUSTOMER] [decimal](38, 2) NULL,
	[PERCENT_LIFELINE] [decimal](38, 6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOG_TEMP_TEST]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOG_TEMP_TEST](
	[Plan To] [nvarchar](255) NULL,
	[PT NAME] [nvarchar](255) NULL,
	[Business Unit] [nvarchar](255) NULL,
	[Alt. Market Segment] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Posting period] [nvarchar](255) NULL,
	[IBP GSV] [decimal](17, 3) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NORMALIZE_BU_HIERARCHY]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NORMALIZE_BU_HIERARCHY](
	[PT_N_ TEXT] [nvarchar](255) NULL,
	[PLANTO] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[BU] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Cons_Class] [nvarchar](255) NULL,
	[TIER] [nvarchar](255) NULL,
	[Tier_Name] [nvarchar](255) NULL,
	[Nielsen_Mkt] [nvarchar](255) NULL,
	[Pricing_Strategy] [nvarchar](255) NULL,
	[CHANNEL] [nvarchar](255) NULL,
	[AKV] [nvarchar](255) NULL,
	[Niel_ACV] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NORMALIZE_BU_HIERARCHYa]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NORMALIZE_BU_HIERARCHYa](
	[PT_N_ TEXT] [nvarchar](255) NULL,
	[PLANTO] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[BU] [nvarchar](255) NULL,
	[ALL_IN_Flag] [nvarchar](255) NULL,
	[Cons_Class] [nvarchar](255) NULL,
	[TIER] [nvarchar](255) NULL,
	[Tier_Name] [nvarchar](255) NULL,
	[Nielsen_Mkt] [nvarchar](255) NULL,
	[Pricing_Strategy] [nvarchar](255) NULL,
	[CHANNEL] [nvarchar](255) NULL,
	[AKV] [nvarchar](255) NULL,
	[Niel_ACV] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pctls]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pctls](
	[ACCT] [varchar](6) NULL,
	[PGROUP] [varchar](13) NULL,
	[threshold_yellow] [float] NULL,
	[threshold_red] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLANTO_HIERARCHY_BU]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLANTO_HIERARCHY_BU](
	[PT_N_ TEXT] [nvarchar](255) NULL,
	[PLANTO] [nvarchar](255) NULL,
	[PT_NAME] [nvarchar](255) NULL,
	[Level_A] [nvarchar](255) NULL,
	[Level_B] [nvarchar](255) NULL,
	[Level_C] [nvarchar](255) NULL,
	[Level_D] [nvarchar](255) NULL,
	[Level_E] [nvarchar](255) NULL,
	[Cons_Class] [nvarchar](255) NULL,
	[TIER] [nvarchar](255) NULL,
	[Tier_Name] [nvarchar](255) NULL,
	[Nielsen_Mkt] [nvarchar](255) NULL,
	[Pricing_Strategy] [nvarchar](255) NULL,
	[CHANNEL] [nvarchar](255) NULL,
	[AKV] [nvarchar](255) NULL,
	[Niel_ACV] [nvarchar](255) NULL,
	[Level_A_Morning_Foods] [nvarchar](255) NULL,
	[Level_B_Morning_Foods] [nvarchar](255) NULL,
	[Level_C_Morning_Foods] [nvarchar](255) NULL,
	[Level_D_Morning_Foods] [nvarchar](255) NULL,
	[Level_E_Morning_Foods] [nvarchar](255) NULL,
	[ALL_IN_Flag_Morning_Foods] [nvarchar](255) NULL,
	[Level_A_Frozen] [nvarchar](255) NULL,
	[Level_B_Frozen] [nvarchar](255) NULL,
	[Level_C_Frozen] [nvarchar](255) NULL,
	[Level_D_Frozen] [nvarchar](255) NULL,
	[Level_E_Frozen] [nvarchar](255) NULL,
	[ALL_IN_Flag_Frozen] [nvarchar](255) NULL,
	[Level_A_Kashi] [nvarchar](255) NULL,
	[Level_B_Kashi] [nvarchar](255) NULL,
	[Level_C_Kashi] [nvarchar](255) NULL,
	[Level_D_Kashi] [nvarchar](255) NULL,
	[Level_E_Kashi] [nvarchar](255) NULL,
	[ALL_IN_Flag_Kashi] [nvarchar](255) NULL,
	[Level_A_Snacks] [nvarchar](255) NULL,
	[Level_B_Snacks] [nvarchar](255) NULL,
	[Level_C_Snacks] [nvarchar](255) NULL,
	[Level_D_Snacks] [nvarchar](255) NULL,
	[Level_E_Snacks] [nvarchar](255) NULL,
	[ALL_IN_Flag_Snacks] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PRICE_LIST]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRICE_LIST](
	[Material] [varchar](14) NULL,
	[STANDARD_PRICE] [money] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Promo_no_tent]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promo_no_tent](
	[Event] [nvarchar](255) NULL,
	[Promo] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RECONCILED_3]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RECONCILED_3](
	[MATERIAL] [varchar](11) NULL,
	[LOT_CODE] [varchar](10) NULL,
	[STOPSHIP_DT] [date] NULL,
	[ALIGNED_STOPSHIP] [date] NULL,
	[EXPIRATION_DT] [date] NULL,
	[INV_AT_RISK] [float] NULL,
	[INV_AT_RISK_DOL] [money] NULL,
	[WEEK] [date] NULL,
	[FCST_CS] [float] NULL,
	[FCST_DOL] [money] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Richmond_temp11_QTRS]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Richmond_temp11_QTRS](
	[LEVEL] [varchar](5) NULL,
	[Level_A] [varchar](255) NULL,
	[Level_B] [varchar](255) NULL,
	[Level_C] [varchar](255) NULL,
	[Level_D] [varchar](255) NULL,
	[Level_E] [varchar](255) NULL,
	[PT_NUM] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[CATEGORY] [varchar](30) NULL,
	[BRAND] [varchar](1) NULL,
	[POSTING_PERIOD] [varchar](12) NULL,
	[YEAR] [varchar](12) NULL,
	[BUD_GSV] [numeric](21, 0) NULL,
	[BUD_KMF] [numeric](21, 0) NULL,
	[BUD_KMF_ADJ] [numeric](21, 0) NULL,
	[IBP_GSV] [numeric](21, 0) NULL,
	[IBP_KMF] [numeric](21, 0) NULL,
	[TPM_LE_GSV] [numeric](18, 2) NULL,
	[TPM_LE_KMF] [numeric](18, 2) NULL,
	[LE_COP] [numeric](18, 2) NULL,
	[LE_LBS] [numeric](18, 3) NULL,
	[SE_GSV_ORIG] [numeric](21, 0) NULL,
	[SE_KMF_ORIG] [numeric](21, 0) NULL,
	[SE_KMF_ADJ] [numeric](21, 0) NULL,
	[YAG_TPM_LE_GSV] [numeric](18, 2) NULL,
	[YAG_TPM_LE_KMF] [numeric](18, 2) NULL,
	[YAG_LE_COP] [numeric](18, 2) NULL,
	[YAG_LE_LBS] [numeric](18, 3) NULL,
	[all_Markets] [varchar](255) NULL,
	[all_products] [varchar](255) NULL,
	[dol] [float] NULL,
	[dol_ya] [float] NULL,
	[units] [float] NULL,
	[units_ya] [float] NULL,
	[eq] [float] NULL,
	[eq_ya] [float] NULL,
	[dol_shr_kel_category] [float] NULL,
	[dol_shr_ya_kel_category] [float] NULL,
	[eq_shr_kel_category] [float] NULL,
	[eq_shr_ya_kel_category] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Richmond_Value_added_data_pull]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Richmond_Value_added_data_pull](
	[LEVEL] [varchar](6) NULL,
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[PT_NUM] [varchar](10) NULL,
	[PT_NAME] [varchar](255) NULL,
	[CATEGORY] [varchar](50) NULL,
	[Brand] [varchar](255) NULL,
	[POSTING_PERIOD] [varchar](12) NULL,
	[YEAR] [varchar](4) NULL,
	[BUD_GSV] [numeric](22, 0) NULL,
	[BUD_KMF] [numeric](22, 0) NULL,
	[BUD_KMF_ADJ] [numeric](22, 0) NULL,
	[IBP_GSV] [numeric](22, 0) NULL,
	[IBP_KMF] [numeric](22, 0) NULL,
	[TPM_LE_GSV] [numeric](19, 2) NULL,
	[TPM_LE_KMF] [numeric](19, 2) NULL,
	[LE_COP] [numeric](19, 2) NULL,
	[LE_LBS] [numeric](19, 3) NULL,
	[SE_GSV_ORIG] [numeric](22, 0) NULL,
	[SE_KMF_ORIG] [numeric](22, 0) NULL,
	[SE_KMF_ADJ] [numeric](22, 0) NULL,
	[YAG_TPM_LE_GSV] [numeric](19, 2) NULL,
	[YAG_TPM_LE_KMF] [numeric](19, 2) NULL,
	[YAG_LE_COP] [numeric](19, 2) NULL,
	[YAG_LE_LBS] [numeric](19, 3) NULL,
	[all_Markets] [varchar](255) NULL,
	[all_products] [varchar](255) NULL,
	[dol] [float] NULL,
	[dol_ya] [float] NULL,
	[units] [float] NULL,
	[units_ya] [float] NULL,
	[eq] [float] NULL,
	[eq_ya] [float] NULL,
	[dol_shr_kel_category] [float] NULL,
	[dol_shr_ya_kel_category] [float] NULL,
	[eq_shr_kel_category] [float] NULL,
	[eq_shr_ya_kel_category] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Richmond_Value_added_NOV7]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Richmond_Value_added_NOV7](
	[LEVEL] [varchar](6) NULL,
	[Level_A] [varchar](255) NULL,
	[Level_B] [varchar](255) NULL,
	[Level_C] [varchar](255) NULL,
	[Level_D] [varchar](255) NULL,
	[Level_E] [varchar](255) NULL,
	[PT_NUM] [varchar](10) NULL,
	[PT_NAME] [varchar](255) NULL,
	[CATEGORY] [varchar](50) NULL,
	[Brand] [varchar](60) NULL,
	[POSTING_PERIOD] [varchar](12) NULL,
	[YEAR] [varchar](4) NULL,
	[BUD_GSV] [numeric](22, 0) NULL,
	[BUD_KMF] [numeric](22, 0) NULL,
	[BUD_KMF_ADJ] [numeric](22, 0) NULL,
	[IBP_GSV] [numeric](22, 0) NULL,
	[IBP_KMF] [numeric](22, 0) NULL,
	[TPM_LE_GSV] [numeric](19, 2) NULL,
	[TPM_LE_KMF] [numeric](19, 2) NULL,
	[LE_COP] [numeric](19, 2) NULL,
	[LE_LBS] [numeric](19, 3) NULL,
	[SE_GSV_ORIG] [numeric](22, 0) NULL,
	[SE_KMF_ORIG] [numeric](22, 0) NULL,
	[SE_KMF_ADJ] [numeric](22, 0) NULL,
	[YAG_TPM_LE_GSV] [numeric](19, 2) NULL,
	[YAG_TPM_LE_KMF] [numeric](19, 2) NULL,
	[YAG_LE_COP] [numeric](19, 2) NULL,
	[YAG_LE_LBS] [numeric](19, 3) NULL,
	[all_Markets] [varchar](255) NULL,
	[all_products] [varchar](255) NULL,
	[dol] [float] NULL,
	[dol_ya] [float] NULL,
	[units] [float] NULL,
	[units_ya] [float] NULL,
	[eq] [float] NULL,
	[eq_ya] [float] NULL,
	[dol_shr_kel_category] [float] NULL,
	[dol_shr_ya_kel_category] [float] NULL,
	[eq_shr_kel_category] [float] NULL,
	[eq_shr_ya_kel_category] [float] NULL,
	[planto_number] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Richmond_Value_added_OCT20]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Richmond_Value_added_OCT20](
	[LEVEL] [varchar](6) NULL,
	[Level_A] [varchar](255) NULL,
	[Level_B] [varchar](255) NULL,
	[Level_C] [varchar](255) NULL,
	[Level_D] [varchar](255) NULL,
	[Level_E] [varchar](255) NULL,
	[PT_NUM] [varchar](10) NULL,
	[PT_NAME] [varchar](255) NULL,
	[CATEGORY] [varchar](50) NULL,
	[Brand] [varchar](60) NULL,
	[POSTING_PERIOD] [varchar](12) NULL,
	[YEAR] [varchar](4) NULL,
	[BUD_GSV] [numeric](22, 0) NULL,
	[BUD_KMF] [numeric](22, 0) NULL,
	[BUD_KMF_ADJ] [numeric](22, 0) NULL,
	[IBP_GSV] [numeric](22, 0) NULL,
	[IBP_KMF] [numeric](22, 0) NULL,
	[TPM_LE_GSV] [numeric](19, 2) NULL,
	[TPM_LE_KMF] [numeric](19, 2) NULL,
	[LE_COP] [numeric](19, 2) NULL,
	[LE_LBS] [numeric](19, 3) NULL,
	[SE_GSV_ORIG] [numeric](22, 0) NULL,
	[SE_KMF_ORIG] [numeric](22, 0) NULL,
	[SE_KMF_ADJ] [numeric](22, 0) NULL,
	[YAG_TPM_LE_GSV] [numeric](19, 2) NULL,
	[YAG_TPM_LE_KMF] [numeric](19, 2) NULL,
	[YAG_LE_COP] [numeric](19, 2) NULL,
	[YAG_LE_LBS] [numeric](19, 3) NULL,
	[all_Markets] [varchar](255) NULL,
	[all_products] [varchar](255) NULL,
	[dol] [float] NULL,
	[dol_ya] [float] NULL,
	[units] [float] NULL,
	[units_ya] [float] NULL,
	[eq] [float] NULL,
	[eq_ya] [float] NULL,
	[dol_shr_kel_category] [float] NULL,
	[dol_shr_ya_kel_category] [float] NULL,
	[eq_shr_kel_category] [float] NULL,
	[eq_shr_ya_kel_category] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Richmond_Value_added_QTR]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Richmond_Value_added_QTR](
	[LEVEL] [varchar](6) NULL,
	[Level_A] [varchar](255) NULL,
	[Level_B] [varchar](255) NULL,
	[Level_C] [varchar](255) NULL,
	[Level_D] [varchar](255) NULL,
	[Level_E] [varchar](255) NULL,
	[PT_NUM] [varchar](10) NULL,
	[PT_NAME] [varchar](255) NULL,
	[CATEGORY] [varchar](50) NULL,
	[Brand] [varchar](255) NULL,
	[POSTING_PERIOD] [varchar](12) NULL,
	[YEAR] [varchar](4) NULL,
	[BUD_GSV] [numeric](22, 0) NULL,
	[BUD_KMF] [numeric](22, 0) NULL,
	[BUD_KMF_ADJ] [numeric](22, 0) NULL,
	[IBP_GSV] [numeric](22, 0) NULL,
	[IBP_KMF] [numeric](22, 0) NULL,
	[TPM_LE_GSV] [numeric](19, 2) NULL,
	[TPM_LE_KMF] [numeric](19, 2) NULL,
	[LE_COP] [numeric](19, 2) NULL,
	[LE_LBS] [numeric](19, 3) NULL,
	[SE_GSV_ORIG] [numeric](22, 0) NULL,
	[SE_KMF_ORIG] [numeric](22, 0) NULL,
	[SE_KMF_ADJ] [numeric](22, 0) NULL,
	[YAG_TPM_LE_GSV] [numeric](19, 2) NULL,
	[YAG_TPM_LE_KMF] [numeric](19, 2) NULL,
	[YAG_LE_COP] [numeric](19, 2) NULL,
	[YAG_LE_LBS] [numeric](19, 3) NULL,
	[all_Markets] [varchar](255) NULL,
	[all_products] [varchar](255) NULL,
	[dol] [float] NULL,
	[dol_ya] [float] NULL,
	[units] [float] NULL,
	[units_ya] [float] NULL,
	[eq] [float] NULL,
	[eq_ya] [float] NULL,
	[dol_shr_kel_category] [float] NULL,
	[dol_shr_ya_kel_category] [float] NULL,
	[eq_shr_kel_category] [float] NULL,
	[eq_shr_ya_kel_category] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RICHMOND_WAVE_Dates]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RICHMOND_WAVE_Dates](
	[TRANSITION TIMELINE] [nvarchar](255) NULL,
	[HierD PlanTo] [nvarchar](255) NULL,
	[HierD PlanTo#] [nvarchar](255) NULL,
	[First Order Date Warehouse] [nvarchar](255) NULL,
	[First Ship Date Warehouse] [nvarchar](255) NULL,
	[Red K Conversion Date] [nvarchar](255) NULL,
	[Last Ship Date DSD] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SALES_OUTLOOK_FEED]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SALES_OUTLOOK_FEED](
	[Plan To] [nvarchar](255) NULL,
	[PT NAME] [nvarchar](255) NULL,
	[Business Unit] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Posting period] [nvarchar](255) NULL,
	[CRM Latest Estimate Original Gross Sales (monthly)] [decimal](17, 0) NULL,
	[CRM Base KMF (OI+BB)] [decimal](17, 0) NULL,
	[IBP GSV] [decimal](17, 0) NULL,
	[IBP KMF] [decimal](17, 0) NULL,
	[BUD GSV] [decimal](17, 0) NULL,
	[BUD KMF] [decimal](17, 0) NULL,
	[YAG GSV] [decimal](17, 0) NULL,
	[YAG KMF] [decimal](17, 0) NULL,
	[LP IBP GSV] [decimal](17, 0) NULL,
	[LP IBP KMF] [decimal](17, 0) NULL,
	[SE GSV] [decimal](17, 0) NULL,
	[SE KMF] [decimal](17, 0) NULL,
	[BUD KMF ADJ] [decimal](17, 0) NULL,
	[SE KMF ADJ] [decimal](17, 0) NULL,
	[CRM LE COP] [decimal](17, 0) NULL,
	[YAG CRM LE COP] [decimal](17, 0) NULL,
	[SE2 GSV] [decimal](17, 0) NULL,
	[SE2 KMF] [decimal](17, 0) NULL,
	[SE2 KMF ADJ] [decimal](17, 0) NULL,
	[SE3 GSV] [decimal](17, 0) NULL,
	[SE3 KMF] [decimal](17, 0) NULL,
	[SE3 KMF ADJ] [decimal](17, 0) NULL,
	[CASES ORDERED] [decimal](17, 0) NULL,
	[CASES SHIPPED] [decimal](17, 0) NULL,
	[CRM LE LBS] [decimal](17, 0) NULL,
	[CON GSV] [decimal](17, 0) NULL,
	[CON LBS] [decimal](17, 0) NULL,
	[DIR GSV] [decimal](17, 0) NULL,
	[YAG CRM LE LBS] [decimal](17, 0) NULL,
	[COP SE] [decimal](17, 0) NULL,
	[COP BUDGET] [decimal](17, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SALES_OUTLOOK_FEED_2015]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SALES_OUTLOOK_FEED_2015](
	[Plan To] [nvarchar](255) NULL,
	[PT NAME] [nvarchar](255) NULL,
	[Business Unit] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Posting period] [nvarchar](255) NULL,
	[CRM Latest Estimate Original Gross Sales (monthly)] [decimal](17, 0) NULL,
	[CRM Base KMF (OI+BB)] [decimal](17, 0) NULL,
	[IBP GSV] [decimal](17, 0) NULL,
	[IBP KMF] [decimal](17, 0) NULL,
	[BUD GSV] [decimal](17, 0) NULL,
	[BUD KMF] [decimal](17, 0) NULL,
	[YAG GSV] [decimal](17, 0) NULL,
	[YAG KMF] [decimal](17, 0) NULL,
	[LP IBP GSV] [decimal](17, 0) NULL,
	[LP IBP KMF] [decimal](17, 0) NULL,
	[SE GSV] [decimal](17, 0) NULL,
	[SE KMF] [decimal](17, 0) NULL,
	[BUD KMF ADJ] [decimal](17, 0) NULL,
	[SE KMF ADJ] [decimal](17, 0) NULL,
	[CRM LE COP] [decimal](17, 0) NULL,
	[YAG CRM LE COP] [decimal](17, 0) NULL,
	[SE2 GSV] [decimal](17, 0) NULL,
	[SE2 KMF] [decimal](17, 0) NULL,
	[SE2 KMF ADJ] [decimal](17, 0) NULL,
	[SE3 GSV] [decimal](17, 0) NULL,
	[SE3 KMF] [decimal](17, 0) NULL,
	[SE3 KMF ADJ] [decimal](17, 0) NULL,
	[CASES ORDERED] [decimal](17, 0) NULL,
	[CASES SHIPPED] [decimal](17, 0) NULL,
	[CRM LE LBS] [decimal](17, 0) NULL,
	[CON GSV] [decimal](17, 0) NULL,
	[CON LBS] [decimal](17, 0) NULL,
	[DIR GSV] [decimal](17, 0) NULL,
	[YAG CRM LE LBS] [decimal](17, 0) NULL,
	[COP SE] [decimal](17, 0) NULL,
	[COP BUDGET] [decimal](17, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SALES_OUTLOOK_FEED_2017]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SALES_OUTLOOK_FEED_2017](
	[Plan To] [nvarchar](255) NULL,
	[PT NAME] [nvarchar](255) NULL,
	[Business Unit] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Posting period] [nvarchar](255) NULL,
	[CRM Latest Estimate Original Gross Sales (monthly)] [decimal](17, 0) NULL,
	[CRM Base KMF (OI+BB)] [decimal](17, 0) NULL,
	[IBP GSV] [decimal](17, 0) NULL,
	[IBP KMF] [decimal](17, 0) NULL,
	[BUD GSV] [decimal](17, 0) NULL,
	[BUD KMF] [decimal](17, 0) NULL,
	[YAG GSV] [decimal](17, 0) NULL,
	[YAG KMF] [decimal](17, 0) NULL,
	[LP IBP GSV] [decimal](17, 0) NULL,
	[LP IBP KMF] [decimal](17, 0) NULL,
	[SE GSV] [decimal](17, 0) NULL,
	[SE KMF] [decimal](17, 0) NULL,
	[BUD KMF ADJ] [decimal](17, 0) NULL,
	[SE KMF ADJ] [decimal](17, 0) NULL,
	[CRM LE COP] [decimal](17, 0) NULL,
	[YAG CRM LE COP] [decimal](17, 0) NULL,
	[SE2 GSV] [decimal](17, 0) NULL,
	[SE2 KMF] [decimal](17, 0) NULL,
	[SE2 KMF ADJ] [decimal](17, 0) NULL,
	[SE3 GSV] [decimal](17, 0) NULL,
	[SE3 KMF] [decimal](17, 0) NULL,
	[SE3 KMF ADJ] [decimal](17, 0) NULL,
	[CASES ORDERED] [decimal](17, 0) NULL,
	[CASES SHIPPED] [decimal](17, 0) NULL,
	[CRM LE LBS] [decimal](17, 0) NULL,
	[CON GSV] [decimal](17, 0) NULL,
	[CON LBS] [decimal](17, 0) NULL,
	[DIR GSV] [decimal](17, 0) NULL,
	[YAG CRM LE LBS] [decimal](17, 0) NULL,
	[COP SE] [decimal](17, 0) NULL,
	[COP BUDGET] [decimal](17, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SALES_OUTLOOK_FEED_2018]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SALES_OUTLOOK_FEED_2018](
	[Plan To] [nvarchar](255) NULL,
	[PT NAME] [nvarchar](255) NULL,
	[Business Unit] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Posting period] [nvarchar](255) NULL,
	[CRM Latest Estimate Original Gross Sales (monthly)] [decimal](17, 0) NULL,
	[CRM Base KMF (OI+BB)] [decimal](17, 0) NULL,
	[IBP GSV] [decimal](17, 0) NULL,
	[IBP KMF] [decimal](17, 0) NULL,
	[BUD GSV] [decimal](17, 0) NULL,
	[BUD KMF] [decimal](17, 0) NULL,
	[YAG GSV] [decimal](17, 0) NULL,
	[YAG KMF] [decimal](17, 0) NULL,
	[LP IBP GSV] [decimal](17, 0) NULL,
	[LP IBP KMF] [decimal](17, 0) NULL,
	[SE GSV] [decimal](17, 0) NULL,
	[SE KMF] [decimal](17, 0) NULL,
	[BUD KMF ADJ] [decimal](17, 0) NULL,
	[SE KMF ADJ] [decimal](17, 0) NULL,
	[CRM LE COP] [decimal](17, 0) NULL,
	[YAG CRM LE COP] [decimal](17, 0) NULL,
	[SE2 GSV] [decimal](17, 0) NULL,
	[SE2 KMF] [decimal](17, 0) NULL,
	[SE2 KMF ADJ] [decimal](17, 0) NULL,
	[SE3 GSV] [decimal](17, 0) NULL,
	[SE3 KMF] [decimal](17, 0) NULL,
	[SE3 KMF ADJ] [decimal](17, 0) NULL,
	[CASES ORDERED] [decimal](17, 0) NULL,
	[CASES SHIPPED] [decimal](17, 0) NULL,
	[CRM LE LBS] [decimal](17, 0) NULL,
	[CON GSV] [decimal](17, 0) NULL,
	[CON LBS] [decimal](17, 0) NULL,
	[DIR GSV] [decimal](17, 0) NULL,
	[YAG CRM LE LBS] [decimal](17, 0) NULL,
	[COP SE] [decimal](17, 0) NULL,
	[COP BUDGET] [decimal](17, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SALES_OUTLOOK_FEED_CANADA]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SALES_OUTLOOK_FEED_CANADA](
	[Fiscal year/period] [nvarchar](255) NULL,
	[Plan To] [nvarchar](255) NULL,
	[PT NAME] [nvarchar](255) NULL,
	[Business Unit] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Posting period] [nvarchar](255) NULL,
	[CRM Latest Estimate Original Gross Sales (monthly)] [decimal](17, 0) NULL,
	[CRM Base KMF (OI+BB)] [decimal](17, 0) NULL,
	[IBP GSV] [decimal](17, 0) NULL,
	[IBP KMF] [decimal](17, 0) NULL,
	[BUD GSV] [decimal](17, 0) NULL,
	[BUD KMF] [decimal](17, 0) NULL,
	[YAG GSV] [decimal](17, 0) NULL,
	[YAG KMF] [decimal](17, 0) NULL,
	[LP IBP GSV] [decimal](17, 0) NULL,
	[LP IBP KMF] [decimal](17, 0) NULL,
	[SE GSV] [decimal](17, 0) NULL,
	[SE KMF] [decimal](17, 0) NULL,
	[BUD KMF ADJ] [decimal](17, 0) NULL,
	[SE KMF ADJ] [decimal](17, 0) NULL,
	[CRM LE COP] [decimal](17, 0) NULL,
	[YAG CRM LE COP] [decimal](17, 0) NULL,
	[SE2 GSV] [decimal](17, 0) NULL,
	[SE2 KMF] [decimal](17, 0) NULL,
	[SE2 KMF ADJ] [decimal](17, 0) NULL,
	[SE3 GSV] [decimal](17, 0) NULL,
	[SE3 KMF] [decimal](17, 0) NULL,
	[SE3 KMF ADJ] [decimal](17, 0) NULL,
	[CASES ORDERED] [decimal](17, 0) NULL,
	[CASES SHIPPED] [decimal](17, 0) NULL,
	[CRM LE LBS] [decimal](17, 0) NULL,
	[CON GSV] [decimal](17, 0) NULL,
	[CON LBS] [decimal](17, 0) NULL,
	[DIR GSV] [decimal](17, 0) NULL,
	[YAG CRM LE LBS] [decimal](17, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SEAN_INCR_LIFT_AVG_STD]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SEAN_INCR_LIFT_AVG_STD](
	[acct] [varchar](13) NULL,
	[PT_NAME] [varchar](15) NULL,
	[pgroup] [varchar](13) NULL,
	[PRODUCT_DESCRIPTION_2] [varchar](50) NULL,
	[CLUSTER] [varchar](15) NULL,
	[mean] [float] NULL,
	[std] [float] NULL,
	[KURT] [float] NULL,
	[max] [float] NULL,
	[median] [float] NULL,
	[min] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SEAN_KPEL]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SEAN_KPEL](
	[PRODUCT_DESCRIPTION_2] [varchar](44) NULL,
	[PLAN_TO_NAME] [varchar](29) NULL,
	[Plan_TO] [varchar](6) NULL,
	[CLUSTER] [varchar](4) NULL,
	[TPQ] [float] NULL,
	[ROI] [float] NULL,
	[LIFT] [float] NULL,
	[SHELF_PRICE] [float] NULL,
	[AVG_PROMO_PRICE] [float] NULL,
	[DISCOUNT] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SEAN_ROI_SIM_NO_PROMO]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SEAN_ROI_SIM_NO_PROMO](
	[acctpgroup] [varchar](15) NULL,
	[acct] [varchar](13) NULL,
	[pgroup] [varchar](13) NULL,
	[PRODUCT_DESCRIPTION_2] [varchar](50) NULL,
	[PT_NAME] [varchar](15) NULL,
	[CLUSTER] [varchar](15) NULL,
	[DISCOUNT] [float] NULL,
	[INCREMENTAL_LIFT] [float] NULL,
	[SIM_ROI] [float] NULL,
	[SIM_TOT_TPQ] [float] NULL,
	[SIM_INCR_EA] [float] NULL,
	[SIM_PLAN_INCR_VOL] [float] NULL,
	[SIM_PLAN_INCR_COP] [float] NULL,
	[SIM_RES_TOT_KMF] [float] NULL,
	[SIM_INCR_EDLP_SPEND] [float] NULL,
	[SIM_TOTAL_GSV] [float] NULL,
	[SIM_Base_EDLP_Spend] [float] NULL,
	[SIM_Ttl_Investment] [float] NULL,
	[SIM_Total_Profit] [float] NULL,
	[SIM_BASE_GM] [float] NULL,
	[SIM_Incr_GM] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SEAN_SIM_ROI_AVG_STD]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SEAN_SIM_ROI_AVG_STD](
	[acct] [varchar](13) NULL,
	[PT_NAME] [varchar](15) NULL,
	[pgroup] [varchar](13) NULL,
	[PRODUCT_DESCRIPTION_2] [varchar](50) NULL,
	[CLUSTER] [varchar](15) NULL,
	[mean] [float] NULL,
	[std] [float] NULL,
	[KURT] [float] NULL,
	[max] [float] NULL,
	[median] [float] NULL,
	[min] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SEAN_SIMULATED_ROI]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SEAN_SIMULATED_ROI](
	[acctpgroup] [varchar](15) NULL,
	[acct] [varchar](13) NULL,
	[pgroup] [varchar](13) NULL,
	[PT_NAME] [varchar](15) NULL,
	[PROMOTION] [varchar](15) NULL,
	[RED_K] [float] NULL,
	[CLUSTER] [varchar](15) NULL,
	[PRODUCT_DESCRIPTION_2] [varchar](50) NULL,
	[DISCOUNT] [float] NULL,
	[fd] [float] NULL,
	[fo] [float] NULL,
	[do] [float] NULL,
	[INCREMENTAL_LIFT] [float] NULL,
	[SIM_ROI] [float] NULL,
	[SIM_TOT_TPQ] [float] NULL,
	[SIM_INCR_EA] [float] NULL,
	[SIM_PLAN_INCR_VOL] [float] NULL,
	[SIM_PLAN_INCR_COP] [float] NULL,
	[SIM_RES_TOT_KMF] [float] NULL,
	[SIM_INCR_EDLP_SPEND] [float] NULL,
	[SIM_TOTAL_GSV] [float] NULL,
	[SIM_Base_EDLP_Spend] [float] NULL,
	[SIM_Ttl_Investment] [float] NULL,
	[SIM_Total_Profit] [float] NULL,
	[SIM_BASE_GM] [float] NULL,
	[SIM_Incr_GM] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SEAN_TPM]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SEAN_TPM](
	[PLAN_TO] [varchar](10) NULL,
	[PROMOTION] [varchar](24) NULL,
	[PGROUP] [varchar](13) NULL,
	[PRODUCT_DESCRIPTION_2] [varchar](40) NULL,
	[TYPE] [varchar](18) NULL,
	[PROMOTION_DESC] [varchar](40) NULL,
	[PROMO_TYPE] [varchar](40) NULL,
	[Promo_Desc] [varchar](40) NULL,
	[TYPEDESC] [varchar](60) NULL,
	[PT_NAME] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[KEY_EVENT] [varchar](3) NULL,
	[KEY_EVENT_DESC] [varchar](40) NULL,
	[RED_K] [float] NULL,
	[NON_PROMO_PRICE] [float] NULL,
	[NON_PROMO_BASE] [float] NULL,
	[COP_PER_UNIT_REDK] [money] NULL,
	[AVG_PROMO_PRICE] [float] NULL,
	[PROMO_DISCOUNT] [float] NULL,
	[CLUSTER] [varchar](8) NULL,
	[LE_TOTAL_FIX_KMF] [float] NULL,
	[COP] [float] NULL,
	[TPM_PLANNED_TPQ_EACHES] [float] NULL,
	[PLANNED_INCR_UNITS] [float] NULL,
	[PLAN_BASE_EA] [float] NULL,
	[TPM_LIFT] [float] NULL,
	[PLAN_INCR_VOL] [float] NULL,
	[Reserved_Total_KMF_DOL] [float] NULL,
	[EDLP_Spend] [float] NULL,
	[INCR_EDLP_SPEND] [float] NULL,
	[Plan_Incr_COP] [float] NULL,
	[VAR_KMF_PER_UNIT] [float] NULL,
	[CALC_COP_PER_UNIT] [float] NULL,
	[COP_PER_UNIT] [float] NULL,
	[EDLP_PER_UNIT] [float] NULL,
	[ROI] [float] NULL,
	[TOTAL_GSV] [float] NULL,
	[Base_EDLP_Spend] [float] NULL,
	[Ttl_Investment] [float] NULL,
	[Total_Profit] [float] NULL,
	[BASE_GM] [float] NULL,
	[Incr_GM] [float] NULL,
	[KPEL_ROI] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SEAN_TPQ_SIM_AVG_STD]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SEAN_TPQ_SIM_AVG_STD](
	[acct] [varchar](13) NULL,
	[PT_NAME] [varchar](15) NULL,
	[pgroup] [varchar](13) NULL,
	[PRODUCT_DESCRIPTION_2] [varchar](50) NULL,
	[CLUSTER] [varchar](15) NULL,
	[mean] [float] NULL,
	[std] [float] NULL,
	[KURT] [float] NULL,
	[max] [float] NULL,
	[median] [float] NULL,
	[min] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[simulation_normal]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[simulation_normal](
	[DISCOUNT] [float] NULL,
	[FO] [float] NULL,
	[DO] [float] NULL,
	[FD] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SNACKS_CFO_DATA]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SNACKS_CFO_DATA](
	[LEVEL] [varchar](6) NULL,
	[LEVEL_A] [varchar](13) NULL,
	[LEVEL_B] [varchar](13) NULL,
	[LEVEL_C] [varchar](13) NULL,
	[LEVEL_D] [varchar](13) NULL,
	[LEVEL_E] [varchar](13) NULL,
	[PT_NUM] [varchar](13) NULL,
	[PT_NAME] [varchar](13) NULL,
	[CATEGORY] [varchar](50) NULL,
	[Brand] [varchar](60) NULL,
	[POSTING_PERIOD] [varchar](12) NULL,
	[YEAR] [varchar](4) NULL,
	[BUD_GSV] [numeric](21, 0) NULL,
	[BUD_KMF] [numeric](21, 0) NULL,
	[BUD_KMF_ADJ] [numeric](21, 0) NULL,
	[IBP_GSV] [numeric](21, 0) NULL,
	[IBP_KMF] [numeric](21, 0) NULL,
	[TPM_LE_GSV] [numeric](18, 2) NULL,
	[TPM_LE_KMF] [numeric](18, 2) NULL,
	[LE_COP] [numeric](18, 2) NULL,
	[LE_LBS] [numeric](18, 3) NULL,
	[SE_GSV_ORIG] [numeric](21, 0) NULL,
	[SE_KMF_ORIG] [numeric](21, 0) NULL,
	[SE_KMF_ADJ] [numeric](21, 0) NULL,
	[YAG_TPM_LE_GSV] [numeric](18, 2) NULL,
	[YAG_TPM_LE_KMF] [numeric](18, 2) NULL,
	[YAG_LE_COP] [numeric](18, 2) NULL,
	[YAG_LE_LBS] [numeric](18, 3) NULL,
	[all_Markets] [varchar](255) NULL,
	[all_products] [varchar](255) NULL,
	[dol] [float] NULL,
	[dol_ya] [float] NULL,
	[units] [float] NULL,
	[units_ya] [float] NULL,
	[eq] [float] NULL,
	[eq_ya] [float] NULL,
	[dol_shr_kel_category] [float] NULL,
	[dol_shr_ya_kel_category] [float] NULL,
	[eq_shr_kel_category] [float] NULL,
	[eq_shr_ya_kel_category] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[statmeans]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[statmeans](
	[CUSTOMER] [varchar](10) NULL,
	[MATERIAL] [varchar](18) NULL,
	[MeanStatForecast] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_FCSTSUM_SORT]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_FCSTSUM_SORT](
	[MATERIAL] [varchar](11) NULL,
	[MATL_DESC] [varchar](30) NULL,
	[WEEK] [date] NULL,
	[DEMAND_CS] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[temp_to_delete]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[temp_to_delete](
	[EAN11] [varchar](18) NULL,
	[MEINH] [varchar](3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TENTPOLE_MAPPING]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TENTPOLE_MAPPING](
	[Tent_Pole_BW_Desc] [nvarchar](255) NULL,
	[Tent_Pole_Desc] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Total_Demand_Stack]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Total_Demand_Stack](
	[MATERIAL] [varchar](11) NULL,
	[MATL_DESC] [varchar](30) NULL,
	[LOC] [varchar](4) NULL,
	[LOC_NAME] [varchar](30) NULL,
	[CALWEEK] [varchar](8) NULL,
	[PROJ_TOT_DEMAND] [float] NULL,
	[WKOFYR] [float] NULL,
	[FYEAR] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TPM_LE_FORECAST_W_SEL_PPG]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TPM_LE_FORECAST_W_SEL_PPG](
	[ACCT] [varchar](6) NULL,
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[PLAN_SHIP_EA] [float] NULL,
	[PGroup] [varchar](13) NULL,
	[PPGROUP] [varchar](13) NULL,
	[PLANTO] [varchar](6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_1]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_1](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_10A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_10A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_11A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_11A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_12A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_12A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_13A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_13A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_14A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_14A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_15A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_15A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_16A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_16A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_17A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_17A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_18A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_18A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_19A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_19A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_20A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_20A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_21A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_21A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_22A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_22A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_23A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_23A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_24A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_24A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_25A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_25A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_2A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_2A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_3A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_3A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_4A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_4A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_5A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_5A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_6A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_6A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_7A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_7A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_8A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_8A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WEEK_9A]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WEEK_9A](
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[Demand_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[STOCK] [float] NULL,
	[PRODUCTION] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [guest].[AMPS_US]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [guest].[AMPS_US](
	[ALL_PROD] [nvarchar](255) NULL,
	[CATG] [nvarchar](255) NULL,
	[MSK] [nvarchar](255) NULL,
	[NIELSEN_NM] [nvarchar](255) NULL,
	[ORDR] [nvarchar](255) NULL,
	[LVL] [nvarchar](255) NULL,
	[AGG] [nvarchar](255) NULL,
	[LVL_NM] [nvarchar](255) NULL,
	[BRAND] [nvarchar](255) NULL,
	[CORP] [nvarchar](255) NULL,
	[SEG] [nvarchar](255) NULL,
	[SUB_SEG] [nvarchar](255) NULL,
	[BW_CATG] [nvarchar](255) NULL,
	[BW_BU] [nvarchar](255) NULL,
	[BW_NBR] [nvarchar](255) NULL,
	[BW_NM] [nvarchar](255) NULL,
	[PRFT_CTR] [nvarchar](255) NULL,
	[COMBO] [nvarchar](1020) NULL,
	[ALL_MKTS] [nvarchar](255) NULL,
	[ALL_PRODUCTS] [nvarchar](510) NULL,
	[ALL_PD] [nvarchar](255) NULL,
	[DOL] [decimal](20, 5) NULL,
	[DOL_PCT_CHG_YR_AGO] [decimal](20, 5) NULL,
	[BASE_DOL_PCT_CHG_YR_AGO] [decimal](20, 5) NULL,
	[DOL_CHG_YR_AGO] [decimal](20, 5) NULL,
	[EQ_PCT_CHG_YR_AGO] [decimal](20, 5) NULL,
	[INCR_DOL] [decimal](20, 5) NULL,
	[INCR_DOL_YR_AGO] [decimal](20, 5) NULL,
	[UNITS_PCT_CHG_YR_AGO] [decimal](20, 5) NULL,
	[DOL_SHARE_PRMPT] [decimal](20, 5) NULL,
	[DOL_SHARE_CHG_YR_AGO_PRMPT] [decimal](20, 5) NULL,
	[ANY_PROMTN_DOL_PCT_CHG_YR_AGO] [decimal](20, 5) NULL,
	[NBR_PROMTN_DOL_PCT_CHG_YR_AGO] [decimal](20, 5) NULL,
	[PCT_DOL_NBR_PROMTN] [decimal](20, 5) NULL,
	[AVG_EQ_PRC_CHG_YR_AGO] [decimal](20, 5) NULL,
	[AVG_EQ_PRC] [decimal](20, 5) NULL,
	[BASE_UNIT_PRC_YR_AGO] [decimal](20, 5) NULL,
	[BASE_UNIT_PRC] [decimal](20, 5) NULL,
	[BASE_UNIT_PRC_CHG_YR_AGO] [decimal](20, 5) NULL,
	[AVG_UNIT_PRC] [decimal](20, 5) NULL,
	[AVG_UNIT_PRC_CHG_YR_AGO] [decimal](20, 5) NULL,
	[QUAL_UNIT_PRC] [decimal](20, 5) NULL,
	[QUAL_UNIT_PRC_CHG_YR_AGO] [decimal](20, 5) NULL,
	[ANY_DISP_NBR_DISP] [decimal](20, 5) NULL,
	[ANY_DISP_NBR_DISP_CHG_YR_AGO] [decimal](20, 5) NULL,
	[DOL_DOL_MM_ACV_ITM] [decimal](20, 5) NULL,
	[DOL_DOL_MM_ACV_ITM_CHG_YR_AGO] [decimal](20, 5) NULL,
	[PCT_ACV] [decimal](20, 5) NULL,
	[PCT_ACV_CHG_YR_AGO] [decimal](20, 5) NULL,
	[TDP] [decimal](20, 5) NULL,
	[TDP_PCT_CHG_YR_AGO] [decimal](20, 5) NULL,
	[AVG_NBR_OF_ITMS] [decimal](20, 5) NULL,
	[AVG_NBR_OF_ITMS_CHG_YR_AGO] [decimal](20, 5) NULL,
	[ANY_PROMTN_UNITS_PCT_LIFT] [decimal](20, 5) NULL,
	[ANY_PROMTN_UNITS_PCT_LIFT_CHG_YR_AGO] [decimal](20, 5) NULL,
	[PCT_UNITS_ANY_PROMTN] [decimal](20, 5) NULL,
	[PCT_UNITS_ANY_PROMTN_CHG_YR_AGO] [decimal](20, 5) NULL,
	[ANY_DISP_PCT_ACV] [decimal](20, 5) NULL,
	[ANY_DISP_PCT_ACV_CHG_YR_AGO] [decimal](20, 5) NULL,
	[QUAL_CWW] [decimal](20, 5) NULL,
	[QUAL_CWW_CHG_YR_AGO] [decimal](20, 5) NULL,
	[FEAT_AND_DISP_PCT_ACV_ANY_FEAT_PCT_ACV] [decimal](20, 5) NULL,
	[FEAT_AND_DISP_PCT_ACV_ANY_FEAT_PCT_ACV_CHG_YR_AGO] [decimal](20, 5) NULL,
	[INCR_PCT_CHG_ALL_YR_AGO] [decimal](38, 12) NULL,
	[BASE_U_PRC_GAP] [decimal](38, 6) NULL,
	[BASE_U_PRC_GAP_CHG_ALL_YR_AGO] [decimal](38, 6) NULL,
	[ITM_SHARE_OF_CATG] [decimal](38, 6) NULL,
	[ITM_SHARE_OF_CATG_CHG_YR_AGO] [numeric](38, 6) NULL,
	[DISP_SHARE] [decimal](38, 13) NULL,
	[DISP_SHARE_YR_AGO] [decimal](38, 12) NULL,
	[DCLNG_DISP_SHARE] [decimal](38, 12) NULL,
	[DISP_DOL_IDX] [decimal](38, 6) NULL,
	[ANY_PROMTN_UNIT_PRC_PCT_DISC] [decimal](20, 5) NULL,
	[ANY_PROMTN_UNIT_PRC_PCT_DISC_CHG_YR_AGO] [decimal](20, 5) NULL,
	[PCT_SUBSDZD_UNITS] [decimal](20, 5) NULL,
	[SUBSDZD_BASE_UNIT_CHG_ALL_YR_AGO] [decimal](20, 5) NULL,
	[DISP_DOL_IDX_CHG_YR_AGO] [decimal](38, 6) NULL,
	[DISP_DOL_IDX_YR_AGO] [decimal](38, 6) NULL,
	[WK_END] [nvarchar](8) NULL,
	[TM] [nvarchar](255) NULL,
	[MKT MSK] [varchar](50) NULL,
	[MKT_SRT_ORDR] [varchar](50) NULL,
	[MKT_GRP_LVL] [varchar](50) NULL,
	[ALL_RGN] [varchar](50) NULL,
	[EXECUTV] [varchar](50) NULL,
	[EAST] [varchar](50) NULL,
	[WEST] [varchar](50) NULL,
	[CHNL] [varchar](50) NULL,
	[TOTLS] [varchar](50) NULL,
	[CUST] [varchar](50) NULL,
	[CUST_SORT_ORDR] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [guest].[KLG_FSU_SALES_OUTLOOK_FEED]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [guest].[KLG_FSU_SALES_OUTLOOK_FEED](
	[LEVEL_A] [varchar](255) NULL,
	[LEVEL_B] [varchar](255) NULL,
	[LEVEL_C] [varchar](255) NULL,
	[LEVEL_D] [varchar](255) NULL,
	[LEVEL_E] [varchar](255) NULL,
	[YEAR] [nvarchar](4) NULL,
	[Plan To] [nvarchar](255) NULL,
	[PT NAME] [nvarchar](255) NULL,
	[ALL_IN_FLAG] [varchar](1) NULL,
	[Business Unit] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Posting period] [nvarchar](255) NULL,
	[CRM Latest Estimate Original Gross Sales (monthly)] [decimal](17, 0) NULL,
	[CRM Base KMF (OI+BB)] [decimal](17, 0) NULL,
	[IBP GSV] [decimal](17, 0) NULL,
	[IBP KMF] [decimal](17, 0) NULL,
	[BUD GSV] [decimal](17, 0) NULL,
	[BUD KMF] [decimal](17, 0) NULL,
	[YAG GSV] [decimal](17, 0) NULL,
	[YAG KMF] [decimal](17, 0) NULL,
	[LP IBP GSV] [decimal](17, 0) NULL,
	[LP IBP KMF] [decimal](17, 0) NULL,
	[SE GSV] [decimal](17, 0) NULL,
	[SE KMF] [decimal](17, 0) NULL,
	[CON GSV] [decimal](17, 0) NULL,
	[CRM LE COP] [decimal](17, 0) NULL,
	[YAG CRM LE COP] [decimal](17, 0) NULL,
	[CRM LE LBS] [decimal](17, 0) NULL,
	[YAG CRM LE LBS] [decimal](17, 0) NULL,
	[COP SE] [decimal](17, 0) NULL,
	[COP BUDGET] [decimal](17, 0) NULL,
	[BUD KMF ADJ] [decimal](17, 0) NULL,
	[SE KMF ADJ] [decimal](17, 0) NULL,
	[FLAG] [varchar](10) NOT NULL,
	[KLG_BANNER] [varchar](255) NULL,
	[KLG Sr Mgr Agency Retail] [varchar](255) NULL,
	[Acosta Retail Bus Mgr] [varchar](255) NULL,
	[ACOSTA FRZ Bus Mgr] [varchar](255) NULL,
	[Frozen Region] [varchar](255) NULL,
	[KLG VP DRA Director] [varchar](255) NULL,
	[KLG Director MTS] [varchar](255) NULL,
	[To Date - Year] [varchar](7) NULL,
	[Period Year] [varchar](63) NULL,
	[HIERARCHY] [varchar](10) NOT NULL,
	[QUARTER] [varchar](2) NOT NULL,
	[QUARTER_NUM] [int] NOT NULL,
	[PERIOD_NUM] [nvarchar](255) NULL,
	[Update Date] [date] NULL,
	[TIER] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SAS_USKJTB03].[KLG_SCIM_STAT_FORECAST]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SAS_USKJTB03].[KLG_SCIM_STAT_FORECAST](
	[Market] [varchar](15) NULL,
	[Product] [varchar](25) NULL,
	[Category_Level] [varchar](7) NULL,
	[FCST_LB] [float] NULL,
	[FCST_Base_LB] [float] NULL,
	[FCST_$] [float] NULL,
	[FCST_Base_$] [float] NULL,
	[DATE] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[KUSA_TRACK_BRAND_CAT_MAP]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KUSA_TRACK_BRAND_CAT_MAP]
AS
SELECT        *
FROM            (SELECT        SUM(a.[Actual Ship $]) AS GSV, b.PROD_H4, b.PROD_HIER_TEXT4, b.ALT_CATEGORY, b.ALT_SUBCATEGORY, ROW_NUMBER() OVER (PARTITION BY 
                                                    b.PROD_H4
                          ORDER BY SUM([Actual Ship $]) DESC) AS RN
FROM            TPE_DS_Target.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT AS a LEFT JOIN
                         TPE_DS_Target.dbo.KLG_TPE_MATERIAL_DIM_TGT AS b ON a.[Mixed Pallet Material] = b.MIXED_PAL_MATERIAL
WHERE        a.[Actual Ship $] <> 0 AND (RIGHT([Calendar Week], 4) = YEAR(getdate()) OR
                         RIGHT([Calendar Week], 4) = YEAR(getdate()) - 1)
GROUP BY b.PROD_H4, b.PROD_HIER_TEXT4, b.ALT_CATEGORY, b.ALT_SUBCATEGORY) v
WHERE        v.RN = 1

GO
/****** Object:  View [dbo].[KUSA_TRACK_DET1_GSVLoader]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KUSA_TRACK_DET1_GSVLoader] AS 
SELECT
a.BU,
a.PT,
a.[PT Name],
CAST(a.Brand# AS NVARCHAR) AS [Brand#],
a.Brand,
b.ALT_SUBCATEGORY,
b.ALT_CATEGORY,

0 AS [P IBP PER],
0 AS [Q IBP PER],
0 AS [Y IBP PER],
0 AS [P BUDGET PER],
0 AS [Q BUDGET PER],
0 AS [Y BUDGET PER],
0 AS [P SE PER],
0 AS [Q SE PER],
0 AS [Y SE PER],

a.[Last Refresh Date],
a.[Track Day],
a.Period,
a.[Year],
'Period ' + right ('00'+ltrim(str(a.period)),2 ) + ' ' + a.[Year] AS Period_Year,

Sum(a.[Today GSV$]) AS [Today GSV$],
Sum(a.[Today OO$]) AS [Today OO$],
Sum(a.[PTD GSV$]) AS [PTD GSV$],
Sum(a.[Open Order $]) AS [Open Order $],
Sum(a.[QTD GSV$]) AS [QTD GSV$],
Sum(a.[YTD GSV$]) AS [YTD GSV$],
Sum(a.[PTD YAG GSV$]) AS [PER YAG GSV$],
Sum(a.[QTD YAG GSV$]) AS [QTR YAG GSV$],
Sum(a.[YTD YAG GSV$]) AS [YR YAG GSV$],
Sum(a.[Next Period OO]) AS [Next Period OO],

0 as [CURR PD IND$],
0 as [PTD IND$],
0 as [PTD Pace],
0 as [QTD Pace],
0 as [YTD Pace],
Sum(a.[YEST OO$]) as [YEST OO$],
Sum(a.[YEST GSV$]) as [YEST GSV$]

FROM
dbo.KUSA_TRACK_GSV_Loader AS a
LEFT JOIN dbo.KUSA_TRACK_BRAND_CAT_MAP AS b ON a.Brand# = b.PROD_H4

GROUP BY
a.BU,
a.PT,
a.[PT Name],
a.Brand#,
a.Brand,
b.ALT_SUBCATEGORY,
b.ALT_CATEGORY,
a.[Last Refresh Date],
a.[Track Day],
a.Period,
a.[Year]
GO
/****** Object:  View [dbo].[KUSA_TRACK_DET1_IndLoader]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KUSA_TRACK_DET1_IndLoader] AS 
SELECT
a.BU,
a.PT,
a.[PT Name],
CAST(null as NVARCHAR) AS [Brand#],
'Not Assigned' as [Brand],
'Not Assigned' AS ALT_SUBCATEGORY,
a.Category AS ALT_CATEGORY,

0 AS [P IBP PER],
0 AS [Q IBP PER],
0 AS [Y IBP PER],
0 AS [P BUDGET PER],
0 AS [Q BUDGET PER],
0 AS [Y BUDGET PER],
0 AS [P SE PER],
0 AS [Q SE PER],
0 AS [Y SE PER],

a.[Last Refresh Date],
a.[Track Day],
SUBSTRING(a.Period_Year, 8, 2) as [Period],
SUBSTRING(a.Period_Year, 11, 4) as [Year],
a.Period_Year,

0 AS [Today GSV$],
0 AS [Today OO$],
0 AS [PTD GSV$],
0 AS [Open Order $],
0 AS [QTD GSV$],
0 AS [YTD GSV$],
0 AS [PER YAG GSV$],
0 AS [QTR YAG GSV$],
0 AS [YR YAG GSV$],
0 AS [Next Period OO],

a.[CURR PD IND$] as [CURR PD IND$],
a.[PTD IND$],
a.[PTD Pace],
a.[QTD Pace],
a.[YTD Pace],
0 as [YEST OO$],
0 as [YEST GSV$]

FROM
dbo.KUSA_TRACK_INDIRECT_Loader a
GO
/****** Object:  View [dbo].[KUSA_TRACK_DET1_KPILoader]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KUSA_TRACK_DET1_KPILoader] AS 
SELECT
a.[Business Unit] as BU,
a.[Plan To] as PT,
a.[Plan To Name] as [PT Name],
CAST(null as NVARCHAR) AS [Brand#],
'Not Assigned' as [Brand],
'Not Assigned' AS ALT_SUBCATEGORY,
a.Category AS ALT_CATEGORY,

a.[P IBP PER],
a.[Q IBP PER],
a.[Y IBP PER],
a.[P BUDGET PER],
a.[Q BUDGET PER],
a.[Y BUDGET PER],
a.[P SE PER],
a.[Q SE PER],
a.[Y SE PER],

a.[Last Refresh Date],
a.[Track Day],
'' AS Period,
'' AS Year,
'' AS Period_Year,
0 AS [Today GSV$],
0 AS [Today OO$],
0 AS [PTD GSV$],
0 AS [Open Order $],
0 AS [QTD GSV$],
0 AS [YTD GSV$],
0 AS [PER YAG GSV$],
0 AS [QTR YAG GSV$],
0 AS [YR YAG GSV$],
0 AS [Next Period OO],

0 as [CURR PD IND$],
0 as [PTD IND$],
0 as [PTD Pace],
0 as [QTD Pace],
0 as [YTD Pace],
0 as [YEST OO$],
0 as [YEST GSV$]

FROM
dbo.KUSA_TRACK_KPI_Loader AS a
GO
/****** Object:  View [dbo].[KUSA_TRACK_DET2_Union]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KUSA_TRACK_DET2_Union] AS 
SELECT * FROM dbo.KUSA_TRACK_DET1_GSVLoader
UNION ALL
SELECT * FROM dbo.KUSA_TRACK_DET1_IndLoader
UNION ALL
SELECT * FROM dbo.KUSA_TRACK_DET1_KPILoader
GO
/****** Object:  View [dbo].[KUSA_TRACK_DET3_NORMALIZED]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KUSA_TRACK_DET3_NORMALIZED]
AS
SELECT        a.BU, a.PT, a.[PT Name], a.Brand#, a.Brand, a.ALT_SUBCATEGORY, a.ALT_CATEGORY, a.[P IBP PER], a.[Q IBP PER], a.[Y IBP PER], a.[P BUDGET PER], 
                         a.[Q BUDGET PER], a.[Y BUDGET PER], a.[P SE PER], a.[Q SE PER], a.[Y SE PER], a.[Last Refresh Date], a.[Track Day], a.Period, a.Year, a.Period_Year, 
                         a.[Today GSV$], a.[Today OO$], a.[PTD GSV$], a.[Open Order $], a.[QTD GSV$], a.[YTD GSV$], a.[PER YAG GSV$], a.[QTR YAG GSV$], a.[YR YAG GSV$], 
                         a.[Next Period OO], a.[CURR PD IND$], a.[PTD IND$], a.[PTD Pace], a.[QTD Pace], a.[YTD Pace], b.Level_A, b.Level_B, b.Level_C, b.Level_D, b.Level_E, 
                         b.BU AS BU_Hierarchy
FROM            dbo.KUSA_TRACK_DET2_Union AS a LEFT OUTER JOIN
                         dbo.NORMALIZE_BU_HIERARCHY AS b ON a.PT = b.PLANTO
WHERE        (a.[P IBP PER] <> 0) OR
                         (a.[Q IBP PER] <> 0) OR
                         (a.[Y IBP PER] <> 0) OR
                         (a.[P BUDGET PER] <> 0) OR
                         (a.[Q BUDGET PER] <> 0) OR
                         (a.[Y BUDGET PER] <> 0) OR
                         (a.[P SE PER] <> 0) OR
                         (a.[Q SE PER] <> 0) OR
                         (a.[Y SE PER] <> 0) OR
                         (a.[Today GSV$] <> 0) OR
                         (a.[Today OO$] <> 0) OR
                         (a.[PTD GSV$] <> 0) OR
                         (a.[Open Order $] <> 0) OR
                         (a.[QTD GSV$] <> 0) OR
                         (a.[YTD GSV$] <> 0) OR
                         (a.[PER YAG GSV$] <> 0) OR
                         (a.[QTR YAG GSV$] <> 0) OR
                         (a.[YR YAG GSV$] <> 0) OR
                         (a.[Next Period OO] <> 0) OR
                         (a.[CURR PD IND$] <> 0) OR
                         (a.[PTD IND$] <> 0) OR
                         (a.[PTD Pace] <> 0) OR
                         (a.[QTD Pace] <> 0) OR
                         (a.[YTD Pace] <> 0)

GO
/****** Object:  View [dbo].[KUSA_TRACK_DET3_OUTPUT]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KUSA_TRACK_DET3_OUTPUT]
AS
SELECT        a.BU, a.PT, a.[PT Name], a.Brand#, a.Brand, a.ALT_SUBCATEGORY, a.ALT_CATEGORY, a.[P IBP PER], a.[Q IBP PER], a.[Y IBP PER], a.[P BUDGET PER], 
                         a.[Q BUDGET PER], a.[Y BUDGET PER], a.[P SE PER], a.[Q SE PER], a.[Y SE PER], a.[Last Refresh Date], a.[Track Day], a.Period, a.Year, a.Period_Year, 
                         a.[Today GSV$], a.[Today OO$], a.[PTD GSV$], a.[Open Order $], a.[QTD GSV$], a.[YTD GSV$], a.[PER YAG GSV$], a.[QTR YAG GSV$], a.[YR YAG GSV$], 
                         a.[Next Period OO], a.[CURR PD IND$], a.[PTD IND$], a.[PTD Pace], a.[QTD Pace], a.[YTD Pace], b.Level_A_Frozen, b.Level_B_Frozen, b.Level_C_Frozen, 
                         b.Level_D_Frozen, b.Level_E_Frozen, b.Level_A, b.Level_B, b.Level_C, b.Level_D, b.Level_E, b.Level_A_Morning_Foods, b.Level_B_Morning_Foods, 
                         b.Level_C_Morning_Foods, b.Level_D_Morning_Foods, b.Level_E_Morning_Foods, b.Level_A_Kashi, b.Level_B_Kashi, b.Level_C_Kashi, b.Level_D_Kashi, 
                         b.Level_E_Kashi, b.Level_A_Snacks, b.Level_B_Snacks, b.Level_C_Snacks, b.Level_D_Snacks, b.Level_E_Snacks
FROM            dbo.KUSA_TRACK_DET2_Union AS a LEFT OUTER JOIN
                         dbo.PLANTO_HIERARCHY_BU AS b ON a.PT = b.PLANTO
WHERE        (a.[P IBP PER] <> 0) OR
                         (a.[Q IBP PER] <> 0) OR
                         (a.[Y IBP PER] <> 0) OR
                         (a.[P BUDGET PER] <> 0) OR
                         (a.[Q BUDGET PER] <> 0) OR
                         (a.[Y BUDGET PER] <> 0) OR
                         (a.[P SE PER] <> 0) OR
                         (a.[Q SE PER] <> 0) OR
                         (a.[Y SE PER] <> 0) OR
                         (a.[Today GSV$] <> 0) OR
                         (a.[Today OO$] <> 0) OR
                         (a.[PTD GSV$] <> 0) OR
                         (a.[Open Order $] <> 0) OR
                         (a.[QTD GSV$] <> 0) OR
                         (a.[YTD GSV$] <> 0) OR
                         (a.[PER YAG GSV$] <> 0) OR
                         (a.[QTR YAG GSV$] <> 0) OR
                         (a.[YR YAG GSV$] <> 0) OR
                         (a.[Next Period OO] <> 0) OR
                         (a.[CURR PD IND$] <> 0) OR
                         (a.[PTD IND$] <> 0) OR
                         (a.[PTD Pace] <> 0) OR
                         (a.[QTD Pace] <> 0) OR
                         (a.[YTD Pace] <> 0)

GO
/****** Object:  View [dbo].[KUSA_TRACK_ACOSTA_OUTPUT]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KUSA_TRACK_ACOSTA_OUTPUT]
AS
SELECT        Hierarchy.[KLG Banner], Hierarchy.[KLG Sr Mgr Agency Retail], Hierarchy.[ACOSTA FRZ Bus Mgr], Hierarchy.[Frozen Region], Hierarchy.[KLG VP DRA Director], 
                         Hierarchy.[KLG Director MTS], Hierarchy.[PT Name], Data.PT, Data.ALT_CATEGORY, Data.ALT_SUBCATEGORY, Data.Brand, Data.[P IBP PER], Data.[Q IBP PER], 
                         Data.[Y IBP PER], Data.[P BUDGET PER], Data.[Q BUDGET PER], Data.[Y BUDGET PER], Data.[P SE PER], Data.[Q SE PER], Data.[Y SE PER], 
                         Data.[Last Refresh Date], Data.[Track Day], Data.Period, Data.Year, Data.Period_Year, Data.[Today GSV$], Data.[Today OO$], Data.[PTD GSV$], Data.[Open Order $], 
                         Data.[QTD GSV$], Data.[YTD GSV$], Data.[PER YAG GSV$], Data.[QTR YAG GSV$], Data.[YR YAG GSV$], Data.[Next Period OO], Data.[CURR PD IND$], 
                         Data.[PTD IND$], Data.[PTD Pace], Data.[QTD Pace], Data.[YTD Pace], Data.BU
FROM            dbo.ACOSTA_HIERARCHY AS Hierarchy INNER JOIN
                         dbo.KUSA_TRACK_DET3_OUTPUT AS Data ON Hierarchy.[Plan To] = Data.PT AND Hierarchy.Category = Data.ALT_CATEGORY AND Hierarchy.BU = Data.BU
WHERE        (Hierarchy.Flag = 'Acosta') AND (Data.[P IBP PER] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[Q IBP PER] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[Y IBP PER] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[P BUDGET PER] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[Q BUDGET PER] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[Y BUDGET PER] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[P SE PER] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[Q SE PER] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[Y SE PER] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[Today GSV$] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[Today OO$] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[PTD GSV$] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[Open Order $] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[QTD GSV$] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[YTD GSV$] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[PER YAG GSV$] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[QTR YAG GSV$] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[YR YAG GSV$] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[Next Period OO] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[CURR PD IND$] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[PTD IND$] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[PTD Pace] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[QTD Pace] <> 0) OR
                         (Hierarchy.Flag = 'Acosta') AND (Data.[YTD Pace] <> 0)

GO
/****** Object:  View [dbo].[FSU_TIERNAME]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[FSU_TIERNAME] AS 
SELECT
dbo.KLG_FSU_SALES_OUTLOOK_FEED.LEVEL_A,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.LEVEL_B,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.LEVEL_C,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.LEVEL_D,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.LEVEL_E,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[YEAR],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Plan To],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[PT NAME],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.All_IN_Flag,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Business Unit],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.Category,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Posting period],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[CRM Latest Estimate Original Gross Sales (monthly)],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[CRM Base KMF (OI+BB)],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[IBP GSV],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[IBP KMF],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[BUD GSV],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[BUD KMF],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[YAG GSV],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[YAG KMF],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[LP IBP GSV],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[LP IBP KMF],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[SE GSV],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[SE KMF],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[CON GSV],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[CRM LE COP],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[YAG CRM LE COP],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[CRM LE LBS],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[YAG CRM LE LBS],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[BUD KMF ADJ],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[SE KMF ADJ],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.Flag,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[KLG Banner],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[KLG Sr Mgr Agency Retail],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Acosta Retail Bus Mgr],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[ACOSTA FRZ Bus Mgr],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Frozen Region],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[KLG VP DRA Director],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[KLG Director MTS],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[To Date - Year],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Period Year],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.HIERARCHY,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.QUARTER,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.QUARTER_NUM,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.PERIOD_NUM,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Update Date],
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Tier_Name

FROM
dbo.KLG_FSU_SALES_OUTLOOK_FEED
LEFT JOIN dbo.KLG_TPE_PLANTO_MAP_DIM_USR ON dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT = dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Plan To]

GO
/****** Object:  View [dbo].[joe_temp]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[joe_temp] AS 
SELECT *

FROM [KNA_COMRCL].[dbo].[PLN_TO_ITM]
WHERE
KNA_COMRCL.dbo.PLN_TO_ITM.CUST = '0000300002' AND
MIXD_PLT_MATRL = '000000002410010684' AND
CAL_WK = '201802'
GO
/****** Object:  View [dbo].[JW_SBOX_PT_CAT_PER_TRBLSHOOT]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[JW_SBOX_PT_CAT_PER_TRBLSHOOT] AS 
SELECT
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.PLN_TO_NBR,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.PLN_TO_NM,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.LVL_A,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.LVL_B,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.BU,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.CATG,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.FISC_YR,
Sum(KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.LATST_ESTMT_GSV) AS LATST_ESTMT_GSV,
Sum(KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.LATST_ESTMT_COST_OF_PROD_USD) AS LATST_ESTMT_COST_OF_PROD_USD,
Sum(KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.LATST_ESTMT_KMF_USD) AS LATST_ESTMT_KMF_USD,
Sum(KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.LATST_ESTMT_SHIP_LBS) AS LATST_ESTMT_SHIP_LBS,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.PD

FROM
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE

/* WHERE
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.PLN_TO_NBR = '301030' AND
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.FISC_YR ='2017' AND
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.PD = '6' AND
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.CATG = 'CRACKERS'
*/


Group By
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.PLN_TO_NBR,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.PLN_TO_NM,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.BU,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.CATG,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.FISC_YR,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.PD,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.LVL_A,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.LVL_B
GO
/****** Object:  View [dbo].[JW_SBOX_PT_ITEM_Week_TRBLSHOOT]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[JW_SBOX_PT_ITEM_Week_TRBLSHOOT] AS 
SELECT
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.PLN_TO_NBR,
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.PLN_TO_NM,
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.LVL_A,
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.LVL_B,
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.BU,
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.CATG,
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.FISC_YR,
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.CAL_WK,
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.MIXD_PLT_MATRL,
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.PROD_HIER_TYP_DESC,
Sum(KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.LATST_ESTMT_GSV) AS LATST_ESTMT_GSV,
Sum(KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.LATST_ESTMT_COST_OF_PROD_USD) AS LATST_ESTMT_COST_OF_PROD_USD,
Sum(KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.LATST_ESTMT_KMF_USD) AS LATST_ESTMT_KMF_USD,
Sum(KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.LATST_ESTMT_SHIP_LBS) AS LATST_ESTMT_SHIP_LBS,
Sum(KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.LATST_ESTMT_SHIP_UNITS) AS LATST_ESTMT_SHIP_UNITS,
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.PD

FROM
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE

WHERE
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.PLN_TO_NBR = '300182' AND
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.FISC_YR ='2017' AND
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.PD in ('5') AND
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.BU = 'Morning Foods' AND
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.CATG in ('COLD CEREAL')

Group By
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.PLN_TO_NBR,
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.PLN_TO_NM,
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.BU,
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.CATG,
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.FISC_YR,
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.PD,
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.LVL_A,
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.LVL_B,
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.MIXD_PLT_MATRL,
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.PROD_HIER_TYP_DESC,
KG_SANDBOX.dbo.INSIGHTS_PT_TYP_PRFMNCE_JOE.CAL_WK
GO
/****** Object:  View [dbo].[JW_VIEW_KNACMRCL_PT_CAT_PER_TPM_KEYFIG]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[JW_VIEW_KNACMRCL_PT_CAT_PER_TPM_KEYFIG] AS 
SELECT
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.PLN_TO_NBR,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.PLN_TO_NM,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.LVL_A,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.LVL_B,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.BU,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.CATG,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.FISC_YR,
Sum(KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.LATST_ESTMT_GSV) AS LATST_ESTMT_GSV,
Sum(KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.LATST_ESTMT_COST_OF_PROD_USD) AS LATST_ESTMT_COST_OF_PROD_USD,
Sum(KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.LATST_ESTMT_KMF_USD) AS LATST_ESTMT_KMF_USD,
Sum(KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.LATST_ESTMT_SHIP_LBS) AS LATST_ESTMT_SHIP_LBS,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.PD

FROM
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE

/* Where
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.PLN_TO_NBR = '300818' AND
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.FISC_YR ='2018' AND
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.PD = '1' AND
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.CATG = 'SYRUP CARRIERS'
*/
Group By
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.PLN_TO_NBR,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.PLN_TO_NM,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.BU,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.CATG,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.FISC_YR,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.PD,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.LVL_A,
KNA_COMRCL.dbo.INSIGHTS_PT_TYP_PRFMNCE.LVL_B
GO
/****** Object:  View [dbo].[KLG_CANADA_SALES]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_CANADA_SALES] AS 
SELECT
	a.CUSTOMER,
	c.PT_NAME,
	a.[Mixed Pallet Material],
	b.DESCRIPTION,
	b.ALT_CATEGORY,
	b.PROD_H4,
	b.PROD_HIER_TEXT4,
	b.ALT_SEGMENT,
	d.[Period Number],
	d.[YEAR],
	Sum(a.[Actual Ship $]) AS [Actual Ship $],
	Sum(a.[Actual Ship CS]) AS [Actual Ship CS],
	Sum(a.[Actual Ship LBS]) AS [Actual Ship LBS],
	Sum(a.[Actual Ship Units]) AS [Actual Ship Units],
	Sum(a.[Actual Ship KG]) AS [Actual Ship KG]
FROM TPE_DS_Target.dbo.KLG_TPE_PLAN_TO_ITEM_FACT_TGT AS a
LEFT JOIN TPE_DS_Target.dbo.KLG_TPE_MATERIAL_DIM_TGT AS b ON a.[Mixed Pallet Material] = b.MIXED_PAL_MATERIAL
LEFT JOIN TPE_DS_Target.dbo.KLG_TPE_PLANTO_MAP_DIM_USR AS c ON a.CUSTOMER = c.PT#
LEFT JOIN TPE_DS_Target.dbo.KLG_TPE_TIME_DIM_TGT AS d ON a.[Calendar Week] = d.CALENDER_WEEK
WHERE
	a.CUSTOMER IN (302224, 302180, 302135, 301996, 301994, 301839, 301819, 301634, 301576, 301425, 301364, 301308, 301263, 301228,
								 301201, 301145, 301027, 301018, 300967, 300944, 300919, 300889, 300818, 300679, 300664, 300648, 300636, 300631,
								 300544, 300483, 300470, 300457, 300436, 300398, 300396, 300246, 300241, 300240, 300210, 300172, 300130, 300122,
								 300065, 300050, 300034) AND
	d.[YEAR] >= 2016 AND
	(a.[Actual Ship CS] <> 0 OR a.[Actual Ship $]<>0)
GROUP BY
	a.CUSTOMER,
	c.PT_NAME,
	a.[Mixed Pallet Material],
	b.DESCRIPTION,
	b.ALT_CATEGORY,
	b.PROD_H4,
	b.PROD_HIER_TEXT4,
	b.ALT_SEGMENT,
	d.[Period Number],
	d.[YEAR]
GO
/****** Object:  View [dbo].[KLG_FSU_SCIM]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_FSU_SCIM] AS 
SELECT
dbo.NORMALIZE_BU_HIERARCHY.Cons_Class,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Business Unit],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.Category,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Period Year] AS Clean_Per,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Posting period],
Sum(dbo.KLG_FSU_SALES_OUTLOOK_FEED.[IBP GSV]) AS IBP_GSV,
Sum(dbo.KLG_FSU_SALES_OUTLOOK_FEED.[BUD GSV]) AS BUD_GSV,
Sum(dbo.KLG_FSU_SALES_OUTLOOK_FEED.[SE GSV]) AS SE_GSV

FROM
dbo.KLG_FSU_SALES_OUTLOOK_FEED
INNER JOIN dbo.NORMALIZE_BU_HIERARCHY ON dbo.NORMALIZE_BU_HIERARCHY.[PT_N_ TEXT] = dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Plan To] AND dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Business Unit] = dbo.NORMALIZE_BU_HIERARCHY.BU
WHERE
dbo.NORMALIZE_BU_HIERARCHY.Cons_Class IS NOT NULL
Group BY
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Business Unit],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.Category,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Period Year],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Posting period],
dbo.NORMALIZE_BU_HIERARCHY.Cons_Class

GO
/****** Object:  View [dbo].[KLG_PERCENT_OF_BIZ]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_PERCENT_OF_BIZ] AS 
SELECT
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Business Unit],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.Category,
dbo.NORMALIZE_BU_HIERARCHY.Tier_Name,
dbo.NORMALIZE_BU_HIERARCHY.[PT_N_ TEXT],
dbo.NORMALIZE_BU_HIERARCHY.[PT_NAME],
dbo.NORMALIZE_BU_HIERARCHY.LEVEL_A,
dbo.NORMALIZE_BU_HIERARCHY.LEVEL_B,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[BUD GSV],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[YEAR],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[BUD KMF]


FROM
dbo.KLG_FSU_SALES_OUTLOOK_FEED
Left JOIN dbo.NORMALIZE_BU_HIERARCHY ON dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Plan To] = dbo.NORMALIZE_BU_HIERARCHY.[PT_N_ TEXT]
WHERE
dbo.NORMALIZE_BU_HIERARCHY.BU = 'BW HIERARCHY'
GO
/****** Object:  View [dbo].[KLG_PROMO_PRE_POST]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_PROMO_PRE_POST] AS 
SELECT
dbo.KLG_KPEL_TPM.Plan_To_Number,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT_NAME,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_A,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_B,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_C,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_D,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_E,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Tier_Name,
dbo.KLG_KPEL_TPM.Source,
dbo.KLG_KPEL_TPM.Category,
dbo.KLG_KPEL_TPM.Brand,
dbo.KLG_KPEL_TPM.Type,
dbo.KLG_KPEL_TPM.Qtr_Num,
dbo.KLG_KPEL_TPM.[YEAR],
dbo.KLG_KPEL_TPM.Promo_ID,
dbo.KLG_KPEL_TPM.Promo_Desc,
dbo.KLG_KPEL_TPM.Promo_Start_Date,
dbo.KLG_KPEL_TPM.Promo_End_Date,
dbo.KLG_KPEL_TPM.Key_Event_Desc as 'Orig_Tent',
dbo.KLG_KPEL_TPM.Retailer_Dollars,
dbo.KLG_KPEL_TPM.Promo_Units,
dbo.KLG_KPEL_TPM.Incr_GSV_Dollars,
dbo.KLG_KPEL_TPM.Promo_COP,
dbo.KLG_KPEL_TPM.Promo_GSV_Dollars,
dbo.KLG_KPEL_TPM.Total_KMF,
dbo.KLG_KPEL_TPM.Promo_Incremental_COP,
dbo.KLG_KPEL_TPM.Total_Investment,
dbo.KLG_KPEL_TPM.Incremental_Contribution_Dollars,
dbo.KLG_KPEL_TPM.DISPLAY,
dbo.KLG_KPEL_TPM.Promo_Incremental_Units,
dbo.KLG_KPEL_TPM.Promo_LB,
Sum(dbo.KLG_KPEL_TPM.Promo_GSV_Dollars - dbo.KLG_KPEL_TPM.Total_Investment) AS [NSV Dollars],
Sum(dbo.KLG_KPEL_TPM.Promo_GSV_Dollars - dbo.KLG_KPEL_TPM.Total_Investment - dbo.KLG_KPEL_TPM.Promo_COP) AS [SC Dollars],
dbo.KLG_KPEL_TPM.Business_Unit,
dbo.KLG_KPEL_TPM.Promo_Base_Units,
dbo.KLG_KPEL_TPM.Promo_Fixed_Fees,
dbo.Promo_no_tent.Event,
dbo.Promo_no_tent.Promo,
isnull(dbo.Promo_no_tent.Event,dbo.KLG_KPEL_TPM.Key_Event_Desc) AS 'Key_Event_Desc',
dbo.KLG_KPEL_TPM.FEAT,
dbo.KLG_KPEL_TPM.[F&D]

FROM
dbo.KLG_TPE_PLANTO_MAP_DIM_USR
INNER JOIN dbo.KLG_KPEL_TPM ON dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT#_TEXT = dbo.KLG_KPEL_TPM.Plan_To_Number
Left JOIN dbo.Promo_no_tent ON dbo.Promo_no_tent.Promo = dbo.KLG_KPEL_TPM.Promo_ID
GROUP BY
dbo.KLG_KPEL_TPM.Plan_To_Number,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.PT_NAME,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_A,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_B,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_C,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_D,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Level_E,
dbo.KLG_TPE_PLANTO_MAP_DIM_USR.Tier_Name,
dbo.KLG_KPEL_TPM.Source,
dbo.KLG_KPEL_TPM.Category,
dbo.KLG_KPEL_TPM.Brand,
dbo.KLG_KPEL_TPM.Type,
dbo.KLG_KPEL_TPM.Qtr_Num,
dbo.KLG_KPEL_TPM.[YEAR],
dbo.KLG_KPEL_TPM.Promo_ID,
dbo.KLG_KPEL_TPM.Promo_Desc,
dbo.KLG_KPEL_TPM.Promo_Start_Date,
dbo.KLG_KPEL_TPM.Promo_End_Date,
dbo.KLG_KPEL_TPM.Key_Event_Desc,
dbo.KLG_KPEL_TPM.Retailer_Dollars,
dbo.KLG_KPEL_TPM.Promo_Units,
dbo.KLG_KPEL_TPM.Incr_GSV_Dollars,
dbo.KLG_KPEL_TPM.Promo_COP,
dbo.KLG_KPEL_TPM.Promo_GSV_Dollars,
dbo.KLG_KPEL_TPM.Total_KMF,
dbo.KLG_KPEL_TPM.Promo_Incremental_COP,
dbo.KLG_KPEL_TPM.Total_Investment,
dbo.KLG_KPEL_TPM.Incremental_Contribution_Dollars,
dbo.KLG_KPEL_TPM.DISPLAY,
dbo.KLG_KPEL_TPM.Promo_Incremental_Units,
dbo.KLG_KPEL_TPM.Promo_LB,
dbo.KLG_KPEL_TPM.Business_Unit,
dbo.KLG_KPEL_TPM.Promo_Base_Units,
dbo.KLG_KPEL_TPM.Promo_Fixed_Fees,
dbo.Promo_no_tent.Promo,
dbo.Promo_no_tent.Event,
dbo.KLG_KPEL_TPM.FEAT,
dbo.KLG_KPEL_TPM.[F&D]
GO
/****** Object:  View [dbo].[KLG_PROMO_TYPE_RGM]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_PROMO_TYPE_RGM] AS 
SELECT
dbo.KLG_PROMO_TYPE.[Promotion ID],
dbo.KLG_PROMO_TYPE.[Calender Week],
dbo.KLG_PROMO_TYPE.[Plan To],
dbo.KLG_PROMO_TYPE.[TPM: Planned Retailer Promotion Sales],
dbo.KLG_PROMO_TYPE.[TPM: Planned TPQ Eaches],
dbo.KLG_PROMO_TYPE.[Gross Sales $],
dbo.KLG_PROMO_TYPE.[Planned Ship $],
dbo.KLG_PROMO_TYPE.[Planned Incremental Volume $],
dbo.KLG_PROMO_TYPE.[Planned Promo COP $],
dbo.KLG_PROMO_TYPE.[LE Total Non-Trade],
dbo.KLG_PROMO_TYPE.[LE Total Fixed KMF $],
dbo.KLG_PROMO_TYPE.[Total Planned Promo $],
dbo.KLG_PROMO_TYPE.[Reserved Total KMF $],
dbo.KLG_PROMO_TYPE.[Total Planned Promo Units],
dbo.KLG_PROMO_TYPE.[Reserved CSM Trade $],
dbo.KLG_PROMO_TYPE.[Total Modeled Promo $],
dbo.KLG_PROMO_TYPE.[Plan Incremental COP $],
dbo.KLG_PROMO_TYPE.DISPLAY,
dbo.KLG_PROMO_TYPE.FEATURE,
dbo.KLG_PROMO_TYPE.[F&D],
dbo.KLG_PROMO_TYPE.[Sugg TPQ],
dbo.KLG_PROMO_TYPE.[Sugg Incr],
dbo.KLG_PROMO_TYPE.[SVP: Planned Shelf Price],
dbo.KLG_PROMO_TYPE.[Planned Incrementality %],
dbo.KLG_PROMO_TYPE.[Plan Activity GSV],
dbo.KLG_PROMO_TYPE.[EDLP Spend],
dbo.KLG_PROMO_TYPE.[TPM: Planned Promo Dollars @ Full Price],
dbo.KLG_PROMO_TYPE.[SVP: Suggested Base],
dbo.KLG_PROMO_TYPE.ACTIVITY_DESC,
dbo.KLG_PROMO_TYPE.Promo_Desc,
dbo.KLG_PROMO_TYPE.ACTIVITY_TYPE,
dbo.KLG_PROMO_TYPE.SHIP_DATE_FROM,
dbo.KLG_PROMO_TYPE.SHIP_DATE_TO,
dbo.KLG_PROMO_TYPE.PROMOTION_DESC,
dbo.KLG_PROMO_TYPE.SCANNER_APPS_ID,
dbo.KLG_PROMO_TYPE.EMPLOYEE_RESPONSIBLE,
dbo.KLG_PROMO_TYPE.CHANGED_BY,
dbo.KLG_PROMO_TYPE.LAST_CHANGED_ON,
dbo.KLG_PROMO_TYPE.PERSON_NAME,
dbo.KLG_PROMO_TYPE.DATE_CREATED,
dbo.KLG_PROMO_TYPE.CAMPAIGN_TYPE,
dbo.KLG_PROMO_TYPE.CAMPAIGN_DESC,
dbo.KLG_PROMO_TYPE.PLANNED_DATE_FROM,
dbo.KLG_PROMO_TYPE.PLANNED_DATE_TO,
dbo.KLG_PROMO_TYPE.KEY_EVENT_DESC,
dbo.KLG_PROMO_TYPE.CURRENCY_KEY,
dbo.KLG_PROMO_TYPE.PERIOD,
dbo.KLG_PROMO_TYPE.[Period Number],
dbo.KLG_PROMO_TYPE.[Period Year],
dbo.KLG_PROMO_TYPE.QUARTER,
dbo.KLG_PROMO_TYPE.[Quarter Number],
dbo.KLG_PROMO_TYPE.[Quarter Year],
dbo.KLG_PROMO_TYPE.[YEAR],
dbo.KLG_PROMO_TYPE.[BW Period],
dbo.KLG_PROMO_TYPE.[Niel Week],
dbo.KLG_PROMO_TYPE.[Pay Week],
dbo.KLG_PROMO_TYPE.ALT_CATEGORY,
dbo.KLG_PROMO_TYPE.ALT_SUBCATEGORY,
dbo.KLG_PROMO_TYPE.PROD_H4,
dbo.KLG_PROMO_TYPE.PROD_HIER_TEXT4,
dbo.KLG_PROMO_TYPE.PROD_H5,
dbo.KLG_PROMO_TYPE.PROD_HIER_TEXT5,
dbo.KLG_PROMO_TYPE.BUSINESS_UNIT,
dbo.KLG_PROMO_TYPE.PT_NAME,
dbo.KLG_PROMO_TYPE.Level_A,
dbo.KLG_PROMO_TYPE.Level_B,
dbo.KLG_PROMO_TYPE.Level_C,
dbo.KLG_PROMO_TYPE.Level_D,
dbo.KLG_PROMO_TYPE.Level_E,
dbo.KLG_PROMO_TYPE.Tier_Name,
dbo.KLG_PROMO_TYPE.TIER,
dbo.KLG_PROMO_TYPE.AKV,
dbo.KLG_PROMO_TYPE.[Ca Category]

FROM
dbo.KLG_PROMO_TYPE

GO
/****** Object:  View [dbo].[KLG_SALES_OUTLOOK]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_SALES_OUTLOOK] AS 
SELECT
dbo.KLG_FSU_SALES_OUTLOOK_FEED.LEVEL_A,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.LEVEL_B,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.LEVEL_C,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.LEVEL_D,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.LEVEL_E,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[YEAR],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Plan To],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[PT NAME],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.All_IN_Flag,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Business Unit],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.Category,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Posting period],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[CRM Latest Estimate Original Gross Sales (monthly)],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[CRM Base KMF (OI+BB)],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[IBP GSV],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[IBP KMF],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[BUD GSV],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[BUD KMF],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[YAG GSV],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[YAG KMF],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[LP IBP GSV],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[LP IBP KMF],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[SE GSV],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[SE KMF],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[CON GSV],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[CRM LE COP],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[YAG CRM LE COP],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[BUD KMF ADJ],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[SE KMF ADJ],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.Flag,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[KLG Banner],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[KLG Sr Mgr Agency Retail],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Acosta Retail Bus Mgr],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[ACOSTA FRZ Bus Mgr],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Frozen Region],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[KLG VP DRA Director],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[KLG Director MTS],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[To Date - Year],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.[Period Year],
dbo.KLG_FSU_SALES_OUTLOOK_FEED.HIERARCHY,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.QUARTER,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.QUARTER_NUM,
dbo.KLG_FSU_SALES_OUTLOOK_FEED.PERIOD_NUM,
dbo.KLG_CANADA_CAT_MAP.[Ca Category]

FROM
dbo.KLG_FSU_SALES_OUTLOOK_FEED
INNER JOIN dbo.KLG_CANADA_CAT_MAP ON dbo.KLG_CANADA_CAT_MAP.Category = dbo.KLG_FSU_SALES_OUTLOOK_FEED.Category

GO
/****** Object:  View [dbo].[KLG_TPM_INSIGHTS_PT_TYPE_PERFORMANCE]    Script Date: 11/20/2018 5:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KLG_TPM_INSIGHTS_PT_TYPE_PERFORMANCE] AS 
SELECT
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[PT# TEXT],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[PT NAME],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[Level A],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[Level B],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[Level C],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[Level D],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[Level E],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.ALL_IN_Flag,
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[Business Unit],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.Category,
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[Sub Category],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[Brand ID],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[Brand Name],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[Type ID],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[Type Name],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[YEAR],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.Quarter,
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[Period Year],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.Period,
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[Size],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[LE GSV],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[LE COP],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[LE KMF $],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[LE Ship LB],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[LE Ship Units],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[Plan KMF],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[LE NSV PRXY $],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[LE SC PRXY $],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[LE SC PRXY $ GSV],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[LE COP Fixed],
dbo.KLG_PRICE_IMPACT.[GSV Price Chg],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[Tier Name],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[Ca Category],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[GGS Brand Priority Number],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[GGS Brand Priority],
dbo.KLG_PLANTO_TYPE_PER_PERFORM.[GGS Brand Sub Priority]

FROM
dbo.KLG_PLANTO_TYPE_PER_PERFORM
Left JOIN dbo.KLG_PRICE_IMPACT ON dbo.KLG_PRICE_IMPACT.CUSTOMER = dbo.KLG_PLANTO_TYPE_PER_PERFORM.[PT# TEXT] AND dbo.KLG_PRICE_IMPACT.[Period Year] = dbo.KLG_PLANTO_TYPE_PER_PERFORM.[Period Year] AND dbo.KLG_PRICE_IMPACT.[Type Name] = dbo.KLG_PLANTO_TYPE_PER_PERFORM.[Type Name]

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
         Begin Table = "Hierarchy"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 277
               Right = 261
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Data"
            Begin Extent = 
               Top = 4
               Left = 496
               Bottom = 313
               Right = 717
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
      Begin ColumnWidths = 32
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
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KUSA_TRACK_ACOSTA_OUTPUT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KUSA_TRACK_ACOSTA_OUTPUT'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KUSA_TRACK_BRAND_CAT_MAP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KUSA_TRACK_BRAND_CAT_MAP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[22] 2[25] 3) )"
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
         Begin Table = "a"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 286
               Right = 272
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "b"
            Begin Extent = 
               Top = 30
               Left = 390
               Bottom = 324
               Right = 563
            End
            DisplayFlags = 280
            TopColumn = 5
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
      Begin ColumnWidths = 32
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
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KUSA_TRACK_DET3_NORMALIZED'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KUSA_TRACK_DET3_NORMALIZED'
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
         Begin Table = "a"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 31
         End
         Begin Table = "b"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 267
               Right = 308
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
      Begin ColumnWidths = 32
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
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KUSA_TRACK_DET3_OUTPUT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KUSA_TRACK_DET3_OUTPUT'
GO
USE [master]
GO
ALTER DATABASE [TPE_DS_User] SET  READ_WRITE 
GO
