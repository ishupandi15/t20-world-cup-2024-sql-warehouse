# 🏏 T20 World Cup 2024 – SQL Data Warehouse

![SQL Server](https://img.shields.io/badge/SQL_Server-2022-red?logo=microsoftsqlserver)
![Docker](https://img.shields.io/badge/Docker-Containerized-blue?logo=docker)
![Azure Data Studio](https://img.shields.io/badge/Azure_Data_Studio-Database_Tools-orange?logo=microsoftazure)
![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)
![Status](https://img.shields.io/badge/Status-Completed-success)

---

### 🏫 **Arizona State University — Advanced Database Systems**

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

## 🧭 ERD Overview
- **List_of_Players** is the central entity.  
- **Total_Run_of_the_Players**, **Best_Bowling**, **Best_Batting**, and **Player_Summary** link via `Player` as a foreign key.  
- **T20_2024_Summary** references match details by `Match_Date`.  
- Audit table **List_of_Players_Audit** logs all player-level changes.

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

## 🔮 Future Enhancements
- Add **Power BI dashboard** integration for visual insights.  
- Automate **ETL pipeline** using Python or SQL Agent Jobs.  
- Include **real-time cricket API** for live match updates.  
- Create **team-wise stored procedures** for advanced analytics.  

---

## 🎥 Demo Snapshot

Creating database
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/0f2e4d23-7960-43ce-a7f7-9d17ed940d68" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/7365045d-e7ca-473a-bfec-ef50694d2807" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/8683a0b3-908f-42a6-aa3b-bc8567956547" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/289a36a4-f04f-446f-b8f7-efd196f5fc45" />

EAD Diagram

<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/14124d99-2751-4b13-b35d-d882d1816167" />

Inserting data

<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/c06f50d0-2372-41ff-a216-15aa99b38ea2" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/48af77ab-621a-4cd1-a9df-e8be5a64c5b1" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/c61364ab-db2a-4c1a-931e-5ce2ae27b830" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/f43a2095-4060-459b-a580-746a16aee007" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/12448918-3e76-4269-899b-bbe018dacc86" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/38f3f059-f102-441e-9a9f-2d31d4324d24" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/855afc2f-31e0-4e50-a7e3-4fcffceb4e8f" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/8b3e687f-e97b-4047-ba6c-8bd1f2b8ebae" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/319d802d-a7b8-4edb-9c66-bc27506777d7" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/52976ff8-58ae-44e1-9562-8df584ff3461" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/3850fe27-ad09-4c05-a5fa-7e0df35334e3" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/0ce4c157-7b02-44ab-8281-9383ab04fa90" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/9c0c0f92-2c39-4f31-9df3-9ab866aa16da" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/e33c844f-904b-47ff-84a1-4238d7ae58c2" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/429691df-1ae1-4490-91a1-9a1cb5c4b6c4" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/9392ebec-f614-4774-b83d-5e624e490757" />

Creating 3 queries:

Query 1: View: Top Batsmen by Average
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/469ce252-7618-40cd-aaa6-bc955d935096" />
Query 2: View: Best Bowling Performances by Indian Players
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/a4c60fdc-58a4-413c-8f01-cbe9589de49b" />
Query 3: View: Match-Wise High Scoring Batsmen
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/f52e251c-4e08-44b1-af5b-baa3fe98e9b9" />

Create the Audit Table

<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/7b4b4bcc-0296-4ff6-a6d2-0865798dfe5c" />

Create Triggers for Insert, Update, Delete

<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/0b0b30eb-53cd-451d-9583-2eb94eb572b5" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/d9fe7920-55cd-4c9e-a6cc-aecb367455f5" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/0079f63f-58e8-4383-a3d0-d21cd1105019" />

Testing the Triggers

<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/a9229b95-cb71-4646-9f33-f4a1c4843b59" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/ac077f82-6d97-4da2-a145-da55f930145c" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/ad166b45-0bb4-4590-8486-8e1dc2667407" />

View Audit Results

<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/a303506b-37bf-48d0-a3ad-4ab7be4e5df7" />

Stored Procedure (SP):  ----- GetPlayerPerformance

<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/f86570f1-8bf2-4ea8-8eb4-4e6cf395fbdb" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/b4a3c74b-2f00-4eec-ab03-e77133fa6e52" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/46234b5e-a3c9-46d9-b177-d5592824b07e" />

User Defined Function (UDF): fn_GetPlayerStrikeRate

<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/8a0ed9a9-83ee-4f01-8fab-0c157543a795" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/5af1d740-3d5b-4860-88ef-b746681e260b" />
<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/cbe6dd1d-b7f9-4340-b401-df17ac5511f1" />

Create and Use a Cursor:

<img width="975" height="634" alt="image" src="https://github.com/user-attachments/assets/b09a8cb0-c638-465e-8d3c-df44655a10ed" />

---

## 📜 License
This project is released under the **MIT License**.  
You are free to use, modify, and share this work with proper reference.

---

## 🔗 Connect & Portfolio
👩‍💻 **Author:** *Ishwariya Pandi*  
🎓 **Graduate Student — Arizona State University**  
📧 [ipandi1@asu.edu](mailto:ipandi1@asu.edu)  
📎 [GitHub Repository](https://github.com/ishupandi15/t20-world-cup-2024-sql-warehouse)
