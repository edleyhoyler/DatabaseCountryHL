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

:SETVAR temp						"..\DataSource\TempTables\"
:SETVAR CleanAllTempTables			"Script.Clean.All.TempTables.sql"
:SETVAR T1							"Script.CountryBacen.Temp.sql"
:SETVAR T2							"Script.CountryCodes.Temp.sql"
:SETVAR T3							"Script.CountryNames_EN_BR.Temp.sql"
:SETVAR T4							"Script.EstadoRegiaoBR.Temp.sql"
:SETVAR T5							"Script.CidadesBR.Temp.sql"


:r $(temp)$(T1)
:r $(temp)$(T2)
:r $(temp)$(T3)
:r $(temp)$(T4)
:r $(temp)$(T5)


:SETVAR Source "..\DataSource\"
:SETVAR CONTINENTS                "Script.Insert.001.CONTINENTS.sql"
:SETVAR COUNTRYS                  "Script.Insert.002.COUNTRYS.sql"
:SETVAR REGIONS                   "Script.Insert.003.REGIONS.sql"
:SETVAR FEDERATIONS               "Script.Insert.004.FEDERATIONS.sql"
:SETVAR CITYS                     "Script.Insert.005.CITYS.sql"
:SETVAR COUNTRYS_FLAGS_16X        "Script.Insert.006.COUNTRYS_FLAGS_16X.sql"
:SETVAR COUNTRYS_FLAGS_24X        "Script.Insert.007.COUNTRYS_FLAGS_24X.sql"
:SETVAR COUNTRYS_FLAGS_32X        "Script.Insert.008.COUNTRYS_FLAGS_32X.sql"
:SETVAR COUNTRYS_FLAGS_48X        "Script.Insert.009.COUNTRYS_FLAGS_48X.sql"
:SETVAR COUNTRYS_FLAGS_64X        "Script.Insert.010.COUNTRYS_FLAGS_64X.sql"
:SETVAR COUNTRYS_FLAGS_100X       "Script.Insert.011.COUNTRYS_FLAGS_100X.sql"
:SETVAR COUNTRYS_FLAGS_128X       "Script.Insert.012.COUNTRYS_FLAGS_128X.sql"
:SETVAR COUNTRYS_FLAGS_250x       "Script.Insert.013.COUNTRYS_FLAGS_250X.sql"
:SETVAR COUNTRYS_FLAGS_1000X      "Script.Insert.014.COUNTRYS_FLAGS_1000X.sql"

:r $(Source)$(CONTINENTS)
:r $(Source)$(COUNTRYS)
:r $(Source)$(REGIONS)
:r $(Source)$(FEDERATIONS)
:r $(Source)$(CITYS)
:r $(Source)$(COUNTRYS_FLAGS_16X)
:r $(Source)$(COUNTRYS_FLAGS_24X)
:r $(Source)$(COUNTRYS_FLAGS_32X)
:r $(Source)$(COUNTRYS_FLAGS_48X)
:r $(Source)$(COUNTRYS_FLAGS_64X)
:r $(Source)$(COUNTRYS_FLAGS_100X)
:r $(Source)$(COUNTRYS_FLAGS_128X)
:r $(Source)$(COUNTRYS_FLAGS_250X)
:r $(Source)$(COUNTRYS_FLAGS_1000X)

:r $(temp)$(CleanAllTempTables)

PRINT '|------------ Post-Deployment [OK]';
PRINT ' __________________________________________ ';
PRINT '';
--####################
--##                ##
--##     Version    ##
--##     1.0.0.1    ##
--##     BY  EDY    ##
--####################