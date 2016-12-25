﻿CREATE TABLE [dbo].[CURRENCY] (
    [CUR_ID]              INT           IDENTITY (1, 1) NOT NULL,
    [CUR_ISO4217_CODE]    CHAR (3)      NOT NULL,
    [CUR_ISO4217_NAME]    VARCHAR (100) NOT NULL,
    [CUR_ISO4217_NUMERIC] INT           NOT NULL,
    CONSTRAINT [PK_CURRENCY] PRIMARY KEY CLUSTERED ([CUR_ID] ASC)
);



