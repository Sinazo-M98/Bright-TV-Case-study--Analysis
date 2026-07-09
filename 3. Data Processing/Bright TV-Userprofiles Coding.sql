-- Databricks notebook source
SELECT *
FROM workspace.database.user_profiles;

SELECT DISTINCT UserID
FROM workspace.database.user_profiles;

SELECT UserId,
COUNT(*) AS duplicate_count
FROM workspace.database.user_profiles
GROUP BY UserId
HAVING COUNT(*)>1;

SELECT COUNT(*) AS number_of_rows,
COUNT (DISTINCT UserID) AS number_subs
FROM workspace.database.user_profiles;

SELECT COUNT (*) AS Cnt
FROM workspace.database.user_profiles
WHERE UserID IS NULL;
---------------------------------------
SELECT DISTINCT Gender
FROM workspace.database.user_profiles;

SELECT DISTINCT
CASE
WHEN Gender='None' THEN 'Unknown'
WHEN Gender=' ' THEN 'Unknown'
WHEN Gender IS NULL THEN 'Unknown'
ELSE Gender
END AS Sex
FROM workspace.database.user_profiles;

 SELECT COUNT (*)
 FROM workspace.database.user_profiles
 WHERE Gender=''
------------------------------------------------
SELECT DISTINCT RACE
FROM workspace.database.user_profiles;

SELECT COUNT (DISTINCT UserID) AS subs,
CASE
WHEN Race='other' THEN 'None'
WHEN Race=' ' THEN 'None'
WHEN Race IS NULL THEN 'None'
ELSE Race
END AS Ethnicity
FROM workspace.database.user_profiles
GROUP BY Ethnicity;
-----------------------------------------------------
SELECT AGE
FROM workspace.database.user_profiles;

SELECT MIN(Age) AS Min_age,
MAX(Age) AS Max_age,
AVG(Age) AS Mean_age
FROM workspace.database.user_profiles;

SELECT DISTINCT
CASE
WHEN Age=0 THEN '01.Infants'
WHEN Age BETWEEN 1 AND 12 THEN '02.Kids'
WHEN Age BETWEEN 13 AND 19 THEN '03.Teenagers'
WHEN Age BETWEEN 20 AND 35 THEN '04.Young Adults'
WHEN Age BETWEEN 36 AND 50 THEN '05.Adult'
WHEN Age BETWEEN 51 AND 65 THEN '06.Elder'
WHEN Age>65 THEN '07.Pensioner'
END AS Age_category,
COUNT (DISTINCT UserID) AS Total
FROM workspace.database.user_profiles
GROUP BY 
CASE
WHEN Age=0 THEN '01.Infants'
WHEN Age BETWEEN 1 AND 12 THEN '02.Kids'
WHEN Age BETWEEN 13 AND 19 THEN '03.Teenagers'
WHEN Age BETWEEN 20 AND 35 THEN '04.Young Adults'
WHEN Age BETWEEN 36 AND 50 THEN '05.Adult'
WHEN Age BETWEEN 51 AND 65 THEN '06.Elder'
WHEN Age>65 THEN '07.Pensioner'
END
ORDER BY Age_category;
----------------------------------------------------------------
SELECT UserID,
CASE
WHEN Email IS NOT NULL THEN 1
ELSE 0
END AS Email_flag
FROM workspace.database.user_profiles;
-----------------------------------
SELECT UserID,
CASE
WHEN `Social Media handle` IS NOT NULL THEN 1
ELSE 0
END AS Social_media_flag
FROM workspace.database.user_profiles;
---------------------------------------------------------
SELECT DISTINCT Province
FROM workspace.database.user_profiles;
-----------------------------------------------
SELECT DISTINCT
CASE
WHEN Province='None' THEN 'Uncatagosized'
WHEN Province=' ' THEN 'Uncatagorized'
ELSE Province
END AS Region
FROM workspace.database.user_profiles




