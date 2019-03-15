PRINT '|Add CONTINENTS [  ]';
PRINT '|$(DataSource)$(CONTINENTS)';
INSERT INTO [dbo].[CONTINENTS]
(
	[CON_NAME_EN], 
	[CON_NAME_BR],
	[CON_CODE]
)
VALUES
(N'Africa'       , N'África'          , N'AF'),
(N'Antarctica'   , N'Antártica'       , N'AN'),
(N'Asia'         , N'Ásia'            , N'AS'),
(N'Europe'       , N'Europa'          , N'EU'),
(N'North america', N'América do Norte', N'NA'),
(N'Oceania'      , N'Oceânia'         , N'OC'),
(N'South america', N'América do Sul'  , N'SA');
PRINT '|Add CONTINENTS [OK]';
--####################
--##                ##
--##     Version    ##
--##     2.0.0.4    ##
--##     BY  EDY    ##
--##                ##
--####################