USE thebelgianbrewerydb;

SELECT COUNT(*)
FROM beers;

SELECT COUNT(*)
AS aantal
FROM beers;

SELECT AVG(Alcohol) AS gemidd,
       MAX(Alcohol) AS maxi,
       MIN(Alcohol) AS mini,
       SUM(Alcohol) AS som
FROM beers;

SELECT BrewerId, AVG(Alcohol) AS gemiddelde
FROM beers
GROUP BY BrewerId;

#SELECT AVG(Alcohol), Name
#FROM beers
#GROUP BY BrewerId;

SELECT LEFT(Name, 1), AVG(Alcohol)
FROM beers
GROUP BY LEFT(Name, 1);

SELECT BrewerId, MIN(Alcohol) AS mini
From beers
GROUP BY BrewerId
HAVING MIN(Alcohol) < 5;

SELECT BrewerId, AVG(Alcohol) AS mini
FROM beers
GROUP BY BrewerId
HAVING COUNT(*) > 10;