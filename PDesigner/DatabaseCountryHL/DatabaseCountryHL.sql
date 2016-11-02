/*==============================================================*/
/* Database name:  DATABASECOUNTRYHL                            */
/* DBMS name:      Microsoft SQL Server 2016                    */
/* Created on:     01/11/2016 23:38:06                          */
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

/*==============================================================*/
/* Table: CITY                                                  */
/*==============================================================*/
create table CITY (
   CIT_ID               int                  not null,
   STA_ID               int                  not null,
   CIT_NAME             varchar(100)         not null,
   constraint PK_CITY primary key (CIT_ID)
)
go

/*==============================================================*/
/* Index: STATE_FOR_CITY_FK                                     */
/*==============================================================*/




create nonclustered index STATE_FOR_CITY_FK on CITY (STA_ID ASC)
go

/*==============================================================*/
/* Table: COUNTRY                                               */
/*==============================================================*/
create table COUNTRY (
   COU_ID               int                  not null,
   COU_NOME             varchar(100)         not null,
   COU_NAME             varchar(100)         not null,
   COU_NOMBRE           varchar(100)         not null,
   COU_ISO31661NUMERIC  int                  not null,
   COU_ISO31661ALPHA2   char(2)              not null,
   COU_ISO31661ALPHA3   char(3)              not null,
   constraint PK_COUNTRY primary key (COU_ID)
)
go

/*==============================================================*/
/* Table: STATE                                                 */
/*==============================================================*/
create table STATE (
   STA_ID               int                  not null,
   COU_ID               int                  not null,
   STA_NAME             varchar(100)         not null,
   STA_UF               char(2)              not null,
   constraint PK_STATE primary key (STA_ID)
)
go

/*==============================================================*/
/* Index: COUNTRY_FOR_STATE_FK                                  */
/*==============================================================*/




create nonclustered index COUNTRY_FOR_STATE_FK on STATE (COU_ID ASC)
go

alter table CITY
   add constraint FK_CITY_STATE_FOR_STATE foreign key (STA_ID)
      references STATE (STA_ID)
go

alter table STATE
   add constraint FK_STATE_COUNTRY_F_COUNTRY foreign key (COU_ID)
      references COUNTRY (COU_ID)
go

