USE Group_35;
GO

CREATE OR ALTER PROCEDURE dbo.GetPlayerPerformance
  @PlayerName VARCHAR(100)
AS
BEGIN
  SELECT Player, Team, Runs, Batting_Avg, Batting_SR
  FROM dbo.Player_Summary
  WHERE Player = @PlayerName;
END;
GO

CREATE OR ALTER FUNCTION dbo.fn_GetStrikeRate(@Player VARCHAR(100))
RETURNS FLOAT
AS
BEGIN
  DECLARE @rate FLOAT;
  SELECT @rate = SR FROM dbo.Total_Run_of_the_Players WHERE Player = @Player;
  RETURN @rate;
END;
GO
