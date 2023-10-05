

CREATE PROCEDURE sp_dropifexists (@tableName VARCHAR(255))

AS

BEGIN

    DECLARE @SQL VARCHAR(MAX);

    SET @SQL = 'IF EXISTS(SELECT 1 FROM sys.objects WHERE OBJECT_ID = OBJECT_ID(N''' + @tableName + ''') AND type = (N''U'')) DROP TABLE [' + @tableName + ']'

    --if write EXEC @SQL without parentheses  sql says Error: is not a valid identifier

    EXEC (@SQL);

END

--test procedure

exec sp_DropIfExists 'tblemployee'
