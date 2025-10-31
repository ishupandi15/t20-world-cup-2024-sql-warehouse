/* Step 2: Create all tables */

USE Group_35;
GO

-- 1. List_of_Players
CREATE TABLE dbo.List_of_Players (
  Player VARCHAR(100) NOT NULL PRIMARY KEY,
  Birth_date DATE NOT NULL,
  Team VARCHAR(50) NOT NULL,
  Batting_style VARCHAR(50) NOT NULL,
  Bowling_style VARCHAR(50)
);
GO

-- 2. Total_Run_of_the_Players
CREATE TABLE dbo.Total_Run_of_the_Players (
  Player VARCHAR(100) NOT NULL,
  Team VARCHAR(50) NOT NULL,
  Mat INT NOT NULL,
  Inns INT NOT NULL CHECK (Inns >= 0),
  NO INT NOT NULL,
  Runs INT NOT NULL,
  HS VARCHAR(10) NOT NULL,
  Ave FLOAT NOT NULL,
  BF INT NOT NULL,
  SR FLOAT NOT NULL,
  [100] INT NOT NULL,
  [50] INT NOT NULL,
  [4s] INT NOT NULL,
  [6s] INT NOT NULL,
  CONSTRAINT FK_TotalRuns_Player FOREIGN KEY (Player)
    REFERENCES dbo.List_of_Players(Player)
);
GO

-- 3. Best_Bowling
CREATE TABLE dbo.Best_Bowling (
  Player VARCHAR(100) NOT NULL,
  Team VARCHAR(50) NOT NULL,
  Mat INT NOT NULL,
  Inns INT NOT NULL,
  Balls INT NOT NULL,
  Overs FLOAT NOT NULL,
  Mdns INT NOT NULL,
  Runs INT NOT NULL,
  Wkts INT NOT NULL CHECK (Wkts >= 0),
  BBI VARCHAR(20) NOT NULL,
  Ave FLOAT NOT NULL,
  Econ FLOAT NOT NULL,
  SR FLOAT NOT NULL,
  [4] INT NOT NULL,
  [5] INT NOT NULL,
  CONSTRAINT FK_BestBowling_Player FOREIGN KEY (Player)
    REFERENCES dbo.List_of_Players(Player)
);
GO

-- 4. Best_Batting
CREATE TABLE dbo.Best_Batting (
  Player VARCHAR(100) NOT NULL,
  Runs VARCHAR(10) NOT NULL CHECK (TRY_CONVERT(INT, Runs) >= 0),
  Mins INT NOT NULL,
  Balls INT NOT NULL,
  [4s] INT NOT NULL,
  [6s] INT NOT NULL,
  SR FLOAT NOT NULL,
  Team VARCHAR(50) NOT NULL,
  Opposition VARCHAR(50) NOT NULL,
  Ground VARCHAR(50) NOT NULL,
  Match_Date DATE NOT NULL PRIMARY KEY,
  CONSTRAINT FK_BestBatting_Player FOREIGN KEY (Player)
    REFERENCES dbo.List_of_Players(Player)
);
GO

-- 5. Player_Summary
CREATE TABLE dbo.Player_Summary (
  Player VARCHAR(100) NOT NULL,
  Team VARCHAR(50) NOT NULL,
  Batting_style VARCHAR(50) NOT NULL,
  Bowling_style VARCHAR(50),
  Runs VARCHAR(10),
  Batting_Avg VARCHAR(10),
  Batting_SR VARCHAR(10),
  Wickets VARCHAR(10),
  Bowling_Avg VARCHAR(10),
  Economy VARCHAR(10),
  Bowling_SR VARCHAR(10),
  CONSTRAINT FK_PlayerSummary_Player FOREIGN KEY (Player)
    REFERENCES dbo.List_of_Players(Player)
);
GO

-- 6. T20_2024_Summary
CREATE TABLE dbo.T20_2024_Summary (
  Match_ID INT NOT NULL PRIMARY KEY,
  Team_1 VARCHAR(50) NOT NULL,
  Team_2 VARCHAR(50) NOT NULL,
  Winner VARCHAR(50) NOT NULL,
  Margin VARCHAR(20) NOT NULL,
  Ground VARCHAR(50) NOT NULL,
  Match_Date DATE NOT NULL,
  CONSTRAINT FK_T20Summary_MatchDate FOREIGN KEY (Match_Date)
    REFERENCES dbo.Best_Batting(Match_Date)
);
GO

PRINT 'All tables created successfully.';
