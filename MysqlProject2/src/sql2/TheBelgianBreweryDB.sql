CREATE DATABASE IF NOT EXISTS TheBelgianBreweryDB;

USE TheBelgianBreweryDB;

SELECT
    id, Name, BreweryId, Price, Stock, Alcohol, Version, Image
FROM Beers;