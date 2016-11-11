/*==============================================================*/
/* Table: FLAG_CITY                                             */
/*==============================================================*/
CREATE TABLE FLAG_CITY (
   FCI_ID               INT                  IDENTITY,
   CIT_ID               INT                  NOT NULL,
   FCI_FLAG             VARBINARY(8000)      NOT NULL
)




GO
/*==============================================================*/
/* Index: CITY_FOR_FLAGCITY_FK                                  */
/*==============================================================*/




CREATE NONCLUSTERED INDEX CITY_FOR_FLAGCITY_FK ON FLAG_CITY (CIT_ID ASC)


GO
ALTER TABLE FLAG_CITY
   ADD CONSTRAINT PK_FLAG_CITY PRIMARY KEY (FCI_ID)
GO
ALTER TABLE FLAG_CITY
   ADD CONSTRAINT FK_FLAG_CIT_CITY_FOR__CITY FOREIGN KEY (CIT_ID)
      REFERENCES CITY (CIT_ID)