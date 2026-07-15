-- Databricks notebook source
-----------------------------------------------------
Checking all the columns in the table viewership
---------------------------------------------------
SELECT *
FROM workspace.database.viewership
LIMIT 10;
-------------------------------------------------
Checking for NULL values in my dataset -table Viewership
-----------------------------------------------
SELECT *
FROM workspace.database.viewership
WHERE UserID0 IS NULL 
OR userid4 IS NULL
---------------------------------------------------
Verify why we have two columns of two USERid
--------------------------------------------------
SELECT *
FROM workspace.database.viewership
WHERE UserID0 <> userid4
---------------------------------------------
Check for duplicates
-----------------------------------------------------
SELECT COUNT (*),UserID0,RecordDate2
FROM workspace.database.viewership
GROUP BY UserID0,RecordDate2
COUNT(*) AS duplicate_count
HAVING COUNT(*)>1;




















SELECT RecordDate2,
TO_DATE(RecordDate2) AS watch_date,
DAYNAME(TO_DATE(RecordDate2)) AS Day_name,
YEAR(TO_DATE(RecordDate2)) AS event_year
FROM workspace.database.viewership

