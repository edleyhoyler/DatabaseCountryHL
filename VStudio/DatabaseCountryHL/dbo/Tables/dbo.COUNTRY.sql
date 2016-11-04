/*==============================================================*/
/* Table: COUNTRY                                               */
/*==============================================================*/
/*==============================================================*/
/* Table: COUNTRY                                               */
/*==============================================================*/
/*==============================================================*/
/* Table: COUNTRY                                               */
/*==============================================================*/
CREATE TABLE COUNTRY (
   COU_ID               INT                  IDENTITY,
   COU_NOME             VARCHAR(100)         NOT NULL,
   COU_NAME             VARCHAR(100)         NOT NULL,
   COU_NOMBRE           VARCHAR(100)         NOT NULL,
   COU_ISO31661NUMERIC  INT                  NOT NULL,
   COU_ISO31661ALPHA2   CHAR(2)              NOT NULL,
   COU_ISO31661ALPHA3   CHAR(3)              NOT NULL
)
GO
ALTER TABLE COUNTRY
   ADD CONSTRAINT PK_COUNTRY PRIMARY KEY (COU_ID)