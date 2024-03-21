CREATE TABLE Team
(
    Team_Id     INT AUTO_INCREMENT,
    Name        VARCHAR(50),
    Description VARCHAR(255),

    PRIMARY KEY (Team_Id)
);

INSERT INTO Team (Name, Description)
values ('justice league', ' voor gerechtigheid.'),
       ('X-Men', 'voor diversiteit' ),
       ('Avengers', 'voor vrijheid');

INSERT INTO Team (Name, Description)
values  ('96', 'Bijna honderd'),
        ('42', 'Bijna vijftig')
