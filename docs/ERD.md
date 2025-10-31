# ERD – T20 World Cup 2024 Warehouse

```mermaid
erDiagram
  List_of_Players ||--o{ Total_Run_of_the_Players : has
  List_of_Players ||--o{ Best_Bowling : has
  List_of_Players ||--o{ Best_Batting : has
  Best_Batting ||--o{ T20_2024_Summary : matches_on
