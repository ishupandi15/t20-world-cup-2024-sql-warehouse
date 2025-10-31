# T20 World Cup 2024 – SQL Data Warehouse (IFT 530)

End-to-end **SQL Server 2022** project: schema design, seed data, analytical views, auditing (triggers), a stored procedure, a UDF, and a cursor demo — organized as separate, runnable scripts.

## Quickstart

### Option A — Run with Docker + sqlcmd
```bash
# 1) start SQL Server 2022 in Docker
cd docker
docker compose up -d

# 2) run scripts IN ORDER
docker exec -it mssql2022 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P YourStrong!Passw0rd -i /opt/sql/01_create_database.sql
docker exec -it mssql2022 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P YourStrong!Passw0rd -i /opt/sql/02_create_tables.sql
docker exec -it mssql2022 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P YourStrong!Passw0rd -i /opt/sql/03_insert_data.sql
docker exec -it mssql2022 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P YourStrong!Passw0rd -i /opt/sql/04_views.sql
docker exec -it mssql2022 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P YourStrong!Passw0rd -i /opt/sql/05_audit_triggers.sql
docker exec -it mssql2022 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P YourStrong!Passw0rd -i /opt/sql/06_stored_procedure_udf.sql
docker exec -it mssql2022 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P YourStrong!Passw0rd -i /opt/sql/07_cursor_demo.sql
