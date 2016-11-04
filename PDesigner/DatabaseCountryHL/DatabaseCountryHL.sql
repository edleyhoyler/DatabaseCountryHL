/*==============================================================*/
/* Database name:  DATABASECOUNTRYHL                            */
/* DBMS name:      Microsoft SQL Server 2016                    */
/* Created on:     03/11/2016 23:24:47                          */
/*==============================================================*/


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
/* Table: COUNTRY                                               */
/*==============================================================*/
CREATE TABLE COUNTRY (
   COU_ID               INT                  IDENTITY,
   COU_NOME             VARCHAR(100)         NOT NULL,
   COU_NAME             VARCHAR(100)         NOT NULL,
   COU_NOMBRE           VARCHAR(100)         NOT NULL,
   COU_ISO31661NUMERIC  INT                  NOT NULL,
   COU_ISO31661ALPHA2   CHAR(2)              NOT NULL,
   COU_ISO31661ALPHA3   CHAR(3)              NOT NULL
)
go

ALTER TABLE COUNTRY
   ADD CONSTRAINT PK_COUNTRY PRIMARY KEY (COU_ID)
go

/*==============================================================*/
/* Table: DESCRIPTION_CITY                                      */
/*==============================================================*/
CREATE TABLE DESCRIPTION_CITY (
   DCI_ID               INT                  IDENTITY,
   CIT_ID               INT                  NOT NULL,
   DCI_DESCRIPTION      VARCHAR(999)         NULL
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
/* Table: DESCRIPTION_COUNTRY                                   */
/*==============================================================*/
CREATE TABLE DESCRIPTION_COUNTRY (
   DCO_ID               INT                  IDENTITY,
   COU_ID               INT                  NOT NULL,
   DCO_DESCRIPTION      VARCHAR(999)         NOT NULL
)
go

ALTER TABLE DESCRIPTION_COUNTRY
   ADD CONSTRAINT PK_DESCRIPTION_COUNTRY PRIMARY KEY (DCO_ID)
go

/*==============================================================*/
/* Index: COUNTRY_FOR_DESCRIPTIONCOUNTRY_FK                     */
/*==============================================================*/




CREATE NONCLUSTERED INDEX COUNTRY_FOR_DESCRIPTIONCOUNTRY_FK ON DESCRIPTION_COUNTRY (COU_ID ASC)
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

ALTER TABLE DESCRIPTION_CITY
   ADD CONSTRAINT FK_DESCRIPT_CITY_FOR__CITY FOREIGN KEY (CIT_ID)
      REFERENCES CITY (CIT_ID)
go

ALTER TABLE DESCRIPTION_COUNTRY
   ADD CONSTRAINT FK_DESCRIPT_COUNTRY_F_COUNTRY FOREIGN KEY (COU_ID)
      REFERENCES COUNTRY (COU_ID)
go

ALTER TABLE DESCRIPTION_STATE
   ADD CONSTRAINT FK_DESCRIPT_STATE_FOR_STATE FOREIGN KEY (STA_ID)
      REFERENCES STATE (STA_ID)
go

ALTER TABLE STATE
   ADD CONSTRAINT FK_STATE_COUNTRY_F_COUNTRY FOREIGN KEY (COU_ID)
      REFERENCES COUNTRY (COU_ID)
go

