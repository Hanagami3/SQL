USE TheBelgianBreweryDB;

#1 Geef me alle alcoholpercentages, telkens maar eenmalig! Zet de hoogste vanboven.
SELECT DISTINCT Alcohol
FROM beers
ORDER BY Alcohol DESC;

#2 Geef me de aantal brouwerijen per stad.
SELECT City, COUNT(Name) AS Count_Brouwerijen
FROM brewers
GROUP BY City;

#3 Geef me alle bieren die gebrouwen zijn in Alken;
SELECT Name
FROM beers
WHERE BrewerId = 2;

#4 Geef me het gemiddelde van alle bierprijzen per brouwerij.
SELECT BrewerId, AVG(Price) AS Gemiddelde_Price
FROM beers
GROUP BY BrewerId;

#5 Geef me alle brouwers terug die meer dan 10 bieren produceren.
SELECT Name
FROM brewers
WHERE

#6 Geef me alle brouwers terug die 'Alcoholarm' of 'Alcoholvrij' bieren maken. Gebruik hiervoor ook de tabel Category.


