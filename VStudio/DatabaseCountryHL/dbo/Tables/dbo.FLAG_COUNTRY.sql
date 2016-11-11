/*==============================================================*/
/* Table: FLAG_COUNTRY                                          */
/*==============================================================*/
CREATE TABLE FLAG_COUNTRY (
   FCO_ID               INT                  IDENTITY,
   COU_ID               INT                  NOT NULL,
   FCO_FLAG             VARBINARY(8000)      NOT NULL
)




GO
/*==============================================================*/
/* Index: COUNTRY_FOR_FLAGCOUNTRY_FK                            */
/*==============================================================*/




CREATE NONCLUSTERED INDEX COUNTRY_FOR_FLAGCOUNTRY_FK ON FLAG_COUNTRY (COU_ID ASC)


GO
ALTER TABLE FLAG_COUNTRY
   ADD CONSTRAINT PK_FLAG_COUNTRY PRIMARY KEY (FCO_ID)
GO
ALTER TABLE FLAG_COUNTRY
   ADD CONSTRAINT FK_FLAG_COU_COUNTRY_F_COUNTRY FOREIGN KEY (COU_ID)
      REFERENCES COUNTRY (COU_ID)