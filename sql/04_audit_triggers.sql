USE Group_35;
GO

CREATE TABLE dbo.List_of_Players_Audit (
  Audit_ID INT IDENTITY(1,1) PRIMARY KEY,
  Operation_Type VARCHAR(10),
  Player VARCHAR(100),
  Team VARCHAR(50),
  Changed_At DATETIME DEFAULT GETDATE()
);

CREATE OR ALTER TRIGGER trg_Insert_Player
ON dbo.List_of_Players
AFTER INSERT
AS
BEGIN
  INSERT INTO dbo.List_of_Players_Audit (Operation_Type, Player, Team)
  SELECT 'INSERT', Player, Team FROM inserted;
END;
GO

CREATE OR ALTER TRIGGER trg_Update_Player
ON dbo.List_of_Players
AFTER UPDATE
AS
BEGIN
  INSERT INTO dbo.List_of_Players_Audit (Operation_Type, Player, Team)
  SELECT 'UPDATE', Player, Team FROM inserted;
END;
GO

CREATE OR ALTER TRIGGER trg_Delete_Player
ON dbo.List_of_Players
AFTER DELETE
AS
BEGIN
  INSERT INTO dbo.List_of_Players_Audit (Operation_Type, Player, Team)
  SELECT 'DELETE', Player, Team FROM deleted;
END;
GO
