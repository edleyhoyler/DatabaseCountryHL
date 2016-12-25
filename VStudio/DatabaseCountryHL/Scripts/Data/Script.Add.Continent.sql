PRINT '|Add Continent [  ]';
GO
PRINT '|$(ScriptsPath)$(FileNameContinent)';
GO
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
GO
SELECT * FROM [dbo].[CONTINENT]; 
GO
PRINT '|Add Continent [OK]';
GO
--####################
--##                ##
--##     Version    ##
--##     1.0.0.1    ##
--##                ##
--####################