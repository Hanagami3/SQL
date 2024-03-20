CREATE TABLE languages
(
    language_ID int (11),
    language varchar(50),

    PRIMARY KEY (language_ID)
);

INSERT INTO languages
values (1, 'Dutch'),
       (2, 'French'),
       (3, 'Engels'),
       (4, 'Japanese'),
       (5, 'Turkish'),
       (6, 'Unknown')