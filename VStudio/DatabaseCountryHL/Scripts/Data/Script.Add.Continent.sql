PRINT '|Add Continent [  ]';
PRINT '|$(ScriptsPath)$(FileNameContinent)';
/*
INSERT INTO [dbo].[CONTINENT]
(
	[CON_NAME_EN], 
	[CON_NAME_BR],
	[CON_CODE]
)
VALUES
('Africa',        'África',           'AF'),
('Antarctica',    'Antártica',        'AN'),
('Asia',          'Ásia',             'AS'),
('Europe',        'Europa',           'EU'),
('North america', 'América do Norte', 'NA'),
('Oceania',       'Oceânia',          'OC'),
('South america', 'América do Sul',   'SA');
*/
DROP TABLE IF EXISTS [dbo].[#CONTINENT];
SELECT DISTINCT 
	[D].[CON_NAME_EN], 
	[D].[CON_NAME_BR], 
	[D].[CON_CODE] INTO [dbo].[#CONTINENT] 
FROM 
	[dbo].[#DataSourceSQL] [D] 
WHERE 
	[D].[CON_CODE] IS NOT NULL 
ORDER BY 
	[D].[CON_NAME_EN] ASC;
INSERT INTO [dbo].[CONTINENT]
(
	[CON_NAME_EN],
	[CON_NAME_BR],
	[CON_CODE]
)
(
SELECT 
	[C].[CON_NAME_EN],
	[C].[CON_NAME_BR],
	[C].[CON_CODE]
FROM [dbo].[#CONTINENT] [C]
); 
PRINT '|Add Continent [OK]';
--####################
--##                ##
--##     Version    ##
--##     1.0.0.2    ##
--##                ##
--####################