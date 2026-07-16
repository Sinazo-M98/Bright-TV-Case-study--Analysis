-- Databricks notebook source
-----------------------------------------------------
Checking all the columns in the table viewership
---------------------------------------------------
SELECT *
FROM workspace.database.viewership
LIMIT 3;
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
SELECT COUNT (*),UserID0,RecordDate2,
FROM workspace.database.viewership
GROUP BY UserID0,RecordDate2
COUNT(*) AS duplicate_count
HAVING COUNT(*)>1;
-----------------------------------------------
SELECT COUNT(*) AS duplicate_cnt,
UserID0,
TO_DATE(RecordDate2) AS watch_date,
Date_format(RecordDate2, 'HH:mm:ss') AS watch_time,
Date_format(`Duration 2`, 'HH:mm:ss') AS duration,
Channel2
FROM workspace.database.viewership
GROUP BY ALL
HAVING COUNT(*)>1
ORDER BY duplicate_cnt;

------WHERE UserID0=810044;
