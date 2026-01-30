-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read tasks.sql
-- 3. Exit SQLite: .exit


SELECT Continent, AVG(Population) FROM countries GROUP BY Continent;
SELECT Continent, SUM(Population) FROM countries GROUP BY Continent;
SELECT Country , MAX(Population) FROM countries GROUP BY Continent;
SELECT Country, MIN(AreaSqMi) FROM countries GROUP BY Continent;
SELECT Continent, COUNT(*) AS TotalCountries FROM countries GROUP BY Continent;
SELECT Continent, AVG(GDPPerCapita) FROM countries GROUP BY Continent ORDER BY Continent DESC;
SELECT Country FROM countries ORDER BY Population DESC LIMIT 5;
SELECT Country FROM countries ORDER BY InfantMortalityPer1000 ASC LIMIT 5;
SELECT Continent, AVG(LiteracyPercent) FROM countries GROUP BY Continent ORDER BY AVG(LiteracyPercent) ASC;
SELECT Continent FROM countries GROUP BY Continent ORDER BY Population DESC LIMIT 3;
SELECT Continent, AVG(Population) FROM countries GROUP BY Continent HAVING AVG(Population) > 10000000;
SELECT Continent, AVG(GDPPerCapita) FROM countries GROUP BY Continent HAVING(LiteracyPercent) > 80;
SELECT Continent , MAX(BirthRate) FROM countries WHERE InfantMortalityPer1000 < 30 GROUP BY Continent;