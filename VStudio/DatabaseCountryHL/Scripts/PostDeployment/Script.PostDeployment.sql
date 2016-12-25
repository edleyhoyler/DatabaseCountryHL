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
PRINT ' __________________________________________ '
GO
PRINT '|------------ Post-Deployment [  ]';
GO
:SETVAR ScriptsPath "..\Data\"
GO
:SETVAR FileNameContinent        "Script.Add.Continent.sql"
:SETVAR FileNameCountry          "Script.Add.Country.sql"
:SETVAR FileNameCurrency         "Script.Add.Currency.sql"
:SETVAR FileNameCountry_Currency "Script.Add.Country_Currency.sql"
GO
:r $(ScriptsPath)$(FileNameContinent)
:r $(ScriptsPath)$(FileNameCountry)
:r $(ScriptsPath)$(FileNameCurrency)
:r $(ScriptsPath)$(FileNameCountry_Currency)
GO
PRINT '|------------ Post-Deployment [OK]';
PRINT ' __________________________________________ '
GO
PRINT ''
GO