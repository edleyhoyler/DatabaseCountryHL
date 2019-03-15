PRINT '|Add COUNTRYS [  ]';
PRINT '|$(DataSource)$(COUNTRYS)';
INSERT INTO [COUNTRYS]
(
  [CON_ID],
  [COU_NAME_EN],
  [COU_NAME_BR],
  [COU_ISO31661_ALPHA2],
  [COU_ISO31661_ALPHA3],
  [COU_ISO31661_NUMBER],
  [COU_BACEN_CODE],
  [COU_LATITUDE],
  [COU_LONGITUDE]
)
SELECT
      [CO].[CON_ID]            [CON_ID],
      [CN].[NAME_EN]           [COU_NAME_EN],
      [CN].[NAME_BR]           [COU_NAME_BR],
      [CN].[ALPHA2]            [COU_ISO31661_ALPHA2],
      [CN].[ALPHA3]            [COU_ISO31661_ALPHA3],
      [CN].[NUM]               [COU_ISO31661_NUMBER],
      [CB].[SL_BACEN]          [COU_BACEN_CODE],
	  (CONVERT(VARCHAR(10), 
	  [CS].[Latitude]))        [COU_LATITUDE],
	  (CONVERT(VARCHAR(10),
      [CS].[Longitude]))       [COU_LONGITUDE]
FROM          [CountryNames_EN_BR]  [CN]
INNER JOIN    [CountryCodes]        [CC]
  ON
	[CN].[ALPHA2] = [CC].[ISO3166-1-Alpha-2]
INNER JOIN    [CountryBacen]        [CB]
  ON
	[CN].[ALPHA2] = [CB].[SL_SIGLA]
INNER JOIN    [CONTINENTS]          [CO]
  ON
	[CO].[CON_CODE] = [CC].[Continent]
INNER JOIN [CountriesCoordinates]   [CS]
   ON
  [CN].[ALPHA2] =  [CS].[Alpha2];
PRINT '|Add COUNTRYS [OK]';
--####################
--##                ##
--##     Version    ##
--##     2.0.0.4    ##
--##     BY  EDY    ##
--##                ##
--####################