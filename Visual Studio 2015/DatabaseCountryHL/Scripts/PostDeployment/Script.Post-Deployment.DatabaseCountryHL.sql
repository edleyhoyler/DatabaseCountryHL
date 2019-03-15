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
PRINT '==================================';
PRINT '===-------Post-Deployment-[  ]-===';
PRINT '==================================';
:SETVAR TempTables					"..\DataSource\TempTables\"
:SETVAR T0							"Script.Clean.All.TempTables.sql"
:SETVAR T1							"Script.CountryBacen.Temp.sql"
:SETVAR T2							"Script.CountryCodes.Temp.sql"
:SETVAR T3							"Script.CountryNames_EN_BR.Temp.sql"
:SETVAR T4							"Script.EstadoRegiaoBR.Temp.sql"
:SETVAR T5							"Script.CidadesBR.Temp.sql"
:SETVAR T6							"Script.CountriesCoordinates.sql"

:r $(TempTables)$(T1)
:r $(TempTables)$(T2)
:r $(TempTables)$(T3)
:r $(TempTables)$(T4)
:r $(TempTables)$(T5)
:r $(TempTables)$(T6)

:SETVAR DataSource				  "..\DataSource\"
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

:r $(DataSource)$(CONTINENTS)
:r $(DataSource)$(COUNTRYS)
:r $(DataSource)$(REGIONS)
:r $(DataSource)$(FEDERATIONS)
:r $(DataSource)$(CITYS)

:r $(DataSource)$(COUNTRYS_FLAGS_16X)
:r $(DataSource)$(COUNTRYS_FLAGS_24X)
:r $(DataSource)$(COUNTRYS_FLAGS_32X)
:r $(DataSource)$(COUNTRYS_FLAGS_48X)
:r $(DataSource)$(COUNTRYS_FLAGS_64X)
:r $(DataSource)$(COUNTRYS_FLAGS_100X)
:r $(DataSource)$(COUNTRYS_FLAGS_128X)
:r $(DataSource)$(COUNTRYS_FLAGS_250X)
:r $(DataSource)$(COUNTRYS_FLAGS_1000X)

:r $(TempTables)$(T0)
PRINT '==================================';
PRINT '===-------Post-Deployment-[OK]-===';
PRINT '==================================';
PRINT '';
--####################
--##                ##
--##     Version    ##
--##     2.0.0.4    ##
--##     BY  EDY    ##
--####################