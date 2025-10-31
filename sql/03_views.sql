USE Group_35;
GO

CREATE OR ALTER VIEW Top_Batsmen_View AS
SELECT ps.Player, ps.Team, ps.Runs, ps.Batting_Avg
FROM dbo.Player_Summary ps
WHERE TRY_CONVERT(FLOAT, ps.Batting_Avg) > 40;

CREATE OR ALTER VIEW Indian_Bowling_View AS
SELECT bb.Player, bb.Team, bb.Wkts, bb.Econ
FROM dbo.Best_Bowling bb
WHERE bb.Team = 'India' AND bb.Wkts >= 3;

CREATE OR ALTER VIEW Match_HighScores_View AS
SELECT bb.Player, bb.Team, bb.Runs, ts.Match_Date, ts.Ground
FROM dbo.Best_Batting bb
JOIN dbo.T20_2024_Summary ts ON bb.Match_Date = ts.Match_Date
WHERE TRY_CONVERT(INT, bb.Runs) > 50;
