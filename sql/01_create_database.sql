/* IFT 530 Final Project – Group 35
   T20 World Cup 2024 SQL Warehouse
   Step 1: Create Database
*/

IF DB_ID('Group_35') IS NOT NULL
  DROP DATABASE Group_35;
GO
CREATE DATABASE Group_35;
GO
USE Group_35;
GO
PRINT 'Database Group_35 created successfully.';
