PRINT '|Add REGIONS [  ]';
PRINT '|$(DataSource)$(REGIONS)';
INSERT INTO REGIONS([REG_NAME])
(SELECT DISTINCT [E].[NomeRegiao] FROM [EstadoRegiaoBR] [E]);
PRINT '|Add REGIONS [OK]';
--####################
--##                ##
--##     Version    ##
--##     2.0.0.4    ##
--##     BY  EDY    ##
--##                ##
--####################