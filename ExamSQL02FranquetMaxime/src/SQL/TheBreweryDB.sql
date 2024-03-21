CREATE DATABASE IF NOT EXISTS TheBreweryDB;

USE TheBreweryDB;

# 2) Zoek twee logica fouten in de code en vind een oplossing.
#    De doel van deze statement is om 3 tabelen samen te voegen.

select b.Id,
       b.Name as Beer,
       r.Name as Brewery,
       c.Category as Category,
       b.Price,
       b.Stock,
       b.Alcohol,
       b.Version,
       b.Image
from thebrewerydb.beers b
         INNER join thebrewerydb.brewers r on b.BrewerId = r.Id
         INNER join thebrewerydb.categories c on b.CategoryId = c.Id;


# 3) Toon alle records van het Beers tabel met de volgende criteria

SELECT b.Id,
       b.Name,
       r.Id,
       c.Category,
       b.Price,
       b.Stock,
       b.Alcohol,
       b.Version,
       b.Image
FROM beers b
         INNER JOIN thebrewerydb.brewers r ON b.BrewerId = r.Id
         INNER JOIN thebrewerydb.categories c ON b.CategoryId = c.Id
WHERE (c.Category LIKE '%Alcoholvrij%'
   OR c.Category LIKE '%Light%')
AND (b.Name LIKE '%j%'
   OR b.Name LIKE 'St%')
AND b.Alcohol <= 2;


# 4)Toon alle records van het Beers tabel met de volgende criteria

SELECT b.Id AS BierID,
       b.Name AS BierName,
       r.name AS BrewerName,
       r.ID AS BrewerId,
       c.Category AS CategoryName,
       b.Price AS BierPrice
FROM beers b
    LEFT JOIN thebrewerydb.brewers r ON b.BrewerID  = r.Id
    LEFT JOIN thebrewerydb.categories c ON b.CategoryId = c.Id
WHERE r.Name LIKE '%Boon%';