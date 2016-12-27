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
:SETVAR FileNameCountry_Capital  "Script.Add.Country_Capital.sql"
:SETVAR FileNameStates           "Script.Add.States.sql"
:SETVAR FileNameCity             "Script.Add.City.sql"
GO
:r $(ScriptsPath)$(FileNameContinent)
:r $(ScriptsPath)$(FileNameCountry)
:r $(ScriptsPath)$(FileNameCurrency)
:r $(ScriptsPath)$(FileNameCountry_Currency)
:r $(ScriptsPath)$(FileNameCountry_Capital)
:r $(ScriptsPath)$(FileNameStates)
:r $(ScriptsPath)$(FileNameCity)
GO
PRINT '|------------ Post-Deployment [OK]';
GO
PRINT ' __________________________________________ '
GO
PRINT ''
GO