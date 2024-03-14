USE thebelgianbrewerydb;

SELECT beers.Name, brewers.Name
FROM beers
INNER JOIN Brewers ON BrewerId = brewers.ID;

SELECT beers.Name, brewers.Name, categories.Category
FROM beers
INNER JOIN brewers ON BrewerId = BrewerId
INNER JOIN categories ON CategoryID = CategoryID;

SELECT beers.Name, brewers.Name
FROM beers, brewers
WHERE beers.BrewerId = brewers.ID;

SELECT beers.Name, brewers.Name, Category FROM beers, brewers, categories
WHERE beers.BrewerId = brewers.ID AND beers.CategoryID = categories.Id;

