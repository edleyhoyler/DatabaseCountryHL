/*==============================================================*/
/* Database name:  DatabaseCountryHL                            */
/* DBMS name:      Microsoft SQL Server 2016                    */
/* Created on:     25/12/2016 00:13:40                          */
/*==============================================================*/

USE MASTER;
go
DROP DATABASE DATABASECOUNTRYHL
go

/*==============================================================*/
/* Database: DATABASECOUNTRYHL                                  */
/*==============================================================*/
CREATE DATABASE DATABASECOUNTRYHL
go

USE DATABASECOUNTRYHL
go

/*==============================================================*/
/* Table: CITY                                                  */
/*==============================================================*/
CREATE TABLE CITY (
   CIT_ID               INT                  IDENTITY,
   STA_ID               INT                  NOT NULL,
   CIT_NAME             VARCHAR(100)         NOT NULL
)
go

ALTER TABLE CITY
   ADD CONSTRAINT PK_CITY PRIMARY KEY (CIT_ID)
go

/*==============================================================*/
/* Index: STATE_FOR_CITY_FK                                     */
/*==============================================================*/




CREATE NONCLUSTERED INDEX STATE_FOR_CITY_FK ON CITY (STA_ID ASC)
go

/*==============================================================*/
/* Table: CONTINENT                                             */
/*==============================================================*/
CREATE TABLE CONTINENT (
   CON_ID               INT                  IDENTITY,
   CON_NAME_EN          VARCHAR(100)         NOT NULL,
   CON_NAME_BR          VARCHAR(100)         NOT NULL,
   CON_CODE             CHAR(2)              NOT NULL
)
go

ALTER TABLE CONTINENT
   ADD CONSTRAINT CKC_CON_ID_CONTINEN CHECK (CON_ID BETWEEN 1 AND 7)
go

ALTER TABLE CONTINENT
   ADD CONSTRAINT PK_CONTINENT PRIMARY KEY (CON_ID)
go

/*==============================================================*/
/* Table: COUNTRY                                               */
/*==============================================================*/
CREATE TABLE COUNTRY (
   COU_ID               INT                  IDENTITY,
   CON_ID               INT                  NOT NULL,
   COU_NAME_EN          VARCHAR(100)         NOT NULL,
   COU_NAME_BR          VARCHAR(100)         NOT NULL,
   COU_ISO31661_ALPHA2  CHAR(2)              NOT NULL,
   COU_ISO31661_ALPHA3  CHAR(3)              NOT NULL,
   COU_ISO31661_NUMBER  INT                  NOT NULL
)
go

ALTER TABLE COUNTRY
   ADD CONSTRAINT CKC_CON_ID_COUNTRY CHECK (CON_ID BETWEEN 1 AND 7)
go

ALTER TABLE COUNTRY
   ADD CONSTRAINT PK_COUNTRY PRIMARY KEY (COU_ID)
go

/*==============================================================*/
/* Index: CONTINENTFORCOUNTRY_FK                                */
/*==============================================================*/




CREATE NONCLUSTERED INDEX CONTINENTFORCOUNTRY_FK ON COUNTRY (CON_ID ASC)
go

/*==============================================================*/
/* Table: COUNTRY_CAPITAL                                       */
/*==============================================================*/
CREATE TABLE COUNTRY_CAPITAL (
   CCA_ID               INT                  IDENTITY,
   COU_ID               INT                  NOT NULL,
   CCA_NAME             VARCHAR(100)         NOT NULL
)
go

ALTER TABLE COUNTRY_CAPITAL
   ADD CONSTRAINT PK_COUNTRY_CAPITAL PRIMARY KEY (CCA_ID)
go

/*==============================================================*/
/* Index: COUNTRYCAPITAL_FK                                     */
/*==============================================================*/




CREATE NONCLUSTERED INDEX COUNTRYCAPITAL_FK ON COUNTRY_CAPITAL (COU_ID ASC)
go

/*==============================================================*/
/* Table: COUNTRY_CURRENCY                                      */
/*==============================================================*/
CREATE TABLE COUNTRY_CURRENCY (
   CCU_ID               INT                  IDENTITY,
   COU_ID               INT                  NOT NULL,
   CUR_ID               INT                  NOT NULL
)
go

ALTER TABLE COUNTRY_CURRENCY
   ADD CONSTRAINT PK_COUNTRY_CURRENCY PRIMARY KEY (CCU_ID)
go

/*==============================================================*/
/* Index: COUNTRYCURRENCY_FK                                    */
/*==============================================================*/




