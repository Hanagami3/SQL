CREATE DATABASE IF NOT EXISTS MovieProjectDB;

USE MovieProjectDB;

# 1. Toon alle movie die langer zijn dan 2 uur (120 minuten)
SELECT *
FROM movies
WHERE Duration > 120;

#2
SELECT *
FROM movies
WHERE Title LIKE '%teen';

#3
SELECT DISTINCT Vote_average
FROM Movies;

#4
SELECT title, priceEuro, priceEuro * 1.11 As pricePond
FROM movies;

#5
SELECT gender, count(cast.gender_ID) AS Count
FROM
INNER join genders on gender = genders.gender
GROUP BY gender;

#6
#SELECT movies.Title, Language_ID
#FROM movies
#INNER JOIN Movie_Languages ON Movie_Languages.Language_ID = Language_ID

SELECT movies.Title, COUNT(Language_ID) AS TotalLanguages
FROM movies
INNER JOIN Movie_Languages ON Movie_Languages.Movie_id = movies.movie_id
GROUP BY  movies.Title;
#Having TotalLanguages > 2;


SELECT *
FROM languages;

# 7. Toon alle unieke filmen die ‘space opera’ als keyword hebben,
# maar die NIET ‘star’ in de movie title hebben.
SELECT movies.title, keywords.keyword
FROM movies
    INNER JOIN Movie_Keywords on Movie_keywords.movie_ID = movies.movie_id
    INNER JOIN Keywords on Movie_Keywords.Keyword_ID = keywords.keyword_ID
WHERE keywords.keyword Like '%space opera%'
  AND movies.title NOT LIKE '%star%';

#8 Toon alle Horror movies.

Select movies.title, categories.category
FROM movies
    INNER JOIN Movie_Category ON Movie_Category.movie_ID = movies.movie_ID
    INNER JOIN Categories ON Movie_Category.category_ID = categories.category_ID
WHERE Categories.category Like '%Horror%'

