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
:SETVAR T7							"Script.Flags.Temp.sql"

:r $(TempTables)$(T1)
:r $(TempTables)$(T2)
:r $(TempTables)$(T3)
:r $(TempTables)$(T4)
:r $(TempTables)$(T5)
:r $(TempTables)$(T6)
:r $(TempTables)$(T7)

:SETVAR DataSource				  "..\DataSource\"
:SETVAR CONTINENTS                "Script.Insert.001.CONTINENTS.sql"
:SETVAR COUNTRYS                  "Script.Insert.002.COUNTRYS.sql"
:SETVAR REGIONS                   "Script.Insert.003.REGIONS.sql"
:SETVAR FEDERATIONS               "Script.Insert.004.FEDERATIONS.sql"
:SETVAR CITYS                     "Script.Insert.005.CITYS.sql"
:SETVAR COUNTRYS_FLAGS			  "Script.Insert.006.COUNTRYS_FLAGS.sql"

:r $(DataSource)$(CONTINENTS)
:r $(DataSource)$(COUNTRYS)
:r $(DataSource)$(REGIONS)
:r $(DataSource)$(FEDERATIONS)
:r $(DataSource)$(CITYS)
:r $(DataSource)$(COUNTRYS_FLAGS)

:r $(TempTables)$(T0)
PRINT '==================================';
PRINT '===-------Post-Deployment-[OK]-===';
PRINT '==================================';
PRINT '';
--####################
--##                ##
--##     Version    ##
--##     2.0.0.5    ##
--##     BY  EDY    ##
--####################