CREATE NONCLUSTERED INDEX COUNTRYCURRENCY_FK ON COUNTRY_CURRENCY (COU_ID ASC)
go

/*==============================================================*/
/* Index: CURRENCYCOUNTRY_FK                                    */
/*==============================================================*/




CREATE NONCLUSTERED INDEX CURRENCYCOUNTRY_FK ON COUNTRY_CURRENCY (CUR_ID ASC)
go

/*==============================================================*/
/* Table: COUNTRY_DESCRIPTION                                   */
/*==============================================================*/
CREATE TABLE COUNTRY_DESCRIPTION (
   CDE_ID               INT                  IDENTITY,
   COU_ID               INT                  NOT NULL,
   CDE_DESCRIPTION      VARCHAR(999)         NOT NULL
)
go

ALTER TABLE COUNTRY_DESCRIPTION
   ADD CONSTRAINT PK_COUNTRY_DESCRIPTION PRIMARY KEY (CDE_ID)
go

/*==============================================================*/
/* Index: COUNTRYDESCRIPTION_FK                                 */
/*==============================================================*/




CREATE NONCLUSTERED INDEX COUNTRYDESCRIPTION_FK ON COUNTRY_DESCRIPTION (COU_ID ASC)
go

/*==============================================================*/
/* Table: COUNTRY_FLAG                                          */
/*==============================================================*/
CREATE TABLE COUNTRY_FLAG (
   CFL_ID               INT                  IDENTITY,
   COU_ID               INT                  NOT NULL,
   CFL_FLAG             VARBINARY(8000)      NOT NULL
)
go

ALTER TABLE COUNTRY_FLAG
   ADD CONSTRAINT PK_COUNTRY_FLAG PRIMARY KEY (CFL_ID)
go

/*==============================================================*/
/* Index: COUNTRYFLAG_FK                                        */
/*==============================================================*/




CREATE NONCLUSTERED INDEX COUNTRYFLAG_FK ON COUNTRY_FLAG (COU_ID ASC)
go

/*==============================================================*/
/* Table: CURRENCY                                              */
/*==============================================================*/
CREATE TABLE CURRENCY (
   CUR_ID               INT                  IDENTITY,
   CUR_ISO4217_CODE     CHAR(3)              NOT NULL,
   CUR_ISO4217_NAME     VARCHAR(100)         NOT NULL,
   CUR_ISO4217_NUMERIC  INT                  NOT NULL
)
go

ALTER TABLE CURRENCY
   ADD CONSTRAINT PK_CURRENCY PRIMARY KEY (CUR_ID)
go

/*==============================================================*/
/* Table: DESCRIPTION_CITY                                      */
/*==============================================================*/
CREATE TABLE DESCRIPTION_CITY (
   DCI_ID               INT                  IDENTITY,
   CIT_ID               INT                  NOT NULL,
   DCI_DESCRIPTION      VARCHAR(999)         NOT NULL
)
go

ALTER TABLE DESCRIPTION_CITY
   ADD CONSTRAINT PK_DESCRIPTION_CITY PRIMARY KEY (DCI_ID)
go

/*==============================================================*/
/* Index: CITY_FOR_DESCRIPTIONCITY_FK                           */
/*==============================================================*/




CREATE NONCLUSTERED INDEX CITY_FOR_DESCRIPTIONCITY_FK ON DESCRIPTION_CITY (CIT_ID ASC)
go

/*==============================================================*/
/* Table: DESCRIPTION_STATE                                     */
/*==============================================================*/
CREATE TABLE DESCRIPTION_STATE (
   DST_ID               INT                  IDENTITY,
   STA_ID               INT                  NOT NULL,
   DST_DESCRIPTION      VARCHAR(999)         NOT NULL
)
go

ALTER TABLE DESCRIPTION_STATE
   ADD CONSTRAINT PK_DESCRIPTION_STATE PRIMARY KEY (DST_ID)
go

/*==============================================================*/
/* Index: STATE_FOR_DESCRIPTIONSTATE_FK                         */
/*==============================================================*/




CREATE NONCLUSTERED INDEX STATE_FOR_DESCRIPTIONSTATE_FK ON DESCRIPTION_STATE (STA_ID ASC)
go

/*==============================================================*/
/* Table: FLAG_CITY                                             */
/*==============================================================*/
CREATE TABLE FLAG_CITY (
   FCI_ID               INT                  IDENTITY,
   CIT_ID               INT                  NOT NULL,
   FCI_FLAG             VARBINARY(8000)      NOT NULL
)
go

ALTER TABLE FLAG_CITY
   ADD CONSTRAINT PK_FLAG_CITY PRIMARY KEY (FCI_ID)
