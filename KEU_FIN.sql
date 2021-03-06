USE [master]
GO
/****** Object:  Database [KEU_FIN]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE DATABASE [KEU_FIN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KEU_FIN', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KEU_FIN.mdf' , SIZE = 181248KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'KEU_FIN_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KEU_FIN_log.ldf' , SIZE = 164672KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KEU_FIN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KEU_FIN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KEU_FIN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KEU_FIN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KEU_FIN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KEU_FIN] SET ARITHABORT OFF 
GO
ALTER DATABASE [KEU_FIN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KEU_FIN] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [KEU_FIN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KEU_FIN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KEU_FIN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KEU_FIN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KEU_FIN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KEU_FIN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KEU_FIN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KEU_FIN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KEU_FIN] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KEU_FIN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KEU_FIN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KEU_FIN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KEU_FIN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KEU_FIN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KEU_FIN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KEU_FIN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KEU_FIN] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KEU_FIN] SET  MULTI_USER 
GO
ALTER DATABASE [KEU_FIN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KEU_FIN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KEU_FIN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KEU_FIN] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KEU_FIN', N'ON'
GO
USE [KEU_FIN]
GO
/****** Object:  User [US\SQL_KG_ZBB_R]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE USER [US\SQL_KG_ZBB_R] FOR LOGIN [US\SQL_KG_ZBB_R]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_ZBB_SUPPORT_R]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE USER [US\SQL_DS_ZBB_SUPPORT_R] FOR LOGIN [US\SQL_DS_ZBB_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 4:59:29 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 4:59:29 PM ******/
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
/****** Object:  Schema [KEU_ZBB]    Script Date: 11/20/2018 4:59:30 PM ******/
CREATE SCHEMA [KEU_ZBB]
GO
/****** Object:  Schema [STG]    Script Date: 11/20/2018 4:59:30 PM ******/
CREATE SCHEMA [STG]
GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Acct_Hrchy_Ecc]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






--DROP PROCEDURE [dbo].[USP_DQ_Load_Acct_Hrchy_Ecc]






-- =============================================
-- Author:		Venkata
-- Create date: May 12, 2016
-- Description:	populate acct hirarchy from  ZBB_CST_CT Cost Element Hierarchy.

-- Author:		USCMXJ11
-- Create date:  Jan 23, 2018
-- Description:	INC0677593 -Acct hier is empty due to invalid selection


-- =============================================
CREATE PROCEDURE [dbo].[USP_DQ_Load_Acct_Hrchy_Ecc]
AS
    BEGIN
        DECLARE @cnt INT;
        SET NOCOUNT ON;
        DECLARE @ACCT_HRCHY TABLE
            (
              ACCT_NBR NVARCHAR(10) ,
              ACCT_DESC NCHAR(60) NULL ,
              --Fcn NVARCHAR(50) NULL ,
              ACCT_CATEG CHAR(40) NULL ,
              ACCT_SUB_CATEG CHAR(40) NULL ,
              Created_by VARCHAR(50) NOT NULL ,
              Created_TS DATETIME NOT NULL ,
              Modified_by VARCHAR(50) NULL ,
              Modified_ts DATETIME NULL ,
              Is_Deleted INT DEFAULT 0 ,
              Deleted_by VARCHAR(50) NULL ,
              Deleted_TS DATETIME NULL
            );
	        
		   
        INSERT  INTO @ACCT_HRCHY
                ( ACCT_NBR ,
                  ACCT_DESC ,
				--  Fcn,
                  ACCT_CATEG ,
                  ACCT_SUB_CATEG ,
                  Created_by ,
                  Created_TS
                )
 SELECT	LTRIM(RTRIM(SETNAME)) GL_Acct
       --,LTRIM(RTRIM(SETNAME)) +'-'+LTRIM(RTRIM(LVL5_SETNAME_DESC)) Acct_Desc
	    ,LTRIM(RTRIM(LVL5_SETNAME_DESC)) Acct_Desc
	   ,LTRIM(RTRIM(LVL3_SETNAME_DESC)) Acct_Categ
	   ,LTRIM(RTRIM(LVL4_SETNAME_DESC)) Acct_Sub_Categ
	   ,user_name()
	   ,getdate() 
 FROM KEU_ECC.[STG].[COST_ELMNT_HIER_UNRVL] 

WHERE  SETTYPE='X'  
  AND  LVL1_SETNAME='KEU' 
  --AND  LVL2_SETNAME = 'INSCOPE'   --- INC0677593 commented since this selection is not valid anymore



-- Merge Statement
        MERGE KEU_FIN.KEU_ZBB.Acct_Hrchy_ZBB AS stm
        USING
            ( SELECT    ACCT_NBR ,
                        ACCT_DESC ,
						--[Fcn],
                        ACCT_CATEG ,
                        ACCT_SUB_CATEG
						 FROM      @ACCT_HRCHY
            ) AS sd
        ON stm.[GL_Acct] = sd.ACCT_NBR
--WHEN MATCHED AND stm.ACCT_NBR &gt; 250 THEN DELETE
        WHEN MATCHED THEN
            UPDATE SET
                    stm.Acct_Desc = sd.ACCT_DESC ,
                    stm.Acct_Categ = sd.ACCT_CATEG ,
                    stm.Acct_Sub_Categ = sd.ACCT_SUB_CATEG ,
                    stm.DW_Mod_Usr = USER_NAME() ,
                    stm.DW_Mod_Ts = GETDATE(),
					stm.DW_Del_Bit=0,
					stm. DW_Del_Usr=null
					
        WHEN NOT MATCHED THEN
            INSERT ( GL_Acct ,
                     Acct_Desc ,
                     Acct_Categ ,
                     Acct_Sub_Categ ,
					 DW_Cre_Usr ,
                     DW_Cre_Ts
                   )
            VALUES ( sd.ACCT_NBR ,
                     sd.ACCT_DESC ,
                     sd.ACCT_CATEG ,
                     sd.ACCT_SUB_CATEG ,
					 USER_NAME() ,
                     GETDATE()
                   );


        SELECT  @cnt = COUNT([GL_Acct])
        FROM    KEU_FIN.KEU_ZBB.Acct_Hrchy_ZBB a
        WHERE   a.[GL_Acct] NOT IN ( SELECT  ACCT_NBR
                                    FROM    @ACCT_HRCHY );
        PRINT @cnt;

        UPDATE  KEU_FIN.KEU_ZBB.Acct_Hrchy_ZBB
        SET     DW_Del_Bit = 1 ,
                DW_Del_Usr = USER_NAME() ,
                DW_Del_Ts = GETDATE()
        WHERE   [GL_Acct] NOT IN ( SELECT    ACCT_NBR
                                  FROM      @ACCT_HRCHY ); 

			UPDATE KEU_FIN.KEU_ZBB.Acct_Hrchy_ZBB
		   SET GL_Acct = REPLICATE('0', 10 - LEN(GL_Acct)) + GL_Acct

    END;
















GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_BB_Ion_Bdg]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:	Atheeth Rao K
-- Create date: 13 july 2016
-- Description: Incremental load of Budget
-- =============================================
CREATE PROCEDURE [dbo].[USP_DQ_Load_BB_Ion_Bdg] @InsCount INT OUTPUT
AS
BEGIN
	UPDATE [STG].[STG_BB_Ion_Bdg]
	SET [ION_Cd] = ltrim(rtrim(ION_Cd))
		,[ION_Curr_Typ] = ltrim(rtrim(ION_Curr_Typ))
		,[Acct_Cd] = ltrim(rtrim(Acct_Cd))
		 ,[Pd] = ltrim(rtrim(Pd))
		,[Amt] = ltrim(rtrim(Amt))
		,[Ver] = ltrim(rtrim(Ver))
		

	--/*********************CHECKING FOR NULLABLE VALUES*********************************/
	UPDATE [STG].[STG_BB_Ion_Bdg]
	SET Error_Flag = 'Y'
	WHERE [ION_Cd] IS NULL
		OR [ION_Cd] = '';

	UPDATE [STG].[STG_BB_Ion_Bdg]
	SET Error_Flag = 'Y'
	WHERE [Acct_Cd] IS NULL
		OR [Acct_Cd] = '';

	UPDATE [STG].[STG_BB_Ion_Bdg]
	SET Error_Flag = 'Y'
	WHERE [Pd] IS NULL
		OR [Pd] = '';

			UPDATE [STG].[STG_BB_Ion_Bdg]
	SET ION_CD = REPLICATE('0', 12 - LEN(ION_CD)) + ION_CD

	MERGE INTO [KEU_ZBB].[BB_Ion_Bdg] AS stm
	USING (
		SELECT [ION_Cd]
			,[ION_Curr_Typ]
			,[Acct_Cd]
			,[Pd]
			,[Amt]
			,[Ver]
		FROM [STG].[STG_BB_Ion_Bdg]
		) AS sd
		ON stm.[ION_Cd] = sd.[ION_Cd]
			AND stm.[Acct_Cd] = sd.[Acct_Cd]
			AND stm.[Yr] = substring(sd.[Pd], 1, charindex('-', sd.[pd]) - 1)
			AND stm.[Pd] = substring(sd.[Pd], charindex('-', sd.[pd]) + 1, len(sd.[pd]))
			AND stm.[Ver] = sd.[Ver]
	WHEN MATCHED
		THEN
			UPDATE
			SET stm.[ION_Cd] = sd.[ION_Cd]
				,stm.[ION_Curr_Typ] = sd.[ION_Curr_Typ]
				,stm.[Acct_Cd] = sd.[Acct_Cd]
				,stm.[Yr] = substring(sd.[Pd], 1, charindex('-', sd.[pd]) - 1)
				,stm.[Pd] = substring(sd.[Pd], charindex('-', sd.[pd]) + 1, len(sd.[pd]))
				,stm.[Amt] = sd.[Amt]
				,stm.[Ver] = sd.[Ver]
	WHEN NOT MATCHED
		THEN
			INSERT (
				[ION_Cd]
				,[ION_Curr_Typ]
				,[Acct_Cd]
				,[Yr]
				,[Pd]
				,[Amt]
				,[Ver]
				,[DW_Cre_Ts]
				,[DW_Cre_Usr]
				)
			VALUES (
				sd.[ION_Cd]
				,sd.[ION_Curr_Typ]
				,sd.[Acct_Cd]
				,substring(sd.[Pd], 1, charindex('-', sd.[pd]) - 1)
				,substring(sd.[Pd], charindex('-', sd.[pd]) + 1, len(sd.[pd]))
				,sd.[Amt]
				,sd.[Ver]
				,getdate()
				,user_name()
				);



	SELECT @InsCount = @@ROWCOUNT

	PRINT 'Rows Inserted Into [Ion_Hrchy]  Table :';
	PRINT @InsCount;
END




GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Cost_Cntr_Ecc]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_DQ_Load_Cost_Cntr_Ecc]
AS
    BEGIN
        DECLARE @cnt INT;
        SET NOCOUNT ON;
        DECLARE @COSTCNTR_HRCHY TABLE
            (
              CC_Nbr NVARCHAR(10) ,
              CC_Desc NVARCHAR(60) NULL ,
              lvl0_Desc NVARCHAR(15) NULL ,
              lvl1_Desc NVARCHAR(75) NULL ,
              lvl1_Cd NVARCHAR(12) NULL ,
              lvl2_Desc NVARCHAR(75) NULL ,
              lvl2_Cd NVARCHAR(12) NULL ,
              lvl3_Desc NVARCHAR(75) NULL ,
              lvl3_Cd NVARCHAR(12) NULL ,
              lvl4_Desc NVARCHAR(75) NULL ,
              lvl4_Cd NVARCHAR(12) NULL ,
              lvl5_Desc NVARCHAR(75) NULL ,
              lvl5_Cd NVARCHAR(12) NULL ,
			  [Cst_Ctr_ID_Desc] NVARCHAR(50) NULL ,
              Created_by NVARCHAR(100) NULL ,
              Created_TS DATETIME NULL ,
              Modified_by NVARCHAR(100) NULL ,
              Modified_ts DATETIME NULL ,
              Is_Deleted INT DEFAULT 0 ,
              Deleted_by NVARCHAR(100) NULL ,
              Deleted_TS DATETIME NULL
            );
	         
		   
        INSERT  INTO @COSTCNTR_HRCHY
                ( CC_Nbr ,
                  CC_Desc ,
                  lvl0_Desc ,
                  lvl1_Desc ,
                  lvl1_Cd ,
                  lvl2_Desc ,
                  lvl2_Cd ,
                  lvl3_Desc ,
                  lvl3_Cd ,
                  lvl4_Desc ,
                  lvl4_Cd ,
                  lvl5_Desc ,
                  lvl5_Cd ,
				  [Cst_Ctr_ID_Desc],
                  Created_by ,
                  Created_TS
                )
              select LTRIM(RTRIM(SETNAME)) CC_Nbr,LVL5_SETNAME_DESC CC_Desc,'KELLOGG' lvl0_desc,LVL1_SETNAME Lvl1_Desc,

 left(LVL1_SETNAME_DESC, charindex('-', LVL1_SETNAME_DESC) - 1) Lvl1_Cd,LVL2_SETNAME_DESC Lvl2_Desc,LVL2_SETNAME Lvl2_Cd,
LVL3_SETNAME_DESC Lvl3_Desc,LVL3_SETNAME Lvl3_Cd,
LVL4_SETNAME_DESC Lvl4_Desc,LVL4_SETNAME Lvl4_Cd,
--substring(SETNAME, patindex('%[^0]%',SETNAME), 20)+' -'+LVL5_SETNAME_DESC Lvl5_Desc,
LVL5_SETNAME_DESC Lvl5_Desc,
substring(LVL5_SETNAME, patindex('%[^0]%',LVL5_SETNAME), 20)  Lvl5_Cd,
substring(SETNAME, patindex('%[^0]%',SETNAME), 20)+' -'+LVL5_SETNAME_DESC Cst_Ctr_ID_Desc ,user_name(),getdate()
from KEU_ECC.[STG].[COST_CTR_HIER_UNRVL] where SETTYPE='X' 
--and SUBCLASS = 'KELL'      
AND SETNAME  <>  '0005100426'
OR (SETNAME  =  '0005100426' AND SUBCLASS <> 'KLUK')



-- Merge Statement
        MERGE KEU_FIN.KEU_ZBB.CC_Hrchy_ZBB AS stm
        USING
            ( SELECT  distinct  CC_Nbr ,
                  CC_Desc ,
                  lvl0_Desc ,
                  lvl1_Desc ,
                  lvl1_Cd ,
                  lvl2_Desc ,
                  lvl2_Cd ,
                  lvl3_Desc ,
                  lvl3_Cd ,
                  lvl4_Desc ,
                  lvl4_Cd ,
                  lvl5_Desc ,
                  lvl5_Cd ,
				  [Cst_Ctr_ID_Desc]
                        
              FROM      @COSTCNTR_HRCHY
            ) AS sd
        ON stm.CC_Nbr = sd.CC_Nbr
--WHEN MATCHED AND stm.ACCT_NBR &gt; 250 THEN DELETE
        WHEN MATCHED THEN
            UPDATE SET
                    stm.CC_Desc = sd.CC_Desc ,
                    stm.lvl0_Desc = sd.lvl0_Desc ,
					stm.Lvl1_Desc = sd.lvl1_Desc ,
                    stm.Lvl1_Cd = sd.lvl1_Cd ,
					stm.Lvl2_Desc = sd.lvl2_Desc ,
					stm.Lvl2_Cd = sd.lvl2_Cd ,
					stm.Lvl3_Desc = sd.lvl3_Desc ,
                    stm.Lvl3_Cd = sd.lvl3_Cd ,
                    stm.Lvl4_Desc = sd.lvl4_Desc ,
                    stm.Lvl4_Cd = sd.lvl4_Cd ,
                    stm.Lvl5_Desc = sd.lvl5_Desc ,
					stm.Lvl5_Cd = sd.Lvl5_Cd ,
					stm.[Cst_Ctr_ID_Desc]=sd.[Cst_Ctr_ID_Desc],
                    stm.DW_Mod_Usr = CURRENT_USER ,
                    stm.DW_Mod_Ts = GETDATE(),
					 stm.DW_Del_Bit = 0 ,
					 stm.DW_Del_Usr = Null ,
					stm.DW_Del_Ts = Null
        WHEN NOT MATCHED THEN
            INSERT ( CC_Nbr ,
                     CC_Desc ,
                     lvl0_Desc ,
                     Lvl1_Desc ,
                     Lvl1_Cd ,
                     Lvl2_Desc ,
                     Lvl2_Cd ,
                     Lvl3_Desc ,
                     Lvl3_Cd ,
                     Lvl4_Desc ,
                     Lvl4_Cd ,
                     Lvl5_Desc ,
                     Lvl5_Cd ,
					 [Cst_Ctr_ID_Desc],
                     DW_Cre_Usr ,
                     DW_Cre_Ts
                   )
            VALUES ( sd.CC_Nbr ,
                     sd.CC_Desc ,
                     sd.lvl0_Desc ,
                     sd.lvl1_Desc ,
                     sd.lvl1_Cd ,
                     sd.lvl2_Desc ,
                     sd.lvl2_Cd ,
                     sd.lvl3_Desc ,
                     sd.lvl3_Cd ,
                     sd.lvl4_Desc ,
                     sd.lvl4_Cd ,
                     sd.lvl5_Desc ,
                     sd.lvl5_Cd ,
					 sd.[Cst_Ctr_ID_Desc],
                     CURRENT_USER ,
                     GETDATE()
                   );


        SELECT  @cnt = COUNT(CC_Nbr)
        FROM    KEU_FIN.KEU_ZBB.CC_Hrchy_ZBB a
        WHERE   a.CC_Nbr NOT IN ( SELECT    CC_Nbr
                                  FROM      @COSTCNTR_HRCHY );
        PRINT @cnt;

        UPDATE  KEU_FIN.KEU_ZBB.CC_Hrchy_ZBB
        SET     DW_Del_Bit = 1 ,
                DW_Del_Usr = USER_NAME() ,
                DW_Del_Ts = GETDATE()
        WHERE   CC_Nbr NOT IN ( SELECT  CC_Nbr
                                FROM    @COSTCNTR_HRCHY ); 

								UPDATE KEU_FIN.KEU_ZBB.CC_Hrchy_ZBB
		   SET CC_Nbr = REPLICATE('0', 10 - LEN(CC_Nbr)) + CC_Nbr

    END;


GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Curr_Exchng_Fmt]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:	Atheet Rao K
-- Create date:13 July  2016
-- Description:	>Full Load Curr_Exchng_Fmt
-- =============================================
CREATE PROCEDURE [dbo].[USP_DQ_Load_Curr_Exchng_Fmt] @InsCount INT OUTPUT
AS
BEGIN
	UPDATE [stg].[STG_Curr_Exchng_Fmt]
	SET [Ver] = LTRIM(RTRIM(Ver))
		,[Fr_Curr] = LTRIM(RTRIM(Fr_Curr))
		,[To_Curr] = LTRIM(RTRIM(To_Curr))
		,[Yr] = LTRIM(RTRIM(Yr))
		,[Pd] = LTRIM(RTRIM(Pd))
		,[Fctr] = LTRIM(RTRIM(Fctr))

	UPDATE [stg].[STG_Curr_Exchng_Fmt]
	SET [Fctr] = replace(Fctr, '$', '')

	UPDATE [stg].[STG_Curr_Exchng_Fmt]
	SET [Fctr] = replace(replace(Fctr, '(', ''), ')', '')

	--/*****************************************************************************/
	MERGE INTO [KEU_ZBB].[Curr_Exchng_Fmt] AS stm
	USING (
		SELECT Ver
			,Fr_Curr
			,To_Curr
			,Yr
			,Pd
			,[Fctr]
		FROM [STG].[STG_Curr_Exchng_Fmt]
		) AS sd
		ON stm.Ver = sd.Ver
			AND stm.Fr_Curr = sd.Fr_Curr
			AND stm.To_Curr = sd.To_Curr
			AND stm.Yr = sd.Yr
			AND stm.Pd = sd.Pd
	WHEN MATCHED
		THEN
			UPDATE
			SET stm.Ver = sd.Ver
				,stm.Fr_Curr = sd.Fr_Curr
				,stm.To_Curr = sd.To_Curr
				,stm.Yr = sd.Yr
				,stm.Pd = sd.Pd
				,stm.[Fctr] = sd.[Fctr]
				,stm.DW_Mod_Ts = getdate()
				,DW_Mod_Usr = user_name()
	WHEN NOT MATCHED
		THEN
			INSERT (
				Ver
				,Fr_Curr
				,To_Curr
				,Yr
				,Pd
				,Fctr
				,DW_Cre_Ts
				,DW_Cre_Usr
				)
			VALUES (
				sd.Ver
				,sd.Fr_Curr
				,sd.To_Curr
				,sd.Yr
				,sd.Pd
				,sd.Fctr
				,getdate()
				,user_name()
				);

	SELECT @InsCount = @@ROWCOUNT

	PRINT 'Rows Inserted Into [KEU_ZBB].[Curr_Exchng_Fmt] Table :';
	PRINT @InsCount;
END


GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Ion_Hrchy]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Atheeth Rao K
-- Create date: 13 july 2016
-- Description: Incremental load of Ion_Hrchy
-- =============================================
CREATE PROCEDURE [dbo].[USP_DQ_Load_Ion_Hrchy] 
@InsCount INT OUTPUT 
AS
BEGIN

-- Quality Check -- 

