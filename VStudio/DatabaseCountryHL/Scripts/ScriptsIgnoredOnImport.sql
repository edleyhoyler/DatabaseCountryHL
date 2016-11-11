
/*==============================================================*/
/* Database name:  DATABASECOUNTRYHL                            */
/* DBMS name:      Microsoft SQL Server 2016                    */
/* Created on:     03/11/2016 21:04:04                          */
/*==============================================================*/


DROP DATABASE DATABASECOUNTRYHL
GO

/*==============================================================*/
/* Database: DATABASECOUNTRYHL                                  */
/*==============================================================*/
CREATE DATABASE DATABASECOUNTRYHL
GO

USE DATABASECOUNTRYHL
GO

/*==============================================================*/
/* Database name:  DATABASECOUNTRYHL                            */
/* DBMS name:      Microsoft SQL Server 2016                    */
/* Created on:     03/11/2016 23:24:47                          */
/*==============================================================*/


DROP DATABASE DATABASECOUNTRYHL
GO

/*==============================================================*/
/* Database: DATABASECOUNTRYHL                                  */
/*==============================================================*/
CREATE DATABASE DATABASECOUNTRYHL
GO

USE DATABASECOUNTRYHL
GO

/*==============================================================*/
/* Database name:  DATABASECOUNTRYHL                            */
/* DBMS name:      Microsoft SQL Server 2016                    */
/* Created on:     03/11/2016 23:24:47                          */
/*==============================================================*/


DROP DATABASE DATABASECOUNTRYHL
GO

/*==============================================================*/
/* Database: DATABASECOUNTRYHL                                  */
/*==============================================================*/
CREATE DATABASE DATABASECOUNTRYHL
GO

USE DATABASECOUNTRYHL
GO

/*==============================================================*/
/* Database name:  DATABASECOUNTRYHL                            */
/* DBMS name:      Microsoft SQL Server 2016                    */
/* Created on:     10/11/2016 17:27:57                          */
/*==============================================================*/


DROP DATABASE DATABASECOUNTRYHL
GO

/*==============================================================*/
/* Database: DATABASECOUNTRYHL                                  */
/*==============================================================*/
CREATE DATABASE DATABASECOUNTRYHL
GO

USE DATABASECOUNTRYHL
GO

/*==============================================================*/
/* Database name:  DATABASECOUNTRYHL                            */
/* DBMS name:      Microsoft SQL Server 2016                    */
/* Created on:     10/11/2016 18:17:42                          */
/*==============================================================*/


DROP DATABASE DATABASECOUNTRYHL
GO

/*==============================================================*/
/* Database: DATABASECOUNTRYHL                                  */
/*==============================================================*/
CREATE DATABASE DATABASECOUNTRYHL
GO

USE DATABASECOUNTRYHL
GO

/*==============================================================*/
/* Database name:  DATABASECOUNTRYHL                            */
/* DBMS name:      Microsoft SQL Server 2016                    */
/* Created on:     10/11/2016 19:00:21                          */
/*==============================================================*/


IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.CITY') AND O.NAME = 'FK_CITY_STATE_FOR_STATE')
ALTER TABLE DBO.CITY
   DROP CONSTRAINT FK_CITY_STATE_FOR_STATE
GO

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.DESCRIPTION_CITY') AND O.NAME = 'FK_DESCRIPT_CITY_FOR__CITY')
ALTER TABLE DBO.DESCRIPTION_CITY
   DROP CONSTRAINT FK_DESCRIPT_CITY_FOR__CITY
GO

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.DESCRIPTION_COUNTRY') AND O.NAME = 'FK_DESCRIPT_COUNTRY_F_COUNTRY')
ALTER TABLE DBO.DESCRIPTION_COUNTRY
   DROP CONSTRAINT FK_DESCRIPT_COUNTRY_F_COUNTRY
GO

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.DESCRIPTION_STATE') AND O.NAME = 'FK_DESCRIPT_STATE_FOR_STATE')
ALTER TABLE DBO.DESCRIPTION_STATE
   DROP CONSTRAINT FK_DESCRIPT_STATE_FOR_STATE
GO

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.FLAG_CITY') AND O.NAME = 'FK_FLAG_CIT_CITY_FOR__CITY')
ALTER TABLE DBO.FLAG_CITY
   DROP CONSTRAINT FK_FLAG_CIT_CITY_FOR__CITY
GO

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.FLAG_COUNTRY') AND O.NAME = 'FK_FLAG_COU_COUNTRY_F_COUNTRY')
ALTER TABLE DBO.FLAG_COUNTRY
   DROP CONSTRAINT FK_FLAG_COU_COUNTRY_F_COUNTRY
GO

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.FLAG_STATE') AND O.NAME = 'FK_FLAG_STA_STATE_FOR_STATE')
ALTER TABLE DBO.FLAG_STATE
   DROP CONSTRAINT FK_FLAG_STA_STATE_FOR_STATE
GO

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.STATE') AND O.NAME = 'FK_STATE_COUNTRY_F_COUNTRY')
ALTER TABLE DBO.STATE
   DROP CONSTRAINT FK_STATE_COUNTRY_F_COUNTRY
GO

ALTER TABLE DBO.CITY
   DROP CONSTRAINT PK_CITY
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_CITY')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_CITY
GO

