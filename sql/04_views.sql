/* Step 4: Create views */

USE Group_35;
GO

CREATE OR ALTER VIEW dbo.Top_Batsmen_View AS
SELECT ps.Player, ps.Team, ps.Runs, ps.Batting_Avg, lp.Batting_style
FROM dbo.Player_Summary ps
JOIN dbo.List_of_Players lp ON ps.Player = lp.Player
WHERE TRY_CONVERT(FLOAT, ps.Batting_Avg) > 40.0;
GO

CREATE OR ALTER VIEW dbo.Indian_Best_Bowling_View AS
SELECT bb.Player, bb.Team, bb.Wkts, bb.BBI, bb.Econ, lp.Bowling_style
FROM dbo.Best_Bowling bb
JOIN dbo.List_of_Players lp ON bb.Player = lp.Player
WHERE bb.Team = 'India' AND bb.Wkts >= 3;
GO

CREATE OR ALTER VIEW dbo.Match_High_Scorers_View AS
SELECT bb.Player, bb.Team, bb.Runs, bb.Opposition, ts.Match_Date, ts.Ground
FROM dbo.Best_Batting bb
JOIN dbo.T20_2024_Summary ts ON bb.Match_Date = ts.Match_Date
WHERE TRY_CONVERT(INT, bb.Runs) >= 50;
GO

PRINT 'All views created successfully.';
