USE Group_35;
GO

DECLARE @Player VARCHAR(100), @Runs INT;

DECLARE cur CURSOR FOR
SELECT Player, Runs FROM dbo.Total_Run_of_the_Players;

OPEN cur;
FETCH NEXT FROM cur INTO @Player, @Runs;

WHILE @@FETCH_STATUS = 0
BEGIN
  IF @Runs > 250
    PRINT @Player + ' has scored above 250 runs!';
  FETCH NEXT FROM cur INTO @Player, @Runs;
END

CLOSE cur;
DEALLOCATE cur;
