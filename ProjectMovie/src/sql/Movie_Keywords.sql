CREATE TABLE Movie_keywords
(
    movie_ID int(11),
    keyword_ID int(11),

    PRIMARY KEY (movie_ID, keyword_ID),

    CONSTRAINT MovieKeyword_Movie FOREIGN KEY (movie_ID) REFERENCES movies (Movie_ID),
    CONSTRAINT MovieKeyword_keyword FOREIGN KEY (keyword_ID) REFERENCES keywords (keyword_ID)
);

INSERT INTO Movie_keywords
values (1,3),
       (2,3),
       (3,2),
       (4,1),
       (5,1),
       (6,2)

