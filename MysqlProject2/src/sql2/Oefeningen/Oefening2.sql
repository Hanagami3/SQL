USE TheBelgianBreweryDB;

#(a) Hoeveel verschillende brouwers zitten er in de database? (118)
SELECT COUNT(*)
FROM brewers;

#(b) Bereken de gemiddelde turnover van alle brouwers. (114302.1525)
SELECT  AVG(Turnover) AS gemiddelde
FROM brewers;

#(c) Geef het laagste, gemiddelde en hoogste alcoholgehalte uit de beers tabel in 1 instructie. (0, 5.8706, 15)
SELECT MIN(alcohol) AS laagste_alcoholgehalte,
       AVG(alcohol) AS gemiddd_alcoholgehalte,
       MAX(alcohol) AS hoogste_alcoholgehalte
FROM beers;

#(d) Bereken de gemiddelde turnover van alle brouwers in de provincie Brabant (postcodes die beginnen met een 1)
# maar negeer de brouwerij ‘Palm’. (39525.7143)
SELECT AVG(Turnover) as Gemiddelde
FROM brewers
WHERE LEFT(ZipCode, 1) LIKE '%1%'
  AND Name NOT LIKE '%Palm%';
#where zipecode like '1%'

#(e) Bereken het gemiddelde alcohol per categorie(id). (114 records)
SELECT AVG(Alcohol) AS Gemidd
FROM beers
#GROUP BY CategoryID;
GROUP BY BrewerId;

#(f) Toon de hoogste bierprijs per categorie maar negeer alle bieren die niet in stock zijn. Sorteer het resultaat op categorie id.
# Zorg er ook voor dat we enkel prijzen zien die hoger zijn dan 3. (5 records)

SELECT MAX(Price) as Mac_Price
FROM beers
WHERE Stock IS NOT NULL
# stock > 0
  AND Price > 3
GROUP BY CategoryID
ORDER BY CategoryID;

