/*==============================================================*/
/* Database name:  DATABASECOUNTRYHL                            */
/* DBMS name:      Microsoft SQL Server 2016                    */
/* Created on:     15/02/2018 11:53:48                          */
/*==============================================================*/


drop database DATABASECOUNTRYHL
go

/*==============================================================*/
/* Database: DATABASECOUNTRYHL                                  */
/*==============================================================*/
create database DATABASECOUNTRYHL
go

use DATABASECOUNTRYHL
go
DROP TABLE IF EXISTS COUNTRYS_FLAGS_16X;
DROP TABLE IF EXISTS COUNTRYS_FLAGS_24X;
DROP TABLE IF EXISTS COUNTRYS_FLAGS_32X;
DROP TABLE IF EXISTS COUNTRYS_FLAGS_48X;
DROP TABLE IF EXISTS COUNTRYS_FLAGS_64X;
DROP TABLE IF EXISTS COUNTRYS_FLAGS_100X;
DROP TABLE IF EXISTS COUNTRYS_FLAGS_128X;
DROP TABLE IF EXISTS COUNTRYS_FLAGS_250X;
DROP TABLE IF EXISTS COUNTRYS_FLAGS_1000X;
DROP TABLE IF EXISTS CITYS;
DROP TABLE IF EXISTS FEDERATIONS;
DROP TABLE IF EXISTS REGIONS;
DROP TABLE IF EXISTS COUNTRYS;
DROP TABLE IF EXISTS CONTINENTS;
/*==============================================================*/
/* Table: CITYS                                                 */
/*==============================================================*/
create table CITYS (
   CIT_ID               int                  identity,
   FED_ID               int                  not null,
   CIT_NAME             varchar(100)         not null,
   CID_CODE             varchar(10)          not null,
   CIT_LATITUDE         varchar(10)          not null,
   CIT_LONGITUDE        varchar(10)          not null
)
go

alter table CITYS
   add constraint PK_CITYS_CIT_ID primary key (CIT_ID)
go

/*==============================================================*/
/* Index: FERERATIONS_FOR_CITYS_FK                              */
/*==============================================================*/




create nonclustered index FERERATIONS_FOR_CITYS_FK on CITYS (FED_ID ASC)
go

/*==============================================================*/
/* Index: CITYS_UK                                              */
/*==============================================================*/




create nonclustered index CITYS_UK on CITYS (CIT_NAME ASC,
  CID_CODE ASC)
go

/*==============================================================*/
/* Table: CONTINENTS                                            */
/*==============================================================*/
create table CONTINENTS (
   CON_ID               int                  identity,
   CON_NAME_EN          varchar(100)         not null,
   CON_NAME_BR          varchar(100)         not null,
   CON_CODE             char(2)              not null
)
go

alter table CONTINENTS
   add constraint PK_CONTINENTS_CON_ID primary key (CON_ID)
go

/*==============================================================*/
/* Index: CONTINENTS_UK                                         */
/*==============================================================*/




create unique nonclustered index CONTINENTS_UK on CONTINENTS (CON_NAME_EN ASC,
  CON_NAME_BR ASC,
  CON_CODE ASC)
go

/*==============================================================*/
/* Table: COUNTRYS                                              */
/*==============================================================*/
create table COUNTRYS (
   COU_ID               int                  identity,
   CON_ID               int                  not null,
   COU_NAME_EN          varchar(100)         not null,
   COU_NAME_BR          varchar(100)         not null,
   COU_ISO31661_ALPHA2  char(2)              not null,
   COU_ISO31661_ALPHA3  char(3)              not null,
   COU_ISO31661_NUMBER  varchar(3)           not null,
   COU_BACEN_CODE       varchar(5)           not null,
   COU_LATITUDE         varchar(10)          not null,
   COU_LONGITUDE        varchar(10)          not null
)
go

alter table COUNTRYS
   add constraint PK_COUNTRYS_COU_ID primary key (COU_ID)
go

/*==============================================================*/
/* Index: CONTINENTS_FOR_COUNTRYS_FK                            */
/*==============================================================*/




create nonclustered index CONTINENTS_FOR_COUNTRYS_FK on COUNTRYS (CON_ID ASC)
go

/*==============================================================*/
/* Index: COUNTRYS_UK                                           */
/*==============================================================*/




create unique nonclustered index COUNTRYS_UK on COUNTRYS (COU_NAME_EN ASC,
  COU_NAME_BR ASC,
  COU_ISO31661_ALPHA2 ASC,
  COU_ISO31661_ALPHA3 ASC,
  COU_ISO31661_NUMBER ASC,
  COU_BACEN_CODE ASC)
