Create DATABASE IF NOT EXISTS SuperHeroes ;

USE SuperHeroes;

# 1. Toon alle superpeople met een overzicht van al hun informatie
SELECT *
FROM superpeople;

#2. Filter alle superpeople op de string ‘man’ en toon de namen en de beschrijving van
#   de superpersoon, maar zorg er ook voor dat personen met ‘woman’ niet getoond
#   worden.

SELECT name, History
from superpeople
WHERE Gender LIKE '%MALE%'
  AND Gender NOT LIKE '%Female%';

#3. Voeg een team toe aan de database. Bedenk zelf een naam en beschrijving.

#(folder Team.sql)


#4. Verplaats alle personen uit team 96 naar team 42 en zorg ervoor dat er niets
#   gebeurd met de personen die al in team 42 zaten.

UPDATE superpeople
SET Team_Id = 5
WHERE Team_Id = 4;


#5. Tel het aantal teams in de database

SELECT count(team.Team_Id)
FROM team;

#6  Toon alle mogelijke waarden voor gender (elk gender 1 keer). Bonuspunten als je dit
    #op 2 verschillende manieren kan doen.

SELECT DISTINCT superpeople.Gender
FROM superpeople;


# 7. Toon alle verschillende genders en de gemiddelde van alle numerieke stats
#    (strength, intelligence en speed) per gender.



#8. Toon alle superpersonen met de naam van hun eventuele team.

SELECT superpeople.name, team.name
FROM superpeople
    LEFT JOIN team on team.Team_Id = superpeople.Team_Id;

#9. Toon alle personen die een speed hebben dat hoger is dan het gemiddelde van alle
#   personen.

SELECT name, Speed
FROM superpeople
WHERE Speed > (SELECT AVG(Speed)
               FROM superpeople);

#10. Toon alle superpersonen die een relatie hebben met ‘Catwoman’. Dus catwoman
#    met gerefereerd worden in de column partner. Helaas kennen we haar
#    SuperpersoonID niet van buiten.



#11. Toon alle teams samen met het aantal superpersonen per team.

SELECT Team.name, count(superpeople.Team_ID)
FROM team
    INNER JOIN superpeople ON superpeople.Team_Id = team.Team_Id
GROUP BY team.Name;

#12. Toon de teams met een gemiddelde intelligence score die hoger ligt dan het
#    gemiddelde van alle superpersonen.

SELECT AVG(intelligence)
FROM superpeople;

SELECT Team.Name, AVG(superpeople.intelligence) AS Gemiddeld_Team
FROM team
INNER JOIN superpeople ON superpeople.Team_Id = team.Team_Id
WHERE Intelligence > (SELECT AVG(intelligence)
                        FROM superpeople)
GROUP BY Team.Name;


# 13. Toon alle superpersonen met hun partner. Zorg er deze keer voor dat als de relatie
#     wederzijds is, dat we de relatie toch maar 1 keer tonen. Voorbeeld:
#     Als we onderstaande relatie al getoond hebben: Catwoman <<>> Batman
#     Dan zal Batman <<>> Catwoman niet getoond worden.