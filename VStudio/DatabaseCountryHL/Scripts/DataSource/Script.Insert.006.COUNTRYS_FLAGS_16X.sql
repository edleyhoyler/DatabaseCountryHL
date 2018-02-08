PRINT '|Add COUNTRYS_FLAGS_16X [  ]';
PRINT '|$(Source)$(COUNTRYS_FLAGS_16X)';

DECLARE @COU_ID             INT;
DECLARE @COF_FILE_BYTE      VARBINARY(MAX);
DECLARE @COF_FILE_NAME      VARCHAR (100);
DECLARE @COF_FILE_HASH_SHA1 VARCHAR (50);
DECLARE @COF_FILE_HASH_MD5  VARCHAR (50);

DECLARE @COUNT INT;
SET     @COUNT = 0;
DECLARE @PATCH VARCHAR(1000);
SET     @PATCH = ('D:\GIT\DatabaseCountryHL\VStudio\ProjectDatabaseCountryHL\DatabaseCountryHL\Flags\16x16\');
DECLARE @FILE                VARCHAR(1000);
DECLARE @FILE_PATCH          VARCHAR(1000);
DECLARE @COU_ISO31661_ALPHA2 CHAR(2);
DECLARE @COUNTRYS_CURSOR AS  CURSOR;


SET             @COUNTRYS_CURSOR = CURSOR FOR (SELECT [C].[COU_ISO31661_ALPHA2] FROM [COUNTRYS] [C]);
OPEN            @COUNTRYS_CURSOR;
FETCH NEXT FROM @COUNTRYS_CURSOR INTO @COU_ISO31661_ALPHA2;
WHILE (@@FETCH_STATUS = 0)
  BEGIN
    SET @COUNT = @COUNT +1;

    SET @FILE = (@COU_ISO31661_ALPHA2 + '.PNG');
    SET @FILE_PATCH = (@PATCH + @FILE);

    DECLARE @isExists INT;
       EXECUTE master.dbo.xp_fileexist @FILE_PATCH, @isExists OUTPUT;
       IF @isExists = 1
         BEGIN

           SET @COU_ID = (SELECT [C].[COU_ID] FROM [COUNTRYS] [C] WHERE [C].[COU_ISO31661_ALPHA2] = @COU_ISO31661_ALPHA2);

           DECLARE @SQL VARCHAR(1000);
           SET @SQL = ('DROP TABLE IF EXISTS FLAG_BINARY;');
           SET @SQL = (@SQL  + 'SELECT * INTO FLAG_BINARY FROM OPENROWSET(BULK ''');
           SET @SQL = (@SQL  +  @FILE_PATCH)
           SET @SQL = (@SQL  + ''', SINGLE_BLOB) AS [myFile];');
           EXECUTE (@SQL);

           SET @COF_FILE_BYTE      = (SELECT * FROM FLAG_BINARY);
           SET @COF_FILE_NAME = @FILE;
           SET @COF_FILE_HASH_SHA1 = (SELECT CONVERT(VARCHAR(50), HASHBYTES('SHA1', BulkColumn),1) FROM FLAG_BINARY);
           SET @COF_FILE_HASH_MD5  = (SELECT CONVERT(VARCHAR(50), HASHBYTES('MD5', BulkColumn),1) FROM FLAG_BINARY);


           INSERT INTO [COUNTRYS_FLAGS_16X]
           (
             [COU_ID],
             [COF16_FILE_BYTE],
             [COF16_FILE_NAME],
             [COF16_FILE_HASH_SHA1],
             [COF16_FILE_HASH_MD5]
           )
            VALUES
           (
             @COU_ID,
             @COF_FILE_BYTE,
             @COF_FILE_NAME,
             @COF_FILE_HASH_SHA1,
             @COF_FILE_HASH_MD5
           );
          DROP TABLE IF EXISTS FLAG_BINARY;
         END
      ELSE
        BEGIN
          PRINT (CAST(@COU_ISO31661_ALPHA2 AS VARCHAR (2)) + '.PNG - NAO EXISTE')
        END

  FETCH NEXT FROM @COUNTRYS_CURSOR INTO @COU_ISO31661_ALPHA2;

  END
  PRINT CAST(@COUNT AS VARCHAR(5));
CLOSE @COUNTRYS_CURSOR;
DEALLOCATE @COUNTRYS_CURSOR;

PRINT '|Add COUNTRYS_FLAGS_16X [OK]';
--####################
--##                ##
--##     Version    ##
--##     1.0.0.1    ##
--##     BY  EDY    ##
--##                ##
--####################