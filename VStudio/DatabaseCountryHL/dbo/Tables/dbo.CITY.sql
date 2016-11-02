/*==============================================================*/
/* Table: CITY                                                  */
/*==============================================================*/
/*==============================================================*/
/* Table: CITY                                                  */
/*==============================================================*/
create table CITY (
   CIT_ID               int                  not null,
   STA_ID               int                  not null,
   CIT_NAME             varchar(100)         not null,
   constraint PK_CITY primary key (CIT_ID)
)
GO
alter table CITY
   add constraint FK_CITY_STATE_FOR_STATE foreign key (STA_ID)
      references STATE (STA_ID)
GO
/*==============================================================*/
/* Index: STATE_FOR_CITY_FK                                     */
/*==============================================================*/




/*==============================================================*/
/* Index: STATE_FOR_CITY_FK                                     */
/*==============================================================*/




create nonclustered index STATE_FOR_CITY_FK on CITY (STA_ID ASC)