﻿/*==============================================================*/
/* Table: CITY                                                  */
/*==============================================================*/
CREATE TABLE CITY (
   CIT_ID               INT                  IDENTITY,
   STA_ID               INT                  NOT NULL,
   CIT_NAME             VARCHAR(100)         NOT NULL
)




GO
/*==============================================================*/
/* Index: STATE_FOR_CITY_FK                                     */
/*==============================================================*/




CREATE NONCLUSTERED INDEX STATE_FOR_CITY_FK ON CITY (STA_ID ASC)


GO
ALTER TABLE CITY
   ADD CONSTRAINT PK_CITY PRIMARY KEY (CIT_ID)
GO
ALTER TABLE CITY
   ADD CONSTRAINT FK_CITY_STATE_FOR_STATE FOREIGN KEY (STA_ID)
      REFERENCES STATE (STA_ID)