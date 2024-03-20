CREATE  TABLE  Movies
(
    Movie_ID int(11) UNIQUE ,
    Title varchar (200),
    Duration int (5),
    Vote_Average int(5),
    PriceEuro float,

    PRIMARY KEY (Movie_ID)

);



INSERT INTO Movies (Movie_ID, Title, Duration, Vote_Average, PriceEuro)
VALUES  (1, 'Les 7 Samouraïs', 207, 85, 100000),
        (2, 'Teen teen', 118, 57, 300000),
        (3, 'Scary Movie', 98, 69, 150000),
        (4, 'Star Wars', 135, 95, 500000),
        (5, 'Dune', 145, 89, 700000),
        (6, 'de teenager leven', 75, 43, 15000),
        (7, 'Mon voisin Totoro', 93, 85, 50000);


