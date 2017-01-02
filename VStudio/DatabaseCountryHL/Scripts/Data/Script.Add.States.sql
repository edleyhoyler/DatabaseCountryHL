PRINT '|Add States [  ]';
PRINT '|$(ScriptsPath)$(FileNameStates)';
/*
INSERT INTO [dbo].[STATES]
(
	[COU_ID],
	[STA_NAME],
	[STA_UF]
)
VALUES
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Acre','AC'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Alagoas','AL'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Amazonas','AM'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Amapá','AP'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Bahia','BA'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Ceará','CE'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Distrito Federal','DF'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Espírito Santo','ES'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Goiás','GO'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Maranhão','MA'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Minas Gerais','MG'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Mato Grosso do Sul','MS'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Mato Grosso','MT'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Pará','PA'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Paraíba','PB'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Pernambuco','PE'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Piauí','PI'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Paraná','PR'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Rio de Janeiro','RJ'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Rio Grande do Norte','RN'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Rondônia','RO'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Roraima','RR'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Rio Grande do Sul','RS'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Santa Catarina','SC'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Sergipe','SE'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'São Paulo','SP'),
((SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil'))),'Tocantins','TO');
*/
DECLARE @COU_ID_BR INT = (SELECT [COU_ID] FROM [dbo].[COUNTRY] [C] WHERE (UPPER([C].[COU_NAME_BR])) = (UPPER('Brasil')));
INSERT INTO [dbo].[STATES]
(
	[COU_ID],
	[STA_NAME],
	[STA_UF]
)
VALUES
(@COU_ID_BR,'Acre','AC'),
(@COU_ID_BR,'Alagoas','AL'),
(@COU_ID_BR,'Amazonas','AM'),
(@COU_ID_BR,'Amapá','AP'),
(@COU_ID_BR,'Bahia','BA'),
(@COU_ID_BR,'Ceará','CE'),
(@COU_ID_BR,'Distrito Federal','DF'),
(@COU_ID_BR,'Espírito Santo','ES'),
(@COU_ID_BR,'Goiás','GO'),
(@COU_ID_BR,'Maranhão','MA'),
(@COU_ID_BR,'Minas Gerais','MG'),
(@COU_ID_BR,'Mato Grosso do Sul','MS'),
(@COU_ID_BR,'Mato Grosso','MT'),
(@COU_ID_BR,'Pará','PA'),
(@COU_ID_BR,'Paraíba','PB'),
(@COU_ID_BR,'Pernambuco','PE'),
(@COU_ID_BR,'Piauí','PI'),
(@COU_ID_BR,'Paraná','PR'),
(@COU_ID_BR,'Rio de Janeiro','RJ'),
(@COU_ID_BR,'Rio Grande do Norte','RN'),
(@COU_ID_BR,'Rondônia','RO'),
(@COU_ID_BR,'Roraima','RR'),
(@COU_ID_BR,'Rio Grande do Sul','RS'),
(@COU_ID_BR,'Santa Catarina','SC'),
(@COU_ID_BR,'Sergipe','SE'),
(@COU_ID_BR,'São Paulo','SP'),
(@COU_ID_BR,'Tocantins','TO');
PRINT '|Add States [OK]';
--####################
--##                ##
--##     Version    ##
--##     1.0.0.2    ##
--##                ##
--####################