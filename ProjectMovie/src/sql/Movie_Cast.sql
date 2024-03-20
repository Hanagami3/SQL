CREATE  TABLE Cast
(
    cast_id int(11),
    first_name varchar(50),
    last_name varchar(50),
    gender_id int(5),

    PRIMARY KEY (cast_id),
    CONSTRAINT Cast_Gender FOREIGN KEY (gender_id) REFERENCES genders (gender_id)
);

INSERT INTO Cast
values (1, 'Tom', 'Cruiz', 1),
       (2, 'Mark', 'Hamil',1),
       (3, 'Natalie', 'Portman', 2),
       (4, 'Timothée', 'Chalamet', 3),
       (5, 'Zoe', 'Zaldana', 3),
       (6, 'Valérie', 'Bonneton', 2),
       (7, 'Hadel', 'Henel', 2);