go

/*==============================================================*/
/* Table: COUNTRYS_FLAGS_1000X                                  */
/*==============================================================*/
create table COUNTRYS_FLAGS_1000X (
   COF1000_ID           int                  identity,
   COU_ID               int                  not null,
   COF1000_FILE_BYTE    varbinary(8000)      not null,
   COF1000_FILE_NAME    varchar(100)         not null,
   COF1000_FILE_HASH_SHA1 varchar(50)          not null,
   COF1000_FILE_HASH_MD5 varchar(50)          not null
)
go

alter table COUNTRYS_FLAGS_1000X
   add constraint PK_COUNTRYS_FLAGS_1000X_COF1000_ID primary key (COF1000_ID)
go

/*==============================================================*/
/* Index: COUNTRYS_FOR_COUNTRYS_FLAGS_1000X_FK                  */
/*==============================================================*/




create nonclustered index COUNTRYS_FOR_COUNTRYS_FLAGS_1000X_FK on COUNTRYS_FLAGS_1000X (COU_ID ASC)
go

/*==============================================================*/
/* Table: COUNTRYS_FLAGS_100X                                   */
/*==============================================================*/
create table COUNTRYS_FLAGS_100X (
   COF100_ID            int                  identity,
   COU_ID               int                  not null,
   COF100_FILE_BYTE     varbinary(8000)      not null,
   COF100_FILE_NAME     varchar(100)         not null,
   COF100_FILE_HASH_SHA1 varchar(50)          not null,
   COF100_FILE_HASH_MD5 varchar(50)          not null
)
go

alter table COUNTRYS_FLAGS_100X
   add constraint PK_COUNTRYS_FLAGS_100X_COF100_ID primary key (COF100_ID)
go

/*==============================================================*/
/* Index: COUNTRYS_FOR_COUNTRYS_FLAGS_100X_FK                   */
/*==============================================================*/




create nonclustered index COUNTRYS_FOR_COUNTRYS_FLAGS_100X_FK on COUNTRYS_FLAGS_100X (COU_ID ASC)
go

/*==============================================================*/
/* Table: COUNTRYS_FLAGS_128X                                   */
/*==============================================================*/
create table COUNTRYS_FLAGS_128X (
   COF128_ID            int                  identity,
   COU_ID               int                  not null,
   COF128_FILE_BYTE     varbinary(8000)      not null,
   COF128_FILE_NAME     varchar(100)         not null,
   COF128_FILE_HASH_SHA1 varchar(50)          not null,
   COF128_FILE_HASH_MD5 varchar(50)          null
)
go

alter table COUNTRYS_FLAGS_128X
   add constraint PK_COUNTRYS_FLAGS_128X_COF128_ID primary key (COF128_ID)
go

/*==============================================================*/
/* Index: COUNTRYS_FOR_COUNTRYS_FLAGS_128X_FK                   */
/*==============================================================*/




create nonclustered index COUNTRYS_FOR_COUNTRYS_FLAGS_128X_FK on COUNTRYS_FLAGS_128X (COU_ID ASC)
go

/*==============================================================*/
/* Table: COUNTRYS_FLAGS_16X                                    */
/*==============================================================*/
create table COUNTRYS_FLAGS_16X (
   COF16_ID             int                  identity,
   COU_ID               int                  not null,
   COF16_FILE_BYTE      varbinary(8000)      not null,
   COF16_FILE_NAME      varchar(100)         not null,
   COF16_FILE_HASH_SHA1 varchar(50)          not null,
   COF16_FILE_HASH_MD5  varchar(50)          not null
)
go

alter table COUNTRYS_FLAGS_16X
   add constraint PK_COUNTRYS_FLAGS_16X_COF16_ID primary key (COF16_ID)
go

/*==============================================================*/
/* Index: COUNTRYS_FOR_COUNTRYS_FLAGS_FK                        */
/*==============================================================*/




create nonclustered index COUNTRYS_FOR_COUNTRYS_FLAGS_FK on COUNTRYS_FLAGS_16X (COU_ID ASC)
go

/*==============================================================*/
/* Table: COUNTRYS_FLAGS_24X                                    */
/*==============================================================*/
create table COUNTRYS_FLAGS_24X (
   COF24_ID             int                  identity,
   COU_ID               int                  not null,
   COF24_FILE_BYTE      varbinary(8000)      not null,
   COF24_FILE_NAME      varchar(100)         not null,
   COF24_FILE_HASH_SHA1 varchar(50)          not null,
   COF24_FILE_HASH_MD5  varchar(50)          not null
)
go

