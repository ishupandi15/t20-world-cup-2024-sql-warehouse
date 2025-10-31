# 🏏 T20 World Cup 2024 – SQL Data Warehouse

![SQL Server](https://img.shields.io/badge/SQL_Server-2022-red?logo=microsoftsqlserver)
![Docker](https://img.shields.io/badge/Docker-Containerized-blue?logo=docker)
![Azure Data Studio](https://img.shields.io/badge/Azure_Data_Studio-Database_Tools-orange?logo=microsoftazure)
![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)
![Status](https://img.shields.io/badge/Status-Completed-success)

---

### 🏫 **Arizona State University — IFT 530: Advanced Database Systems**
**Instructor:** Dr. Asmaa Elbadrawy  

---

## 🚀 Overview
A full-scale **SQL Server 2022** project focused on designing and implementing a **data warehouse** for the *T20 World Cup 2024*.  
The project demonstrates database normalization, referential integrity, analytical querying, audit automation, and procedural programming with **T-SQL**.

Built in **seven stages**, this project simulates a complete enterprise database lifecycle — from schema creation and data seeding to analytics, automation, and validation.

---

## ⚙️ Technologies & Concepts

- **Database Engine:** SQL Server 2022  
- **Languages:** T-SQL, SQLCMD  
- **Tools:** Docker, Azure Data Studio / SSMS  
- **Data Management:** Primary/Foreign Keys, Check Constraints, Normalization  
- **Analytics:** Views, Aggregations, Conditional Filtering  
- **Automation:** Triggers (Insert/Update/Delete), Stored Procedures, User Defined Functions  
- **Scripting:** Cursors for iterative logic and testing  
- **Outputs:** SQL Scripts, Audit Table Logs, Console Messages  

---

## 🧩 Project Structure

<img width="319" height="692" alt="image" src="https://github.com/user-attachments/assets/e3324713-e079-4fa8-82be-8caa211af3d9" />

---

## 🧱 Implementation Workflow

### 🔹 Phase 1 – Database & Schema Creation
- Created **Group_35** database with all relational tables.  
- Defined constraints, foreign keys, and data validation (e.g., `CHECK(Inns >= 0)`).  
- Tables include:  
  - `List_of_Players`  
  - `Total_Run_of_the_Players`  
  - `Best_Bowling`  
  - `Best_Batting`  
  - `Player_Summary`  
  - `T20_2024_Summary`  

---

### 🔹 Phase 2 – Data Insertion
- Inserted 10+ player records with complete attributes (team, style, birthdate).  
- Populated core tables with sample tournament statistics for testing queries.  
**Output:** Structured base data for all subsequent analytics.

---

### 🔹 Phase 3 – Analytical Views
- Created three analytical views:
  - **Top_Batsmen_View:** filters top performers (Batting_Avg > 40).  
  - **Indian_Best_Bowling_View:** highlights Indian bowlers with ≥3 wickets.  
  - **Match_High_Scorers_View:** lists players scoring 50+ runs in matches.  
**Output:** Readable, join-based query views for insights.

---

### 🔹 Phase 4 – Audit Table & Triggers
- Added an audit table **`List_of_Players_Audit`** to record every insert, update, or delete.  
- Built three triggers:
  - `trg_List_of_Players_Insert`  
  - `trg_List_of_Players_Update`  
  - `trg_List_of_Players_Delete`  
**Output:** Automated change logs with timestamps.  

---

### 🔹 Phase 5 – Stored Procedure & Function
- **Stored Procedure:** `GetPlayerPerformance` — returns batting & bowling stats for a player.  
- **User-Defined Function:** `fn_GetPlayerStrikeRate` — computes a player's strike rate from total runs.  
**Output:** Parameterized retrieval and numeric function results.  

---

### 🔹 Phase 6 – Cursor Demonstration
- Implemented a cursor to iterate through player run data and print messages for those scoring above 250 runs.  
**Output:** Console messages simulating alert or report generation.  

---

## 📊 Verification Queries
```sql
-- View validation
SELECT TOP 5 * FROM dbo.Top_Batsmen_View;
SELECT TOP 5 * FROM dbo.Indian_Best_Bowling_View;
SELECT TOP 5 * FROM dbo.Match_High_Scorers_View;

-- Audit table test
INSERT INTO dbo.List_of_Players (Player,Birth_date,Team,Batting_style,Bowling_style)
VALUES ('Test Player','1990-01-01','India','Right-hand bat',NULL);
UPDATE dbo.List_of_Players SET Team='India A' WHERE Player='Test Player';
DELETE FROM dbo.List_of_Players WHERE Player='Test Player';
SELECT TOP 10 * FROM dbo.List_of_Players_Audit ORDER BY Audit_ID DESC;

-- Stored Procedure & Function
EXEC dbo.GetPlayerPerformance @PlayerName='Virat Kohli';
SELECT dbo.fn_GetPlayerStrikeRate('Virat Kohli') AS StrikeRate;
