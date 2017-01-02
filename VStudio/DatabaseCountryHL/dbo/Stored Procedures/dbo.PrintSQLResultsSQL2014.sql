--DROP PROCEDURE IF EXISTS  [dbo].[PrintSQLResultsSQL2014];
--GO
CREATE PROCEDURE [dbo].[PrintSQLResultsSQL2014] 
    @query nvarchar(MAX),
    @numberToDisplay int = 999999999,
    @padding int = 20
AS
BEGIN
	SET NOCOUNT ON;
	SET ANSI_WARNINGS ON;

	declare @cols nvarchar(MAX), 
			@displayCols nvarchar(MAX), 
			@sql nvarchar(MAX), 
			@printableResults nvarchar(MAX),
			@NewLineChar AS char(2) = char(13) + char(10),
			@Tab AS char(9) = char(9);

	if exists (select * from tempdb.sys.tables where name = '##PrintSQLResultsTempTable') drop table ##PrintSQLResultsTempTable

	set @query = REPLACE(@query, 'from', ' into ##PrintSQLResultsTempTable from');
	--print @query
	exec(@query);
	select ROW_NUMBER() OVER (ORDER BY (select Null)) AS ID12345XYZ, * into #PrintSQLResultsTempTable 
	from ##PrintSQLResultsTempTable
	drop table ##PrintSQLResultsTempTable

	select name
	into #PrintSQLResultsTempTableColumns
	from tempdb.sys.columns where object_id =
	object_id('tempdb..#PrintSQLResultsTempTable');

	select @cols =
	stuff((
		(select ' , space(1) + LEFT(CAST([' + name + '] as nvarchar('+CAST(@padding as nvarchar(4))+')) + space('+ CAST(@padding as nvarchar(4)) +'), '+CAST(@padding as nvarchar(4))+') ' as [text()]
		FROM #PrintSQLResultsTempTableColumns
		where name != 'ID12345XYZ'
		FOR XML PATH(''), root('str'), type ).value('/str[1]','nvarchar(max)'))
	,1,0,'''''');

	select @displayCols =
	stuff((
		(select space(1) + LEFT(name + space(@padding), @padding) as [text()]
		FROM #PrintSQLResultsTempTableColumns
		where name != 'ID12345XYZ'
		FOR XML PATH(''), root('str'), type ).value('/str[1]','nvarchar(max)'))
	,1,0,'');

	DECLARE 
		@tableCount int = (select count(*) from #PrintSQLResultsTempTable);
	DECLARE 
		@i int = 1, 
		@ii int = case when @tableCount < @numberToDisplay then @tableCount else @numberToDisplay end;

	print @displayCols -- header
	While @i <= @ii
	BEGIN
		set @sql = N'select @printableResults = concat(@printableResults, ' + @cols + ', @NewLineChar) from #PrintSQLResultsTempTable where ID12345XYZ = ' + CAST(@i as varchar(3))
		--print @sql
		execute sp_executesql @sql, N'@NewLineChar char(2), @printableResults nvarchar(max) output', @NewLineChar = @NewLineChar, @printableResults = @printableResults output
		print @printableResults
		SET @printableResults = null;
		SET @i += 1;
	END
	--
	--  EX:
	--	exec [dbo].[PrintSQLResultsSQL2014]@query = N'select * from COUNTRY'
	--
END;