/* Step 7: Cursor demonstration */

USE Group_35;
GO

DECLARE @Player VARCHAR(100), @Runs INT;

DECLARE curPlayers CURSOR FOR
SELECT Player, Runs FROM dbo.Total_Run_of_the_Players;

OPEN curPlayers;
FETCH NEXT FROM curPlayers INTO @Player, @Runs;

WHILE @@FETCH_STATUS = 0
BEGIN
  IF @Runs > 250
    PRINT @Player + ' has scored above 250 runs!';
  FETCH NEXT FROM curPlayers INTO @Player, @Runs;
END

CLOSE curPlayers;
DEALLOCATE curPlayers;
GO

PRINT 'Cursor demo executed successfully.';
