﻿/*==============================================================*/
/* Table: FLAG_STATE                                            */
/*==============================================================*/
CREATE TABLE FLAG_STATE (
   FST_ID               INT                  IDENTITY,
   STA_ID               INT                  NOT NULL,
   FST_FLAG             VARBINARY(8000)      NOT NULL
)




GO
/*==============================================================*/
/* Index: STATE_FOR_FLAGSTATE_FK                                */
/*==============================================================*/




CREATE NONCLUSTERED INDEX STATE_FOR_FLAGSTATE_FK ON FLAG_STATE (STA_ID ASC)


GO
ALTER TABLE FLAG_STATE
   ADD CONSTRAINT PK_FLAG_STATE PRIMARY KEY (FST_ID)
GO
ALTER TABLE FLAG_STATE
   ADD CONSTRAINT FK_FLAG_STA_STATE_FOR_STATE FOREIGN KEY (STA_ID)
      REFERENCES STATE (STA_ID)