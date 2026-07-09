-- Databricks notebook source
SELECT *
FROM workspace.database.viewership

SELECT RecordDate2,
TO_DATE(RecordDate2) AS watch_date,
DAYNAME(TO_DATE(RecordDate2)) AS Day_name,
YEAR(TO_DATE(RecordDate2)) AS event_year
FROM workspace.database.viewership

