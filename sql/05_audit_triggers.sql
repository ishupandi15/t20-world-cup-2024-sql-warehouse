/* Step 5: Audit table and triggers */

USE Group_35;
GO

IF OBJECT_ID('dbo.List_of_Players_Audit','U') IS NULL
CREATE TABLE dbo.List_of_Players_Audit (
  Audit_ID INT IDENTITY(1,1) PRIMARY KEY,
  Operation_Type VARCHAR(10),
  Player VARCHAR(100),
  Birth_date DATE,
  Team VARCHAR(50),
  Batting_style VARCHAR(50),
  Bowling_style VARCHAR(50),
  Changed_At DATETIME NOT NULL DEFAULT(GETDATE())
);
GO

CREATE OR ALTER TRIGGER dbo.trg_List_of_Players_Insert
ON dbo.List_of_Players
AFTER INSERT
AS
BEGIN
  INSERT INTO dbo.List_of_Players_Audit (Operation_Type, Player, Birth_date, Team, Batting_style, Bowling_style)
  SELECT 'INSERT', Player, Birth_date, Team, Batting_style, Bowling_style FROM inserted;
END;
GO

CREATE OR ALTER TRIGGER dbo.trg_List_of_Players_Update
ON dbo.List_of_Players
AFTER UPDATE
AS
BEGIN
  INSERT INTO dbo.List_of_Players_Audit (Operation_Type, Player, Birth_date, Team, Batting_style, Bowling_style)
  SELECT 'UPDATE', Player, Birth_date, Team, Batting_style, Bowling_style FROM inserted;
END;
GO

CREATE OR ALTER TRIGGER dbo.trg_List_of_Players_Delete
ON dbo.List_of_Players
AFTER DELETE
AS
BEGIN
  INSERT INTO dbo.List_of_Players_Audit (Operation_Type, Player, Birth_date, Team, Batting_style, Bowling_style)
  SELECT 'DELETE', Player, Birth_date, Team, Batting_style, Bowling_style FROM deleted;
END;
GO

PRINT 'Audit table and triggers created successfully.';
