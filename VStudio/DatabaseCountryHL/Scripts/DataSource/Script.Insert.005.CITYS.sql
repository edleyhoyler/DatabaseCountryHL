PRINT '|Add CITYS [  ]';
PRINT '|$(Source)$(CITYS)';
INSERT INTO [CITYS]
(
  [FED_ID],
  [CIT_NAME],
  [CID_CODE],
  [CIT_LATITUDE],
  [CIT_LONGITUDE] 
)
(
  SELECT
  [F].[FED_ID],
  [C].[Cidade_NOME]   [CIT_NAME],
  (CONVERT(VARCHAR(10),
  [C].[Codigo_IBGE])) [CID_CODE],
    (CONVERT(VARCHAR(10),
  [C].[Latitude]))    [CIT_LATITUDE],
  (CONVERT(VARCHAR(10),
  [C].[Longitude]))   [CIT_LONGITUDE]
  FROM [FEDERATIONS] [F]
  INNER JOIN    [CidadesBR]   [C]
  ON [F].[FED_UF] =   [C].[Sigla_UF]
);
PRINT '|Add CITYS [OK]';
--####################
--##                ##
--##     Version    ##
--##     1.0.0.2    ##
--##     BY  EDY    ##
--##                ##
--####################