alter table COUNTRYS_FLAGS_24X
   add constraint PK_COUNTRYS_FLAGS_24X_COF24_ID primary key (COF24_ID)
go

/*==============================================================*/
/* Index: COUNTRYS_FOR_COUNTRYS_FLAGS_24X24_FK                  */
/*==============================================================*/




create nonclustered index COUNTRYS_FOR_COUNTRYS_FLAGS_24X24_FK on COUNTRYS_FLAGS_24X (COU_ID ASC)
go

/*==============================================================*/
/* Table: COUNTRYS_FLAGS_250X                                   */
/*==============================================================*/
create table COUNTRYS_FLAGS_250X (
   COF250_ID            int                  identity,
   COU_ID               int                  not null,
   COF250_FILE_BYTE     varbinary(8000)      not null,
   COF250_FILE_NAME     varchar(100)         not null,
   COF250_FILE_HASH_SHA1 varchar(50)          not null,
   COF250_FILE_HASH_MD5 varchar(50)          not null
)
go

alter table COUNTRYS_FLAGS_250X
   add constraint PK_COUNTRYS_FLAGS_250X_COF250_ID primary key (COF250_ID)
go

/*==============================================================*/
/* Index: COUNTRYS_FOR_COUNTRYS_FLAGS_250X_FK                   */
/*==============================================================*/




create nonclustered index COUNTRYS_FOR_COUNTRYS_FLAGS_250X_FK on COUNTRYS_FLAGS_250X (COU_ID ASC)
go

/*==============================================================*/
/* Table: COUNTRYS_FLAGS_32X                                    */
/*==============================================================*/
create table COUNTRYS_FLAGS_32X (
   COF32_ID             int                  identity,
   COU_ID               int                  not null,
   COF32_FILE_BYTE      varbinary(8000)      not null,
   COF32_FILE_NAME      varchar(100)         not null,
   COF32_FILE_HASH_SHA1 varchar(50)          not null,
   COF32_FILE_HASH_MD5  varchar(50)          not null
)
go

alter table COUNTRYS_FLAGS_32X
   add constraint PK_COUNTRYS_FLAGS_32X_COF32_ID primary key (COF32_ID)
go

/*==============================================================*/
/* Index: COUNTRYS_FOR_COUNTRYS_FLAGS_32X_FK                    */
/*==============================================================*/




create nonclustered index COUNTRYS_FOR_COUNTRYS_FLAGS_32X_FK on COUNTRYS_FLAGS_32X (COU_ID ASC)
go

/*==============================================================*/
/* Table: COUNTRYS_FLAGS_48X                                    */
/*==============================================================*/
create table COUNTRYS_FLAGS_48X (
   COF48_ID             int                  identity,
   COU_ID               int                  not null,
   COF48_FILE_BYTE      varbinary(8000)      not null,
   COF48_FILE_NAME      varchar(100)         not null,
   COF48_FILE_HASH_SHA1 varchar(50)          not null,
   COF48_FILE_HASH_MD5  varchar(50)          not null
)
go

alter table COUNTRYS_FLAGS_48X
   add constraint PK_COUNTRYS_FLAGS_48X_COF48_ID primary key (COF48_ID)
go

/*==============================================================*/
/* Index: COUNTRYS_FOR_COUNTRYS_FLAGS_48X_FK                    */
/*==============================================================*/




create nonclustered index COUNTRYS_FOR_COUNTRYS_FLAGS_48X_FK on COUNTRYS_FLAGS_48X (COU_ID ASC)
go

/*==============================================================*/
/* Table: COUNTRYS_FLAGS_64X                                    */
/*==============================================================*/
create table COUNTRYS_FLAGS_64X (
   COF64_ID             int                  identity,
   COU_ID               int                  not null,
   COF64_FILE_BYTE      varbinary(8000)      not null,
   COF64_FILE_NAME      varchar(100)         not null,
   COF64_FILE_HASH_SHA1 varchar(50)          not null,
   COF64_FILE_HASH_MD5  varchar(50)          not null
)
go

alter table COUNTRYS_FLAGS_64X
   add constraint PK_COUNTRYS_FLAGS_64X_COF64_ID primary key (COF64_ID)
go

/*==============================================================*/
/* Index: COUNTRYS_FOR_COUNTRYS_FLAGS_64X_FK                    */
/*==============================================================*/




