USE TheBelgianBreweryDB;

SELECT Name, Alcohol
FROM beers
ORDER BY Name ASC;

SELECT Name, Alcohol
FROM beers
ORDER BY brewerid DESC, Name ASC;

SELECT name, Alcohol
FROM beers
ORDER BY 1 ASC;