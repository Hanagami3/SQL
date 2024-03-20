CREATE TABLE Movie_Languages
(
    Movie_id int (11),
    Language_id int (11),

    #Mausam
    PRIMARY KEY(Movie_id, Language_id),

    CONSTRAINT movie_to_MovieLanguage FOREIGN KEY (Movie_id) REFERENCES movies(Movie_id),
    CONSTRAINT language_to_MovieLanguage FOREIGN KEY (Language_id) REFERENCES languages(language_id)
);

INSERT INTO Movie_Languages
values (1, 3),
       (1, 4),
       (1, 5),
       (2, 2),
       (2, 3),
       (3, 3),
       (4, 3),
       (4, 6),
       (5, 3),
       (5, 4),
       (5, 6),
       (6, 1),
       (7, 4);