EXECUTE SP_RENAME CITY, TMP_CITY
GO

ALTER TABLE DBO.COUNTRY
   DROP CONSTRAINT PK_COUNTRY
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_COUNTRY')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_COUNTRY
GO

EXECUTE SP_RENAME COUNTRY, TMP_COUNTRY
GO

ALTER TABLE DBO.DESCRIPTION_CITY
   DROP CONSTRAINT PK_DESCRIPTION_CITY
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_DESCRIPTION_CITY')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_DESCRIPTION_CITY
GO

EXECUTE SP_RENAME DESCRIPTION_CITY, TMP_DESCRIPTION_CITY
GO

ALTER TABLE DBO.DESCRIPTION_COUNTRY
   DROP CONSTRAINT PK_DESCRIPTION_COUNTRY
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_DESCRIPTION_COUNTRY')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_DESCRIPTION_COUNTRY
GO

EXECUTE SP_RENAME DESCRIPTION_COUNTRY, TMP_DESCRIPTION_COUNTRY
GO

ALTER TABLE DBO.DESCRIPTION_STATE
   DROP CONSTRAINT PK_DESCRIPTION_STATE
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_DESCRIPTION_STATE')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_DESCRIPTION_STATE
GO

EXECUTE SP_RENAME DESCRIPTION_STATE, TMP_DESCRIPTION_STATE
GO

ALTER TABLE DBO.FLAG_CITY
   DROP CONSTRAINT PK_FLAG_CITY
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_FLAG_CITY')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_FLAG_CITY
GO

EXECUTE SP_RENAME FLAG_CITY, TMP_FLAG_CITY
GO

ALTER TABLE DBO.FLAG_COUNTRY
   DROP CONSTRAINT PK_FLAG_COUNTRY
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_FLAG_COUNTRY')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_FLAG_COUNTRY
GO

EXECUTE SP_RENAME FLAG_COUNTRY, TMP_FLAG_COUNTRY
GO

ALTER TABLE DBO.FLAG_STATE
   DROP CONSTRAINT PK_FLAG_STATE
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_FLAG_STATE')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_FLAG_STATE
GO

EXECUTE SP_RENAME FLAG_STATE, TMP_FLAG_STATE
GO

ALTER TABLE DBO.STATE
   DROP CONSTRAINT PK_STATE
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_STATE')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_STATE
GO

EXECUTE SP_RENAME STATE, TMP_STATE
GO

INSERT INTO DBO.CITY (CIT_ID, STA_ID, CIT_NAME)
SELECT CIT_ID, STA_ID, CIT_NAME
FROM DBO.TMP_CITY
GO

INSERT INTO DBO.COUNTRY (COU_ID, COU_NOME, COU_NAME, COU_NOMBRE, COU_ISO31661NUMERIC, COU_ISO31661ALPHA2, COU_ISO31661ALPHA3)
SELECT COU_ID, COU_NOME, COU_NAME, COU_NOMBRE, COU_ISO31661NUMERIC, COU_ISO31661ALPHA2, COU_ISO31661ALPHA3
FROM DBO.TMP_COUNTRY
GO

INSERT INTO DBO.DESCRIPTION_CITY (DCI_ID, CIT_ID, DCI_DESCRIPTION)
SELECT DCI_ID, CIT_ID, DCI_DESCRIPTION
FROM DBO.TMP_DESCRIPTION_CITY
GO

INSERT INTO DBO.DESCRIPTION_COUNTRY (DCO_ID, COU_ID, DCO_DESCRIPTION)
SELECT DCO_ID, COU_ID, DCO_DESCRIPTION
FROM DBO.TMP_DESCRIPTION_COUNTRY
GO

INSERT INTO DBO.DESCRIPTION_STATE (DST_ID, STA_ID, DST_DESCRIPTION)
SELECT DST_ID, STA_ID, DST_DESCRIPTION
FROM DBO.TMP_DESCRIPTION_STATE
GO

INSERT INTO DBO.FLAG_CITY (FCI_ID, CIT_ID, FCI_FLAG)
SELECT FCI_ID, CIT_ID, FCI_FLAG
FROM DBO.TMP_FLAG_CITY
GO

INSERT INTO DBO.FLAG_COUNTRY (FCO_ID, COU_ID, FCO_FLAG)
SELECT FCO_ID, COU_ID, FCO_FLAG
FROM DBO.TMP_FLAG_COUNTRY
GO

INSERT INTO DBO.FLAG_STATE (FST_ID, STA_ID, FST_FLAG)
SELECT FST_ID, STA_ID, FST_FLAG
FROM DBO.TMP_FLAG_STATE
GO

INSERT INTO DBO.STATE (STA_ID, COU_ID, STA_NAME, STA_UF)
SELECT STA_ID, COU_ID, STA_NAME, STA_UF
FROM DBO.TMP_STATE
GO


