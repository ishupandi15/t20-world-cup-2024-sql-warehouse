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
This project demonstrates database normalization, referential integrity, analytical querying, audit automation, and procedural programming using **T-SQL**.  

Built in **seven stages**, it simulates a complete enterprise workflow — from schema creation and data seeding to analytics, automation, and validation.

---

## ⚙️ Technologies & Concepts

- 💾 **Database Engine:** SQL Server 2022  
- 🧠 **Languages:** T-SQL, SQLCMD  
- 🧰 **Tools:** Docker, Azure Data Studio / SSMS  
- 🧩 **Data Management:** Primary/Foreign Keys, Check Constraints, Normalization  
- 📊 **Analytics:** Views, Aggregations, Conditional Filtering  
- ⚙️ **Automation:** Triggers (Insert/Update/Delete), Stored Procedures, User Defined Functions  
- 🔁 **Scripting:** Cursors for iterative logic and testing  
- 📤 **Outputs:** SQL Scripts, Audit Table Logs, Console Messages  

---

## 🧩 Project Structure

<img width="340" height="700" alt="ERD Diagram" src="https://github.com/user-attachments/assets/e3324713-e079-4fa8-82be-8caa211af3d9" />

---

## 🧱 Implementation Workflow

### 🔹 Phase 1 – Database & Schema Creation
- Created **Group_35** database with all relational tables.  
- Defined constraints, foreign keys, and validation (e.g., `CHECK(Inns >= 0)`).  
- Tables include:  
  - `List_of_Players`  
  - `Total_Run_of_the_Players`  
  - `Best_Bowling`  
  - `Best_Batting`  
  - `Player_Summary`  
  - `T20_2024_Summary`

---

### 🔹 Phase 2 – Data Insertion
- Inserted 10+ player records with attributes (team, style, birthdate).  
- Populated base tables with tournament statistics for testing queries.  
📦 **Output:** Structured foundational data for all analytics.

---

### 🔹 Phase 3 – Analytical Views
- Built 3 analytical views for batting, bowling, and match insights:  
  - 🏅 `Top_Batsmen_View` → filters top performers (`Batting_Avg > 40`)  
  - 🎯 `Indian_Best_Bowling_View` → highlights Indian bowlers with ≥3 wickets  
  - 📘 `Match_High_Scorers_View` → lists players scoring 50+ runs per match  
📤 **Output:** Readable, join-based analytics views.

---

### 🔹 Phase 4 – Audit Table & Triggers
- Created audit table **`List_of_Players_Audit`** to log every insert/update/delete.  
- Implemented 3 triggers for automatic data tracking:  
  - `trg_List_of_Players_Insert`  
  - `trg_List_of_Players_Update`  
  - `trg_List_of_Players_Delete`  
🕓 **Output:** Auto-maintained audit trail with timestamps.

---

### 🔹 Phase 5 – Stored Procedure & Function
- 🧾 **Stored Procedure:** `GetPlayerPerformance` — returns a player’s batting & bowling summary.  
- ⚙️ **User-Defined Function:** `fn_GetPlayerStrikeRate` — calculates strike rate from run data.  
📤 **Output:** Parameterized, reusable analytics tools.

---

### 🔹 Phase 6 – Cursor Demonstration
- Implemented a **cursor** to iterate player run data and print messages for those with `Runs > 250`.  
💡 **Output:** Console alerts demonstrating procedural logic in SQL Server.

---

## 📊 Verification Queries
```sql
-- ✅ View Validation
SELECT TOP 5 * FROM dbo.Top_Batsmen_View;
SELECT TOP 5 * FROM dbo.Indian_Best_Bowling_View;
SELECT TOP 5 * FROM dbo.Match_High_Scorers_View;

-- ✅ Audit Table Test
INSERT INTO dbo.List_of_Players (Player,Birth_date,Team,Batting_style,Bowling_style)
VALUES ('Test Player','1990-01-01','India','Right-hand bat',NULL);
UPDATE dbo.List_of_Players SET Team='India A' WHERE Player='Test Player';
DELETE FROM dbo.List_of_Players WHERE Player='Test Player';
SELECT TOP 10 * FROM dbo.List_of_Players_Audit ORDER BY Audit_ID DESC;

-- ✅ Stored Procedure & Function
EXEC dbo.GetPlayerPerformance @PlayerName='Virat Kohli';
SELECT dbo.fn_GetPlayerStrikeRate('Virat Kohli') AS StrikeRate;

---

## 📈 Results Summary

✅ **Views:** Extracted meaningful analytical insights across batting, bowling, and match data.  
✅ **Triggers:** Automated auditing with insert, update, and delete logs.  
✅ **Procedures:** Enabled reusable data retrieval for player statistics.  
✅ **Functions:** Simplified computation of strike rates and averages.  
✅ **Cursor:** Demonstrated procedural flow and iteration within SQL Server.  

---

## 🧠 Key Learnings

🧩 Designed and normalized a complete SQL data warehouse from scratch.  
⚙️ Implemented real-world automation using triggers and stored procedures.  
🔍 Combined relational integrity with analytical querying for deeper insights.  
🐳 Gained hands-on experience deploying SQL Server through **Docker** and **SQLCMD**.

---

## 📜 License

This project is released under the **MIT License**.  
You are free to use, modify, and share this work with proper attribution.

---

## 🔗 Connect & Portfolio

👩‍💻 **Author:** *Ishwariya Pandi*  
🎓 **Graduate Student — Arizona State University**  
📧 [ipandi1@asu.edu](mailto:ipandi1@asu.edu)  
📎 [GitHub Repository](https://github.com/ishupandi15/t20-world-cup-2024-sql-warehouse)
