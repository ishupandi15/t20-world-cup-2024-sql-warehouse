# 🏏 T20 World Cup 2024 – SQL Data Warehouse (IFT 530 Final Project)

End-to-end **SQL Server 2022** project for analyzing the T20 World Cup 2024.  
Implements database design, seed data, analytical views, auditing triggers, stored procedure, user-defined function, and cursor demo — all split into clean, runnable scripts.

---

## 🚀 How to Run

### 🐳 Option A — Run with Docker and sqlcmd
```bash
# 1️⃣ Start SQL Server 2022 in Docker
cd docker
docker compose up -d

# 2️⃣ Run scripts IN ORDER
docker exec -it mssql2022 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P YourStrong!Passw0rd -i /opt/sql/01_create_database.sql
docker exec -it mssql2022 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P YourStrong!Passw0rd -i /opt/sql/02_create_tables.sql
docker exec -it mssql2022 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P YourStrong!Passw0rd -i /opt/sql/03_insert_data.sql
docker exec -it mssql2022 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P YourStrong!Passw0rd -i /opt/sql/04_views.sql
docker exec -it mssql2022 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P YourStrong!Passw0rd -i /opt/sql/05_audit_triggers.sql
docker exec -it mssql2022 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P YourStrong!Passw0rd -i /opt/sql/06_stored_procedure_udf.sql
docker exec -it mssql2022 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P YourStrong!Passw0rd -i /opt/sql/07_cursor_demo.sql
💻 Option B — Run Manually in SSMS or Azure Data Studio
Open SQL Server Management Studio (SSMS) or Azure Data Studio.

Connect to your SQL Server instance.

Open each file from the sql/ folder in order and execute:

01_create_database.sql

02_create_tables.sql

03_insert_data.sql

04_views.sql

05_audit_triggers.sql

06_stored_procedure_udf.sql

07_cursor_demo.sql

(Optional) To reset, run 99_drop_database.sql.

📦 Project Structure
pgsql
Copy code
sql/
  01_create_database.sql
  02_create_tables.sql
  03_insert_data.sql
  04_views.sql
  05_audit_triggers.sql
  06_stored_procedure_udf.sql
  07_cursor_demo.sql
  99_drop_database.sql   ← optional reset

docker/
  docker-compose.yml

docs/
  REPORT.docx
  SUMMARY.docx
  ERD.md
🧪 Verification Snippets
sql
Copy code
-- Views
SELECT TOP 5 * FROM dbo.Top_Batsmen_View;
SELECT TOP 5 * FROM dbo.Indian_Best_Bowling_View;
SELECT TOP 5 * FROM dbo.Match_High_Scorers_View;

-- Triggers (Audit Table Test)
INSERT INTO dbo.List_of_Players (Player,Birth_date,Team,Batting_style,Bowling_style)
VALUES ('Test Player','1990-01-01','India','Right-hand bat',NULL);
UPDATE dbo.List_of_Players SET Team='India A' WHERE Player='Test Player';
DELETE FROM dbo.List_of_Players WHERE Player='Test Player';
SELECT TOP 10 * FROM dbo.List_of_Players_Audit ORDER BY Audit_ID DESC;

-- Stored Procedure & Function
EXEC dbo.GetPlayerPerformance @PlayerName='Virat Kohli';
SELECT dbo.fn_GetPlayerStrikeRate('Virat Kohli') AS StrikeRate;