/*==============================================================*/
/* Table: CITY                                                  */
/*==============================================================*/
CREATE TABLE DBO.CITY (
   CIT_ID               INT                  NOT NULL,
   STA_ID               INT                  NOT NULL,
   CIT_NAME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: CITY                                                  */
--/*==============================================================*/
--CREATE TABLE DBO.CITY (
--   CIT_ID               INT                  NOT NULL,
--   STA_ID               INT                  NOT NULL,
--   CIT_NAME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: COUNTRY                                               */
/*==============================================================*/
CREATE TABLE DBO.COUNTRY (
   COU_ID               INT                  NOT NULL,
   COU_NOME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
   COU_NAME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
   COU_NOMBRE           VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
   COU_ISO31661NUMERIC  INT                  NOT NULL,
   COU_ISO31661ALPHA2   CHAR(2)              COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
   COU_ISO31661ALPHA3   CHAR(3)              COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: COUNTRY                                               */
--/*==============================================================*/
--CREATE TABLE DBO.COUNTRY (
--   COU_ID               INT                  NOT NULL,
--   COU_NOME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
--   COU_NAME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
--   COU_NOMBRE           VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
--   COU_ISO31661NUMERIC  INT                  NOT NULL,
--   COU_ISO31661ALPHA2   CHAR(2)              COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
--   COU_ISO31661ALPHA3   CHAR(3)              COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: DESCRIPTION_CITY                                      */
/*==============================================================*/
CREATE TABLE DBO.DESCRIPTION_CITY (
   DCI_ID               INT                  NOT NULL,
   CIT_ID               INT                  NOT NULL,
   DCI_DESCRIPTION      VARCHAR(999)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: DESCRIPTION_CITY                                      */
--/*==============================================================*/
--CREATE TABLE DBO.DESCRIPTION_CITY (
--   DCI_ID               INT                  NOT NULL,
--   CIT_ID               INT                  NOT NULL,
--   DCI_DESCRIPTION      VARCHAR(999)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: DESCRIPTION_COUNTRY                                   */
/*==============================================================*/
CREATE TABLE DBO.DESCRIPTION_COUNTRY (
   DCO_ID               INT                  NOT NULL,
   COU_ID               INT                  NOT NULL,
   DCO_DESCRIPTION      VARCHAR(999)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: DESCRIPTION_COUNTRY                                   */
--/*==============================================================*/
--CREATE TABLE DBO.DESCRIPTION_COUNTRY (
--   DCO_ID               INT                  NOT NULL,
--   COU_ID               INT                  NOT NULL,
--   DCO_DESCRIPTION      VARCHAR(999)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: DESCRIPTION_STATE                                     */
/*==============================================================*/
CREATE TABLE DBO.DESCRIPTION_STATE (
   DST_ID               INT                  NOT NULL,
   STA_ID               INT                  NOT NULL,
   DST_DESCRIPTION      VARCHAR(999)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: DESCRIPTION_STATE                                     */
--/*==============================================================*/
--CREATE TABLE DBO.DESCRIPTION_STATE (
--   DST_ID               INT                  NOT NULL,
--   STA_ID               INT                  NOT NULL,
--   DST_DESCRIPTION      VARCHAR(999)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: FLAG_CITY                                             */
/*==============================================================*/
CREATE TABLE DBO.FLAG_CITY (
   FCI_ID               INT                  NOT NULL,
   CIT_ID               INT                  NOT NULL,
   FCI_FLAG             VARBINARY(MAX)       NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: FLAG_CITY                                             */
--/*==============================================================*/
--CREATE TABLE DBO.FLAG_CITY (
--   FCI_ID               INT                  NOT NULL,
--   CIT_ID               INT                  NOT NULL,
--   FCI_FLAG             VARBINARY(MAX)       NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: FLAG_COUNTRY                                          */
/*==============================================================*/
CREATE TABLE DBO.FLAG_COUNTRY (
   FCO_ID               INT                  NOT NULL,
   COU_ID               INT                  NOT NULL,
   FCO_FLAG             VARBINARY(MAX)       NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: FLAG_COUNTRY                                          */
--/*==============================================================*/
--CREATE TABLE DBO.FLAG_COUNTRY (
--   FCO_ID               INT                  NOT NULL,
--   COU_ID               INT                  NOT NULL,
--   FCO_FLAG             VARBINARY(MAX)       NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: FLAG_STATE                                            */
/*==============================================================*/
CREATE TABLE DBO.FLAG_STATE (
   FST_ID               INT                  NOT NULL,
   STA_ID               INT                  NOT NULL,
   FST_FLAG             VARBINARY(MAX)       NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: FLAG_STATE                                            */
--/*==============================================================*/
--CREATE TABLE DBO.FLAG_STATE (
--   FST_ID               INT                  NOT NULL,
--   STA_ID               INT                  NOT NULL,
--   FST_FLAG             VARBINARY(MAX)       NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: STATE                                                 */
/*==============================================================*/
CREATE TABLE DBO.STATE (
   STA_ID               INT                  NOT NULL,
   COU_ID               INT                  NOT NULL,
   STA_NAME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
   STA_UF               CHAR(2)              COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: STATE                                                 */
--/*==============================================================*/
--CREATE TABLE DBO.STATE (
--   STA_ID               INT                  NOT NULL,
--   COU_ID               INT                  NOT NULL,
--   STA_NAME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
--   STA_UF               CHAR(2)              COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
--)
--ON ?



GO

/*==============================================================*/
/* Database name:  DATABASECOUNTRYHL                            */
/* DBMS name:      Microsoft SQL Server 2016                    */
/* Created on:     10/11/2016 19:00:21                          */
/*==============================================================*/


IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.CITY') AND O.NAME = 'FK_CITY_STATE_FOR_STATE')
ALTER TABLE DBO.CITY
   DROP CONSTRAINT FK_CITY_STATE_FOR_STATE
GO

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.DESCRIPTION_CITY') AND O.NAME = 'FK_DESCRIPT_CITY_FOR__CITY')
ALTER TABLE DBO.DESCRIPTION_CITY
   DROP CONSTRAINT FK_DESCRIPT_CITY_FOR__CITY
GO

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.DESCRIPTION_COUNTRY') AND O.NAME = 'FK_DESCRIPT_COUNTRY_F_COUNTRY')
ALTER TABLE DBO.DESCRIPTION_COUNTRY
   DROP CONSTRAINT FK_DESCRIPT_COUNTRY_F_COUNTRY
GO

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.DESCRIPTION_STATE') AND O.NAME = 'FK_DESCRIPT_STATE_FOR_STATE')
ALTER TABLE DBO.DESCRIPTION_STATE
   DROP CONSTRAINT FK_DESCRIPT_STATE_FOR_STATE
GO

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.FLAG_CITY') AND O.NAME = 'FK_FLAG_CIT_CITY_FOR__CITY')
ALTER TABLE DBO.FLAG_CITY
   DROP CONSTRAINT FK_FLAG_CIT_CITY_FOR__CITY
GO

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.FLAG_COUNTRY') AND O.NAME = 'FK_FLAG_COU_COUNTRY_F_COUNTRY')
ALTER TABLE DBO.FLAG_COUNTRY
   DROP CONSTRAINT FK_FLAG_COU_COUNTRY_F_COUNTRY
GO

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.FLAG_STATE') AND O.NAME = 'FK_FLAG_STA_STATE_FOR_STATE')
ALTER TABLE DBO.FLAG_STATE
   DROP CONSTRAINT FK_FLAG_STA_STATE_FOR_STATE
GO

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.STATE') AND O.NAME = 'FK_STATE_COUNTRY_F_COUNTRY')
ALTER TABLE DBO.STATE
   DROP CONSTRAINT FK_STATE_COUNTRY_F_COUNTRY
GO

ALTER TABLE DBO.CITY
   DROP CONSTRAINT PK_CITY
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_CITY')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_CITY
GO

EXECUTE SP_RENAME CITY, TMP_CITY
GO

ALTER TABLE DBO.COUNTRY
   DROP CONSTRAINT PK_COUNTRY
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_COUNTRY')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_COUNTRY
GO

EXECUTE SP_RENAME COUNTRY, TMP_COUNTRY
GO

ALTER TABLE DBO.DESCRIPTION_CITY
   DROP CONSTRAINT PK_DESCRIPTION_CITY
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_DESCRIPTION_CITY')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_DESCRIPTION_CITY
GO

EXECUTE SP_RENAME DESCRIPTION_CITY, TMP_DESCRIPTION_CITY
GO

ALTER TABLE DBO.DESCRIPTION_COUNTRY
   DROP CONSTRAINT PK_DESCRIPTION_COUNTRY
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_DESCRIPTION_COUNTRY')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_DESCRIPTION_COUNTRY
GO

EXECUTE SP_RENAME DESCRIPTION_COUNTRY, TMP_DESCRIPTION_COUNTRY
GO

ALTER TABLE DBO.DESCRIPTION_STATE
   DROP CONSTRAINT PK_DESCRIPTION_STATE
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_DESCRIPTION_STATE')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_DESCRIPTION_STATE
GO

EXECUTE SP_RENAME DESCRIPTION_STATE, TMP_DESCRIPTION_STATE
GO

ALTER TABLE DBO.FLAG_CITY
   DROP CONSTRAINT PK_FLAG_CITY
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_FLAG_CITY')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_FLAG_CITY
GO

EXECUTE SP_RENAME FLAG_CITY, TMP_FLAG_CITY
GO

ALTER TABLE DBO.FLAG_COUNTRY
   DROP CONSTRAINT PK_FLAG_COUNTRY
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_FLAG_COUNTRY')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_FLAG_COUNTRY
GO

EXECUTE SP_RENAME FLAG_COUNTRY, TMP_FLAG_COUNTRY
GO

ALTER TABLE DBO.FLAG_STATE
   DROP CONSTRAINT PK_FLAG_STATE
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_FLAG_STATE')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_FLAG_STATE
GO

EXECUTE SP_RENAME FLAG_STATE, TMP_FLAG_STATE
GO

ALTER TABLE DBO.STATE
   DROP CONSTRAINT PK_STATE
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_STATE')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_STATE
GO

EXECUTE SP_RENAME STATE, TMP_STATE
GO

INSERT INTO DBO.CITY (CIT_ID, STA_ID, CIT_NAME)
SELECT CIT_ID, STA_ID, CIT_NAME
FROM DBO.TMP_CITY
GO

INSERT INTO DBO.COUNTRY (COU_ID, COU_NOME, COU_NAME, COU_NOMBRE, COU_ISO31661NUMERIC, COU_ISO31661ALPHA2, COU_ISO31661ALPHA3)
SELECT COU_ID, COU_NOME, COU_NAME, COU_NOMBRE, COU_ISO31661NUMERIC, COU_ISO31661ALPHA2, COU_ISO31661ALPHA3
FROM DBO.TMP_COUNTRY
GO

INSERT INTO DBO.DESCRIPTION_CITY (DCI_ID, CIT_ID, DCI_DESCRIPTION)
SELECT DCI_ID, CIT_ID, DCI_DESCRIPTION
FROM DBO.TMP_DESCRIPTION_CITY
GO

INSERT INTO DBO.DESCRIPTION_COUNTRY (DCO_ID, COU_ID, DCO_DESCRIPTION)
SELECT DCO_ID, COU_ID, DCO_DESCRIPTION
FROM DBO.TMP_DESCRIPTION_COUNTRY
GO

INSERT INTO DBO.DESCRIPTION_STATE (DST_ID, STA_ID, DST_DESCRIPTION)
SELECT DST_ID, STA_ID, DST_DESCRIPTION
FROM DBO.TMP_DESCRIPTION_STATE
GO

INSERT INTO DBO.FLAG_CITY (FCI_ID, CIT_ID, FCI_FLAG)
SELECT FCI_ID, CIT_ID, FCI_FLAG
FROM DBO.TMP_FLAG_CITY
GO

INSERT INTO DBO.FLAG_COUNTRY (FCO_ID, COU_ID, FCO_FLAG)
SELECT FCO_ID, COU_ID, FCO_FLAG
FROM DBO.TMP_FLAG_COUNTRY
GO

INSERT INTO DBO.FLAG_STATE (FST_ID, STA_ID, FST_FLAG)
SELECT FST_ID, STA_ID, FST_FLAG
FROM DBO.TMP_FLAG_STATE
GO

INSERT INTO DBO.STATE (STA_ID, COU_ID, STA_NAME, STA_UF)
SELECT STA_ID, COU_ID, STA_NAME, STA_UF
FROM DBO.TMP_STATE
GO


/*==============================================================*/
/* Table: CITY                                                  */
/*==============================================================*/
CREATE TABLE DBO.CITY (
   CIT_ID               INT                  NOT NULL,
   STA_ID               INT                  NOT NULL,
   CIT_NAME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: CITY                                                  */
--/*==============================================================*/
--CREATE TABLE DBO.CITY (
--   CIT_ID               INT                  NOT NULL,
--   STA_ID               INT                  NOT NULL,
--   CIT_NAME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: COUNTRY                                               */
/*==============================================================*/
CREATE TABLE DBO.COUNTRY (
   COU_ID               INT                  NOT NULL,
   COU_NOME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
   COU_NAME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
   COU_NOMBRE           VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
   COU_ISO31661NUMERIC  INT                  NOT NULL,
   COU_ISO31661ALPHA2   CHAR(2)              COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
   COU_ISO31661ALPHA3   CHAR(3)              COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: COUNTRY                                               */
--/*==============================================================*/
--CREATE TABLE DBO.COUNTRY (
--   COU_ID               INT                  NOT NULL,
--   COU_NOME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
--   COU_NAME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
--   COU_NOMBRE           VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
--   COU_ISO31661NUMERIC  INT                  NOT NULL,
--   COU_ISO31661ALPHA2   CHAR(2)              COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
--   COU_ISO31661ALPHA3   CHAR(3)              COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: DESCRIPTION_CITY                                      */
/*==============================================================*/
CREATE TABLE DBO.DESCRIPTION_CITY (
   DCI_ID               INT                  NOT NULL,
   CIT_ID               INT                  NOT NULL,
   DCI_DESCRIPTION      VARCHAR(999)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: DESCRIPTION_CITY                                      */
--/*==============================================================*/
--CREATE TABLE DBO.DESCRIPTION_CITY (
--   DCI_ID               INT                  NOT NULL,
--   CIT_ID               INT                  NOT NULL,
--   DCI_DESCRIPTION      VARCHAR(999)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: DESCRIPTION_COUNTRY                                   */
/*==============================================================*/
CREATE TABLE DBO.DESCRIPTION_COUNTRY (
   DCO_ID               INT                  NOT NULL,
   COU_ID               INT                  NOT NULL,
   DCO_DESCRIPTION      VARCHAR(999)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: DESCRIPTION_COUNTRY                                   */
--/*==============================================================*/
--CREATE TABLE DBO.DESCRIPTION_COUNTRY (
--   DCO_ID               INT                  NOT NULL,
--   COU_ID               INT                  NOT NULL,
--   DCO_DESCRIPTION      VARCHAR(999)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: DESCRIPTION_STATE                                     */
/*==============================================================*/
CREATE TABLE DBO.DESCRIPTION_STATE (
   DST_ID               INT                  NOT NULL,
   STA_ID               INT                  NOT NULL,
   DST_DESCRIPTION      VARCHAR(999)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: DESCRIPTION_STATE                                     */
--/*==============================================================*/
--CREATE TABLE DBO.DESCRIPTION_STATE (
--   DST_ID               INT                  NOT NULL,
--   STA_ID               INT                  NOT NULL,
--   DST_DESCRIPTION      VARCHAR(999)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: FLAG_CITY                                             */
/*==============================================================*/
CREATE TABLE DBO.FLAG_CITY (
   FCI_ID               INT                  NOT NULL,
   CIT_ID               INT                  NOT NULL,
   FCI_FLAG             VARBINARY(MAX)       NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: FLAG_CITY                                             */
--/*==============================================================*/
--CREATE TABLE DBO.FLAG_CITY (
--   FCI_ID               INT                  NOT NULL,
--   CIT_ID               INT                  NOT NULL,
--   FCI_FLAG             VARBINARY(MAX)       NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: FLAG_COUNTRY                                          */
/*==============================================================*/
CREATE TABLE DBO.FLAG_COUNTRY (
   FCO_ID               INT                  NOT NULL,
   COU_ID               INT                  NOT NULL,
   FCO_FLAG             VARBINARY(MAX)       NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: FLAG_COUNTRY                                          */
--/*==============================================================*/
--CREATE TABLE DBO.FLAG_COUNTRY (
--   FCO_ID               INT                  NOT NULL,
--   COU_ID               INT                  NOT NULL,
--   FCO_FLAG             VARBINARY(MAX)       NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: FLAG_STATE                                            */
/*==============================================================*/
CREATE TABLE DBO.FLAG_STATE (
   FST_ID               INT                  NOT NULL,
   STA_ID               INT                  NOT NULL,
   FST_FLAG             VARBINARY(MAX)       NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: FLAG_STATE                                            */
--/*==============================================================*/
--CREATE TABLE DBO.FLAG_STATE (
--   FST_ID               INT                  NOT NULL,
--   STA_ID               INT                  NOT NULL,
--   FST_FLAG             VARBINARY(MAX)       NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: STATE                                                 */
/*==============================================================*/
CREATE TABLE DBO.STATE (
   STA_ID               INT                  NOT NULL,
   COU_ID               INT                  NOT NULL,
   STA_NAME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
   STA_UF               CHAR(2)              COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: STATE                                                 */
--/*==============================================================*/
--CREATE TABLE DBO.STATE (
--   STA_ID               INT                  NOT NULL,
--   COU_ID               INT                  NOT NULL,
--   STA_NAME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
--   STA_UF               CHAR(2)              COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
--)
--ON ?



GO

/*==============================================================*/
/* Database name:  DATABASECOUNTRYHL                            */
/* DBMS name:      Microsoft SQL Server 2016                    */
/* Created on:     10/11/2016 19:00:21                          */
/*==============================================================*/


IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.CITY') AND O.NAME = 'FK_CITY_STATE_FOR_STATE')
ALTER TABLE DBO.CITY
   DROP CONSTRAINT FK_CITY_STATE_FOR_STATE
GO

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.DESCRIPTION_CITY') AND O.NAME = 'FK_DESCRIPT_CITY_FOR__CITY')
ALTER TABLE DBO.DESCRIPTION_CITY
   DROP CONSTRAINT FK_DESCRIPT_CITY_FOR__CITY
GO

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.DESCRIPTION_COUNTRY') AND O.NAME = 'FK_DESCRIPT_COUNTRY_F_COUNTRY')
ALTER TABLE DBO.DESCRIPTION_COUNTRY
   DROP CONSTRAINT FK_DESCRIPT_COUNTRY_F_COUNTRY
GO

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.DESCRIPTION_STATE') AND O.NAME = 'FK_DESCRIPT_STATE_FOR_STATE')
ALTER TABLE DBO.DESCRIPTION_STATE
   DROP CONSTRAINT FK_DESCRIPT_STATE_FOR_STATE
GO

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.FLAG_CITY') AND O.NAME = 'FK_FLAG_CIT_CITY_FOR__CITY')
ALTER TABLE DBO.FLAG_CITY
   DROP CONSTRAINT FK_FLAG_CIT_CITY_FOR__CITY
GO

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.FLAG_COUNTRY') AND O.NAME = 'FK_FLAG_COU_COUNTRY_F_COUNTRY')
ALTER TABLE DBO.FLAG_COUNTRY
   DROP CONSTRAINT FK_FLAG_COU_COUNTRY_F_COUNTRY
GO

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.FLAG_STATE') AND O.NAME = 'FK_FLAG_STA_STATE_FOR_STATE')
ALTER TABLE DBO.FLAG_STATE
   DROP CONSTRAINT FK_FLAG_STA_STATE_FOR_STATE
GO

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('DBO.STATE') AND O.NAME = 'FK_STATE_COUNTRY_F_COUNTRY')
ALTER TABLE DBO.STATE
   DROP CONSTRAINT FK_STATE_COUNTRY_F_COUNTRY
GO

ALTER TABLE DBO.CITY
   DROP CONSTRAINT PK_CITY
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_CITY')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_CITY
GO

EXECUTE SP_RENAME CITY, TMP_CITY
GO

ALTER TABLE DBO.COUNTRY
   DROP CONSTRAINT PK_COUNTRY
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_COUNTRY')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_COUNTRY
GO

EXECUTE SP_RENAME COUNTRY, TMP_COUNTRY
GO

ALTER TABLE DBO.DESCRIPTION_CITY
   DROP CONSTRAINT PK_DESCRIPTION_CITY
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_DESCRIPTION_CITY')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_DESCRIPTION_CITY
GO

EXECUTE SP_RENAME DESCRIPTION_CITY, TMP_DESCRIPTION_CITY
GO

ALTER TABLE DBO.DESCRIPTION_COUNTRY
   DROP CONSTRAINT PK_DESCRIPTION_COUNTRY
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_DESCRIPTION_COUNTRY')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_DESCRIPTION_COUNTRY
GO

EXECUTE SP_RENAME DESCRIPTION_COUNTRY, TMP_DESCRIPTION_COUNTRY
GO

ALTER TABLE DBO.DESCRIPTION_STATE
   DROP CONSTRAINT PK_DESCRIPTION_STATE
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_DESCRIPTION_STATE')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_DESCRIPTION_STATE
GO

EXECUTE SP_RENAME DESCRIPTION_STATE, TMP_DESCRIPTION_STATE
GO

ALTER TABLE DBO.FLAG_CITY
   DROP CONSTRAINT PK_FLAG_CITY
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_FLAG_CITY')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_FLAG_CITY
GO

EXECUTE SP_RENAME FLAG_CITY, TMP_FLAG_CITY
GO

ALTER TABLE DBO.FLAG_COUNTRY
   DROP CONSTRAINT PK_FLAG_COUNTRY
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_FLAG_COUNTRY')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_FLAG_COUNTRY
GO

EXECUTE SP_RENAME FLAG_COUNTRY, TMP_FLAG_COUNTRY
GO

ALTER TABLE DBO.FLAG_STATE
   DROP CONSTRAINT PK_FLAG_STATE
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_FLAG_STATE')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_FLAG_STATE
GO

EXECUTE SP_RENAME FLAG_STATE, TMP_FLAG_STATE
GO

ALTER TABLE DBO.STATE
   DROP CONSTRAINT PK_STATE
GO

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DBO.TMP_STATE')
            AND   TYPE = 'U')
   DROP TABLE DBO.TMP_STATE
GO

EXECUTE SP_RENAME STATE, TMP_STATE
GO

INSERT INTO DBO.CITY (CIT_ID, STA_ID, CIT_NAME)
SELECT CIT_ID, STA_ID, CIT_NAME
FROM DBO.TMP_CITY
GO

INSERT INTO DBO.COUNTRY (COU_ID, COU_NOME, COU_NAME, COU_NOMBRE, COU_ISO31661NUMERIC, COU_ISO31661ALPHA2, COU_ISO31661ALPHA3)
SELECT COU_ID, COU_NOME, COU_NAME, COU_NOMBRE, COU_ISO31661NUMERIC, COU_ISO31661ALPHA2, COU_ISO31661ALPHA3
FROM DBO.TMP_COUNTRY
GO

INSERT INTO DBO.DESCRIPTION_CITY (DCI_ID, CIT_ID, DCI_DESCRIPTION)
SELECT DCI_ID, CIT_ID, DCI_DESCRIPTION
FROM DBO.TMP_DESCRIPTION_CITY
GO

INSERT INTO DBO.DESCRIPTION_COUNTRY (DCO_ID, COU_ID, DCO_DESCRIPTION)
SELECT DCO_ID, COU_ID, DCO_DESCRIPTION
FROM DBO.TMP_DESCRIPTION_COUNTRY
GO

INSERT INTO DBO.DESCRIPTION_STATE (DST_ID, STA_ID, DST_DESCRIPTION)
SELECT DST_ID, STA_ID, DST_DESCRIPTION
FROM DBO.TMP_DESCRIPTION_STATE
GO

INSERT INTO DBO.FLAG_CITY (FCI_ID, CIT_ID, FCI_FLAG)
SELECT FCI_ID, CIT_ID, FCI_FLAG
FROM DBO.TMP_FLAG_CITY
GO

INSERT INTO DBO.FLAG_COUNTRY (FCO_ID, COU_ID, FCO_FLAG)
SELECT FCO_ID, COU_ID, FCO_FLAG
FROM DBO.TMP_FLAG_COUNTRY
GO

INSERT INTO DBO.FLAG_STATE (FST_ID, STA_ID, FST_FLAG)
SELECT FST_ID, STA_ID, FST_FLAG
FROM DBO.TMP_FLAG_STATE
GO

INSERT INTO DBO.STATE (STA_ID, COU_ID, STA_NAME, STA_UF)
SELECT STA_ID, COU_ID, STA_NAME, STA_UF
FROM DBO.TMP_STATE
GO


/*==============================================================*/
/* Table: CITY                                                  */
/*==============================================================*/
CREATE TABLE DBO.CITY (
   CIT_ID               INT                  NOT NULL,
   STA_ID               INT                  NOT NULL,
   CIT_NAME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: CITY                                                  */
--/*==============================================================*/
--CREATE TABLE DBO.CITY (
--   CIT_ID               INT                  NOT NULL,
--   STA_ID               INT                  NOT NULL,
--   CIT_NAME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: COUNTRY                                               */
/*==============================================================*/
CREATE TABLE DBO.COUNTRY (
   COU_ID               INT                  NOT NULL,
   COU_NOME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
   COU_NAME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
   COU_NOMBRE           VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
   COU_ISO31661NUMERIC  INT                  NOT NULL,
   COU_ISO31661ALPHA2   CHAR(2)              COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
   COU_ISO31661ALPHA3   CHAR(3)              COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: COUNTRY                                               */
--/*==============================================================*/
--CREATE TABLE DBO.COUNTRY (
--   COU_ID               INT                  NOT NULL,
--   COU_NOME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
--   COU_NAME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
--   COU_NOMBRE           VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
--   COU_ISO31661NUMERIC  INT                  NOT NULL,
--   COU_ISO31661ALPHA2   CHAR(2)              COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
--   COU_ISO31661ALPHA3   CHAR(3)              COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: DESCRIPTION_CITY                                      */
/*==============================================================*/
CREATE TABLE DBO.DESCRIPTION_CITY (
   DCI_ID               INT                  NOT NULL,
   CIT_ID               INT                  NOT NULL,
   DCI_DESCRIPTION      VARCHAR(999)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: DESCRIPTION_CITY                                      */
--/*==============================================================*/
--CREATE TABLE DBO.DESCRIPTION_CITY (
--   DCI_ID               INT                  NOT NULL,
--   CIT_ID               INT                  NOT NULL,
--   DCI_DESCRIPTION      VARCHAR(999)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: DESCRIPTION_COUNTRY                                   */
/*==============================================================*/
CREATE TABLE DBO.DESCRIPTION_COUNTRY (
   DCO_ID               INT                  NOT NULL,
   COU_ID               INT                  NOT NULL,
   DCO_DESCRIPTION      VARCHAR(999)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: DESCRIPTION_COUNTRY                                   */
--/*==============================================================*/
--CREATE TABLE DBO.DESCRIPTION_COUNTRY (
--   DCO_ID               INT                  NOT NULL,
--   COU_ID               INT                  NOT NULL,
--   DCO_DESCRIPTION      VARCHAR(999)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: DESCRIPTION_STATE                                     */
/*==============================================================*/
CREATE TABLE DBO.DESCRIPTION_STATE (
   DST_ID               INT                  NOT NULL,
   STA_ID               INT                  NOT NULL,
   DST_DESCRIPTION      VARCHAR(999)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: DESCRIPTION_STATE                                     */
--/*==============================================================*/
--CREATE TABLE DBO.DESCRIPTION_STATE (
--   DST_ID               INT                  NOT NULL,
--   STA_ID               INT                  NOT NULL,
--   DST_DESCRIPTION      VARCHAR(999)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: FLAG_CITY                                             */
/*==============================================================*/
CREATE TABLE DBO.FLAG_CITY (
   FCI_ID               INT                  NOT NULL,
   CIT_ID               INT                  NOT NULL,
   FCI_FLAG             VARBINARY(MAX)       NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: FLAG_CITY                                             */
--/*==============================================================*/
--CREATE TABLE DBO.FLAG_CITY (
--   FCI_ID               INT                  NOT NULL,
--   CIT_ID               INT                  NOT NULL,
--   FCI_FLAG             VARBINARY(MAX)       NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: FLAG_COUNTRY                                          */
/*==============================================================*/
CREATE TABLE DBO.FLAG_COUNTRY (
   FCO_ID               INT                  NOT NULL,
   COU_ID               INT                  NOT NULL,
   FCO_FLAG             VARBINARY(MAX)       NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: FLAG_COUNTRY                                          */
--/*==============================================================*/
--CREATE TABLE DBO.FLAG_COUNTRY (
--   FCO_ID               INT                  NOT NULL,
--   COU_ID               INT                  NOT NULL,
--   FCO_FLAG             VARBINARY(MAX)       NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: FLAG_STATE                                            */
/*==============================================================*/
CREATE TABLE DBO.FLAG_STATE (
   FST_ID               INT                  NOT NULL,
   STA_ID               INT                  NOT NULL,
   FST_FLAG             VARBINARY(MAX)       NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: FLAG_STATE                                            */
--/*==============================================================*/
--CREATE TABLE DBO.FLAG_STATE (
--   FST_ID               INT                  NOT NULL,
--   STA_ID               INT                  NOT NULL,
--   FST_FLAG             VARBINARY(MAX)       NOT NULL
--)
--ON ?

GO


/*==============================================================*/
/* Table: STATE                                                 */
/*==============================================================*/
CREATE TABLE DBO.STATE (
   STA_ID               INT                  NOT NULL,
   COU_ID               INT                  NOT NULL,
   STA_NAME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
   STA_UF               CHAR(2)              COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
)
ON ?

GO

--Syntax Error: Incorrect syntax near ?.
--
--/*==============================================================*/
--/* Table: STATE                                                 */
--/*==============================================================*/
--CREATE TABLE DBO.STATE (
--   STA_ID               INT                  NOT NULL,
--   COU_ID               INT                  NOT NULL,
--   STA_NAME             VARCHAR(100)         COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
--   STA_UF               CHAR(2)              COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL
--)
--ON ?



GO

/*==============================================================*/
/* Database name:  DatabaseCountryHL                            */
/* DBMS name:      Microsoft SQL Server 2016                    */
/* Created on:     10/11/2016 19:32:09                          */
/*==============================================================*/

USE MASTER;
GO

DROP DATABASE DATABASECOUNTRYHL
GO

/*==============================================================*/
/* Database: DATABASECOUNTRYHL                                  */
/*==============================================================*/
CREATE DATABASE DATABASECOUNTRYHL
GO

USE DATABASECOUNTRYHL
GO
