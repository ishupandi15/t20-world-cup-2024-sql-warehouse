/* Step 6: Stored Procedure and Function */

USE Group_35;
GO

CREATE OR ALTER PROCEDURE dbo.GetPlayerPerformance @PlayerName VARCHAR(100)
AS
BEGIN
  SELECT Player, Team, Runs, Batting_Avg, Batting_SR, Wickets, Bowling_Avg, Economy, Bowling_SR
  FROM dbo.Player_Summary
  WHERE Player = @PlayerName;
END;
GO

CREATE OR ALTER FUNCTION dbo.fn_GetPlayerStrikeRate (@PlayerName VARCHAR(100))
RETURNS FLOAT
AS
BEGIN
  DECLARE @StrikeRate FLOAT;
  SELECT @StrikeRate = SR FROM dbo.Total_Run_of_the_Players WHERE Player = @PlayerName;
  RETURN @StrikeRate;
END;
GO

PRINT 'Stored procedure and function created successfully.';
