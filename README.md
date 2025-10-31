# 🏏 T20 World Cup 2024 – SQL Data Warehouse (IFT 530)

![SQL Server](https://img.shields.io/badge/SQL%20Server-2022-red)
![Docker](https://img.shields.io/badge/Docker-ready-blue)
![License: MIT](https://img.shields.io/badge/License-MIT-green)
![Status](https://img.shields.io/badge/Status-Complete-success)

End-to-end SQL Server project: schema design, ERD, seed data, analytical views, auditing (triggers), stored procedure, UDF, and a cursor demo — aligned to the IFT 530 final project rubric.

## 🚀 Quickstart
```bash
cd docker
docker compose up -d
docker exec -it mssql2022 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P YourStrong!Passw0rd -i /opt/sql/01_schema.sql
docker exec -it mssql2022 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P YourStrong!Passw0rd -i /opt/sql/02_seed.sql
docker exec -it mssql2022 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P YourStrong!Passw0rd -i /opt/sql/03_views.sql
docker exec -it mssql2022 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P YourStrong!Passw0rd -i /opt/sql/04_audit_triggers.sql
docker exec -it mssql2022 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P YourStrong!Passw0rd -i /opt/sql/05_sp_udf.sql
docker exec -it mssql2022 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P YourStrong!Passw0rd -i /opt/sql/06_cursor_demo.sql
