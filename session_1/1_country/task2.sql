-- Task 2

-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read task2.sql
-- 3. Exit SQLite: .exit


-- write your sql code here

SELECT Country FROM countries ORDER BY Population ASC LIMIT 10;
SELECT Country FROM countries ORDER BY AreaSqMi DESC LIMIT 5;
SELECT Country FROM countries WHERE Continent='Europe' ORDER BY AreaSqMi DESC LIMIT 1;
SELECT Country FROM countries WHERE Continent='Africa' ORDER BY AreaSqMi ASC LIMIT 3;
SELECT Country FROM countries ORDER BY literacyPercent ASC LIMIT 3;
SELECT Country FROM Countries WHERE Country LIKE 'C%' ORDER BY GDPPerCapita DESC LIMIT 3;
