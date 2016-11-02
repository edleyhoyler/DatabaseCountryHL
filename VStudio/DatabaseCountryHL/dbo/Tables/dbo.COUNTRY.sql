/*==============================================================*/
/* Table: COUNTRY                                               */
/*==============================================================*/
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