/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
PRINT ''
GO
PRINT '|------------ Post Deployment [  ] |';
GO
:SETVAR ScriptsPath "..\Data\"
GO
:SETVAR FileNameCountry "Script.Add.Country.sql"
GO
:r $(ScriptsPath)$(FileNameCountry)
GO
PRINT '|------------ Post Deployment [OK] |';
GO
PRINT ''
GO