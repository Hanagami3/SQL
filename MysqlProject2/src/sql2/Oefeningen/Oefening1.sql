USE TheBelgianBreweryDB;

#a
SELECT *
FROM Categories;

#b
SELECT Category
FROM Categories
ORDER BY Category DESC;

#c
SELECT *
FROM brewers
WHERE Turnover > 5000;

#d
SELECT Name, City
FROM brewers
WHERE Turnover < 5000
  AND Turnover > 0;
#ORDER BY Turnover

#e
SELECT DISTINCT Alcohol
FROM beers
ORDER BY Alcohol DESC ;

#f
SELECT DISTINCT Name
FROM beers
WHERE Name LIKE '%wit%'
ORDER BY Name;

#g
SELECT Name
FROM beers
WHERE Alcohol BETWEEN 4 AND  6;

#h
SELECT *
FROM beers
ORDER BY Alcohol DESC
LIMIT 3;

#i
SELECT Name
     , Address
     , CONCAT(ZipCode, ' ',City) AS City_Zip
FROM brewers;

