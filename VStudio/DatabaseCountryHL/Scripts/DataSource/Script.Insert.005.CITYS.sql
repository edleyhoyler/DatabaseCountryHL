PRINT '|Add CITYS [  ]';
PRINT '|$(Source)$(CITYS)';
INSERT INTO [CITYS]
(
  [FED_ID],
  [CIT_NAME],
  [CID_IBGE_CODE],
  [CIT_IBGE_LONGITUDE],
  [CIT_IBGE_LATITUDE]
)
(
  SELECT
  [F].[FED_ID],
  [C].[Cidade_NOME]   [CIT_NAME],
  (CONVERT(VARCHAR(10),
  [C].[Codigo_IBGE])) [CID_IBGE_CODE],
  (CONVERT(VARCHAR(10),
  [C].[Longitude]))   [CIT_IBGE_LONGITUDE],
  (CONVERT(VARCHAR(10),
  [C].[Latitude]))    [CIT_IBGE_LATITUDE]
  FROM [FEDERATIONS] [F]
  INNER JOIN    [CidadesBR]   [C]
  ON [F].[FED_UF] =   [C].[Sigla_UF]
);
PRINT '|Add CITYS [OK]';
--####################
--##                ##
--##     Version    ##
--##     1.0.0.1    ##
--##     BY  EDY    ##
--##                ##
--####################