/*==============================================================*/
/* Table: DESCRIPTION_STATE                                     */
/*==============================================================*/
CREATE TABLE DESCRIPTION_STATE (
   DST_ID               INT                  IDENTITY,
   STA_ID               INT                  NOT NULL,
   DST_DESCRIPTION      VARCHAR(999)         NOT NULL
)




GO
/*==============================================================*/
/* Index: STATE_FOR_DESCRIPTIONSTATE_FK                         */
/*==============================================================*/




CREATE NONCLUSTERED INDEX STATE_FOR_DESCRIPTIONSTATE_FK ON DESCRIPTION_STATE (STA_ID ASC)


GO
ALTER TABLE DESCRIPTION_STATE
   ADD CONSTRAINT PK_DESCRIPTION_STATE PRIMARY KEY (DST_ID)
GO
ALTER TABLE DESCRIPTION_STATE
   ADD CONSTRAINT FK_DESCRIPT_STATE_FOR_STATE FOREIGN KEY (STA_ID)
      REFERENCES STATE (STA_ID)