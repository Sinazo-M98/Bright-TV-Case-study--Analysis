-- Databricks notebook source
-----------------------------------------------------
Checking all the columns in the table viewership
---------------------------------------------------
SELECT *
FROM workspace.database.viewership
-------------------------------------------------
Checking all the columns in the table viewership
-----------------------------------------------
SELECT *
FROM workspace.database.viewership
WHERE UserID0 IS NULL



SELECT RecordDate2,
TO_DATE(RecordDate2) AS watch_date,
DAYNAME(TO_DATE(RecordDate2)) AS Day_name,
YEAR(TO_DATE(RecordDate2)) AS event_year
FROM workspace.database.viewership