create nonclustered index COUNTRYS_FOR_COUNTRYS_FLAGS_64X_FK on COUNTRYS_FLAGS_64X (COU_ID ASC)
go

/*==============================================================*/
/* Table: FEDERATIONS                                           */
/*==============================================================*/
create table FEDERATIONS (
   FED_ID               int                  identity,
   COU_ID               int                  not null,
   REG_ID               int                  not null,
   FED_NAME             varchar(100)         not null,
   FED_UF               char(2)              not null,
   FED_IBGE_CODE        char(2)              not null
)
go

alter table FEDERATIONS
   add constraint PK_FEDERATIONS_FED_ID primary key (FED_ID)
go

/*==============================================================*/
/* Index: COUNTRYS_FOR_FEDERATIONS_FK                           */
/*==============================================================*/




create nonclustered index COUNTRYS_FOR_FEDERATIONS_FK on FEDERATIONS (COU_ID ASC)
go

/*==============================================================*/
/* Index: REGIONS_FOR_FEDERATIONS_FK                            */
/*==============================================================*/




create nonclustered index REGIONS_FOR_FEDERATIONS_FK on FEDERATIONS (REG_ID ASC)
go

/*==============================================================*/
/* Index: FEDERATIONS_UK                                        */
/*==============================================================*/




create unique nonclustered index FEDERATIONS_UK on FEDERATIONS (FED_NAME ASC,
  FED_UF ASC,
  FED_IBGE_CODE ASC)
go

/*==============================================================*/
/* Table: REGIONS                                               */
/*==============================================================*/
create table REGIONS (
   REG_ID               int                  identity,
   REG_NAME             varchar(100)         not null
)
go

alter table REGIONS
   add constraint PK_REGIONS_REG_ID primary key (REG_ID)
go

/*==============================================================*/
/* Index: REGIONS_UK                                            */
/*==============================================================*/




create unique nonclustered index REGIONS_UK on REGIONS (REG_NAME ASC)
go

alter table CITYS
   add constraint FK_CITYS_FERERATIO_FEDERATI foreign key (FED_ID)
      references FEDERATIONS (FED_ID)
go

alter table COUNTRYS
   add constraint FK_COUNTRYS_CONTINENT_CONTINEN foreign key (CON_ID)
      references CONTINENTS (CON_ID)
go

alter table COUNTRYS_FLAGS_1000X
   add constraint FK_COUNTRYS_COUNTRYS__COUNTRYS_1000X foreign key (COU_ID)
      references COUNTRYS (COU_ID)
go

alter table COUNTRYS_FLAGS_100X
   add constraint FK_COUNTRYS_COUNTRYS__COUNTRYS_100X foreign key (COU_ID)
      references COUNTRYS (COU_ID)
go

alter table COUNTRYS_FLAGS_128X
   add constraint FK_COUNTRYS_COUNTRYS__COUNTRYS_128X foreign key (COU_ID)
      references COUNTRYS (COU_ID)
go

alter table COUNTRYS_FLAGS_16X
   add constraint FK_COUNTRYS_COUNTRYS__COUNTRYS_16X foreign key (COU_ID)
      references COUNTRYS (COU_ID)
go

alter table COUNTRYS_FLAGS_24X
   add constraint FK_COUNTRYS_COUNTRYS__COUNTRYS_24X foreign key (COU_ID)
      references COUNTRYS (COU_ID)
go

alter table COUNTRYS_FLAGS_250X
   add constraint FK_COUNTRYS_COUNTRYS__COUNTRYS_250X foreign key (COU_ID)
      references COUNTRYS (COU_ID)
go

alter table COUNTRYS_FLAGS_32X
   add constraint FK_COUNTRYS_COUNTRYS__COUNTRYS_32X foreign key (COU_ID)
      references COUNTRYS (COU_ID)
go

alter table COUNTRYS_FLAGS_48X
   add constraint FK_COUNTRYS_COUNTRYS__COUNTRYS_48X foreign key (COU_ID)
      references COUNTRYS (COU_ID)
go

alter table COUNTRYS_FLAGS_64X
   add constraint FK_COUNTRYS_COUNTRYS__COUNTRYS_64X foreign key (COU_ID)
      references COUNTRYS (COU_ID)
go

alter table FEDERATIONS
   add constraint FK_FEDERATI_COUNTRYS__COUNTRYS foreign key (COU_ID)
      references COUNTRYS (COU_ID)
go

alter table FEDERATIONS
   add constraint FK_FEDERATI_REGIONS_F_REGIONS foreign key (REG_ID)
      references REGIONS (REG_ID)
go

