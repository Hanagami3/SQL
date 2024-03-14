USE TheBelgianBreweryDB;

SELECT Name
FROM beers
WHERE Alcohol < 5;

SELECT Name
From brewers
Where city = 'Brussel';

SELECT Name
FROM beers
WHERE Name LIKE '%ale%';

SELECT Name
FROM beers
WHERE Alcohol
BETWEEN 5 AND 7;

SELECT Name
FROM beers
WHERE Alcohol
    IN (0, 5, 8);

SELECT Name
FROM brewers
WHERE City IN ('Leuven', 'Genk', 'Antwerpen', 'DenderMonde', 'Wevelgem');

SELECT Name
FROM beers
WHERE Alcohol
IS NULL;

SELECT *
FROM beers
WHERE Name
LIKE '%wit%'
  AND Alcohol > 5;

SELECT *
FROM beers
WHERE Name
NOT LIKE '%wit%';

SELECT *
FROM beers
WHERE Alcohol > 5;

SELECT *
FROM beers
WHERE Alcohol <+ 5;




