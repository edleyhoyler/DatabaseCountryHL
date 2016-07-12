/*==============================================================*/
/* Database name:  DATABASECOUNTRYHL                            */
/* DBMS name:      Microsoft SQL Server 2014                    */
/* Created on:     7/11/2016 9:03:43 PM                         */
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
/* Table: TBCOUNTRY                                             */
/*==============================================================*/
create table TBCOUNTRY (
   COU_ID               int                  identity,
   COU_NOME             varchar(100)         not null,
   COU_NAME             varchar(100)         not null,
   COU_NOMBRE           varchar(100)         not null,
   COU_ISO31661NUMERIC  int                  not null,
   COU_ISO31661ALPHA2   int                  not null,
   COU_ISO31661ALPHA3   int                  not null,
   constraint PK_TBCOUNTRY primary key (COU_ID)
)
go

/*==============================================================*/
/* Table: TBCOUNTRYSTATE                                        */
/*==============================================================*/
create table TBCOUNTRYSTATE (
   CST_ID               int                  identity,
   COU_ID               int                  not null,
   CST_NAME             varchar(100)         not null,
   CST_UF               varchar(2)           not null,
   constraint PK_TBCOUNTRYSTATE primary key (CST_ID)
)
go

/*==============================================================*/
/* Index: COUNTRY_STATES_FK                                     */
/*==============================================================*/




create nonclustered index COUNTRY_STATES_FK on TBCOUNTRYSTATE (COU_ID ASC)
go

/*==============================================================*/
/* Table: TBSTATECITY                                           */
/*==============================================================*/
create table TBSTATECITY (
   SCI_ID               int                  identity,
   CST_ID               int                  not null,
   SCI_NAME             varchar(100)         not null,
   constraint PK_TBSTATECITY primary key (SCI_ID)
)
go

/*==============================================================*/
/* Index: STATE_CITY_FK                                         */
/*==============================================================*/




create nonclustered index STATE_CITY_FK on TBSTATECITY (CST_ID ASC)
go

alter table TBCOUNTRYSTATE
   add constraint FK_TBCOUNTR_COUNTRY_S_TBCOUNTR foreign key (COU_ID)
      references TBCOUNTRY (COU_ID)
go

alter table TBSTATECITY
   add constraint FK_TBSTATEC_STATE_CIT_TBCOUNTR foreign key (CST_ID)
      references TBCOUNTRYSTATE (CST_ID)
go

