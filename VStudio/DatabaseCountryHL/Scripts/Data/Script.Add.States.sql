PRINT '|Add States [  ]';
GO
PRINT '|$(ScriptsPath)$(FileNameStates)';
GO
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
GO
PRINT '|Add States [OK]';
GO
--####################
--##                ##
--##     Version    ##
--##     1.0.0.1    ##
--##                ##
--####################