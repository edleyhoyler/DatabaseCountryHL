/*==============================================================*/
/* Table: STATE                                                 */
/*==============================================================*/
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
GO
alter table STATE
   add constraint FK_STATE_COUNTRY_F_COUNTRY foreign key (COU_ID)
      references COUNTRY (COU_ID)
GO
/*==============================================================*/
/* Index: COUNTRY_FOR_STATE_FK                                  */
/*==============================================================*/




/*==============================================================*/
/* Index: COUNTRY_FOR_STATE_FK                                  */
/*==============================================================*/




create nonclustered index COUNTRY_FOR_STATE_FK on STATE (COU_ID ASC)