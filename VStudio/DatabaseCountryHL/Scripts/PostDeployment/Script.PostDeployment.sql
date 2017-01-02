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
PRINT '';
PRINT ' __________________________________________ ';
PRINT '|------------ Post-Deployment [  ]';
:SETVAR ScriptsPath "..\Data\"
:SETVAR DataSourceSQL           "DataSource.sql"
:SETVAR FileNameContinent       "Script.Add.Continent.sql"
:SETVAR FileNameCountry         "Script.Add.Country.sql"
:SETVAR FileNameStates          "Script.Add.States.sql"
:SETVAR FileNameCity            "Script.Add.City.sql"
:SETVAR FileNameCountry_Bacen   "Script.Add.Country_Bacen.sql"
:SETVAR FileNameCountry_Capital "Script.Add.Country_Capital.sql"
:SETVAR FileNameCurrency        "Script.Add.Currency.sql"
:SETVAR FileNameCountry_Currency "Script.Add.Country_Currency.sql"
:r $(ScriptsPath)$(DataSourceSQL)
:r $(ScriptsPath)$(FileNameContinent)
:r $(ScriptsPath)$(FileNameCountry)
:r $(ScriptsPath)$(FileNameStates)
:r $(ScriptsPath)$(FileNameCity)
:r $(ScriptsPath)$(FileNameCountry_Bacen)
:r $(ScriptsPath)$(FileNameCountry_Capital)
:r $(ScriptsPath)$(FileNameCurrency)
:r $(ScriptsPath)$(FileNameCountry_Currency)
PRINT '|------------ Post-Deployment [OK]';
PRINT ' __________________________________________ ';
PRINT '';
--####################
--##                ##
--##     Version    ##
--##     1.0.0.2    ##
--##                ##
--####################