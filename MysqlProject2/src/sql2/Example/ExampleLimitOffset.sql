USE thebelgianbrewerydb;

SELECT *
FROM beers
LIMIT 100;

SELECT *
FROM beers
LIMIT 25
OFFSET 50;

SELECT *
FROM beers
LIMIT 50,25;


