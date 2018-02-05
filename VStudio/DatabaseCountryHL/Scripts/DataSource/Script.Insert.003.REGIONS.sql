PRINT '|Add REGIONS [  ]';
PRINT '|$(Source)$(REGIONS)';
--INSERT INTO [dbo].[REGIONS]
--(
--	[REG_NAME]
--)
--VALUES
--(N'Norte'),
--(N'Nordeste'),
--(N'Sudeste'),
--(N'Sul'),
--(N'Centro-Oeste');
INSERT INTO REGIONS([REG_NAME])
(SELECT DISTINCT [E].[NomeRegiao] FROM [EstadoRegiaoBR] [E]);
PRINT '|Add REGIONS [OK]';
--####################
--##                ##
--##     Version    ##
--##     1.0.0.1    ##
--##     BY  EDY    ##
--##                ##
--####################