UPDATE [STG].[STG_Ion_Hrchy_ZBB]
   SET [ION_ID] = LTRIM(RTRIM(ION_ID))
      ,[ION_DESC] = LTRIM(RTRIM(ION_DESC))
      ,[L0_Desc] = LTRIM(RTRIM(L0_Desc))
      ,[L1_Desc] = LTRIM(RTRIM(L1_Desc))
      ,[L2_Desc] = LTRIM(RTRIM(L2_Desc))
      ,[L3_Desc] = LTRIM(RTRIM(L3_Desc))
      ,[L4_Desc] = LTRIM(RTRIM(L4_Desc))
      ,[L5_Desc] = LTRIM(RTRIM(L5_Desc))
      ,[L1_Cd] = LTRIM(RTRIM(L1_Cd))
      ,[L2_Cd] = LTRIM(RTRIM(L2_Cd))
      ,[L3_Cd] = LTRIM(RTRIM(L3_Cd))
      ,[L4_Cd] = LTRIM(RTRIM(L4_Cd))
      ,[L5_Cd] = LTRIM(RTRIM(L5_Cd))
      ,[ION_ID_Desc] = LTRIM(RTRIM(ION_ID_Desc))


	  --/*********************CHECKING FOR NULLABLE VALUES*********************************/
		UPDATE[STG].[STG_Ion_Hrchy_ZBB]
		SET Error_Flag = 'Y'
		WHERE [ION_ID] IS NULL
		OR [ION_ID] = '';

		UPDATE[STG].[STG_Ion_Hrchy_ZBB]
		SET Error_Flag = 'Y'
		WHERE [L1_Cd] IS NULL
		OR [L1_Cd] = '';

		UPDATE[STG].[STG_Ion_Hrchy_ZBB]
		SET Error_Flag = 'Y'
		WHERE [L2_Cd] IS NULL
		OR [L2_Cd] = '';

		UPDATE[STG].[STG_Ion_Hrchy_ZBB]
		SET Error_Flag = 'Y'
		WHERE [L3_Cd] IS NULL
		OR [L3_Cd] = '';

		UPDATE[STG].[STG_Ion_Hrchy_ZBB]
		SET Error_Flag = 'Y'
		WHERE [L4_Cd] IS NULL
		OR [L4_Cd] = '';

		UPDATE[STG].[STG_Ion_Hrchy_ZBB]
		SET Error_Flag = 'Y'
		WHERE [L5_Cd] IS NULL
		OR [L5_Cd] = '';

			 UPDATE [STG].[STG_Ion_Hrchy_ZBB]
		   SET [ION_ID] = REPLICATE('0', 12 - LEN([ION_ID])) + [ION_ID]

			MERGE INTO [KEU_ZBB].[Ion_Hrchy_ZBB] AS stm
	USING (
	SELECT [ION_ID]
      ,[ION_DESC]
      ,[L0_Desc]
      ,[L1_Desc]
      ,[L2_Desc]
      ,[L3_Desc]
      ,[L4_Desc]
      ,[L5_Desc]
      ,[L1_Cd]
      ,[L2_Cd]
      ,[L3_Cd]
      ,[L4_Cd]
      ,[L5_Cd]
      ,[ION_ID_Desc]
  FROM [STG].[STG_Ion_Hrchy_ZBB]
		) AS sd
		ON stm.[ION_ID] = sd.[ION_ID]
	WHEN MATCHED
	then UPDATE 
   SET stm.[ION_ID] = sd.ION_ID
      ,stm.[ION_DESC] = sd.ION_DESC
      ,stm.[L0_Desc] = sd.L0_Desc
      ,stm.[L1_Desc] = sd.L1_Desc
      ,stm.[L2_Desc] = sd.L2_Desc
      ,stm.[L3_Desc] = sd.L3_Desc
      ,stm.[L4_Desc] = sd.L4_Desc
      ,stm.[L5_Desc] = sd.L5_Desc
      ,stm.[L1_Cd] = sd.L1_Cd
      ,stm.[L2_Cd] = sd.L2_Cd
      ,stm.[L3_Cd] = sd.L3_Cd
      ,stm.[L4_Cd] = sd.L4_Cd
      ,stm.[L5_Cd] = sd.L5_Cd
      ,stm.[ION_ID_Desc] = sd.ION_ID_Desc
	  	WHEN NOT MATCHED
		THEN
			INSERT ([ION_ID]
           ,[ION_DESC]
           ,[L0_Desc]
           ,[L1_Desc]
           ,[L2_Desc]
           ,[L3_Desc]
           ,[L4_Desc]
           ,[L5_Desc]
           ,[L1_Cd]
           ,[L2_Cd]
           ,[L3_Cd]
           ,[L4_Cd]
           ,[L5_Cd]
           ,[ION_ID_Desc])
		   values (
		   sd.[ION_ID]
           ,sd.[ION_DESC]
           ,sd.[L0_Desc]
           ,sd.[L1_Desc]
           ,sd.[L2_Desc]
           ,sd.[L3_Desc]
           ,sd.[L4_Desc]
           ,sd.[L5_Desc]
           ,sd.[L1_Cd]
           ,sd.[L2_Cd]
           ,sd.[L3_Cd]
           ,sd.[L4_Cd]
           ,sd.[L5_Cd]
           ,sd.[ION_ID_Desc]);

		   --UPDATE [KEU_ZBB].[Ion_Hrchy_ZBB]
		   --SET [ION_ID] = REPLICATE('0', 12 - LEN([ION_ID])) + [ION_ID]

		   	SELECT @InsCount = @@ROWCOUNT

	PRINT 'Rows Inserted Into [Ion_Hrchy]  Table :';
	PRINT @InsCount;

END



GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_NBB_Bdg]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Atheeth Rao K
-- Create date: 13 july 2016
-- Description: Incremental load of Budget
-- =============================================

CREATE PROCEDURE [dbo].[USP_DQ_Load_NBB_Bdg] @InsCount INT OUTPUT
AS
BEGIN
	UPDATE [STG].[STG_Nbb_Bdg]
	SET [Cost_Ctr_Cd] = ltrim(rtrim([Cost_Ctr_Cd]))
		,[Cost_Curr_Typ] = ltrim(rtrim([Cost_Curr_Typ]))
		,[Acct_Cd] = ltrim(rtrim(Acct_Cd))
		 ,[Pd] = ltrim(rtrim(Pd))
		,[Amt] = ltrim(rtrim(Amt))
		,[Ver] = ltrim(rtrim(Ver))
		
UPDATE [STG].[STG_Nbb_Bdg] 
SET [Cost_Ctr_Cd]=
REPLICATE('0', 10 - LEN([Cost_Ctr_Cd])) + [Cost_Ctr_Cd]


	MERGE INTO [KEU_ZBB].[Nbb_Bdg] AS stm
	USING (
		SELECT Cost_Ctr_Cd, Cost_Curr_Typ, Acct_Cd, Pd, Amt, Ver
		FROM [STG].[STG_Nbb_Bdg]
		) AS sd
		ON stm.[Cost_Ctr_Cd] = sd.[Cost_Ctr_Cd]
			AND stm.[Acct_Cd] = sd.[Acct_Cd]
			AND stm.[Yr] = substring(sd.[Pd], 1, charindex('-', sd.[pd]) - 1)
			AND stm.[Pd] = substring(sd.[Pd], charindex('-', sd.[pd]) + 1, len(sd.[pd]))
			and stm.[Ver]=sd.ver
	WHEN MATCHED
		THEN
			UPDATE
			SET stm.[Cost_Ctr_Cd] = sd.[Cost_Ctr_Cd]
				,stm.Cost_Curr_Typ = sd.Cost_Curr_Typ
				,stm.[Acct_Cd] = sd.[Acct_Cd]
				,stm.[Yr] = substring(sd.[Pd], 1, charindex('-', sd.[pd]) - 1)
				,stm.[Pd] = substring(sd.[Pd], charindex('-', sd.[pd]) + 1, len(sd.[pd]))
				,stm.[Amt] = sd.[Amt]
				,stm.[Ver] = sd.[Ver]
	WHEN NOT MATCHED
		THEN
			INSERT (
				Cost_Ctr_Cd, Cost_Curr_Typ, Acct_Cd, Yr, Pd, Amt, Ver, DW_Cre_Ts, DW_Cre_Usr
				)
			VALUES (
				sd.Cost_Ctr_Cd
				,sd.Cost_Curr_Typ
				,sd.[Acct_Cd]
				,substring(sd.[Pd], 1, charindex('-', sd.[pd]) - 1)
				,substring(sd.[Pd], charindex('-', sd.[pd]) + 1, len(sd.[pd]))
				,sd.[Amt]
				,sd.[Ver],
				getdate(),
				User_name()
				);



	SELECT @InsCount = @@ROWCOUNT

	PRINT 'Rows Inserted Into [Nbb_Bdg]  Table :';
	PRINT @InsCount;
END



GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Usr_Sec]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Venkata
-- Create date: May 12, 2016
-- Description:	populate acct hirarchy from  ZBB_CST_CT Cost Element Hierarchy.
-- =============================================
CREATE PROCEDURE [dbo].[USP_DQ_Load_Usr_Sec]
AS
    BEGIN
        DECLARE @cnt INT;
       


-- Merge Statement
        MERGE KEU_FIN.[KEU_ZBB].[Usr_Sec] AS stm
        USING
            ( SELECT    [Usr_Nm] ,
                        [CC_Nbr] 
						
						 FROM   [STG].[STG_Usr_Sec]   stu,[KEU_ZBB].[CC_Hrchy_ZBB] cch where cch.[Lvl3_Cd]=stu.[Lvl3_Cd] and cch.[Lvl3_Desc]=stu.[Lvl3_Desc]
            ) AS sd
        ON stm.[Usr_NT_Id] = sd.[Usr_Nm]
		and sd.[CC_Nbr]=stm.[Cst_Ctr]
--WHEN MATCHED AND stm.ACCT_NBR &gt; 250 THEN DELETE
        WHEN MATCHED THEN
            UPDATE SET
                    stm.[Cst_Ctr] = sd.[CC_Nbr] ,
                    stm.DW_Mod_Usr = USER_NAME() ,
                    stm.DW_Mod_Ts = GETDATE(),
					stm.DW_Del_Bit=0,
					stm. DW_Del_Usr=null
					
        WHEN NOT MATCHED THEN
            INSERT ( [Usr_NT_Id] ,
                     [Cst_Ctr] ,
                     DW_Cre_Usr ,
                     DW_Cre_Ts
                   )
            VALUES ( sd.[Usr_Nm] ,
                      sd.[CC_Nbr] ,
					 USER_NAME() ,
                     GETDATE()
                   );


        SELECT  @cnt = COUNT([Usr_NT_Id])
        FROM    KEU_FIN.[KEU_ZBB].[Usr_Sec] a
        WHERE   a.[Usr_NT_Id] NOT IN ( SELECT  [Usr_Nm]
                                    FROM    [STG].[STG_Usr_Sec] );
        PRINT @cnt;

        UPDATE  KEU_FIN.[KEU_ZBB].[Usr_Sec]
        SET     DW_Del_Bit = 1 ,
                DW_Del_Usr = USER_NAME() ,
                DW_Del_Ts = GETDATE()
        WHERE   [Usr_NT_Id] NOT IN ( SELECT  [Usr_Nm]
                                    FROM    [STG].[STG_Usr_Sec]) 
									or 
					[Cst_Ctr] Not in 
									(select [CC_Nbr] from [STG].[STG_Usr_Sec]   stu,[KEU_ZBB].[CC_Hrchy_ZBB] cch 
									where cch.[Lvl3_Cd]=stu.[Lvl3_Cd] and cch.[Lvl3_Desc]=stu.[Lvl3_Desc])
			or( NOT EXISTS (
    SELECT * FROM [STG].[STG_Usr_Sec]   stu,[KEU_ZBB].[CC_Hrchy_ZBB] cch 
									where cch.[Lvl3_Cd]=stu.[Lvl3_Cd] and cch.[Lvl3_Desc]=stu.[Lvl3_Desc]
									and [Usr_NT_Id]=stu.[Usr_Nm] and cch.[CC_Nbr]=[Cst_Ctr]
									)
  )
						

    END;


	