go

/*==============================================================*/
/* Index: CITY_FOR_FLAGCITY_FK                                  */
/*==============================================================*/




CREATE NONCLUSTERED INDEX CITY_FOR_FLAGCITY_FK ON FLAG_CITY (CIT_ID ASC)
go

/*==============================================================*/
/* Table: FLAG_STATE                                            */
/*==============================================================*/
CREATE TABLE FLAG_STATE (
   FST_ID               INT                  IDENTITY,
   STA_ID               INT                  NOT NULL,
   FST_FLAG             VARBINARY(8000)      NOT NULL
)
go

ALTER TABLE FLAG_STATE
   ADD CONSTRAINT PK_FLAG_STATE PRIMARY KEY (FST_ID)
go

/*==============================================================*/
/* Index: STATE_FOR_FLAGSTATE_FK                                */
/*==============================================================*/




CREATE NONCLUSTERED INDEX STATE_FOR_FLAGSTATE_FK ON FLAG_STATE (STA_ID ASC)
go

/*==============================================================*/
/* Table: STATE                                                 */
/*==============================================================*/
CREATE TABLE STATE (
   STA_ID               INT                  IDENTITY,
   COU_ID               INT                  NOT NULL,
   STA_NAME             VARCHAR(100)         NOT NULL,
   STA_UF               CHAR(2)              NOT NULL
)
go

ALTER TABLE STATE
   ADD CONSTRAINT PK_STATE PRIMARY KEY (STA_ID)
go

/*==============================================================*/
/* Index: COUNTRY_FOR_STATE_FK                                  */
/*==============================================================*/




CREATE NONCLUSTERED INDEX COUNTRY_FOR_STATE_FK ON STATE (COU_ID ASC)
go

ALTER TABLE CITY
   ADD CONSTRAINT FK_CITY_STATE_FOR_STATE FOREIGN KEY (STA_ID)
      REFERENCES STATE (STA_ID)
go

ALTER TABLE COUNTRY
   ADD CONSTRAINT FK_COUNTRY_CONTINENT_CONTINEN FOREIGN KEY (CON_ID)
      REFERENCES CONTINENT (CON_ID)
go

ALTER TABLE COUNTRY_CAPITAL
   ADD CONSTRAINT FK_COUNTRY__COUNTRYCA_COUNTRY FOREIGN KEY (COU_ID)
      REFERENCES COUNTRY (COU_ID)
go

ALTER TABLE COUNTRY_CURRENCY
   ADD CONSTRAINT FK_COUNTRY__COUNTRYCU_COUNTRY FOREIGN KEY (COU_ID)
      REFERENCES COUNTRY (COU_ID)
go

ALTER TABLE COUNTRY_CURRENCY
   ADD CONSTRAINT FK_COUNTRY__CURRENCYC_CURRENCY FOREIGN KEY (CUR_ID)
      REFERENCES CURRENCY (CUR_ID)
go

ALTER TABLE COUNTRY_DESCRIPTION
   ADD CONSTRAINT FK_COUNTRY__COUNTRYDE_COUNTRY FOREIGN KEY (COU_ID)
      REFERENCES COUNTRY (COU_ID)
go

ALTER TABLE COUNTRY_FLAG
   ADD CONSTRAINT FK_COUNTRY__COUNTRYFL_COUNTRY FOREIGN KEY (COU_ID)
      REFERENCES COUNTRY (COU_ID)
go

ALTER TABLE DESCRIPTION_CITY
   ADD CONSTRAINT FK_DESCRIPT_CITY_FOR__CITY FOREIGN KEY (CIT_ID)
      REFERENCES CITY (CIT_ID)
go

ALTER TABLE DESCRIPTION_STATE
   ADD CONSTRAINT FK_DESCRIPT_STATE_FOR_STATE FOREIGN KEY (STA_ID)
      REFERENCES STATE (STA_ID)
go

ALTER TABLE FLAG_CITY
   ADD CONSTRAINT FK_FLAG_CIT_CITY_FOR__CITY FOREIGN KEY (CIT_ID)
      REFERENCES CITY (CIT_ID)
go

ALTER TABLE FLAG_STATE
   ADD CONSTRAINT FK_FLAG_STA_STATE_FOR_STATE FOREIGN KEY (STA_ID)
      REFERENCES STATE (STA_ID)
go

ALTER TABLE STATE
   ADD CONSTRAINT FK_STATE_COUNTRY_F_COUNTRY FOREIGN KEY (COU_ID)
      REFERENCES COUNTRY (COU_ID)
go
