CREATE TABLE Categories
(
    category_Id int(11),
    category varchar(50),

    PRIMARY KEY (category_Id)
);

INSERT INTO Categories
values (1, 'horror'),
       (2, 'comedy'),
       (3, 'drama'),
       (4, 'documentary'),
       (5, 'Epic');