GO
/****** Object:  Table [dbo].[KEU_BB_YEAR_VERSION]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KEU_BB_YEAR_VERSION](
	[SEQ_NUM] [int] NULL,
	[PD] [varchar](4) NULL,
	[VER] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KEU_NBB_YEAR_VERSION]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KEU_NBB_YEAR_VERSION](
	[SEQ_NUM] [int] NULL,
	[PD] [varchar](4) NULL,
	[VER] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [KEU_ZBB].[Acct_Hrchy_ZBB]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [KEU_ZBB].[Acct_Hrchy_ZBB](
	[GL_Acct] [char](10) NOT NULL,
	[Acct_Desc] [nchar](60) NULL,
	[Acct_Categ] [char](40) NULL,
	[Acct_Sub_Categ] [char](40) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [PK_Acct_Hrchy] PRIMARY KEY CLUSTERED 
(
	[GL_Acct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [KEU_ZBB].[BB_Ion_Bdg]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [KEU_ZBB].[BB_Ion_Bdg](
	[ION_Cd] [varchar](12) NOT NULL,
	[ION_Curr_Typ] [varchar](3) NULL,
	[Acct_Cd] [varchar](10) NOT NULL,
	[Yr] [decimal](4, 0) NOT NULL,
	[Pd] [decimal](3, 0) NOT NULL,
	[Amt] [decimal](18, 2) NULL,
	[Ver] [varchar](10) NOT NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [PK_BB_Ion_Bdg] PRIMARY KEY NONCLUSTERED 
(
	[Ver] ASC,
	[ION_Cd] ASC,
	[Acct_Cd] ASC,
	[Yr] ASC,
	[Pd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [KEU_ZBB].[CC_Hrchy_ZBB]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [KEU_ZBB].[CC_Hrchy_ZBB](
	[CC_Nbr] [char](10) NOT NULL,
	[CC_Desc] [varchar](50) NULL,
	[Lvl0_Desc] [char](15) NULL,
	[Lvl1_Desc] [char](75) NULL,
	[Lvl1_Cd] [char](12) NOT NULL,
	[Lvl2_Desc] [char](75) NULL,
	[Lvl2_Cd] [char](12) NOT NULL,
	[Lvl3_Desc] [char](75) NULL,
	[Lvl3_Cd] [char](12) NOT NULL,
	[Lvl4_Desc] [char](75) NULL,
	[Lvl4_Cd] [char](12) NOT NULL,
	[Lvl5_Desc] [char](75) NULL,
	[Lvl5_Cd] [char](12) NOT NULL,
	[Cst_Ctr_ID_Desc] [char](75) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [PK_CC_Hrchy] PRIMARY KEY CLUSTERED 
(
	[CC_Nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [KEU_ZBB].[Curr_Exchng_Fmt]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [KEU_ZBB].[Curr_Exchng_Fmt](
	[Ver] [varchar](10) NOT NULL,
	[Fr_Curr] [char](3) NOT NULL,
	[To_Curr] [char](3) NOT NULL,
	[Yr] [decimal](4, 0) NOT NULL,
	[Pd] [decimal](3, 0) NOT NULL,
	[Fctr] [decimal](18, 12) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [PK_Curr_Exchng_Fmt] PRIMARY KEY CLUSTERED 
(
	[Ver] ASC,
	[Fr_Curr] ASC,
	[To_Curr] ASC,
	[Yr] ASC,
	[Pd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [KEU_ZBB].[Ion_Hrchy_ZBB]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [KEU_ZBB].[Ion_Hrchy_ZBB](
	[ION_ID] [char](20) NOT NULL,
	[ION_DESC] [varchar](50) NULL,
	[L0_Desc] [char](75) NULL,
	[L1_Desc] [char](75) NULL,
	[L2_Desc] [char](75) NULL,
	[L3_Desc] [char](75) NULL,
	[L4_Desc] [char](75) NULL,
	[L5_Desc] [char](75) NULL,
	[L1_Cd] [char](12) NOT NULL,
	[L2_Cd] [char](12) NOT NULL,
	[L3_Cd] [char](12) NOT NULL,
	[L4_Cd] [char](12) NOT NULL,
	[L5_Cd] [char](12) NOT NULL,
	[ION_ID_Desc] [char](75) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [Idx_Ion_Hrchy] PRIMARY KEY CLUSTERED 
(
	[ION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [KEU_ZBB].[Nbb_Bdg]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [KEU_ZBB].[Nbb_Bdg](
	[Cost_Ctr_Cd] [char](10) NOT NULL,
	[Cost_Curr_Typ] [char](3) NOT NULL,
	[Acct_Cd] [char](10) NOT NULL,
	[Yr] [decimal](4, 0) NOT NULL,
	[Pd] [decimal](3, 0) NOT NULL,
	[Amt] [decimal](18, 2) NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [KEU_ZBB].[Nbb_Bdg] ADD [Ver] [varchar](10) NOT NULL
ALTER TABLE [KEU_ZBB].[Nbb_Bdg] ADD [DW_Cre_Ts] [datetime] NOT NULL
ALTER TABLE [KEU_ZBB].[Nbb_Bdg] ADD [DW_Cre_Usr] [varchar](50) NOT NULL
ALTER TABLE [KEU_ZBB].[Nbb_Bdg] ADD [DW_Mod_Ts] [datetime] NULL
ALTER TABLE [KEU_ZBB].[Nbb_Bdg] ADD [DW_Mod_Usr] [varchar](50) NULL
ALTER TABLE [KEU_ZBB].[Nbb_Bdg] ADD [DW_Del_Bit] [char](1) NOT NULL
ALTER TABLE [KEU_ZBB].[Nbb_Bdg] ADD [DW_Del_Usr] [varchar](50) NULL
ALTER TABLE [KEU_ZBB].[Nbb_Bdg] ADD [DW_Del_Ts] [datetime] NULL
 CONSTRAINT [PK__Nbb_Bdg] PRIMARY KEY CLUSTERED 
(
	[Cost_Ctr_Cd] ASC,
	[Acct_Cd] ASC,
	[Yr] ASC,
	[Pd] ASC,
	[Ver] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [KEU_ZBB].[Usr_Sec]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [KEU_ZBB].[Usr_Sec](
	[Usr_NT_Id] [nvarchar](25) NOT NULL,
	[Cst_Ctr] [char](10) NOT NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [PK_Usr_Sec] PRIMARY KEY CLUSTERED 
(
	[Usr_NT_Id] ASC,
	[Cst_Ctr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[CURR_EXCHNG_FMT_SRC_1]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[CURR_EXCHNG_FMT_SRC_1](
	[VER] [varchar](20) NULL,
	[FR_CURR] [varchar](3) NULL,
	[TO_CURR] [varchar](3) NULL,
	[YR] [varchar](10) NULL,
	[PD] [int] NULL,
	[FCTR] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[FISC_CAL]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[FISC_CAL](
	[FISC_YR] [decimal](4, 0) NULL,
	[FISC_QTR] [decimal](3, 0) NULL,
	[FISC_PD] [decimal](3, 0) NULL,
	[FISC_WK] [decimal](3, 0) NULL,
	[FISC_WK_STRT_DT] [date] NULL,
	[FISC_WK_END_DT] [date] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [STG].[GLT0]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[GLT0](
	[RCLNT] [varchar](3) NULL,
	[RLDNR] [varchar](2) NULL,
	[RRCTY] [varchar](1) NULL,
	[RVERS] [varchar](3) NULL,
	[BUKRS] [varchar](4) NULL,
	[RYEAR] [decimal](4, 0) NULL,
	[RACCT] [varchar](10) NULL,
	[RBUSA] [varchar](4) NULL,
	[RTCUR] [varchar](5) NULL,
	[DRCRK] [varchar](1) NULL,
	[RPMAX] [decimal](3, 0) NULL,
	[TSLVT] [decimal](15, 2) NULL,
	[TSL01] [decimal](15, 2) NULL,
	[TSL02] [decimal](15, 2) NULL,
	[TSL03] [decimal](15, 2) NULL,
	[TSL04] [decimal](15, 2) NULL,
	[TSL05] [decimal](15, 2) NULL,
	[TSL06] [decimal](15, 2) NULL,
	[TSL07] [decimal](15, 2) NULL,
	[TSL08] [decimal](15, 2) NULL,
	[TSL09] [decimal](15, 2) NULL,
	[TSL10] [decimal](15, 2) NULL,
	[TSL11] [decimal](15, 2) NULL,
	[TSL12] [decimal](15, 2) NULL,
	[TSL13] [decimal](15, 2) NULL,
	[TSL14] [decimal](15, 2) NULL,
	[TSL15] [decimal](15, 2) NULL,
	[TSL16] [decimal](15, 2) NULL,
	[HSLVT] [decimal](15, 2) NULL,
	[HSL01] [decimal](15, 2) NULL,
	[HSL02] [decimal](15, 2) NULL,
	[HSL03] [decimal](15, 2) NULL,
	[HSL04] [decimal](15, 2) NULL,
	[HSL05] [decimal](15, 2) NULL,
	[HSL06] [decimal](15, 2) NULL,
	[HSL07] [decimal](15, 2) NULL,
	[HSL08] [decimal](15, 2) NULL,
	[HSL09] [decimal](15, 2) NULL,
	[HSL10] [decimal](15, 2) NULL,
	[HSL11] [decimal](15, 2) NULL,
	[HSL12] [decimal](15, 2) NULL,
	[HSL13] [decimal](15, 2) NULL,
	[HSL14] [decimal](15, 2) NULL,
	[HSL15] [decimal](15, 2) NULL,
	[HSL16] [decimal](15, 2) NULL,
	[CSPRED] [varchar](4) NULL,
	[KSLVT] [decimal](15, 2) NULL,
	[KSL01] [decimal](15, 2) NULL,
	[KSL02] [decimal](15, 2) NULL,
	[KSL03] [decimal](15, 2) NULL,
	[KSL04] [decimal](15, 2) NULL,
	[KSL05] [decimal](15, 2) NULL,
	[KSL06] [decimal](15, 2) NULL,
	[KSL07] [decimal](15, 2) NULL,
	[KSL08] [decimal](15, 2) NULL,
	[KSL09] [decimal](15, 2) NULL,
	[KSL10] [decimal](15, 2) NULL,
	[KSL11] [decimal](15, 2) NULL,
	[KSL12] [decimal](15, 2) NULL,
	[KSL13] [decimal](15, 2) NULL,
	[KSL14] [decimal](15, 2) NULL,
	[KSL15] [decimal](15, 2) NULL,
	[KSL16] [decimal](15, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_BB_Ion_Bdg]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[STG_BB_Ion_Bdg](
	[ION_Cd] [varchar](12) NOT NULL,
	[ION_Curr_Typ] [varchar](3) NULL,
	[Acct_Cd] [varchar](10) NOT NULL,
	[Pd] [varchar](10) NOT NULL,
	[Amt] [decimal](18, 2) NULL,
	[Ver] [varchar](10) NOT NULL,
	[Error_Flag] [char](1) NULL,
 CONSTRAINT [PK__STG_BB_I__576E7258ECE250D3] PRIMARY KEY CLUSTERED 
(
	[Ver] ASC,
	[ION_Cd] ASC,
	[Acct_Cd] ASC,
	[Pd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_BB_ION_BDG_1]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[STG_BB_ION_BDG_1](
	[ION_CD] [nvarchar](12) NULL,
	[ION_CURR_TYP] [nvarchar](3) NULL,
	[ACCT_CD] [nvarchar](10) NULL,
	[PD] [nvarchar](10) NULL,
	[AMT] [decimal](38, 2) NULL,
	[VER] [nvarchar](30) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [STG].[STG_BB_ION_BDG_3_9]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_BB_ION_BDG_3_9](
	[ION_CD] [varchar](12) NULL,
	[ION_CURR_TYP] [varchar](3) NULL,
	[ACCT_CD] [varchar](10) NULL,
	[PD] [varchar](10) NULL,
	[AMT] [decimal](38, 2) NULL,
	[VER] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_BB_ION_BDG_6_6]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_BB_ION_BDG_6_6](
	[ION_CD] [varchar](12) NULL,
	[ION_CURR_TYP] [varchar](3) NULL,
	[ACCT_CD] [varchar](10) NULL,
	[PD] [varchar](10) NULL,
	[AMT] [decimal](38, 2) NULL,
	[VER] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_BB_ION_BDG_9_3]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_BB_ION_BDG_9_3](
	[ION_CD] [varchar](12) NULL,
	[ION_CURR_TYP] [varchar](3) NULL,
	[ACCT_CD] [varchar](10) NULL,
	[PD] [varchar](10) NULL,
	[AMT] [decimal](38, 2) NULL,
	[VER] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_CURR_EXCH_3_9]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_CURR_EXCH_3_9](
	[VER] [varchar](20) NULL,
	[FR_CURR] [varchar](3) NULL,
	[TO_CURR] [varchar](3) NULL,
	[YR] [varchar](10) NULL,
	[PD] [int] NULL,
	[FCTR] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_CURR_EXCH_6_6]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_CURR_EXCH_6_6](
	[VER] [varchar](20) NULL,
	[FR_CURR] [varchar](3) NULL,
	[TO_CURR] [varchar](3) NULL,
	[YR] [varchar](10) NULL,
	[PD] [int] NULL,
	[FCTR] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_CURR_EXCH_9_3]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_CURR_EXCH_9_3](
	[VER] [varchar](20) NULL,
	[FR_CURR] [varchar](3) NULL,
	[TO_CURR] [varchar](3) NULL,
	[YR] [varchar](10) NULL,
	[PD] [int] NULL,
	[FCTR] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_Curr_Exchng_Fmt]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[STG_Curr_Exchng_Fmt](
	[Ver] [nvarchar](20) NOT NULL,
	[Fr_Curr] [char](3) NOT NULL,
	[To_Curr] [char](3) NOT NULL,
	[Yr] [nvarchar](10) NOT NULL,
	[Pd] [int] NOT NULL,
	[Fctr] [decimal](18, 12) NULL,
	[Warning_Flag] [char](1) NULL,
	[Error_Flag] [char](1) NULL,
 CONSTRAINT [PK_STG_Curr_Exchng_Fmt] PRIMARY KEY CLUSTERED 
(
	[Ver] ASC,
	[Fr_Curr] ASC,
	[To_Curr] ASC,
	[Yr] ASC,
	[Pd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_Ion_Hrchy_ZBB]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[STG_Ion_Hrchy_ZBB](
	[ION_ID] [nvarchar](25) NOT NULL,
	[ION_DESC] [nvarchar](500) NULL,
	[L0_Desc] [nvarchar](500) NULL,
	[L1_Desc] [nvarchar](500) NULL,
	[L2_Desc] [nvarchar](500) NULL,
	[L3_Desc] [nvarchar](500) NULL,
	[L4_Desc] [nvarchar](500) NULL,
	[L5_Desc] [nvarchar](500) NULL,
	[L1_Cd] [nvarchar](20) NOT NULL,
	[L2_Cd] [nvarchar](20) NOT NULL,
	[L3_Cd] [nvarchar](20) NOT NULL,
	[L4_Cd] [nvarchar](20) NOT NULL,
	[L5_Cd] [nvarchar](20) NOT NULL,
	[ION_ID_Desc] [nvarchar](500) NULL,
	[Warning_Flag] [char](1) NULL,
	[Error_Flag] [char](1) NULL,
 CONSTRAINT [Pk_STG_Ion_Hrchy] PRIMARY KEY CLUSTERED 
(
	[ION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_Nbb_Bdg]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[STG_Nbb_Bdg](
	[Cost_Ctr_Cd] [char](10) NULL,
	[Cost_Curr_Typ] [char](3) NULL,
	[Acct_Cd] [char](10) NULL,
	[Pd] [varchar](10) NOT NULL,
	[Amt] [decimal](18, 2) NULL,
	[Ver] [nvarchar](10) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_NBB_BDG_1]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[STG_NBB_BDG_1](
	[COST_CTR_CD] [nvarchar](10) NULL,
	[COST_CURR_TYP] [nvarchar](3) NULL,
	[ACCT_CD] [nvarchar](10) NULL,
	[PD] [nvarchar](10) NULL,
	[AMT] [float] NULL,
	[VER] [nvarchar](30) NULL,
	[DW_CRE_TS] [datetime2](7) NULL,
	[DW_CRE_USR] [nvarchar](50) NULL,
	[DW_DEL_BIT] [nvarchar](1) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [STG].[STG_NBB_BDG_3_9]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_NBB_BDG_3_9](
	[COST_CTR_CD] [varchar](10) NULL,
	[COST_CURR_TYP] [varchar](3) NULL,
	[ACCT_CD] [varchar](10) NULL,
	[PD] [varchar](10) NULL,
	[AMT] [float] NULL,
	[VER] [varchar](30) NULL,
	[DW_CRE_TS] [datetime2](7) NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_NBB_BDG_6_6]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_NBB_BDG_6_6](
	[COST_CTR_CD] [varchar](10) NULL,
	[COST_CURR_TYP] [varchar](3) NULL,
	[ACCT_CD] [varchar](10) NULL,
	[PD] [varchar](10) NULL,
	[AMT] [float] NULL,
	[VER] [varchar](30) NULL,
	[DW_CRE_TS] [datetime2](7) NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_NBB_BDG_9_3]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STG_NBB_BDG_9_3](
	[COST_CTR_CD] [varchar](10) NULL,
	[COST_CURR_TYP] [varchar](3) NULL,
	[ACCT_CD] [varchar](10) NULL,
	[PD] [varchar](10) NULL,
	[AMT] [float] NULL,
	[VER] [varchar](30) NULL,
	[DW_CRE_TS] [datetime2](7) NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STG_Usr_Sec]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[STG_Usr_Sec](
	[Usr_Nm] [nvarchar](25) NOT NULL,
	[Lvl3_Cd] [char](12) NOT NULL,
	[Lvl3_Desc] [char](75) NULL,
	[DW_Cre_Ts] [datetime] NOT NULL,
	[DW_Cre_Usr] [varchar](50) NOT NULL,
	[DW_Mod_Ts] [datetime] NULL,
	[DW_Mod_Usr] [varchar](50) NULL,
	[DW_Del_Bit] [char](1) NOT NULL,
	[DW_Del_Usr] [varchar](50) NULL,
	[DW_Del_Ts] [datetime] NULL,
 CONSTRAINT [Pk_STG_Usr_Sec] PRIMARY KEY CLUSTERED 
(
	[Usr_Nm] ASC,
	[Lvl3_Cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TMP_TST]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TMP_TST](
	[USER_NAME] [varchar](255) NULL,
	[LEVEL3_CD] [varchar](255) NULL,
	[LEVEL3_DESCRIPTION] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [KEU_ZBB].[UVW_BB_Ion_Bdg]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [KEU_ZBB].[UVW_BB_Ion_Bdg]
AS
SELECT 
       [ION_Cd]       AS [ION_Cd]
      ,[ION_Curr_Typ] AS [ION_Curr_Typ]
      ,[Acct_Cd]      AS [Acct_Cd]
      ,[Pd]           AS [Pd]
	  ,[Yr]           As [Yr]
      ,[Amt]          AS [Amt]
      ,[Ver]          AS [Ver]
FROM [KEU_FIN].[KEU_ZBB].[BB_Ion_Bdg]





GO
/****** Object:  View [dbo].[UVW_FISC_CAL]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[UVW_FISC_CAL]
AS
select * from STG.FISC_CAL

GO
/****** Object:  View [KEU_ZBB].[UVW_BB_Actl_Bdg]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [KEU_ZBB].[UVW_BB_Actl_Bdg]
AS
WITH CTE_T
AS(
SELECT DISTINCT [FISC_YR] ,[FISC_PD] 
,(SELECT replace([FISC_PD] -1,0,12) FROM KNA_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Closed_Pd
,(SELECT case when [FISC_PD]=1 then year(getdate())-1  else  year(getdate())  end [FISC_YR] FROM KNA_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Yr
FROM dbo.UVW_FISC_CAL WITH (NOLOCK) 
WHERE  [FISC_YR] = (SELECT [FISC_YR] -1 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR  [FISC_YR] = (SELECT [FISC_YR] -2 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR (([FISC_YR] = (SELECT [FISC_YR]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]))
AND ([FISC_PD] < (SELECT [FISC_PD]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])))

),
CTE
AS (
	SELECT COEP.GJAHR AS Fisc_Yr
		,COEP.PERIO AS Pd1
		,AUFK.KOSTV AS Resp_Cost_Ctr
		,AUFK.AUFNR AS Ordr_Nbr
		,COEP.KSTAR  AS GL_ACCT
		,COEP.OWAER  COLLATE Database_Default AS Curr_Key
		,COEP.BUKRS AS Co_Cd
		,T001.BUTXT AS Co_Cd_Desc
		,Curr_Fisc_Closed_Pd
		,Curr_Fisc_yr
		,SUM(COEP.WTGBTR) AS Tot_Val_Trns_Curr
		,SUM(COEP.WOGBTR) AS Tot_Val_Obj_Curr
		,SUM(COEP.WKGBTR) AS Tot_Val_Cntl_Area_Curr
		,SUM(COEP.MBGBTR) AS Tot_Qty_Entr
		,SUM(COEP.WOGBTR) AS Tot_Val_Obj_Curr_USD
	FROM KEU_ECC.dbo.COEP COEP WITH (NOLOCK)
	INNER JOIN CTE_T ON [Fisc_Yr] =COEP.GJAHR   AND [Fisc_Pd]=COEP.PERIO
	LEFT JOIN KEU_ECC.dbo.AUFK AUFK WITH (NOLOCK) ON AUFK.OBJNR = COEP.OBJNR
	LEFT JOIN KEU_ECC.dbo.T001 ON t001.BUKRS COLLATE DATABASE_DEFAULT = COEP.BUKRS COLLATE DATABASE_DEFAULT
	WHERE COEP.KOKRS NOT IN ('KEZA','PIZA')
		AND ((	coep.OBJNR >= 'OR000061000000'
				AND coep.OBJNR <= 'OR000066999999')
			AND coep.VERSN = '000'
			)
		--AND coep.GJAHR BETWEEN (YEAR(GETDATE()) - 2)
		--	AND (YEAR(GETDATE()))
	GROUP BY COEP.GJAHR 
		,COEP.PERIO 
		,AUFK.KOSTV
		,AUFK.AUFNR 
		,COEP.KSTAR  
		,COEP.OWAER 
		,COEP.BUKRS 
		,T001.BUTXT
		,Curr_Fisc_Closed_Pd
		,Curr_Fisc_yr
		
			),
CTE1
AS (
	SELECT  ION_Cd,ION_Curr_Typ
			,Acct_Cd,Pd,Yr
			,[Actual],[Budget],[6&6],[3&9],[9&3]
	FROM (
		SELECT ION_Cd
			,ION_Curr_Typ
			,Acct_Cd
			,Pd
			,Yr
			,ISNULL(Amt,0)Amt
			,Ver
		FROM [KEU_ZBB].[UVW_BB_Ion_Bdg] WITH (NOLOCK)
		WHERE Yr IN  ( SELECT DISTINCT Fisc_Yr FROM CTE_T)
	--INNER JOIN CTE_T ON [Fisc_Yr] =Yr   AND [Fisc_Pd]=Pd
		--WHERE yr BETWEEN (YEAR(GETDATE()) - 2)
		--		AND (YEAR(GETDATE())) 
		) d
	pivot(SUM(Amt) FOR Ver IN (
				[Actual]
				,[Budget]
				,[6&6]
				,[3&9]
				,[9&3]
				)) piv
	)

,CTEN
AS (
       SELECT a.Yr
       ,a.pd Pd
       ,ISNULL(a.ION_Cd,b.AUFNR) Ordr_Nbr
       ,a.Acct_Cd  as  Acct_Cd
       ,a.ION_Curr_Typ
       ,b.KOSTV AS Resp_Cost_Ctr         
		,ISNULL ([Actual],0)  AS 'Bdg_Actl_Amt'
		,ISNULL([Budget],0)  AS 'Bdg_Bdg_Amt'
		,ISNULL([6&6],0)  AS 'Bdg_6&6_Amt'
		,ISNULL([3&9],0)  AS 'Bdg_3&9_Amt'
		,ISNULL([9&3],0)  AS 'Bdg_9&3_Amt'

       FROM CTE1 a
       LEFT JOIN KEU_ECC.dbo.AUFK b ON a.ION_Cd COLLATE Database_Default = b.AUFNR COLLATE Database_Default
       
       )
,CTE2
AS (
	SELECT ISNULL(Fisc_Yr, Yr) Yr
	,ISNULL(Pd1, pd) Pd
	,ISNULL(a.Ordr_Nbr, b.Ordr_Nbr) Ordr_Nbr
	,ISNULL(GL_ACCT, Acct_Cd) Acct_Cd
	,ISNULL(Curr_Key, ION_Curr_Typ) Curr_Key
	,Curr_Key as Actl_Cur_Key
	,ION_Curr_Typ as Bdg_Cur_Key
	,ISNULL(a.Resp_Cost_Ctr,b.Resp_Cost_Ctr) Resp_Cost_Ctr
	,ISNULL(Tot_Val_Obj_Curr,0)Tot_Val_Obj_Curr
	,a.Co_Cd
	,a.Co_Cd_Desc
	,Curr_Fisc_Closed_Pd
	,Curr_Fisc_yr
	,[Bdg_Actl_Amt]
	,[Bdg_Bdg_Amt]
	,[Bdg_6&6_Amt]
	,[Bdg_3&9_Amt]
	,[Bdg_9&3_Amt]
	,CASE  when (Curr_Key IS NULL) OR (ION_Curr_Typ IS NULL)  THEN NULL
		  when Curr_Key COLLATE Database_Default =ION_Curr_Typ COLLATE Database_Default THEN 'Y'
	      else'N'
	END as 'Actl_Bdg_Curr_Match'
	FROM CTE a
	FULL JOIN CTEN  b ON a.Ordr_Nbr COLLATE Database_Default = b.Ordr_Nbr COLLATE Database_Default
		AND a.Fisc_Yr = b.Yr
		AND a.Pd1 = b.Pd
		AND a.GL_ACCT COLLATE Database_Default = b.Acct_Cd COLLATE Database_Default
			)
SELECT  a.Yr
	,a.Pd
	,a.Ordr_Nbr
	,a.Acct_Cd
	,a.Curr_Key
	,a.Actl_Cur_Key
	,a.Bdg_Cur_Key
	,a.Resp_Cost_Ctr
	,ISNULL(a.Co_Cd,b.BUKRS) AS Co_Cd
	,isnull(a.Co_Cd_Desc,t001.BUTXT) AS Co_Cd_Desc
	--,a.Co_Cd
	--,a.Co_Cd_Desc
	,isnull(a.Curr_Fisc_Closed_Pd,t.Curr_Fisc_Closed_Pd)Curr_Fisc_Closed_Pd
	,isnull(a.Curr_Fisc_yr ,t.Curr_Fisc_yr)Curr_Fisc_yr
	,isnull(a.Tot_Val_Obj_Curr,0)Tot_Val_Obj_Curr
	,a.Actl_Bdg_Curr_Match
	,[Acct_Desc]
	,[Acct_Categ]
	,[Acct_Sub_Categ]
	,[Cc_Desc]
	,[Lvl0_Desc]
	,[Lvl1_Desc]
	,[Lvl1_Cd]
	,[Lvl2_Desc]
	,[Lvl2_Cd]
	,[Lvl3_Desc]
	,[Lvl3_Cd]
	,[Lvl4_Desc]
	,[Lvl4_Cd]
	,[Lvl5_Desc]
	,[Lvl5_Cd]
	,[Ion_Desc]
	,[L0_Desc]
	,[L1_Desc]
	,[L2_Desc]
	,[L3_Desc]
	,[L4_Desc]
	,[L5_Desc]
	,[L1_Cd]
	,[L2_Cd]
	,[L3_Cd]
	,[L4_Cd]
	,[L5_Cd]
	,[Ion_Id_Desc]
	,[ION_Id]
	,isnull([Bdg_Actl_Amt],0)[Bdg_Actl_Amt]
	,isnull([Bdg_Bdg_Amt],0)[Bdg_Bdg_Amt]
	,isnull([Bdg_6&6_Amt],0)[Bdg_6&6_Amt]
	,isnull([Bdg_3&9_Amt],0)[Bdg_3&9_Amt]
	,isnull([Bdg_9&3_Amt],0)[Bdg_9&3_Amt]
	

FROM CTE2 a
	INNER JOIN KEU_FIN.KEU_ZBB.CC_Hrchy_ZBB CCH WITH (NOLOCK) ON CCH.CC_Nbr COLLATE Database_Default = a.Resp_Cost_Ctr COLLATE Database_Default and CCH.[DW_Del_Bit] = 0
	-- INNER JOIN KEU_FIN.KEU_ZBB.CC_Hrchy_ZBB CCH WITH (NOLOCK) ON CCH.CC_Nbr COLLATE Database_Default = a.Resp_Cost_Ctr COLLATE Database_Default and CCH.[DW_Del_Bit] = 0
	LEFT JOIN KEU_FIN.KEU_ZBB.ION_Hrchy_ZBB ION WITH (NOLOCK) ON ION.ION_ID COLLATE Database_Default = Ordr_Nbr COLLATE Database_Default
	INNER JOIN KEU_FIN.KEU_ZBB.Acct_Hrchy_ZBB ACNT WITH (NOLOCK) ON ACNT.GL_ACCT COLLATE Database_Default = Acct_Cd COLLATE Database_Default AND ACNT.[DW_Del_Bit] = 0
	left outer join CTE_T t on a.Yr=t.Fisc_Yr and a.pd=[Fisc_Pd]
	left join KEU_ECC.dbo.CSKS b on a.Resp_Cost_Ctr COLLATE DATABASE_DEFAULT= b.KOSTL  COLLATE DATABASE_DEFAULT
	left outer join KEU_ECC.dbo.T001 t001 on  t001.BUKRS COLLATE DATABASE_DEFAULT = b.BUKRS COLLATE DATABASE_DEFAULT








GO
/****** Object:  View [KEU_ZBB].[Curr_Exchng_Fmt_Flat]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [KEU_ZBB].[Curr_Exchng_Fmt_Flat]
AS
SELECT [Yr]      
      ,[Pd]      
      ,[Fr_Curr] COLLATE DATABASE_DEFAULT AS [Fr_Curr]
	  ,SUM(CASE WHEN [Ver] = 'Actual'  AND [To_Curr]  = 'EUR' THEN ISNULL([Fctr],0) ELSE 0 END) AS 'Fctr_Actual_EUR'
	  ,SUM(CASE WHEN [Ver] = 'Budget'  AND [To_Curr]  = 'EUR' THEN ISNULL([Fctr],0) ELSE 0 END) AS 'Fctr_Budget_EUR'
	  ,SUM(CASE WHEN [Ver] = '3&9'     AND [To_Curr]  = 'EUR' THEN ISNULL([Fctr],0) ELSE 0 END) AS 'Fctr_3&9_EUR'
	  ,SUM(CASE WHEN [Ver] = '6&6'     AND [To_Curr]  = 'EUR' THEN ISNULL([Fctr],0) ELSE 0 END) AS 'Fctr_6&6_EUR'
	  ,SUM(CASE WHEN [Ver] = '9&3'     AND [To_Curr]  = 'EUR' THEN ISNULL([Fctr],0) ELSE 0 END) AS 'Fctr_9&3_EUR'
	  ,SUM(CASE WHEN [Ver] = 'Actual'  AND [To_Curr]  = 'USD' THEN ISNULL([Fctr],0) ELSE 0 END) AS 'Fctr_Actual_USD'
	  ,SUM(CASE WHEN [Ver] = 'Budget'  AND [To_Curr]  = 'USD' THEN ISNULL([Fctr],0) ELSE 0 END) AS 'Fctr_Budget_USD'
	  ,SUM(CASE WHEN [Ver] = '3&9'     AND [To_Curr]  = 'USD' THEN ISNULL([Fctr],0) ELSE 0 END) AS 'Fctr_3&9_USD'
	  ,SUM(CASE WHEN [Ver] = '6&6'     AND [To_Curr]  = 'USD' THEN ISNULL([Fctr],0) ELSE 0 END) AS 'Fctr_6&6_USD'
	  ,SUM(CASE WHEN [Ver] = '9&3'     AND [To_Curr]  = 'USD' THEN ISNULL([Fctr],0) ELSE 0 END) AS 'Fctr_9&3_USD'
	  ,SUM(CASE WHEN [Ver] = 'Actual'  AND [To_Curr]  = 'GBP' THEN ISNULL([Fctr],0) ELSE 0 END) AS 'Fctr_Actual_GBP'           
	  ,SUM(CASE WHEN [Ver] = 'Budget'  AND [To_Curr]  = 'GBP' THEN ISNULL([Fctr],0) ELSE 0 END) AS 'Fctr_Budget_GBP'
	  ,SUM(CASE WHEN [Ver] = '3&9'     AND [To_Curr]  = 'GBP' THEN ISNULL([Fctr],0) ELSE 0 END) AS 'Fctr_3&9_GBP'
	  ,SUM(CASE WHEN [Ver] = '6&6'     AND [To_Curr]  = 'GBP' THEN ISNULL([Fctr],0) ELSE 0 END) AS 'Fctr_6&6_GBP'
	  ,SUM(CASE WHEN [Ver] = '9&3'     AND [To_Curr]  = 'GBP' THEN ISNULL([Fctr],0) ELSE 0 END) AS 'Fctr_9&3_GBP'
	  
FROM [KEU_FIN].[KEU_ZBB].[Curr_Exchng_Fmt]  (NOLOCK)
GROUP BY  [Yr]      
         ,[Pd]      
         ,[Fr_Curr] 


GO
/****** Object:  View [KEU_ZBB].[UVW_BB_Detl]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [KEU_ZBB].[UVW_BB_Detl] AS
WITH CTE_T
AS(
SELECT DISTINCT [FISC_YR] ,[FISC_PD] 
,(SELECT replace([FISC_PD] -1,0,12) FROM KNA_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Closed_Pd
,(SELECT case when [FISC_PD]=1 then year(getdate())-1  else  year(getdate())  end [FISC_YR] FROM KNA_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Yr
FROM dbo.UVW_FISC_CAL WITH (NOLOCK) 
WHERE  [FISC_YR] = (SELECT [FISC_YR] -1 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR  [FISC_YR] = (SELECT [FISC_YR] -2 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR (([FISC_YR] = (SELECT [FISC_YR]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]))
AND ([FISC_PD] < (SELECT [FISC_PD]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])))
 )
SELECT * FROM 
(
SELECT 
			COEP.KOKRS               AS Co_Area, 
			COEP.PERIO               AS Pd,
			COEP.WTGBTR              AS Tot_Val_Trns_Curr,
			COEP.WOGBTR              AS Tot_Val_Obj_Curr,
			COEP.WKGBTR              AS Tot_Val_Cntl_Area_Curr,
			COEP.MBGBTR              AS Tot_Qty_Entr,
			COEP.LEDNR               AS Led_Cntl_Obj,
			COEP.OBJNR               AS Obj_Nbr, 
			COEP.GJAHR               AS Fisc_Yr,
			COEP.WRTTP               AS Val_Typ,
			COEP.KSTAR               AS Cost_Ele, 
			COEP.VRGNG               AS Co_Bus_Trns,
			COEP.BEKNZ               AS Db_Cr_Ind,
			COEP.TWAER               AS Txn_Curr, 
			COEP.OWAER               AS Curr_Key,
			COEP.GKONT               AS Offst_Acct_Nbr,
			COEP.GKOAR               AS Offst_Acct_Typ, 
			COEP.WERKS               AS Plnt,
			COEP.EBELN               AS Pur_Doc_Nbr,
			COEP.EBELP               AS Itm_Nbr_Pur_Doc, 
			EKKO.LIFNR               AS Vend_Nbr,
			LFA1.NAME1               AS Vend_Nm, 
			EKKO.LIFRE               AS Invc_Prt_Nbr,
			LFA1.NAME1               AS Invc_Prt_Nm,
			AUFK.AUFNR               AS Ordr_Nbr,
			AUFK.AUART               AS Ordr_Typ,
			AUFK.AUTYP               AS Ordr_Catg,
			AUFK.KTEXT               AS Ordr_Nm,
			AUFK.KOSTV               AS Resp_Cost_Ctr,
			AUFK.KSTAR               AS Sett_Cost_Ele,
			AUFK.KOSTL               AS Sett_Cost_Ctr,
			AUFK.SAKNR               AS Gl_Acct_Sett,
			AUFK.USER2               AS Pers_Resp,
			AUFK.PRCTR               AS Prft_Ctr,
			CEPCT.KTEXT              AS Prft_Ctr_Nm,
			COEP.BUKRS               AS Co_Cd, 
			COEP.BELNR               AS Doc_Nbr,
			COEP.VERSN               AS Vrsn,
			T001.BUTXT               AS Co_Cd_Desc,
			ACNT.Acct_Desc           AS Acct_Desc, 
			ACNT.Acct_Categ          AS Acct_Categ, 
			ACNT.Acct_Sub_Categ      AS Acct_Sub_Categ, 
			CCH.CC_Desc              AS Cc_Desc, 
			CCH.Lvl0_Desc            AS Lvl0_Desc, 
			CCH.Lvl1_Desc            AS Lvl1_Desc, 
			CCH.Lvl1_Cd              AS Lvl1_Cd, 
			CCH.Lvl2_Desc            AS Lvl2_Desc, 
			CCH.Lvl2_Cd              AS Lvl2_Cd, 
			CCH.Lvl3_Desc            AS Lvl3_Desc, 
			CCH.Lvl3_Cd              AS Lvl3_Cd, 
			CCH.Lvl4_Desc            AS Lvl4_Desc, 
			CCH.Lvl4_Cd              AS Lvl4_Cd, 
			CCH.Lvl5_Desc            AS Lvl5_Desc, 
			CCH.Lvl5_Cd              AS Lvl5_Cd,
			CTE_T.Curr_Fisc_Closed_Pd     AS Curr_Fisc_Closed_Pd,
			CTE_T.Curr_Fisc_yr            AS Curr_Fisc_yr,
			CASE WHEN CURR_USD.fr_Curr = 'USD'
				THEN (COEP.WOGBTR * CURR_USD.Fctr_Actual_USD)
			END AS Tot_Val_Obj_Curr_USD,			
			CASE WHEN CURR_USD.fr_Curr = 'EUR'
				 THEN (COEP.WOGBTR * CURR_USD.Fctr_Actual_EUR)
			END AS Tot_Val_Obj_Curr_EUR,
			CASE WHEN CURR_USD.fr_Curr = 'GBP'
			     THEN (COEP.WOGBTR * CURR_USD.Fctr_Actual_GBP)
			END AS Tot_Val_Obj_Curr_GBP
FROM    KEU_ECC.dbo.COEP COEP WITH(NOLOCK)	
		INNER JOIN CTE_T ON [Fisc_Yr] =COEP.GJAHR   AND [Fisc_Pd]=COEP.PERIO
		INNER JOIN KEU_FIN.[KEU_ZBB].Acct_Hrchy_ZBB ACNT WITH(NOLOCK) ON ACNT.[GL_Acct] Collate Database_Default = COEP.KSTAR Collate Database_Default 	and ACNT.DW_Del_Bit=0
		LEFT OUTER JOIN KEU_ECC.dbo.EKKO EKKO WITH(NOLOCK) 
		ON COEP.EBELN= EKKO.EBELN AND COEP.KOKRS not in('KEZA','PIZA')and ((COEP.OBJNR >= 'OR000061000000' AND COEP.OBJNR <= 'OR000066999999') AND COEP.VERSN  = '000' ) 
		LEFT OUTER JOIN KEU_ECC. dbo.LFA1 LFA1 WITH(NOLOCK) 
		ON EKKO.LIFNR= LFA1.LIFNR
		LEFT OUTER JOIN KEU_ECC.dbo.AUFK AUFK  WITH(NOLOCK)
		ON AUFK.OBJNR= COEP.OBJNR 
		LEFT OUTER JOIN KEU_ECC.dbo.CEPCT CEPCT WITH(NOLOCK) 
		ON CEPCT.PRCTR =AUFK.PRCTR 
		LEFT JOIN KEU_ECC.dbo.T001 ON t001.BUKRS COLLATE DATABASE_DEFAULT = COEP.BUKRS COLLATE DATABASE_DEFAULT
		INNER JOIN KEU_FIN.KEU_ZBB.CC_Hrchy_ZBB CCH  WITH(NOLOCK) 	ON CCH.CC_Nbr Collate Database_Default =AUFK.KOSTV Collate Database_Default and  CCH.DW_Del_Bit=0
		LEFT JOIN [KEU_ZBB].[Curr_Exchng_Fmt_Flat] CURR_USD WITH (NOLOCK) ON CURR_USD.Fr_Curr Collate Database_Default = COEP.OWAER Collate Database_Default
		AND COEP.GJAHR = CURR_USD.Yr AND coep.PERIO = CURR_USD.pd		
)  a 



GO
/****** Object:  View [KEU_ZBB].[UVW_Nbb_Bdg]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE view [KEU_ZBB].[UVW_Nbb_Bdg]
AS
SELECT 
       [Cost_Ctr_Cd]    AS [Cost_Ctr_Cd]
      ,[Cost_Curr_Typ]  AS [Cost_Curr_Typ]
      ,[Acct_Cd]        AS [Acct_Cd]
      ,[Pd]             AS [Pd]
	  ,[Yr]             AS [Yr]
      ,[Amt]            AS [Amt]
      ,[Ver]            AS [Ver]
FROM [KEU_FIN].[KEU_ZBB].[Nbb_Bdg]



GO
/****** Object:  View [KEU_ZBB].[UVW_NBB_Actl_Bdg]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [KEU_ZBB].[UVW_NBB_Actl_Bdg]
as 
WITH CTE_T
AS(
SELECT DISTINCT [FISC_YR] ,[FISC_PD] 
,(SELECT replace([FISC_PD] -1,0,12) FROM KNA_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Closed_Pd
,(SELECT case when [FISC_PD]=1 then year(getdate())-1  else  year(getdate())  end [FISC_YR] FROM KNA_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Yr
FROM dbo.UVW_FISC_CAL WITH (NOLOCK) 
WHERE  [FISC_YR] = (SELECT [FISC_YR] -1 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR  [FISC_YR] = (SELECT [FISC_YR] -2 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR (([FISC_YR] = (SELECT [FISC_YR]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]))
AND ([FISC_PD] < (SELECT [FISC_PD]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])))

),
CTE
AS (
	SELECT COEP.PERIO AS Pd1
	,SUBSTRING(COEP.OBJNR, 7, 10) AS Cost_Ctr
	,COEP.GJAHR AS Fisc_Yr
	,COEP.OWAER  Collate Database_Default AS Curr_Key
	,COEP.KSTAR AS GL_ACCT
	,COEP.BUKRS AS Co_Cd
	,T001.BUTXT AS Co_Cd_Desc
	,Curr_Fisc_Closed_Pd
	,Curr_Fisc_yr
	,SUM(COEP.WTGBTR) AS Tot_Val_Trns
	,SUM(COEP.WOGBTR) AS Tot_Val_Obj
	,SUM(COEP.WKGBTR) AS Tot_Val_Co_Area
	FROM KEU_ECC.dbo.COEP COEP WITH (NOLOCK)
	INNER JOIN CTE_T ON [Fisc_Yr] =COEP.GJAHR   AND [Fisc_Pd]=COEP.PERIO
	LEFT JOIN KEU_ECC.dbo.T001 ON t001.BUKRS COLLATE DATABASE_DEFAULT = COEP.BUKRS COLLATE DATABASE_DEFAULT
	WHERE 
	-- COEP.GJAHR BETWEEN (YEAR(GETDATE()) - 2)AND (YEAR(GETDATE())) AND 
	COEP.OBJNR LIKE 'KS%'AND COEP.VERSN = '000' and  COEP.KOKRS not in('KEZA','PIZA')
	GROUP BY COEP.PERIO
	,COEP.GJAHR
	,COEP.OBJNR
	,COEP.KSTAR
	,COEP.OWAER	
	,COEP.BUKRS
	,T001.BUTXT
    ,Curr_Fisc_Closed_Pd
	,Curr_Fisc_yr
	)


,CTE1
AS (
	SELECT Cost_Ctr_Cd, Cost_Curr_Typ, Acct_Cd, Pd, Yr,[Actual],[Budget],[6&6],[3&9],[9&3]
	FROM (
		SELECT Cost_Ctr_Cd, Cost_Curr_Typ, Acct_Cd, Pd, Yr, ISNULL(Amt,0)Amt, Ver 
		FROM [KEU_ZBB].[UVW_Nbb_Bdg] WITH (NOLOCK)
		WHERE Yr IN  ( SELECT DISTINCT Fisc_Yr FROM CTE_T)
		--INNER JOIN CTE_T ON [Fisc_Yr] =Yr   AND [Fisc_Pd]=Pd
		--WHERE yr BETWEEN (YEAR(GETDATE()) - 2)
		--		AND (YEAR(GETDATE()))
		) d
	pivot(sum(Amt) FOR Ver IN (
				[Actual]
				,[Budget]
				,[6&6]
				,[3&9]
				,[9&3]
				)) piv
	)
,CTE2
AS (
	SELECT ISNULL(Cost_Ctr,Cost_Ctr_Cd)Cost_Ctr
		,ISNULL(Curr_Key,Cost_Curr_Typ)Curr_Key
		,ISNULL( GL_ACCT,Acct_Cd)Acct_Cd 
		,ISNULL(Pd1,Pd)Pd
		,ISNULL(Fisc_Yr,Yr) Yr
		,Curr_Key as Actl_Cur_Key
		,Cost_Curr_Typ as Bdg_Cur_Key
		,a.Co_Cd
		,a.Co_Cd_Desc	
		,Curr_Fisc_Closed_Pd
	    ,Curr_Fisc_yr	
		,ISNULL(Tot_Val_Obj,0)Tot_Val_Obj
		,ISNULL ([Actual],0)  AS 'Bdg_Actl_Amt'
		,ISNULL([Budget],0)  AS 'Bdg_Bdg_Amt'
		,ISNULL([6&6],0)  AS 'Bdg_6&6_Amt'
		,ISNULL([3&9],0)  AS 'Bdg_3&9_Amt'
		,ISNULL([9&3],0)  AS 'Bdg_9&3_Amt'
		,CASE  when (Curr_Key IS NULL) OR (Cost_Curr_Typ IS NULL)  THEN NULL
		  when Curr_Key COLLATE Database_Default =Cost_Curr_Typ COLLATE Database_Default THEN 'Y'
	      else'N'
	END as 'Actl_Bdg_Curr_Match'
	FROM CTE a
	FULL JOIN CTE1 b ON a.Cost_Ctr Collate Database_Default = b.Cost_Ctr_Cd Collate Database_Default
	--SUBSTRING(a.Cost_Ctr,4,LEN(a.Cost_Ctr)) Collate Database_Default = b.Cost_Ctr_Cd Collate Database_Default
		 and a.Fisc_Yr = b.Yr
		AND a.Pd1 = b.Pd
		AND a.GL_ACCT Collate Database_Default = b.Acct_Cd Collate Database_Default
		)

SELECT Cost_Ctr
	,Curr_Key
	,Acct_Cd
	,Pd
	,Yr
	,isnull(Tot_Val_Obj,0)Tot_Val_Obj
	,Actl_Cur_Key
	,Bdg_Cur_Key
	,ISNULL(a.Co_Cd,b.BUKRS) AS Co_Cd
	,isnull(a.Co_Cd_Desc,t001.BUTXT) AS Co_Cd_Desc
	,Actl_Bdg_Curr_Match
	,[Acct_Desc]
	,[Acct_Categ]
	,[Acct_Sub_Categ]
	,[Cc_Desc]
	,[Lvl0_Desc]
	,[Lvl1_Desc]
	,[Lvl1_Cd]
	,[Lvl2_Desc]
	,[Lvl2_Cd]
	,[Lvl3_Desc]
	,[Lvl3_Cd]
	,[Lvl4_Desc]
	,[Lvl4_Cd]
	,[Lvl5_Desc]
	,[Lvl5_Cd]
	,isnull([Bdg_Actl_Amt],0)[Bdg_Actl_Amt]
	,isnull([Bdg_Bdg_Amt],0)[Bdg_Bdg_Amt]
	,isnull([Bdg_6&6_Amt],0)[Bdg_6&6_Amt]
	,isnull([Bdg_3&9_Amt],0)[Bdg_3&9_Amt]
	,isnull([Bdg_9&3_Amt],0)[Bdg_9&3_Amt]
	,isnull(a.Curr_Fisc_Closed_Pd,t.Curr_Fisc_Closed_Pd)Curr_Fisc_Closed_Pd
	,isnull(a.Curr_Fisc_yr ,t.Curr_Fisc_yr)Curr_Fisc_yr

FROM CTE2 a
INNER JOIN [KEU_ZBB].Acct_Hrchy_ZBB ACNT WITH (NOLOCK) ON ACNT.GL_Acct Collate Database_Default = Acct_Cd Collate Database_Default  AND ACNT.[DW_Del_Bit] = 0
INNER  JOIN KEU_FIN.KEU_ZBB.CC_Hrchy_ZBB CCH WITH (NOLOCK) ON REPLICATE('0', 10 - LEN(RTRIM(CCH.CC_Nbr))) + RTRIM(CCH.CC_Nbr) Collate Database_Default = Cost_Ctr Collate Database_Default
AND CCH.[DW_Del_Bit] = 0
left outer join CTE_T t on a.Yr=t.Fisc_Yr and a.pd=[Fisc_Pd]
left join (SELECT DISTINCT KOSTL,MAX(BUKRS) BUKRS FROM KEU_ECC.dbo.CSKS   
GROUP BY KOSTL)b on a.Cost_Ctr COLLATE DATABASE_DEFAULT= b.KOSTL  COLLATE DATABASE_DEFAULT
left outer join KEU_ECC.dbo.T001 t001 on  t001.BUKRS COLLATE DATABASE_DEFAULT = b.BUKRS COLLATE DATABASE_DEFAULT



--WHERE co_cd is null



GO
/****** Object:  View [KEU_ZBB].[UVW_NBB_Detl]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [KEU_ZBB].[UVW_NBB_Detl]
AS 
WITH CTE_T
AS(
SELECT DISTINCT [FISC_YR] ,[FISC_PD] 
,(SELECT replace([FISC_PD] -1,0,12) FROM KNA_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Closed_Pd
,(SELECT case when [FISC_PD]=1 then year(getdate())-1  else  year(getdate())  end [FISC_YR] FROM KNA_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Yr
FROM dbo.UVW_FISC_CAL WITH (NOLOCK) 
WHERE  [FISC_YR] = (SELECT [FISC_YR] -1 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR  [FISC_YR] = (SELECT [FISC_YR] -2 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR (([FISC_YR] = (SELECT [FISC_YR]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]))
AND ([FISC_PD] < (SELECT [FISC_PD]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])))

)
SELECT
		COEP.KOKRS                 	AS Co_Area,
		COEP.BELNR                 	AS Doc_Nbr,
		COEP.BUZEI                 	AS Post_Row,
		COEP.PERIO                 	AS Pd,
		COEP.WTGBTR                	AS Tot_Val_Trns,
		COEP.WOGBTR                	AS Tot_Val_Obj,
		COEP.WKGBTR                	AS Tot_Val_Co_Area,
		COEP.MBGBTR                	AS Tot_Qty_Entr,
		COEP.LEDNR                 	AS Co_Led,
		COEP.OBJNR                 	AS Obj_Nbr,
		COEP.GJAHR                 	AS Fisc_Yr,
		COEP.WRTTP                 	AS Val_Typ,
		COEP.VERSN                 	AS Vrsn,
		COEP.KSTAR                 	AS Cost_Ele,
		CSKU.MCTXT                 	AS Cost_Ele_Nm,
		COEP.VRGNG                 	AS Co_Bus_Trns,
		COEP.BEKNZ                 	AS Db_Cr_Ind,
		COEP.TWAER                 	AS Txn_Curr,
		COEP.OWAER                 	AS Curr_Key,
		COEP.SGTXT                 	AS Seg_Txt,
		COEP.REFBZ                 	AS Ref_Post_Row,
		COEP.ZLENR                 	AS Doc_Itm_Nbr,
		COEP.GKONT                 	AS Offst_Acct_Nbr,
		COEP.GKOAR                 	AS Offst_Acct_Typ,
		COEP.WERKS                 	AS Plnt,
		COEP.EBELN                 	AS Pur_Doc_Nbr,
		COEP.EBELP                 	AS Pur_Doc_Itm,
		EKPO.TXZ01                 	AS Po_Itm_Txt,
		EKKO.LIFNR                 	AS Vend_Nbr,
		LFA1.NAME1                 	AS Vend_Nm,
		EKKO.LIFRE                 	AS Invc_Prt_Nbr,
		LFA1.NAME1                 	AS Invc_Prt_Nm,
		SUBSTRING(COEP.OBJNR,7,10) 	AS Cost_Ctr,
		CSKT.KTEXT                 	AS Cost_Ctr_Nm,
		CSKS.PRCTR                 	AS Prft_Ctr,
		CEPCT.KTEXT                	AS Prft_Ctr_Nm,
		COEP.BUKRS                 	AS Co_Cd,
		T001.BUTXT                  AS Co_Cd_Desc,
		COEP.FKBER                 	AS Fcn_Area,
		COEP.SCOPE                 	AS Obj_Clas,
		COBK.BLTXT                 	AS Doc_Hdr_Txt,
		COBK.USNAM                 	AS Usr_Nm,
		COBK.BLART                 	AS Doc_Typ,
		ACNT.Acct_Desc             	AS Acct_Desc,
		ACNT.Acct_Categ            	AS Acct_Categ,
		ACNT.Acct_Sub_Categ        	AS Acct_Sub_Categ,
		CCH.CC_Desc                	AS Cc_Desc,
		CCH.Lvl0_Desc              	AS Lvl0_Desc,
		CCH.Lvl1_Desc              	AS Lvl1_Desc,
		CCH.Lvl1_Cd                	AS Lvl1_Cd,
		CCH.Lvl2_Desc              	AS Lvl2_Desc,
		CCH.Lvl2_Cd                	AS Lvl2_Cd,
		CCH.Lvl3_Desc              	AS Lvl3_Desc,
		CCH.Lvl3_Cd                	AS Lvl3_Cd,
		CCH.Lvl4_Desc              	AS Lvl4_Desc,
		CCH.Lvl4_Cd                	AS Lvl4_Cd,
		CCH.Lvl5_Desc              	AS Lvl5_Desc,
		CCH.Lvl5_Cd                	AS Lvl5_Cd,
		CTE_T.Curr_Fisc_Closed_Pd     AS Curr_Fisc_Closed_Pd,
	    CTE_T.Curr_Fisc_yr            AS Curr_Fisc_yr,
		CASE WHEN CURR_USD.fr_Curr = 'USD'
		THEN (COEP.WOGBTR * CURR_USD.Fctr_Actual_USD)
		END AS Tot_Val_Obj_Curr_USD,			
		CASE WHEN CURR_USD.fr_Curr = 'EUR'
		THEN (COEP.WOGBTR * CURR_USD.Fctr_Actual_EUR)
		END AS Tot_Val_Obj_Curr_EUR,
		CASE WHEN CURR_USD.fr_Curr = 'GBP'
		THEN (COEP.WOGBTR * CURR_USD.Fctr_Actual_GBP)
		END AS Tot_Val_Obj_Curr_GBP  
FROM    KEU_ECC.dbo.COEP COEP WITH(NOLOCK)
		INNER JOIN CTE_T ON [Fisc_Yr] =COEP.GJAHR   AND [Fisc_Pd]=COEP.PERIO
		AND COEP.OBJNR LIKE 'KS%' AND COEP.VERSN = '000' AND  COEP.KOKRS not in('KEZA','PIZA')
		LEFT OUTER JOIN KEU_ECC.dbo.EKKO EKKO WITH(NOLOCK) 
		ON COEP.EBELN= EKKO.EBELN 
		LEFT OUTER JOIN KEU_ECC.dbo.COBK COBK WITH(NOLOCK) 
		ON COBK.KOKRS=COEP.KOKRS AND COBK.BELNR=COEP.BELNR AND COBK.GJAHR=COEP.GJAHR
		LEFT OUTER JOIN KEU_ECC.dbo.EKPO  EKPO WITH(NOLOCK) 
		ON EKPO.EBELN=COEP.EBELN AND EKPO.EBELP=COEP.EBELP
		LEFT OUTER JOIN KEU_ECC.dbo.CSKS CSKS WITH(NOLOCK) 
		ON COEP.KOKRS=CSKS.KOKRS AND CSKS.KOSTL=SUBSTRING( COEP.OBJNR,7,10)AND COEP.KOKRS = CSKS.KOKRS 
		LEFT OUTER JOIN KEU_ECC.dbo.LFA1 LFA1 WITH(NOLOCK)  
		ON EKKO.LIFNR= LFA1.LIFNR
		LEFT OUTER JOIN KEU_ECC.dbo.CSKU CSKU WITH(NOLOCK) 
		ON CSKU.KSTAR=COEP.KSTAR AND   CSKU.SPRAS='E'
		LEFT OUTER JOIN KEU_ECC.dbo.CSKT CSKT WITH(NOLOCK)
		ON CSKT.KOKRS=COEP.KOKRS AND CSKT.KOSTL=SUBSTRING( COEP.OBJNR,7,10) AND CSKS.KOSTL=CSKT.KOSTL AND   CSKT.SPRAS='E'
		LEFT OUTER JOIN KEU_ECC.dbo.CEPCT CEPCT WITH(NOLOCK) 
		ON CEPCT.PRCTR =CSKS.PRCTR 
        LEFT JOIN KEU_ECC.dbo.T001 ON T001.BUKRS COLLATE DATABASE_DEFAULT = COEP.BUKRS COLLATE DATABASE_DEFAULT
		INNER JOIN KEU_FIN.KEU_ZBB.CC_HRCHY_ZBB CCH WITH(NOLOCK) 
		ON CCH.CC_Nbr COLLATE Database_Default=SUBSTRING( COEP.OBJNR,7,10) COLLATE Database_Default AND  CCH.DW_Del_Bit=0
		--ON REPLICATE('0', 10 - LEN(RTRIM(CCH.CC_Nbr))) + RTRIM(CCH.CC_Nbr) COLLATE Database_Default  =  SUBSTRING( COEP.OBJNR,7,10) COLLATE Database_Default		
		INNER JOIN KEU_ZBB.ACCT_HRCHY_ZBB ACNT  WITH(NOLOCK) 
		ON ACNT.[GL_Acct] COLLATE Database_Default= COEP.KSTAR COLLATE Database_Default	AND ACNT.DW_Del_Bit=0
		LEFT JOIN [KEU_ZBB].[Curr_Exchng_Fmt_Flat] CURR_USD WITH (NOLOCK) ON CURR_USD.Fr_Curr COLLATE Database_Default = COEP.OWAER COLLATE Database_Default
		AND COEP.GJAHR = CURR_USD.Yr AND coep.PERIO = CURR_USD.pd
		


GO
/****** Object:  View [KEU_ZBB].[UVW_TNE_Detl]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [KEU_ZBB].[UVW_TNE_Detl]
AS
WITH CTE_T
AS(
SELECT DISTINCT [FISC_YR] ,[FISC_PD] 
,(SELECT replace([FISC_PD] -1,0,12) FROM KNA_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Closed_Pd
,(SELECT case when [FISC_PD]=1 then year(getdate())-1  else  year(getdate())  end [FISC_YR] FROM KNA_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Yr
FROM dbo.UVW_FISC_CAL WITH (NOLOCK) 
WHERE  [FISC_YR] = (SELECT [FISC_YR] -1 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR  [FISC_YR] = (SELECT [FISC_YR] -2 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR (([FISC_YR] = (SELECT [FISC_YR]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]))
AND ([FISC_PD] < (SELECT [FISC_PD]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])))

 

)
  SELECT 
		COEP.KOKRS          AS Co_Area,        
		COEP.BELNR          AS Doc_Nbr,        
		COEP.BUZEI          AS Post_Row,       
		COEP.PERIO          AS Pd,             
		COEP.WTGBTR         AS Tot_Val_Trans,  
		COEP.WOGBTR         AS Tot_Val_Obj,    
		COEP.WKGBTR         AS Tot_Val_Co_Area,
		COEP.MBGBTR         AS Tot_Qty_Entr,   
		COEP.LEDNR          AS Co_Led,         
		COEP.OBJNR          AS Obj_Nbr,        
		COEP.GJAHR          AS Fisc_Yr,        
		COEP.WRTTP          AS Val_Typ,        
		COEP.VERSN          AS Vrsn,           
		COEP.KSTAR          AS Cost_Ele,       
		CSKU.MCTXT          AS Cost_Ele_Nm,    
		COEP.VRGNG          AS Co_Bus_Trans,   
		COEP.BEKNZ          AS Db_Cr_Ind,      
		COEP.TWAER          AS Txn_Curr,       
		COEP.OWAER          AS Curr_Key,       
		COEP.SGTXT          AS Seg_Txt,        
		CASE 
		WHEN SUBSTRING(COEP.SGTXT, 1, 5) = '*Trip'   THEN SUBSTRING(COEP.SGTXT, 7, 10) 
		WHEN SUBSTRING(COEP.SGTXT, 1, 4) = 'Trip'    THEN SUBSTRING(COEP.SGTXT, 6, 10) 
		WHEN SUBSTRING(COEP.SGTXT, 1, 7) = '*Trip20' THEN SUBSTRING(COEP.SGTXT, 6, 10) 
		WHEN SUBSTRING(COEP.SGTXT, 1, 4) = 'trip'    THEN SUBSTRING(COEP.SGTXT, 6, 10) 
		WHEN SUBSTRING(COEP.SGTXT, 1, 6) = 'Trip #'  THEN SUBSTRING(COEP.SGTXT, 7, 10) 
		ELSE NULL 
		END                 AS Trip_no,
		COEP.REFBZ          AS Ref_Post_Row,   
		COEP.ZLENR          AS Doc_Itm_Nbr,    
		COEP.GKONT          AS Offset_Acct_Nbr,
		COEP.GKOAR          AS Offset_Acct_Typ,
		COEP.WERKS          AS Plant,          
		COEP.EBELN          AS Pur_Doc_Nbr,    
		COEP.EBELP          AS Pur_Doc_Itm,    
		EKPO.TXZ01          AS Po_Itm_Txt,     
		EKKO.LIFNR          AS Vend_Nbr,       
		LFA1.NAME1          AS Vend_Nm,        
		EKKO.LIFRE          AS Invc_Prt_Nbr,   
		LFA1.NAME1          AS Invc_Prt_Nm,    
		SUBSTRING(COEP.OBJNR,7, 10) AS Cost_ctr,
		CSKT.KTEXT          AS Cost_Ctr_Nm,   
		CSKS.PRCTR          AS Profit_Ctr,    
		CEPCT.KTEXT         AS Profit_Ctr_Nm, 
		COEP.BUKRS          AS Co_Cd,   
		T001.BUTXT          AS Co_Cd_Desc,      
		COEP.FKBER          AS Fcn_Area,      
		COEP.SCOPE          AS Obj_Clas,      
		COBK.BLTXT          AS Doc_Hdr_Txt,   
		COBK.USNAM          AS Usr_Nm,        
		ACNT.Acct_Desc      AS Acct_Desc,    
		ACNT.Acct_Categ     AS Acct_Categ,    
		ACNT.Acct_Sub_Categ AS Acct_Sub_Categ,
		CCH.CC_Desc         AS Cc_Desc ,      
		CCH.lvl0_Desc       AS lvl0_Desc,     
		CCH.lvl1_Desc       AS lvl1_Desc,     
		CCH.lvl1_Cd         AS lvl1_Cd,       
		CCH.lvl2_Desc       AS lvl2_Desc,     
		CCH.lvl2_Cd         AS lvl2_Cd,       
		CCH.lvl3_Desc       AS lvl3_Desc,     
		CCH.lvl3_Cd         AS lvl3_Cd,       
		CCH.lvl4_Desc       AS lvl4_Desc,     
		CCH.lvl4_Cd         AS lvl4_Cd,       
		CCH.lvl5_Desc       AS lvl5_Desc,     
		CCH.lvl5_Cd         AS lvl5_Cd,
		CASE WHEN CURR_USD.fr_Curr = 'USD'
			THEN (COEP.WOGBTR * CURR_USD.Fctr_Actual_USD)
		END AS Tot_Val_Obj_Curr_USD,			
		CASE WHEN CURR_USD.fr_Curr = 'EUR'
			THEN (COEP.WOGBTR * CURR_USD.Fctr_Actual_EUR)
		END AS Tot_Val_Obj_Curr_EUR,
		CASE WHEN CURR_USD.fr_Curr = 'GBP'
			THEN (COEP.WOGBTR * CURR_USD.Fctr_Actual_GBP)
		END AS Tot_Val_Obj_Curr_GBP,
		CTE_T.Curr_Fisc_Closed_Pd     AS Curr_Fisc_Closed_Pd,
	    CTE_T.Curr_Fisc_yr            AS Curr_Fisc_yr       
		FROM    KEU_ECC.dbo.COEP AS COEP WITH (NOLOCK)
		INNER JOIN CTE_T ON [Fisc_Yr] =COEP.GJAHR   AND [Fisc_Pd]=COEP.PERIO
		INNER JOIN	KEU_FIN.KEU_ZBB.ACCT_HRCHY_ZBB AS ACNT WITH (NOLOCK)
		ON ACNT.[GL_Acct] COLLATE Database_Default= COEP.KSTAR COLLATE Database_Default
		AND COEP.OBJNR LIKE 'KS%'
		AND COEP.VERSN = '000'
		-- AND COEP.GJAHR IN ('2014', '2015', '2016', '2017', '2018', '2019', '2020', '2021', '2022')
		AND ACNT.ACCT_CATEG LIKE  'TRAVEL%'
		AND ACNT.DW_Del_Bit=0 AND COEP.KOKRS not in('KEZA','PIZA')
		INNER  JOIN
		KEU_FIN.KEU_ZBB.CC_HRCHY_ZBB AS CCH WITH (NOLOCK)
		ON CCH.CC_NBR COLLATE Database_Default= SUBSTRING(COEP.OBJNR, 7, 10) COLLATE Database_Default	
		LEFT JOIN KEU_ECC.dbo.T001 ON t001.BUKRS COLLATE DATABASE_DEFAULT = COEP.BUKRS COLLATE DATABASE_DEFAULT
		LEFT OUTER JOIN
		KEU_ECC.dbo.EKKO AS EKKO WITH (NOLOCK)
		ON COEP.EBELN = EKKO.EBELN
		LEFT OUTER JOIN
		KEU_ECC.dbo.COBK AS COBK WITH (NOLOCK)
		ON COBK.KOKRS = COEP.KOKRS
		AND COBK.BELNR = COEP.BELNR
		AND COBK.GJAHR = COEP.GJAHR
		LEFT OUTER JOIN
		KEU_ECC.dbo.LFA1 AS LFA1 WITH (NOLOCK)
		ON EKKO.LIFNR = LFA1.LIFNR
		LEFT OUTER JOIN
		KEU_ECC.dbo.CSKU AS CSKU WITH (NOLOCK)
		ON CSKU.KSTAR = COEP.KSTAR
		LEFT OUTER JOIN
		KEU_ECC.dbo.CSKT AS CSKT WITH (NOLOCK)
		ON CSKT.KOKRS = COEP.KOKRS
		AND CSKT.KOSTL = SUBSTRING(COEP.OBJNR, 7, 10)
		AND CSKT.SPRAS = 'E'
		AND CSKU.KSTAR = CSKT.KOSTL
		LEFT OUTER JOIN
		KEU_ECC.dbo.CSKS AS CSKS WITH (NOLOCK)
		ON COEP.KOKRS = CSKS.KOKRS
		AND CSKS.KOSTL = SUBSTRING(COEP.OBJNR, 7, 10)
		AND SUBSTRING(COEP.OBJNR, 2, 4) = CSKS.KOKRS
		LEFT OUTER JOIN
		KEU_ECC.dbo.CEPCT AS CEPCT WITH (NOLOCK)
		ON CEPCT.PRCTR = CSKS.PRCTR
		LEFT OUTER JOIN
		KEU_ECC.dbo.EKPO AS EKPO WITH (NOLOCK)
		ON EKPO.EBELN = COEP.EBELN
		AND EKPO.EBELP = COEP.EBELP
		LEFT JOIN [KEU_ZBB].[Curr_Exchng_Fmt_Flat] CURR_USD WITH (NOLOCK) ON CURR_USD.Fr_Curr COLLATE Database_Default = COEP.OWAER COLLATE Database_Default
		AND COEP.GJAHR = CURR_USD.Yr AND coep.PERIO = CURR_USD.pd	
		
		


GO
/****** Object:  View [KEU_ZBB].[UVW_SA_BB_ACTL_BDG]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [KEU_ZBB].[UVW_SA_BB_ACTL_BDG]
AS
WITH CTE_T
AS(
SELECT DISTINCT [FISC_YR] ,[FISC_PD] 
,(SELECT replace([FISC_PD] -1,0,12) FROM KEU_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Closed_Pd
,(SELECT case when [FISC_PD]=1 then [FISC_YR]-1  else  [FISC_YR]  end [FISC_YR]   FROM KEU_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Yr
FROM dbo.UVW_FISC_CAL WITH (NOLOCK) 
WHERE  [FISC_YR] = (SELECT [FISC_YR] -1 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR  [FISC_YR] = (SELECT [FISC_YR] -2 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR (([FISC_YR] = (SELECT [FISC_YR]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]))
AND ([FISC_PD] < =(SELECT [FISC_PD]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])))

),
CTE
AS (
	SELECT 
	     COEP.GJAHR AS Fisc_Yr
		,COEP.PERIO AS Pd1
		,AUFK.KOSTV AS Resp_Cost_Ctr
		,AUFK.AUFNR AS Ordr_Nbr
		,COEP.KSTAR  AS GL_ACCT
		,COEP.OWAER  COLLATE Database_Default AS Curr_Key
		,COEP.BUKRS AS Co_Cd
		,T001.BUTXT AS Co_Cd_Desc
		,Curr_Fisc_Closed_Pd
		,Curr_Fisc_Yr
		,SUM(COEP.WTGBTR) AS Tot_Val_Trns_Curr
		,SUM(COEP.WOGBTR) AS Tot_Val_Obj_Curr
		,SUM(COEP.WKGBTR) AS Tot_Val_Cntl_Area_Curr
		,SUM(COEP.MBGBTR) AS Tot_Qty_Entr
		,SUM(COEP.WOGBTR) AS Tot_Val_Obj_Curr_USD
	FROM KEU_ECC.dbo.COEP COEP WITH (NOLOCK)
	INNER JOIN CTE_T ON [Fisc_Yr] =COEP.GJAHR   AND [Fisc_Pd]=COEP.PERIO
	LEFT JOIN KEU_ECC.dbo.AUFK AUFK WITH (NOLOCK) ON AUFK.OBJNR = COEP.OBJNR
	LEFT JOIN KEU_ECC.dbo.T001 ON t001.BUKRS COLLATE DATABASE_DEFAULT = COEP.BUKRS COLLATE DATABASE_DEFAULT
	WHERE COEP.KOKRS IN ('KEZA','PIZA')
	  AND ((COEP.OBJNR >= 'OR000061000000'	AND COEP.OBJNR <= 'OR000066999999')
	  AND COEP.VERSN = '000')
    GROUP BY COEP.GJAHR 
		,COEP.PERIO 
		,AUFK.KOSTV
		,AUFK.AUFNR 
		,COEP.KSTAR  
		,COEP.OWAER 
		,COEP.BUKRS 
		,T001.BUTXT
		,Curr_Fisc_Closed_Pd
		,Curr_Fisc_Yr		
		),
CTE1

AS (
   	SELECT  ION_Cd,ION_Curr_Typ,REPLACE(LTRIM(RTRIM(Acct_Cd)), '  ', '')Acct_Cd,Pd,Yr,[Actual],[Budget],[6&6],[3&9],[9&3]
	 FROM (	SELECT ION_Cd,ION_Curr_Typ,CAST(Acct_Cd AS VARCHAR(10)) + Replicate('0',10 - Len(CAST(Acct_Cd AS VARCHAR(10))))Acct_Cd,Pd,Yr,ISNULL(Amt,0)Amt,Ver
		FROM [KAP_FIN].[KAP_ZBB].[UVW_BB_BDG] WITH (NOLOCK)
		WHERE Yr IN ( SELECT DISTINCT Fisc_Yr FROM CTE_T)
		) d
	pivot(SUM(Amt) FOR Ver IN (
				[Actual]
				,[Budget]
				,[6&6]
				,[3&9]
				,[9&3]
				)) piv
	)

,CTEN
AS (
       SELECT a.Yr
       ,a.pd Pd
       ,ISNULL(a.ION_Cd,b.AUFNR) Ordr_Nbr
       ,a.Acct_Cd  as  Acct_Cd
       ,a.ION_Curr_Typ
       ,b.KOSTV AS Resp_Cost_Ctr         
	   ,ISNULL ([Actual],0)  AS 'Bdg_Actl_Amt'
	   ,ISNULL([Budget],0)  AS 'Bdg_Bdg_Amt'
	   ,ISNULL([6&6],0)  AS 'Bdg_6&6_Amt'
	   ,ISNULL([3&9],0)  AS 'Bdg_3&9_Amt'
	   ,ISNULL([9&3],0)  AS 'Bdg_9&3_Amt'
	   FROM CTE1 a
       LEFT JOIN KEU_ECC.dbo.AUFK b ON a.ION_Cd COLLATE Database_Default = b.AUFNR COLLATE Database_Default
	   )
,CTE2
AS (
	SELECT ISNULL(Fisc_Yr, Yr) AS  Yr
	,ISNULL(Pd1, pd) AS Pd
	,ISNULL(a.Ordr_Nbr, b.Ordr_Nbr)  AS Ordr_Nbr
	,ISNULL(GL_ACCT, Acct_Cd) AS Acct_Cd
	,ISNULL(Curr_Key, ION_Curr_Typ) AS Curr_Key
	,Curr_Key AS Actl_Cur_Key
	,ION_Curr_Typ AS Bdg_Cur_Key
	,ISNULL(a.Resp_Cost_Ctr,b.Resp_Cost_Ctr) AS Resp_Cost_Ctr
	,ISNULL(Tot_Val_Obj_Curr,0) AS Tot_Val_Obj_Curr
	,a.Co_Cd
	,a.Co_Cd_Desc
	,Curr_Fisc_Closed_Pd
	,Curr_Fisc_yr
	,[Bdg_Actl_Amt]
	,[Bdg_Bdg_Amt]
	--,[Bdg_6&6_Amt]
	--,[Bdg_3&9_Amt]
	--,[Bdg_9&3_Amt]
	,ISNULL(CASE WHEN ISNULL([Bdg_6&6_Amt],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL ([Bdg_Actl_Amt],0) =0 then [Tot_Val_Obj_Curr] 
		WHEN  ISNULL([Bdg_6&6_Amt],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj_Curr,0)=0 and   ISNULL ([Bdg_Actl_Amt],0) >0 then ISNULL(Tot_Val_Obj_Curr,0)
		WHEN  ISNULL([Bdg_6&6_Amt],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj_Curr,0)> 0 and   ISNULL ([Bdg_Actl_Amt],0) >0 then ISNULL(Tot_Val_Obj_Curr,0)
		WHEN  ISNULL([Bdg_6&6_Amt],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj_Curr,0)> 0 and   ISNULL ([Bdg_Actl_Amt],0) =0 then ISNULL(Tot_Val_Obj_Curr,0) 
		WHEN  ISNULL([Bdg_6&6_Amt],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj_Curr,0) < 0 and   ISNULL ([Bdg_Actl_Amt],0) < 0 then ISNULL(Tot_Val_Obj_Curr,0)
		WHEN  ISNULL([Bdg_6&6_Amt],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj_Curr,0) < 0 and   ISNULL ([Bdg_Actl_Amt],0) > 0 then ISNULL(Tot_Val_Obj_Curr,0) 
		WHEN  ISNULL([Bdg_6&6_Amt],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj_Curr,0) > 0 and   ISNULL ([Bdg_Actl_Amt],0) < 0   then ISNULL(Tot_Val_Obj_Curr,0)
		else ISNULL([Bdg_6&6_Amt],0) end,0)  as[Bdg_6&6_Amt]
		,ISNULL(CASE WHEN ISNULL([Bdg_3&9_Amt],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL ([Bdg_Actl_Amt],0) =0 then ISNULL(Tot_Val_Obj_Curr,0) 
		WHEN  ISNULL([Bdg_3&9_Amt],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj_Curr,0)=0  and ISNULL ([Bdg_Actl_Amt],0) >0 then ISNULL(Tot_Val_Obj_Curr,0) 
		WHEN  ISNULL([Bdg_3&9_Amt],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj_Curr,0)> 0 and   ISNULL ([Bdg_Actl_Amt],0) >0 then ISNULL(Tot_Val_Obj_Curr,0) 
		WHEN  ISNULL([Bdg_3&9_Amt],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj_Curr,0)> 0 and   ISNULL ([Bdg_Actl_Amt],0) =0 then ISNULL(Tot_Val_Obj_Curr,0) 
		WHEN  ISNULL([Bdg_3&9_Amt],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj_Curr,0) < 0 and   ISNULL ([Bdg_Actl_Amt],0) < 0 then ISNULL(Tot_Val_Obj_Curr,0) 
		WHEN  ISNULL([Bdg_3&9_Amt],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj_Curr,0) < 0 and   ISNULL ([Bdg_Actl_Amt],0) > 0 then ISNULL(Tot_Val_Obj_Curr,0) 
		WHEN  ISNULL([Bdg_3&9_Amt],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj_Curr,0) > 0 and   ISNULL ([Bdg_Actl_Amt],0) < 0   then ISNULL(Tot_Val_Obj_Curr,0) 
		else ISNULL([Bdg_3&9_Amt],0) end,0)  as[Bdg_3&9_Amt]
		,ISNULL(CASE WHEN ISNULL([Bdg_9&3_Amt],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL ([Bdg_Actl_Amt],0) =0 then ISNULL(Tot_Val_Obj_Curr,0) 
		WHEN  ISNULL([Bdg_9&3_Amt],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj_Curr,0)=0 and ISNULL ([Bdg_Actl_Amt],0) >0 then ISNULL(Tot_Val_Obj_Curr,0) 
		WHEN  ISNULL([Bdg_9&3_Amt],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj_Curr,0)> 0 and   ISNULL ([Bdg_Actl_Amt],0) >0 then ISNULL(Tot_Val_Obj_Curr,0) 
		WHEN  ISNULL([Bdg_9&3_Amt],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj_Curr,0)> 0 and   ISNULL ([Bdg_Actl_Amt],0) =0 then ISNULL(Tot_Val_Obj_Curr,0)
		WHEN  ISNULL([Bdg_9&3_Amt],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj_Curr,0) < 0 and   ISNULL ([Bdg_Actl_Amt],0) < 0 then ISNULL(Tot_Val_Obj_Curr,0)
		WHEN  ISNULL([Bdg_9&3_Amt],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj_Curr,0) < 0 and   ISNULL ([Bdg_Actl_Amt],0) > 0 then ISNULL(Tot_Val_Obj_Curr,0) 
		WHEN  ISNULL([Bdg_9&3_Amt],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj_Curr,0) > 0 and   ISNULL ([Bdg_Actl_Amt],0) < 0   then ISNULL(Tot_Val_Obj_Curr,0)  
		else ISNULL([Bdg_9&3_Amt],0) end ,0) as[Bdg_9&3_Amt]
	   ,CASE  WHEN (Curr_Key IS NULL) OR (ION_Curr_Typ IS NULL)  THEN NULL
		   WHEN Curr_Key COLLATE Database_Default =ION_Curr_Typ COLLATE Database_Default THEN 'Y'
	       ELSE'N' END AS 'Actl_Bdg_Curr_Match'
	FROM CTE a
	FULL JOIN CTEN  b ON a.Ordr_Nbr COLLATE Database_Default = b.Ordr_Nbr COLLATE Database_Default
		AND a.Fisc_Yr = b.Yr
		AND a.Pd1 = b.Pd
		AND a.GL_ACCT COLLATE Database_Default = b.Acct_Cd COLLATE Database_Default
		)
    SELECT  
     a.Yr
	,a.Pd
	,a.Ordr_Nbr
	,a.Acct_Cd
	,a.Curr_Key
	,a.Actl_Cur_Key
	,a.Bdg_Cur_Key
	,a.Resp_Cost_Ctr
	,ISNULL(a.Co_Cd,b.BUKRS) AS Co_Cd
	,ISNULL(a.Co_Cd_Desc,t001.BUTXT) AS Co_Cd_Desc
	,ISNULL(a.Curr_Fisc_Closed_Pd,t.Curr_Fisc_Closed_Pd) AS Curr_Fisc_Closed_Pd
	--,a.Curr_Fisc_Closed_Pd
	,ISNULL(a.Curr_Fisc_yr ,t.Curr_Fisc_yr) AS Curr_Fisc_yr
	--,a.Curr_Fisc_yr
	,ISNULL(a.Tot_Val_Obj_Curr,0) AS Tot_Val_Obj_Curr
	,a.Actl_Bdg_Curr_Match
    ,ACCT_DESC AS [Acct_Desc]
	,ACCT_CATEG AS [Acct_Categ]
	,ACCT_SUB_CATEG AS [Acct_Sub_Categ]
	,CC_DESC AS Cc_Desc
	,LVL0_DESC  AS [Lvl0_Desc]
	,LVL1_DESC AS  [Lvl1_Desc]
	,LVL1_CD AS [Lvl1_Cd]
	,LVL2_DESC AS [Lvl2_Desc]
	,LVL2_CD AS [Lvl2_Cd]
	,LVL3_DESC AS [Lvl3_Desc]
	,LVL3_CD AS [Lvl3_Cd]
	,LVL4_DESC AS [Lvl4_Desc]
	,LVL4_CD AS [Lvl4_Cd]
	,LVL5_DESC AS [Lvl5_Desc]
	,LVL5_CD AS [Lvl5_Cd]
	,LVL6_DESC AS Lvl6_Desc 
	,LVL6_CD AS Lvl6_Cd
	,LVL7_DESC AS Lvl7_Desc 
	,LVL7_CD AS Lvl7_Cd
	--,LOCAL_CURR AS Local_Curr
	,ION_CD AS [ION_Cd]
    ,ION_DESC AS Ion_Desc
	,L0_DESC AS [L0_Desc]
	,L1_DESC AS [L1_Desc]
	,L1_CD AS [L1_Cd]
	,L2_DESC AS [L2_Desc]
	,L2_CD AS [L2_Cd]
	,L3_DESC AS [L3_Desc]
	,L3_CD AS [L3_Cd]
	,L4_DESC AS [L4_Desc]
	,L4_CD AS [L4_Cd]
	,L5_DESC AS [L5_Desc]
	,L5_CD AS [L5_Cd]
	,L6_DESC AS [L6_Desc]
	,L6_CD AS [L6_Cd]
	,L7_DESC AS [L7_Desc]
	,L7_CD AS [L7_Cd]
	,ISNULL([Bdg_Actl_Amt],0)[Bdg_Actl_Amt]
	,ISNULL([Bdg_Bdg_Amt],0)[Bdg_Bdg_Amt]
	,ISNULL([Bdg_6&6_Amt],0)[Bdg_6&6_Amt]
	,ISNULL([Bdg_3&9_Amt],0)[Bdg_3&9_Amt]
	,ISNULL([Bdg_9&3_Amt],0)[Bdg_9&3_Amt]
	,ISNULL([FCTR_BDG_USD]*[Tot_Val_Obj_Curr],0) as Actl_Amt_Bdg_Ver 
	,ISNULL([FCTR_BDG_USD]*[Bdg_Bdg_Amt],0)  as Bdg_USD_Amt
	,ISNULL([FCTR_39_USD]*[Bdg_3&9_Amt],0) as Bdg39_USD_Amt
	,ISNULL([FCTR_66_USD]*[Bdg_6&6_Amt],0) as Bdg66_USD_Amt
	,ISNULL([FCTR_93_USD]*[Bdg_9&3_Amt] ,0)as Bdg93_USD_Amt
FROM CTE2 a
	INNER JOIN [KAP_EXTERNAL].[dbo].ACCT_HRCHY_ZBB ACNT WITH (NOLOCK) 
	ON ACNT.GL_ACCT COLLATE Database_Default = Acct_Cd COLLATE Database_Default AND ACNT.[DW_DEL_BIT] = 0
	INNER JOIN [KAP_EXTERNAL].[dbo].CC_HRCHY_ZBB CCH WITH (NOLOCK) 
	ON CCH.CC_NBR COLLATE Database_Default = a.Resp_Cost_Ctr COLLATE Database_Default AND CCH.[DW_DEL_BIT] = 0
	INNER JOIN [KAP_EXTERNAL].[dbo].ION_HRCHY_ZBB ION WITH (NOLOCK) 
	ON ION.ION_CD COLLATE Database_Default = Ordr_Nbr COLLATE Database_Default AND  ION.[DW_DEL_BIT] = 0
	LEFT JOIN CTE_T t on a.Yr=t.Fisc_Yr AND a.pd=[Fisc_Pd]
	LEFT JOIN [KAP_FIN].[KAP_ZBB].[UVW_CURR_EXCHNG_FMT_FLAT] CURR_USD WITH (NOLOCK) 
		ON CURR_USD.FR_CURR COLLATE Database_Default = Curr_Key COLLATE Database_Default
		AND Yr = CURR_USD.YR 
		AND Pd= CURR_USD.PD
	LEFT JOIN KEU_ECC.dbo.CSKS b on a.Resp_Cost_Ctr COLLATE DATABASE_DEFAULT= b.KOSTL  COLLATE DATABASE_DEFAULT
	LEFT JOIN KEU_ECC.dbo.T001 t001 on  t001.BUKRS COLLATE DATABASE_DEFAULT = b.BUKRS COLLATE DATABASE_DEFAULT



GO
/****** Object:  View [KEU_ZBB].[UVW_SA_BB_DETL]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE  VIEW [KEU_ZBB].[UVW_SA_BB_DETL] AS
WITH CTE_T
AS(
 SELECT DISTINCT [FISC_YR] ,[FISC_PD] 
,(SELECT replace([FISC_PD] -1,0,12) FROM KEU_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Closed_Pd
,(SELECT case when [FISC_PD]=1 then [FISC_YR]-1  else  [FISC_YR]  end [FISC_YR]   FROM KEU_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Yr
FROM dbo.UVW_FISC_CAL WITH (NOLOCK) 
WHERE  [FISC_YR] = (SELECT [FISC_YR] -1 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR  [FISC_YR] = (SELECT [FISC_YR] -2 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR (([FISC_YR] = (SELECT [FISC_YR]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]))
AND ([FISC_PD] < =(SELECT [FISC_PD]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])))
)
SELECT * FROM 
(
SELECT 
			COEP.KOKRS               AS Co_Area, 
			COEP.PERIO               AS Pd,
			COEP.WTGBTR              AS Tot_Val_Trns_Curr,
			COEP.WOGBTR              AS Tot_Val_Obj_Curr,
			COEP.WKGBTR              AS Tot_Val_Cntl_Area_Curr,
			COEP.MBGBTR              AS Tot_Qty_Entr,
			ISNULL ((COEP.WOGBTR * CURR_USD.[FCTR_ACTL_USD]),COEP.WOGBTR) AS Tot_Val_Obj_Curr_USD,
			COEP.LEDNR               AS Led_Cntl_Obj,
			COEP.OBJNR               AS Obj_Nbr, 
			COEP.GJAHR               AS Fisc_Yr,
			COEP.WRTTP               AS Val_Typ,
			COEP.KSTAR               AS Cost_Ele, 
			COEP.VRGNG               AS Co_Bus_Trns,
			COEP.BEKNZ               AS Db_Cr_Ind,
			COEP.TWAER               AS Txn_Curr, 
			COEP.OWAER               AS Curr_Key,
			COEP.GKONT               AS Offst_Acct_Nbr,
			COEP.GKOAR               AS Offst_Acct_Typ, 
			COEP.WERKS               AS Plnt,
			COEP.EBELN               AS Pur_Doc_Nbr,
			COEP.EBELP               AS Itm_Nbr_Pur_Doc, 
			EKKO.LIFNR               AS Vend_Nbr,
			LFA1.NAME1               AS Vend_Nm, 
			EKKO.LIFRE               AS Invc_Prt_Nbr,
			LFA1.NAME1               AS Invc_Prt_Nm,
			AUFK.AUFNR               AS Ordr_Nbr,
			AUFK.AUART               AS Ordr_Typ,
			AUFK.AUTYP               AS Ordr_Catg,
			AUFK.KTEXT               AS Ordr_Nm,
			AUFK.KOSTV               AS Resp_Cost_Ctr,
			AUFK.KSTAR               AS Sett_Cost_Ele,
			AUFK.KOSTL               AS Sett_Cost_Ctr,
			AUFK.SAKNR               AS Gl_Acct_Sett,
			AUFK.USER2               AS Pers_Resp,
			AUFK.PRCTR               AS Prft_Ctr,
			CEPCT.KTEXT              AS Prft_Ctr_Nm,
			COEP.BUKRS               AS Co_Cd, 
			COEP.BELNR               AS Doc_Nbr,
			COEP.VERSN               AS Vrsn,
			T001.BUTXT               AS Co_Cd_Desc,
			ACNT.ACCT_DESC           AS Acct_Desc, 
			ACNT.ACCT_CATEG          AS Acct_Categ, 
			ACNT.ACCT_SUB_CATEG      AS Acct_Sub_Categ, 
			CCH.CC_DESC              AS CC_Desc, 
			CCH.LVL0_DESC            AS Lvl0_Desc, 
			CCH.LVL1_DESC            AS Lvl1_Desc, 
			CCH.LVL1_CD              AS Lvl1_Cd, 
			CCH.LVL2_DESC            AS Lvl2_Desc, 
			CCH.LVL2_CD              AS Lvl2_Cd, 
			CCH.LVL3_DESC            AS Lvl3_Desc, 
			CCH.LVL3_CD              AS Lvl3_Cd, 
			CCH.LVL4_DESC            AS Lvl4_Desc, 
			CCH.LVL4_CD              AS Lvl4_Cd, 
			CCH.LVL5_DESC            AS Lvl5_Desc, 
			CCH.LVL5_CD              AS Lvl5_Cd,
			CCH.LVL6_DESC            AS Lvl6_Desc,     
		    CCH.LVL6_CD              AS Lvl6_Cd,       
		    CCH.LVL7_DESC            AS Lvl7_Desc,     
		    CCH.LVL7_CD              AS Lvl7_Cd,
			CCH.LOCAL_CURR           AS Local_Curr,
			ION.ION_CD               AS Ion_Cd,
			ION.[ION_DESC]			 AS [Ion_Desc],
			ION.[L0_DESC]			 AS [L0_Desc],
			ION.[L1_CD]				 AS [L1_Cd],
			ION.[L1_DESC]			 AS [L1_Desc],
			ION.[L2_CD]				 AS [L2_Cd],
			ION.[L2_DESC]			 AS [L2_Desc],
			ION.[L3_CD]				 AS [L3_Cd],
			ION.[L3_DESC]			 AS [L3_Desc],
			ION.[L4_CD]				 AS [L4_Cd],
			ION.[L4_DESC]			 AS [L4_Desc],
			ION.[L5_CD]				 AS [L5_Cd],
			ION.[L5_DESC]			 AS [L5_Desc],
			ION.[L6_CD]				 AS [L6_Cd],
			ION.[L6_DESC]			 AS [L6_Desc],
			ION.[L7_CD]				 AS [L7_Cd],
			ION.[L7_DESC]			 AS [L7_Desc], 
			CTE_T.Curr_Fisc_Closed_Pd     AS Curr_Fisc_Closed_Pd,
			CTE_T.Curr_Fisc_Yr            AS Curr_Fisc_Yr
 FROM   KEU_ECC.dbo.COEP COEP WITH(NOLOCK)	
		INNER JOIN CTE_T ON [FISC_YR] =COEP.GJAHR  AND [FISC_PD]=COEP.PERIO
		AND COEP.KOKRS IN ('KEZA','PIZA')
		AND (COEP.OBJNR >= 'OR000061000000' AND COEP.OBJNR <= 'OR000066999999') AND COEP.VERSN='000'
		INNER JOIN [KAP_EXTERNAL].[dbo].ACCT_HRCHY_ZBB ACNT WITH(NOLOCK) 
		ON ACNT.[GL_ACCT] Collate Database_Default = COEP.KSTAR Collate Database_Default AND ACNT.DW_DEL_BIT=0
		LEFT OUTER JOIN KEU_ECC.dbo.EKKO EKKO WITH(NOLOCK) 
		ON COEP.EBELN= EKKO.EBELN 
		LEFT OUTER JOIN KEU_ECC. dbo.LFA1 LFA1 WITH(NOLOCK) 
		ON EKKO.LIFNR= LFA1.LIFNR
		LEFT OUTER JOIN KEU_ECC.dbo.AUFK AUFK  WITH(NOLOCK)
		ON AUFK.OBJNR= COEP.OBJNR ---AUFK.KSTAR=COEP.KSTAR
		LEFT OUTER JOIN KEU_ECC.dbo.CEPCT CEPCT WITH(NOLOCK) 
		ON CEPCT.PRCTR =AUFK.PRCTR 
		LEFT JOIN KEU_ECC.dbo.T001 ON t001.BUKRS COLLATE DATABASE_DEFAULT = COEP.BUKRS COLLATE DATABASE_DEFAULT
		INNER JOIN [KAP_EXTERNAL].[dbo].CC_HRCHY_ZBB CCH  WITH(NOLOCK) 	
		ON CCH.CC_NBR Collate Database_Default =AUFK.KOSTV Collate Database_Default AND  CCH.DW_DEL_BIT=0
		INNER JOIN [KAP_EXTERNAL].[dbo].ION_HRCHY_ZBB ION WITH (NOLOCK) 
	    ON ION.ION_CD COLLATE Database_Default = AUFK.AUFNR COLLATE Database_Default AND ION.DW_DEL_BIT=0
		LEFT JOIN KAP_FIN.[KAP_ZBB].[UVW_CURR_EXCHNG_FMT_FLAT] CURR_USD WITH (NOLOCK) 
		ON CURR_USD.FR_CURR Collate Database_Default = COEP.OWAER Collate Database_Default
		AND COEP.GJAHR = CURR_USD.YR AND COEP.PERIO = CURR_USD.PD		
)  a 






GO
/****** Object:  View [KEU_ZBB].[UVW_SA_NBB_ACTL_BDG]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [KEU_ZBB].[UVW_SA_NBB_ACTL_BDG]
as 
WITH CTE_T
AS(
/*
SELECT DISTINCT [FISC_YR] ,[FISC_PD] 
,(SELECT replace([FISC_PD] -1,0,12) FROM KEU_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Closed_Pd
,(SELECT case when [FISC_PD]=1 then [FISC_YR]-1  else  [FISC_YR]  end [FISC_YR] FROM KEU_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Yr
FROM dbo.UVW_FISC_CAL WITH (NOLOCK) 
WHERE  [FISC_YR] = (SELECT [FISC_YR] -1 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR  [FISC_YR] = (SELECT [FISC_YR] -2 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR (([FISC_YR] = (SELECT [FISC_YR]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]))
AND ([FISC_PD] < =(SELECT [FISC_PD]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])))
*/
SELECT DISTINCT [FISC_YR] ,[FISC_PD] 
,(SELECT replace([FISC_PD] -1,0,12) FROM KEU_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE CONVERT(char(10), GetDate(),126) BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Closed_Pd
,(SELECT case when [FISC_PD]=1 then [FISC_YR]-1  else  [FISC_YR]  end [FISC_YR] FROM KEU_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE CONVERT(char(10), GetDate(),126) BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Yr
FROM dbo.UVW_FISC_CAL WITH (NOLOCK) 
WHERE  [FISC_YR] in  (SELECT [FISC_YR] -1 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE CONVERT(char(10), GetDate(),126) BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR  [FISC_YR] in (SELECT [FISC_YR] -2 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE CONVERT(char(10), GetDate(),126) BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR (([FISC_YR] in  (SELECT [FISC_YR]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE CONVERT(char(10), GetDate(),126) BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]))
AND ([FISC_PD] <= (SELECT [FISC_PD]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE CONVERT(char(10), GetDate(),126) BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])))
),
CTE
AS (
	SELECT COEP.PERIO AS Pd1
	,SUBSTRING(COEP.OBJNR, 7, 10) AS Cost_Ctr
	,COEP.GJAHR AS Fisc_Yr
	,COEP.OWAER  Collate Database_Default AS Curr_Key
	,COEP.KSTAR AS GL_ACCT
	,COEP.BUKRS AS Co_Cd
	,T001.BUTXT AS Co_Cd_Desc
	,Curr_Fisc_Closed_Pd
	,Curr_Fisc_yr
	,SUM(COEP.WTGBTR) AS Tot_Val_Trns
	,SUM(COEP.WOGBTR) AS Tot_Val_Obj
	,SUM(COEP.WKGBTR) AS Tot_Val_Co_Area
	FROM KEU_ECC.dbo.COEP COEP WITH (NOLOCK)
	INNER JOIN CTE_T ON [Fisc_Yr] =COEP.GJAHR   AND [Fisc_Pd]=COEP.PERIO
	LEFT JOIN KEU_ECC.dbo.T001 ON t001.BUKRS COLLATE DATABASE_DEFAULT = COEP.BUKRS COLLATE DATABASE_DEFAULT
	WHERE COEP.OBJNR LIKE 'KS%'AND COEP.VERSN = '000' and  COEP.KOKRS IN ('KEZA','PIZA')
	GROUP BY COEP.PERIO
	,COEP.GJAHR
	,COEP.OBJNR
	,COEP.KSTAR
	,COEP.OWAER	
	,COEP.BUKRS
	,T001.BUTXT
    ,Curr_Fisc_Closed_Pd
	,Curr_Fisc_Yr
	)
	
,CTE1
AS (
	SELECT Cost_Ctr_Cd, Cost_Curr_Typ, REPLACE(LTRIM(RTRIM(Acct_Cd)), '  ', '')Acct_Cd, Pd, Yr,[Actual],[Budget],[6&6],[3&9],[9&3]
	FROM (
		SELECT Cost_Ctr_Cd, Cost_Curr_Typ,  Replicate('0',10 - Len(CAST(Acct_Cd AS VARCHAR(10))))+CAST(Acct_Cd AS VARCHAR(10)) Acct_Cd, Pd, Yr, ISNULL(Amt,0)Amt, Ver 
		FROM KAP_FIN.[KAP_ZBB].[UVW_NBB_BDG] WITH (NOLOCK)
		WHERE Yr IN  ( SELECT DISTINCT Fisc_Yr FROM CTE_T)
		AND Cost_Curr_Typ='ZAR'
		) d
	pivot(sum(Amt) FOR Ver IN (
				[Actual]
				,[Budget]
				,[6&6]
				,[3&9]
				,[9&3]
				)) piv
	)


,CTE1_1
as(
SELECT Cost_Ctr_Cd, CSKS.BUKRS as Co_Cd, t001.BUTXT as Co_Cd_Desc, Cost_Curr_Typ, Acct_Cd, Pd, Yr,[Actual],[Budget],[6&6],[3&9],[9&3]
	FROM CTE1
	left outer join KEU_ECC.dbo.CSKS CSKS with(nolock)
	on CTE1. Cost_Ctr_Cd  COLLATE DATABASE_DEFAULT = CSKS.KOSTL COLLATE DATABASE_DEFAULT
	left outer join KEU_ECC.dbo.T001 t001 
	on  t001.BUKRS COLLATE DATABASE_DEFAULT = CSKS.BUKRS COLLATE DATABASE_DEFAULT
)

,CTE2
AS (
	SELECT ISNULL(Cost_Ctr,Cost_Ctr_Cd)Cost_Ctr
		,ISNULL(Curr_Key,Cost_Curr_Typ)Curr_Key
		,ISNULL( GL_ACCT,Acct_Cd)Acct_Cd 
		,ISNULL(Pd1,Pd)Pd
		,ISNULL(Fisc_Yr,Yr) Yr
		,Curr_Key as Actl_Cur_Key
		,Isnull(Cost_Curr_Typ, Curr_Key) as Bdg_Cur_Key
		,a.Co_Cd
		,a.Co_Cd_Desc	
		,Curr_Fisc_Closed_Pd
	    ,Curr_Fisc_Yr	
		,ISNULL(Tot_Val_Obj,0)Tot_Val_Obj
		,ISNULL ([Actual],0) AS 'Bdg_Actl_Amt'
		,ISNULL([Budget],0)  AS 'Bdg_Bdg_Amt'
		--,ISNULL([6&6],0)  AS 'Bdg_6&6_Amt'
		--,ISNULL([3&9],0)  AS 'Bdg_3&9_Amt'
		--,ISNULL([9&3],0)  AS 'Bdg_9&3_Amt'
		,ISNULL(CASE WHEN ISNULL([6&6],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL ([Actual],0) =0 then [Tot_Val_Obj] 
		WHEN  ISNULL([6&6],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj,0)=0 and   ISNULL ([Actual],0) >0 then ISNULL(Tot_Val_Obj,0)
		WHEN  ISNULL([6&6],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj,0)> 0 and   ISNULL ([Actual],0) >0 then ISNULL(Tot_Val_Obj,0)
		WHEN  ISNULL([6&6],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj,0)> 0 and   ISNULL ([Actual],0) =0 then ISNULL(Tot_Val_Obj,0) 
		WHEN  ISNULL([6&6],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj,0) < 0 and   ISNULL ([Actual],0) < 0 then ISNULL(Tot_Val_Obj,0)
		WHEN  ISNULL([6&6],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj,0) < 0 and   ISNULL ([Actual],0) > 0 then ISNULL(Tot_Val_Obj,0) 
		WHEN  ISNULL([6&6],0) = 0 and  ISNULL(Pd1,Pd) <7  and ISNULL(Tot_Val_Obj,0) > 0 and   ISNULL ([Actual],0) < 0   then ISNULL(Tot_Val_Obj,0)
		else ISNULL([6&6],0) end,0)  as[Bdg_6&6_Amt]
		,ISNULL(CASE WHEN ISNULL([3&9],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL ([Actual],0) =0 then ISNULL(Tot_Val_Obj,0) 
		WHEN  ISNULL([3&9],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj,0)=0  and ISNULL ([Actual],0) >0 then ISNULL(Tot_Val_Obj,0) 
		WHEN  ISNULL([3&9],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj,0)> 0 and   ISNULL ([Actual],0) >0 then ISNULL(Tot_Val_Obj,0) 
		WHEN  ISNULL([3&9],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj,0)> 0 and   ISNULL ([Actual],0) =0 then ISNULL(Tot_Val_Obj,0) 
		WHEN  ISNULL([3&9],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj,0) < 0 and   ISNULL ([Actual],0) < 0 then ISNULL(Tot_Val_Obj,0) 
		WHEN  ISNULL([3&9],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj,0) < 0 and   ISNULL ([Actual],0) > 0 then ISNULL(Tot_Val_Obj,0) 
		WHEN  ISNULL([3&9],0) = 0 and  ISNULL(Pd1,Pd) <4  and ISNULL(Tot_Val_Obj,0) > 0 and   ISNULL ([Actual],0) < 0   then ISNULL(Tot_Val_Obj,0) 
		else ISNULL([3&9],0) end,0)  as[Bdg_3&9_Amt]
		,ISNULL(CASE WHEN ISNULL([9&3],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL ([Actual],0) =0 then ISNULL(Tot_Val_Obj,0) 
		WHEN  ISNULL([9&3],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj,0)=0 and ISNULL ([Actual],0) >0 then ISNULL(Tot_Val_Obj,0) 
		WHEN  ISNULL([9&3],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj,0)> 0 and   ISNULL ([Actual],0) >0 then ISNULL(Tot_Val_Obj,0) 
		WHEN  ISNULL([9&3],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj,0)> 0 and   ISNULL ([Actual],0) =0 then ISNULL(Tot_Val_Obj,0)
		WHEN  ISNULL([9&3],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj,0) < 0 and   ISNULL ([Actual],0) < 0 then ISNULL(Tot_Val_Obj,0)
		WHEN  ISNULL([9&3],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj,0) < 0 and   ISNULL ([Actual],0) > 0 then ISNULL(Tot_Val_Obj,0) 
		WHEN  ISNULL([9&3],0) = 0 and  ISNULL(Pd1,Pd) <10  and ISNULL(Tot_Val_Obj,0) > 0 and   ISNULL ([Actual],0) < 0   then ISNULL(Tot_Val_Obj,0)  
		else ISNULL([9&3],0) end ,0) as[Bdg_9&3_Amt]

		,CASE  when (Curr_Key IS NULL) OR (Cost_Curr_Typ IS NULL)  THEN NULL
		  when Curr_Key COLLATE Database_Default =Cost_Curr_Typ COLLATE Database_Default THEN 'Y'
	      else'N'
	END as 'Actl_Bdg_Curr_Match'
	FROM CTE a
	FULL JOIN CTE1_1 b ON a.Cost_Ctr Collate Database_Default = b.Cost_Ctr_Cd Collate Database_Default
	    AND a.Fisc_Yr = b.Yr
		AND a.Pd1 = b.Pd
		AND a.Co_Cd  = b.Co_Cd
		AND a.GL_ACCT Collate Database_Default = b.Acct_Cd Collate Database_Default
		)

SELECT distinct 
     Cost_Ctr
	,Curr_Key
	,Acct_Cd
	,Pd
	,Yr
	,ISNULL(Tot_Val_Obj,0)Tot_Val_Obj
	,Actl_Cur_Key
	,Bdg_Cur_Key
	,Co_Cd
	,Co_Cd_Desc
	,Actl_Bdg_Curr_Match
	,ACCT_DESC as [Acct_Desc]
	,ACCT_CATEG as [Acct_Categ]
	,ACCT_SUB_CATEG as [Acct_Sub_Categ]
	,CC_DESC AS Cc_Desc
	,LVL0_DESC  AS [Lvl0_Desc]
	,LVL1_DESC AS  [Lvl1_Desc]
	,LVL1_CD AS [Lvl1_Cd]
	,LVL2_DESC AS [Lvl2_Desc]
	,LVL2_CD AS [Lvl2_Cd]
	,LVL3_DESC AS [Lvl3_Desc]
	,LVL3_CD AS [Lvl3_Cd]
	,LVL4_DESC AS [Lvl4_Desc]
	,LVL4_CD AS [Lvl4_Cd]
	,LVL5_DESC AS [Lvl5_Desc]
	,LVL5_CD AS [Lvl5_Cd]
	,LVL6_DESC AS Lvl6_Desc 
	,LVL6_CD AS Lvl6_Cd
	,LVL7_DESC AS Lvl7_Desc 
	,LVL7_CD AS Lvl7_Cd
	,LOCAL_CURR AS Local_Curr
	,a.Curr_Fisc_Closed_Pd
	,a.Curr_Fisc_yr
	,ISNULL([Bdg_Actl_Amt],0) as [Bdg_Actl_Amt]
	,ISNULL([Bdg_Bdg_Amt],0) as [Bdg_Bdg_Amt]
	,ISNULL([Bdg_6&6_Amt],0) as [Bdg_6&6_Amt]
	,ISNULL([Bdg_3&9_Amt],0) as [Bdg_3&9_Amt]
	,ISNULL([Bdg_9&3_Amt],0) as [Bdg_9&3_Amt]
	,ISNULL([FCTR_BDG_USD] * [Tot_Val_Obj],0) as Actl_USD_Amt_Bdg_Ver 
	,ISNULL([FCTR_BDG_USD] * [Bdg_Bdg_Amt],0)  as Bdg_USD_Amt
	,ISNULL([FCTR_39_USD] * [Bdg_3&9_Amt],0) as Bdg39_USD_Amt
	,ISNULL([FCTR_66_USD] * [Bdg_6&6_Amt],0) as Bdg66_USD_Amt
	,ISNULL([FCTR_93_USD] * [Bdg_9&3_Amt] ,0)as Bdg93_USD_Amt
	,ISNULL([FCTR_39_USD] * [Tot_Val_Obj],0) as Actl_Amt_USD_39_Ver 
	,ISNULL([FCTR_66_USD] * [Tot_Val_Obj],0) as Actl_Amt_USD_66_Ver 
	,ISNULL([FCTR_93_USD] * [Tot_Val_Obj],0) as Actl_Amt_USD_93_Ver 
	--,ISNULL([FCTR_BDG_USD] * [Tot_Val_Obj],0) as Actl_Amt_USD_Bdg_Ver 

FROM CTE2 a
INNER JOIN [KAP_EXTERNAL].[dbo].ACCT_HRCHY_ZBB ACNT WITH (NOLOCK) 
ON ACNT.GL_ACCT Collate Database_Default = Acct_Cd Collate Database_Default  AND ACNT.[DW_DEL_BIT] = 0
AND ACNT.ACCT_CATEG NOT IN ('ADVERTISING' ,'COGS PROMOTION','VALUE ADDED PROMOTIONS' ,'COUPONS')
INNER JOIN [KAP_EXTERNAL].[dbo].CC_HRCHY_ZBB CCH WITH (NOLOCK) 
ON REPLICATE('0', 10 - LEN(RTRIM(CCH.CC_NBR))) + RTRIM(CCH.CC_NBR) Collate Database_Default = Cost_Ctr Collate Database_Default
AND CCH.[DW_DEL_BIT] = 0
LEFT JOIN [KAP_FIN].[KAP_ZBB].[UVW_CURR_EXCHNG_FMT_FLAT] CURR_USD WITH (NOLOCK) 
		ON CURR_USD.FR_CURR COLLATE Database_Default = Curr_Key COLLATE Database_Default
		AND Yr = CURR_USD.YR 
		AND Pd= CURR_USD.PD
		--AND CURR_USD.FR_CURR='ZAR'

























GO
/****** Object:  View [KEU_ZBB].[UVW_SA_NBB_DETL]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [KEU_ZBB].[UVW_SA_NBB_DETL]
AS 
WITH CTE_T
AS(
SELECT DISTINCT [FISC_YR] ,[FISC_PD] 
,(SELECT replace([FISC_PD] -1,0,12) FROM KEU_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Closed_Pd
,(SELECT case when [FISC_PD]=1 then [FISC_YR]-1  else  [FISC_YR]  end [FISC_YR]   FROM KEU_FIN.dbo.UVW_FISC_CAL WITH (NOLOCK)
  WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]) Curr_Fisc_Yr
FROM dbo.UVW_FISC_CAL WITH (NOLOCK) 
WHERE  [FISC_YR] = (SELECT [FISC_YR] -1 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR  [FISC_YR] = (SELECT [FISC_YR] -2 FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])
OR (([FISC_YR] = (SELECT [FISC_YR]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT]))
AND ([FISC_PD] < =(SELECT [FISC_PD]   FROM dbo.UVW_FISC_CAL WITH (NOLOCK) WHERE GETDATE() BETWEEN [FISC_WK_STRT_DT] AND [FISC_WK_END_DT])))

)
SELECT
		COEP.KOKRS                 	AS Co_Area,
		COEP.BELNR                 	AS Doc_Nbr,
		COEP.BUZEI                 	AS Post_Row,
		COEP.PERIO                 	AS Pd,
		COEP.WTGBTR                	AS Tot_Val_Trns,
		COEP.WOGBTR                	AS Tot_Val_Obj,
		COEP.WKGBTR                	AS Tot_Val_Co_Area,
		COEP.MBGBTR                	AS Tot_Qty_Entr,
		ISNULL((COEP.WOGBTR * CURR_USD.[FCTR_ACTL_USD]),COEP.WOGBTR) AS Tot_Val_Obj_Curr_USD,
		COEP.LEDNR                 	AS Co_Led,
		COEP.OBJNR                 	AS Obj_Nbr,
		COEP.GJAHR                 	AS Fisc_Yr,
		COEP.WRTTP                 	AS Val_Typ,
		COEP.VERSN                 	AS Vrsn,
		COEP.KSTAR                 	AS Cost_Ele,
		CSKU.MCTXT                 	AS Cost_Ele_Nm,
		COEP.VRGNG                 	AS Co_Bus_Trns,
		COEP.BEKNZ                 	AS Db_Cr_Ind,
		COEP.TWAER                 	AS Txn_Curr,
		COEP.OWAER                 	AS Curr_Key,
		COEP.SGTXT                 	AS Seg_Txt,
		COEP.REFBZ                 	AS Ref_Post_Row,
		COEP.ZLENR                 	AS Doc_Itm_Nbr,
		COEP.GKONT                 	AS Offst_Acct_Nbr,
		COEP.GKOAR                 	AS Offst_Acct_Typ,
		COEP.WERKS                 	AS Plnt,
		COEP.EBELN                 	AS Pur_Doc_Nbr,
		COEP.EBELP                 	AS Pur_Doc_Itm,
		EKPO.TXZ01                 	AS Po_Itm_Txt,
		EKKO.LIFNR                 	AS Vend_Nbr,
		LFA1.NAME1                 	AS Vend_Nm,
		EKKO.LIFRE                 	AS Invc_Prt_Nbr,
		LFA1.NAME1                 	AS Invc_Prt_Nm,
		SUBSTRING(COEP.OBJNR,7,10) 	AS Cost_Ctr,
		CSKT.KTEXT                 	AS Cost_Ctr_Nm,
		CSKS.PRCTR                 	AS Prft_Ctr,
		CEPCT.KTEXT                	AS Prft_Ctr_Nm,
		COEP.BUKRS                 	AS Co_Cd,
		T001.BUTXT                  AS Co_Cd_Desc,
		COEP.FKBER                 	AS Fcn_Area,
		COEP.SCOPE                 	AS Obj_Clas,
		COBK.BLTXT                 	AS Doc_Hdr_Txt,
		COBK.USNAM                 	AS Usr_Nm,
		COBK.BLART                 	AS Doc_Typ,
		ACNT.ACCT_DESC             	AS Acct_Desc,
		ACNT.ACCT_CATEG            	AS Acct_Categ,
		ACNT.ACCT_SUB_CATEG        	AS Acct_Sub_Categ,
		CCH.CC_DESC                	AS Cc_Desc,
		CCH.LVL0_DESC              	AS Lvl0_Desc,
		CCH.LVL1_DESC              	AS Lvl1_Desc,
		CCH.LVL1_CD                	AS Lvl1_Cd,
		CCH.LVL2_DESC              	AS Lvl2_Desc,
		CCH.LVL2_CD                	AS Lvl2_Cd,
		CCH.LVL3_DESC              	AS Lvl3_Desc,
		CCH.LVL3_CD                	AS Lvl3_Cd,
		CCH.LVL4_DESC              	AS Lvl4_Desc,
		CCH.LVL4_CD                	AS Lvl4_Cd,
		CCH.LVL5_DESC              	AS Lvl5_Desc,
		CCH.LVL5_CD                	AS Lvl5_Cd,
		CCH.LVL6_DESC               AS Lvl6_Desc,
		CCH.LVL6_CD                 AS Lvl6_Cd,
		CCH.LVL7_DESC               AS Lvl7_Desc,
		CCH.LVL7_CD                 AS Lvl7_Cd,
		CCH.LOCAL_CURR              AS Local_Curr,
		CTE_T.Curr_Fisc_Closed_Pd   AS Curr_Fisc_Closed_Pd,
	    CTE_T.Curr_Fisc_yr          AS Curr_Fisc_yr
FROM    KEU_ECC.dbo.COEP COEP WITH(NOLOCK)
		INNER JOIN CTE_T ON [Fisc_Yr] =COEP.GJAHR   AND [Fisc_Pd]=COEP.PERIO
		AND COEP.OBJNR LIKE 'KS%' AND COEP.VERSN = '000' AND  COEP.KOKRS  IN ('KEZA','PIZA')
		LEFT OUTER JOIN KEU_ECC.dbo.EKKO EKKO WITH(NOLOCK) 
		ON COEP.EBELN= EKKO.EBELN 
		LEFT OUTER JOIN KEU_ECC.dbo.COBK COBK WITH(NOLOCK) 
		ON COBK.KOKRS=COEP.KOKRS AND COBK.BELNR=COEP.BELNR AND COBK.GJAHR=COEP.GJAHR
		LEFT OUTER JOIN KEU_ECC.dbo.EKPO  EKPO WITH(NOLOCK) 
		ON EKPO.EBELN=COEP.EBELN AND EKPO.EBELP=COEP.EBELP
		LEFT OUTER JOIN KEU_ECC.dbo.CSKS CSKS WITH(NOLOCK) 
		ON COEP.KOKRS=CSKS.KOKRS AND CSKS.KOSTL=SUBSTRING( COEP.OBJNR,7,10)AND COEP.KOKRS = CSKS.KOKRS 
		LEFT OUTER JOIN KEU_ECC.dbo.LFA1 LFA1 WITH(NOLOCK)  
		ON EKKO.LIFNR= LFA1.LIFNR
		LEFT OUTER JOIN KEU_ECC.dbo.CSKU CSKU WITH(NOLOCK) 
		ON CSKU.KSTAR=COEP.KSTAR AND   CSKU.SPRAS='E'
		LEFT OUTER JOIN KEU_ECC.dbo.CSKT CSKT WITH(NOLOCK)
		ON CSKT.KOKRS=COEP.KOKRS AND CSKT.KOSTL=SUBSTRING( COEP.OBJNR,7,10) AND CSKS.KOSTL=CSKT.KOSTL AND   CSKT.SPRAS='E'
		LEFT OUTER JOIN KEU_ECC.dbo.CEPCT CEPCT WITH(NOLOCK) 
		ON CEPCT.PRCTR =CSKS.PRCTR 
        LEFT JOIN KEU_ECC.dbo.T001 ON T001.BUKRS COLLATE DATABASE_DEFAULT = COEP.BUKRS COLLATE DATABASE_DEFAULT
		INNER JOIN [KAP_EXTERNAL].[dbo].CC_HRCHY_ZBB CCH WITH(NOLOCK) 
		ON CCH.CC_NBR COLLATE Database_Default=SUBSTRING( COEP.OBJNR,7,10) COLLATE Database_Default AND  CCH.DW_DEL_BIT=0
		INNER JOIN [KAP_EXTERNAL].[dbo].ACCT_HRCHY_ZBB ACNT  WITH(NOLOCK) 
		ON ACNT.[GL_ACCT] COLLATE Database_Default= COEP.KSTAR COLLATE Database_Default	AND ACNT.DW_DEL_BIT=0
		LEFT JOIN [KAP_FIN].[KAP_ZBB].[UVW_CURR_EXCHNG_FMT_FLAT] CURR_USD WITH (NOLOCK) 
		ON CURR_USD.FR_CURR COLLATE Database_Default = COEP.OWAER COLLATE Database_Default
		AND COEP.GJAHR = CURR_USD.YR AND coep.PERIO = CURR_USD.PD




GO
/****** Object:  View [KEU_ZBB].[UVW_BB_Actl_Bdg_Curr_Cnv]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [KEU_ZBB].[UVW_BB_Actl_Bdg_Curr_Cnv] 
as
SELECT a.[Yr]
      ,a.[Pd]
      ,[Ordr_Nbr]
      ,[Acct_Cd]
      ,[Curr_Key]
      ,[Actl_Cur_Key]
      ,[Bdg_Cur_Key]
      ,[Resp_Cost_Ctr]
	  ,Co_Cd
	  ,Co_Cd_Desc
      ,[Tot_Val_Obj_Curr]
      ,[Actl_Bdg_Curr_Match]
      ,[Acct_Desc]
      ,[Acct_Categ]
      ,[Acct_Sub_Categ]
      ,[Cc_Desc]
      ,[Lvl0_Desc]
      ,[Lvl1_Desc]
      ,[Lvl1_Cd]
      ,[Lvl2_Desc]
      ,[Lvl2_Cd]
      ,[Lvl3_Desc]
      ,[Lvl3_Cd]
      ,[Lvl4_Desc]
      ,[Lvl4_Cd]
      ,[Lvl5_Desc]
      ,[Lvl5_Cd]
      ,[Ion_Desc]
      ,[L0_Desc]
      ,[L1_Desc]
      ,[L2_Desc]
      ,[L3_Desc]
      ,[L4_Desc]
      ,[L5_Desc]
      ,[L1_Cd]
      ,[L2_Cd]
      ,[L3_Cd]
      ,[L4_Cd]
      ,[L5_Cd]
      ,[Ion_Id_Desc]
      ,[ION_Id]
      ,[Bdg_Actl_Amt]
      ,[Bdg_Bdg_Amt]
      ,[Bdg_6&6_Amt]
      ,[Bdg_3&9_Amt]
      ,[Bdg_9&3_Amt]
	  ,Curr_Fisc_Closed_Pd
	  ,Curr_Fisc_yr
	  ,[Fctr_Actual_USD]* [Tot_Val_Obj_Curr] as Actl_USD_Amt_Bdg_Ver 
	  ,[Fctr_Budget_USD]*[Bdg_Bdg_Amt]as Bdg_USD_Amt
	  ,[Fctr_3&9_USD]*[Bdg_3&9_Amt] as Bdg39_USD_Amt
	  ,[Fctr_6&6_USD]*[Bdg_6&6_Amt] as Bdg66_USD_Amt
	  ,[Fctr_9&3_USD]*[Bdg_9&3_Amt] as Bdg93_USD_Amt
	  ,[Fctr_Actual_EUR]* [Tot_Val_Obj_Curr] as Actl_EUR_Amt_Bdg_Ver 
	  ,[Fctr_Budget_EUR]*[Bdg_Bdg_Amt]as Bdg_EUR_Amt
	  ,[Fctr_3&9_EUR]*[Bdg_3&9_Amt] as Bdg39_EUR_Amt
	  ,[Fctr_6&6_EUR]*[Bdg_6&6_Amt] as Bdg66_EUR_Amt
	  ,[Fctr_9&3_EUR]*[Bdg_9&3_Amt] as Bdg93_EUR_Amt
	  ,[Fctr_Actual_GBP]* [Tot_Val_Obj_Curr] as Actl_GBP_Amt_Bdg_Ver 
	  ,[Fctr_Budget_GBP]*[Bdg_Bdg_Amt]as Bdg_GBP_Amt
	  ,[Fctr_3&9_GBP]*[Bdg_3&9_Amt] as Bdg39_GBP_Amt
	  ,[Fctr_6&6_GBP]*[Bdg_6&6_Amt] as Bdg66_GBP_Amt
	  ,[Fctr_9&3_GBP]*[Bdg_9&3_Amt] as Bdg93_GBP_Amt
  FROM [KEU_ZBB].[UVW_BB_Actl_Bdg] a WITH (NOLOCK)
  inner join [KEU_ZBB].[Curr_Exchng_Fmt_Flat] b WITH (NOLOCK)
  on a.Yr=b.Yr and a.Pd =b.Pd and a.[Curr_Key]=b.[Fr_Curr]
  

GO
/****** Object:  View [KEU_ZBB].[UVW_BB_Detl_Actl]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [KEU_ZBB].[UVW_BB_Detl_Actl]
AS
SELECT  [Fisc_Yr] 
       ,[Pd] 
       ,[Cost_Ele] 
       ,[Ordr_Nbr]
       ,Curr_Key
	   ,SUM([Tot_Val_Obj_Curr]) as [Tot_Val_Obj_Curr]
	   ,SUM(Tot_Val_Cntl_Area_Curr) AS [Tot_Val_Cntl_Area_Curr]
FROM [KEU_FIN].[KEU_ZBB].[UVW_BB_Detl]
GROUP BY [Fisc_Yr],[Pd],[Cost_Ele],[Ordr_Nbr],Curr_Key


GO
/****** Object:  View [KEU_ZBB].[UVW_NBB_Actl_Bdg_Curr_Cnv]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [KEU_ZBB].[UVW_NBB_Actl_Bdg_Curr_Cnv] 
as
SELECT [Cost_Ctr]
      ,[Curr_Key]
      ,[Acct_Cd]
      ,a.[Pd]
      ,a.[Yr]
      ,[Tot_Val_Obj]
      ,[Actl_Cur_Key]
      ,[Bdg_Cur_Key]
	  ,Co_Cd
	  ,Co_Cd_Desc
      ,[Actl_Bdg_Curr_Match]
      ,[Acct_Desc]
      ,[Acct_Categ]
      ,[Acct_Sub_Categ]
      ,[Cc_Desc]
      ,[Lvl0_Desc]
      ,[Lvl1_Desc]
      ,[Lvl1_Cd]
      ,[Lvl2_Desc]
      ,[Lvl2_Cd]
      ,[Lvl3_Desc]
      ,[Lvl3_Cd]
      ,[Lvl4_Desc]
      ,[Lvl4_Cd]
      ,[Lvl5_Desc]
      ,[Lvl5_Cd]
      ,[Bdg_Actl_Amt]
      ,[Bdg_Bdg_Amt]
      ,[Bdg_6&6_Amt]
      ,[Bdg_3&9_Amt]
      ,[Bdg_9&3_Amt]
	  ,Curr_Fisc_Closed_Pd
	  ,Curr_Fisc_yr
	  ,[Fctr_Actual_USD]* [Tot_Val_Obj] as Actl_USD_Amt_Bdg_Ver 
	  ,[Fctr_Budget_USD]*[Bdg_Bdg_Amt]as Bdg_USD_Amt
	  ,[Fctr_3&9_USD]*[Bdg_3&9_Amt] as Bdg39_USD_Amt
	  ,[Fctr_6&6_USD]*[Bdg_6&6_Amt] as Bdg66_USD_Amt
	  ,[Fctr_9&3_USD]*[Bdg_9&3_Amt] as Bdg93_USD_Amt
	  ,[Fctr_Actual_EUR]* [Tot_Val_Obj] as Actl_EUR_Amt_Bdg_Ver 
	  ,[Fctr_Budget_EUR]*[Bdg_Bdg_Amt]as Bdg_EUR_Amt
	  ,[Fctr_3&9_EUR]*[Bdg_3&9_Amt] as Bdg39_EUR_Amt
	  ,[Fctr_6&6_EUR]*[Bdg_6&6_Amt] as Bdg66_EUR_Amt
	  ,[Fctr_9&3_EUR]*[Bdg_9&3_Amt] as Bdg93_EUR_Amt
	  ,[Fctr_Actual_GBP]* [Tot_Val_Obj] as Actl_GBP_Amt_Bdg_Ver 
	  ,[Fctr_Budget_GBP]*[Bdg_Bdg_Amt]as Bdg_GBP_Amt
	  ,[Fctr_3&9_GBP]*[Bdg_3&9_Amt] as Bdg39_GBP_Amt
	  ,[Fctr_6&6_GBP]*[Bdg_6&6_Amt] as Bdg66_GBP_Amt
	  ,[Fctr_9&3_GBP]*[Bdg_9&3_Amt] as Bdg93_GBP_Amt
  FROM [KEU_ZBB].[UVW_NBB_Actl_Bdg] a WITH (NOLOCK)
  INNER JOIN [KEU_ZBB].[Curr_Exchng_Fmt_Flat] b WITH (NOLOCK) on a.Yr=b.Yr and a.Pd=b.Pd and a.[Curr_Key]= b. [Fr_Curr]





GO
/****** Object:  View [KEU_ZBB].[UVW_Acct_Hrchy_ZBB]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [KEU_ZBB].[UVW_Acct_Hrchy_ZBB]  AS


SELECT REPLICATE('0', 10 - LEN(RTRIM(LTRIM([GL_Acct])))) + RTRIM(LTRIM([GL_Acct]))  AS  [GL_Acct]
      ,RTRIM(LTRIM([Acct_Desc]))     AS [Acct_Desc]
      ,RTRIM(LTRIM([Acct_Categ]))     AS [Acct_Categ]
      ,RTRIM(LTRIM([Acct_Sub_Categ]))     AS [Acct_Sub_Categ]
      ,[DW_Cre_Ts]
      ,[DW_Cre_Usr]
      ,[DW_Mod_Ts]
      ,[DW_Mod_Usr]
      ,[DW_Del_Bit]
      ,[DW_Del_Usr]
      ,[DW_Del_Ts]
      --,[Fcn]
  FROM [KEU_FIN].[KEU_ZBB].[Acct_Hrchy_ZBB]  (NOLOCK)
  WHERE [DW_Del_Bit] = 0





GO
/****** Object:  View [KEU_ZBB].[UVW_BB_Actl_Detl]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [KEU_ZBB].[UVW_BB_Actl_Detl]
AS
WITH CURR_Exch
AS (
	SELECT *
	FROM KEU_FIN.KEU_ZBB.Curr_Exchng_Fmt CURR_Exch WITH (NOLOCK)
	WHERE Ver = 'Actual'
	)
SELECT *
FROM (
	SELECT COEP.KOKRS AS Co_Area
		,COEP.PERIO AS Pd
		,COEP.WTGBTR AS Tot_Val_Trns_Curr
		,COEP.WOGBTR AS Tot_Val_Obj_Curr
		,COEP.WKGBTR AS Tot_Val_Cntl_Area_Curr
		,COEP.MBGBTR AS Tot_Qty_Entr
		,CASE 
			WHEN CURR_USD.To_Curr = 'USD'
				THEN (COEP.WOGBTR * CURR_USD.Fctr)
			END AS Tot_Val_USD_Trns_Curr
		,CASE 
			WHEN CURR_GBP.To_Curr = 'GBP'
				THEN (COEP.WOGBTR * CURR_GBP.Fctr)
			END AS Tot_Val_GBP_Trns_Curr
		,CASE 
			WHEN CURR_EUR.To_Curr = 'EUR'
				THEN (COEP.WOGBTR * CURR_EUR.Fctr)
			END AS Tot_Val_EUR_Trns_Curr
		,COEP.LEDNR AS Led_Cntl_Obj
		,COEP.OBJNR AS Obj_Nbr
		,COEP.GJAHR AS Fisc_Yr
		,COEP.WRTTP AS Val_Typ
		,COEP.KSTAR AS Cost_Ele
		,COEP.VRGNG AS Co_Bus_Trns
		,COEP.BEKNZ AS Db_Cr_Ind
		,COEP.TWAER AS Txn_Curr
		,COEP.OWAER AS Curr_Key
		,COEP.ZLENR AS Doc_Itm_Nbr
		,COEP.GKONT AS Offst_Acct_Nbr
		,COEP.GKOAR AS Offst_Acct_Typ
		,COEP.WERKS AS Plnt
		,COEP.EBELN AS Pur_Doc_Nbr
		,COEP.EBELP AS Itm_Nbr_Pur_Doc
		,EKKO.LIFNR AS Vend_Nbr
		,LFA1.NAME1 AS Vend_Nm
		,EKKO.LIFRE AS Invc_Prt_Nbr
		,LFA1.NAME1 AS Invc_Prt_Nm
		,substring(AUFK.AUFNR,5,12) AS Ordr_Nbr
		,AUFK.AUART AS Ordr_Typ
		,AUFK.AUTYP AS Ordr_Catg
		,AUFK.KTEXT AS Ordr_Nm
		,AUFK.KOSTV AS Resp_Cost_Ctr
		,AUFK.KSTAR AS Sett_Cost_Ele
		,AUFK.KOSTL AS Sett_Cost_Ctr
		,AUFK.SAKNR AS Gl_Acct_Sett
		,AUFK.USER2 AS Pers_Resp
		,AUFK.PRCTR AS Prft_Ctr
		,CEPCT.KTEXT AS Prft_Ctr_Nm
		,COEP.BUKRS AS Co_Cd
		,t001.BUTXT AS Co_Cd_Desc
		,COEP.BELNR AS Doc_Nbr
		,COEP.BUZEI AS Post_Row
		,COEP.VERSN AS Vrsn
		,ACNT.Acct_Desc AS Acct_Desc
		,ACNT.Acct_Categ AS Acct_Categ
		,ACNT.Acct_Sub_Categ AS Acct_Sub_Categ
		,CCH.CC_Desc AS Cc_Desc
		,CCH.Lvl0_Desc AS Lvl0_Desc
		,CCH.Lvl1_Desc AS Lvl1_Desc
		,CCH.Lvl1_Cd AS Lvl1_Cd
		,CCH.Lvl2_Desc AS Lvl2_Desc
		,CCH.Lvl2_Cd AS Lvl2_Cd
		,CCH.Lvl3_Desc AS Lvl3_Desc
		,CCH.Lvl3_Cd AS Lvl3_Cd
		,CCH.Lvl4_Desc AS Lvl4_Desc
		,CCH.Lvl4_Cd AS Lvl4_Cd
		,CCH.Lvl5_Desc AS Lvl5_Desc
		,CCH.Lvl5_Cd AS Lvl5_Cd
		,ION.ION_DESC AS Ion_Desc
		,ION.L0_Desc AS Ion_L0_Desc
		,ION.L1_Desc AS Ion_L1_Desc
		,ION.L2_Desc AS Ion_L2_Desc
		,ION.L3_Desc AS Ion_L3_Desc
		,ION.L4_Desc AS Ion_L4_Desc
		,ION.L5_Desc AS Ion_L5_Desc
		,ION.L1_Cd AS Ion_L1_Cd
		,ION.L2_Cd AS Ion_L2_Cd
		,ION.L3_Cd AS Ion_L3_Cd
		,ION.L4_Cd AS Ion_L4_Cd
		,ION.L5_Cd AS Ion_L5_Cd
		,ION.ION_ID_Desc AS Ion_Id_Desc
		
	FROM KEU_ECC.dbo.COEP COEP WITH (NOLOCK)
	LEFT JOIN KEU_ECC.dbo.EKKO EKKO WITH (NOLOCK) ON COEP.EBELN = EKKO.EBELN
	LEFT JOIN KEU_ECC.dbo.LFA1 LFA1 WITH (NOLOCK) ON EKKO.LIFNR = LFA1.LIFNR
	LEFT JOIN KEU_ECC.STG.STG_AUFK AUFK WITH (NOLOCK) ON AUFK.OBJNR = COEP.OBJNR
	LEFT JOIN KEU_ECC.dbo.CEPCT CEPCT WITH (NOLOCK) ON CEPCT.PRCTR = AUFK.PRCTR
	LEFT JOIN KEU_FIN.KEU_ZBB.CC_Hrchy_ZBB CCH WITH (NOLOCK) ON CCH.CC_Nbr Collate Database_Default = SUBSTRING(AUFK.KOSTV, 4, 10) Collate 

Database_Default
LEFT OUTER JOIN KEU_ECC.dbo.T001 ON t001.BUKRS COLLATE DATABASE_DEFAULT=COEP.BUKRS COLLATE DATABASE_DEFAULT
	LEFT JOIN KEU_FIN.KEU_ZBB.ION_Hrchy_ZBB ION WITH (NOLOCK) ON REPLICATE('0', 12 - LEN(RTRIM(ION.ION_ID))) + RTRIM(ION.ION_ID) Collate 

Database_Default = AUFK.AUFNR Collate Database_Default
	LEFT JOIN CURR_Exch CURR_USD WITH (NOLOCK) ON CURR_USD.Fr_Curr Collate Database_Default = COEP.OWAER Collate Database_Default
		AND COEP.GJAHR = CURR_USD.YR
		AND CURR_USD.To_Curr = 'USD'
		AND coep.PERIO = CURR_USD.pd
	LEFT JOIN CURR_Exch CURR_GBP WITH (NOLOCK) ON CURR_GBP.Fr_Curr Collate Database_Default = COEP.OWAER Collate Database_Default
		AND COEP.GJAHR = CURR_GBP.YR
		AND CURR_GBP.To_Curr = 'GBP'
		AND coep.PERIO = CURR_GBP.pd
	LEFT JOIN CURR_Exch CURR_EUR WITH (NOLOCK) ON CURR_EUR.Fr_Curr Collate Database_Default = COEP.OWAER Collate Database_Default
		AND coep.PERIO = CURR_EUR.pd
		AND COEP.GJAHR = CURR_EUR.YR
		AND CURR_EUR.To_Curr = 'EUR'
	INNER JOIN KEU_FIN.KEU_ZBB.Acct_Hrchy_ZBB ACNT WITH (NOLOCK) ON ACNT.GL_ACCT Collate Database_Default = COEP.KSTAR Collate Database_Default
	) a
WHERE (
		(
			a.Obj_Nbr >= 'OR000061000000'
			AND a.Obj_Nbr <= 'OR000066999999'
			)
		AND a.Vrsn = '000'
		)
	AND a.Fisc_Yr BETWEEN (YEAR(GETDATE()) - 2)
		AND (YEAR(GETDATE()))


GO
/****** Object:  View [KEU_ZBB].[UVW_CC_Hrchy_ZBB]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [KEU_ZBB].[UVW_CC_Hrchy_ZBB]  AS

SELECT REPLICATE('0', 10 - LEN(RTRIM(CCH.CC_Nbr))) + RTRIM(CCH.CC_Nbr)  AS [CC_Nbr]
      ,[CC_Desc]
      ,[Lvl0_Desc]
      ,[Lvl1_Desc]
      ,[Lvl1_Cd]
      ,[Lvl2_Desc]
      ,[Lvl2_Cd]
      ,[Lvl3_Desc]
      ,[Lvl3_Cd]
      ,[Lvl4_Desc]
      ,[Lvl4_Cd]
      ,[Lvl5_Desc]
      ,[Lvl5_Cd]
      ,[Cst_Ctr_ID_Desc]
      ,[DW_Cre_Ts]
      ,[DW_Cre_Usr]
      ,[DW_Mod_Ts]
      ,[DW_Mod_Usr]
      ,[DW_Del_Bit]
      ,[DW_Del_Usr]
      ,[DW_Del_Ts]
  FROM [KEU_FIN].[KEU_ZBB].[CC_Hrchy_ZBB]  CCH (NOLOCK)
  WHERE [DW_Del_Bit] = 0



GO
/****** Object:  View [KEU_ZBB].[UVW_Curr_Exchng]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [KEU_ZBB].[UVW_Curr_Exchng]
AS
SELECT 
       [Ver]     AS [Ver]
      ,[Fr_Curr] AS [Fr_Curr]
      ,[To_Curr] AS [To_Curr]
      ,[Yr]      AS [Yr]
      ,[Pd]      AS [Pd]
      ,[Fctr]    AS [Fctr]
FROM [KEU_FIN].[KEU_ZBB].[Curr_Exchng_Fmt]





GO
/****** Object:  View [KEU_ZBB].[UVW_Ion_Hrchy_ZBB]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [KEU_ZBB].[UVW_Ion_Hrchy_ZBB]  AS
SELECT REPLICATE('0', 12 - LEN(RTRIM(ION_ID))) + RTRIM(ION_ID)  AS [ION_ID]
      ,[ION_DESC]
      ,[L0_Desc]
      ,[L1_Desc]
      ,[L2_Desc]
      ,[L3_Desc]
      ,[L4_Desc]
      ,[L5_Desc]
      ,[L1_Cd]
      ,[L2_Cd]
      ,[L3_Cd]
      ,[L4_Cd]
      ,[L5_Cd]
      ,[ION_ID_Desc]
      ,[DW_Cre_Ts]
      ,[DW_Cre_Usr]
      ,[DW_Mod_Ts]
      ,[DW_Mod_Usr]
      ,[DW_Del_Bit]
      ,[DW_Del_Usr]
      ,[DW_Del_Ts]
  FROM [KEU_FIN].[KEU_ZBB].[Ion_Hrchy_ZBB]  (NOLOCK)
  WHERE [DW_Del_Bit] = 0




GO
/****** Object:  View [KEU_ZBB].[UVW_Usr_Sec]    Script Date: 11/20/2018 4:59:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE view [KEU_ZBB].[UVW_Usr_Sec]
AS
SELECT 
 [Usr_NT_Id] AS [Usr_NT_Id]
,CAST([Cst_Ctr]  AS  INT )  AS [Cst_Ctr] 
FROM [KEU_FIN].[KEU_ZBB].[Usr_Sec]
where 
[DW_Del_Bit]=0





GO
ALTER TABLE [KEU_ZBB].[Acct_Hrchy_ZBB] ADD  CONSTRAINT [Constraint_Acct_Hrchy_ZBB_DW_Cre_Ts]  DEFAULT (getdate()) FOR [DW_Cre_Ts]
GO
ALTER TABLE [KEU_ZBB].[Acct_Hrchy_ZBB] ADD  CONSTRAINT [Constraint_Acct_Hrchy_ZBB_DW_Cre_Usr]  DEFAULT (user_name()) FOR [DW_Cre_Usr]
GO
ALTER TABLE [KEU_ZBB].[Acct_Hrchy_ZBB] ADD  CONSTRAINT [Constraint_Acct_Hrchy_ZBB_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [KEU_ZBB].[BB_Ion_Bdg] ADD  CONSTRAINT [Constraint_BB_Ion_Bdg_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [KEU_ZBB].[CC_Hrchy_ZBB] ADD  DEFAULT (getdate()) FOR [DW_Cre_Ts]
GO
ALTER TABLE [KEU_ZBB].[CC_Hrchy_ZBB] ADD  DEFAULT (user_name()) FOR [DW_Cre_Usr]
GO
ALTER TABLE [KEU_ZBB].[CC_Hrchy_ZBB] ADD  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [KEU_ZBB].[Curr_Exchng_Fmt] ADD  CONSTRAINT [Constraint_Curr_Exchng_Fmt_DW_Cre_Ts]  DEFAULT (getdate()) FOR [DW_Cre_Ts]
GO
ALTER TABLE [KEU_ZBB].[Curr_Exchng_Fmt] ADD  CONSTRAINT [Constraint_Curr_Exchng_Fmt_DW_Cre_Usr]  DEFAULT (user_name()) FOR [DW_Cre_Usr]
GO
ALTER TABLE [KEU_ZBB].[Curr_Exchng_Fmt] ADD  CONSTRAINT [Constraint_Curr_Exchng_Fmt_DW_Del_Bit]  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [KEU_ZBB].[Ion_Hrchy_ZBB] ADD  DEFAULT (getdate()) FOR [DW_Cre_Ts]
GO
ALTER TABLE [KEU_ZBB].[Ion_Hrchy_ZBB] ADD  DEFAULT (user_name()) FOR [DW_Cre_Usr]
GO
ALTER TABLE [KEU_ZBB].[Ion_Hrchy_ZBB] ADD  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [KEU_ZBB].[Nbb_Bdg] ADD  DEFAULT (getdate()) FOR [DW_Cre_Ts]
GO
ALTER TABLE [KEU_ZBB].[Nbb_Bdg] ADD  DEFAULT (user_name()) FOR [DW_Cre_Usr]
GO
ALTER TABLE [KEU_ZBB].[Nbb_Bdg] ADD  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [KEU_ZBB].[Usr_Sec] ADD  DEFAULT (getdate()) FOR [DW_Cre_Ts]
GO
ALTER TABLE [KEU_ZBB].[Usr_Sec] ADD  DEFAULT (user_name()) FOR [DW_Cre_Usr]
GO
ALTER TABLE [KEU_ZBB].[Usr_Sec] ADD  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [STG].[STG_Nbb_Bdg] ADD  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
ALTER TABLE [STG].[STG_Usr_Sec] ADD  DEFAULT (getdate()) FOR [DW_Cre_Ts]
GO
ALTER TABLE [STG].[STG_Usr_Sec] ADD  DEFAULT (user_name()) FOR [DW_Cre_Usr]
GO
ALTER TABLE [STG].[STG_Usr_Sec] ADD  DEFAULT ((0)) FOR [DW_Del_Bit]
GO
USE [master]
GO
ALTER DATABASE [KEU_FIN] SET  READ_WRITE 
GO
