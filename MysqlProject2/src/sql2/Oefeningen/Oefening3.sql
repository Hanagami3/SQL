USE thebelgianbrewerydb;

#(a) Toon een lijst van alle biernamen en hun categorie-naam van alle bieren met 0% alcohol. (31)
SELECT beers.Name, categories.Category
FROM beers
INNER JOIN categories ON CategoryID = Categories.Id
WHERE Alcohol = 0;

#(b) Toon een lijst van alle brouwers met de prijs van hun duurste bier.
# (records 113 - gedeeltelijk resultaat: Achouffe- 3.06 Alken - 4.5)
SELECT brewers.Name, MAX(beers.Price) AS Max_price
FROM beers
INNER JOIN brewers ON BrewerId =  brewers.Name;


#(c) Toon ‘alle’ bieren met een id tussen 1500 en 1600 met hun eventuele brouwer(naam). (41) SQL - 30/41
SELECT beers.Name,  brewers.Name
FROM beers
INNER JOIN brewers ON BrewerId =  brewers.Name;


#(d)(d) Toon de top 3 bieren (id en naam) met het meeste alcohol samen met de naam van de brouwer en de categorienaam.
# 529 - Fitt -Wieze
# 229 - Bush de Noel - Dubuisson - Alcoholarm - Gerstewijn
# 511 - Fantome brewery (The best of) - Fantome - Massieve Ale

SELECT beers.Name, beers.ID, brewers.Name, categories.Category
FROM beers
INNER JOIN brewers ON BrewerId =  brewers.Name
INNER JOIN categories ON CategoryID = Categories.Id
WHERE beers.ID = 529;