/*==============================================================*/
/* Table: DESCRIPTION_COUNTRY                                   */
/*==============================================================*/
/*==============================================================*/
/* Table: DESCRIPTION_COUNTRY                                   */
/*==============================================================*/
/*==============================================================*/
/* Table: DESCRIPTION_COUNTRY                                   */
/*==============================================================*/
CREATE TABLE DESCRIPTION_COUNTRY (
   DCO_ID               INT                  IDENTITY,
   COU_ID               INT                  NOT NULL,
   DCO_DESCRIPTION      VARCHAR(999)         NOT NULL
)
GO
ALTER TABLE DESCRIPTION_COUNTRY
   ADD CONSTRAINT FK_DESCRIPT_COUNTRY_F_COUNTRY FOREIGN KEY (COU_ID)
      REFERENCES COUNTRY (COU_ID)
GO
ALTER TABLE DESCRIPTION_COUNTRY
   ADD CONSTRAINT PK_DESCRIPTION_COUNTRY PRIMARY KEY (DCO_ID)
GO
/*==============================================================*/
/* Index: COUNTRY_FOR_DESCRIPTIONCOUNTRY_FK                     */
/*==============================================================*/




/*==============================================================*/
/* Index: COUNTRY_FOR_DESCRIPTIONCOUNTRY_FK                     */
/*==============================================================*/




/*==============================================================*/
/* Index: COUNTRY_FOR_DESCRIPTIONCOUNTRY_FK                     */
/*==============================================================*/




CREATE NONCLUSTERED INDEX COUNTRY_FOR_DESCRIPTIONCOUNTRY_FK ON DESCRIPTION_COUNTRY (COU_ID ASC)