PRINT '|Add FEDERATIONS [  ]';
PRINT '|$(Source)$(FEDERATIONS)';
INSERT INTO [FEDERATIONS]
(
[COU_ID],
[REG_ID],
[FED_NAME],
[FED_UF],
[FED_IBGE_CODE]
)
  (
    SELECT
      (
        SELECT [C].[COU_ID]
        FROM [COUNTRYS] [C]
        WHERE UPPER(COU_NAME_EN) = ('BRAZIL'))
                        [COU_ID],
         [R].           [REG_ID],
         [E].[Nome]     [FED_NAME],
         [E].[Uf]       [FED_UF],
         [E].[CodigoUf] [FED_IBGE_CODE]
      FROM             [EstadoRegiaoBR] [E]
      INNER JOIN       [REGIONS]        [R]
      ON [E].[NomeRegiao] = [R].[REG_NAME]
  );
PRINT '|Add FEDERATIONS [OK]';
--####################
--##                ##
--##     Version    ##
--##     1.0.0.1    ##
--##     BY  EDY    ##
--##                ##
--####################