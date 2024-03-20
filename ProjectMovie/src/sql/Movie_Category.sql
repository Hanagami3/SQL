CREATE TABLE Movie_Category
(
    Movie_ID int (11),
    Category_ID int (11),

    CONSTRAINT MovieCategory_Movies FOREIGN KEY (Movie_ID) REFERENCES Movies (movie_ID),
    CONSTRAINT MovieCategory_Category FOREIGN KEY (Category_ID) REFERENCES categories (category_ID)

);

INSERT INTO Movie_Category
values (1, 5),
       (2, 3),
       (3, 1),
       (4, 5),
       (5, 5),
       (6, 3),
       (7, 2)
