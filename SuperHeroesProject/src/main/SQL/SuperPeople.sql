CREATE TABLE SuperPeople
(
    SuperPersonId INT,
    Name VARCHAR(255),
    Strength INT,
    Intelligence INT,
    Speed INT,
    Gender VARCHAR(50),
    History TEXT,
    Partner int REFERENCES SuperPeople (SuperPersonId),
    Team_Id INT,

    PRIMARY KEY (SuperPersonId),

    CONSTRAINT SuperPeople_Team FOREIGN KEY (Team_Id) REFERENCES Team (Team_Id)
);

INSERT INTO SuperPeople
values (1, 'Batman', 80, 100, 60, 'male', 'zkfhazlhamnvl:eva:vnlvanq', 2, 3),
       (2, 'Robin', 50, 50, 50, 'male', 'lzkedjzklFJ', 1, 3),
       (3, 'Wolverine', 120, 90, 90, 'Male', 'zmflnzan:lc', 4, 2),
       (4, 'Tornado', 60, 120, 100, 'female', 'zoihfehneafnea', 3, 2),
       (5, 'Hulk', 100, 1, 75, 'male', 'qehfroifijaonq', 6, 1),
       (6, 'Iron Man', 70, 100, 100, 'male', 'ziofinzafna:ln', 5, 1);

INSERT INTO SuperPeople
values (7, 'Jojo', 50, 30, 60, 'female', 'mjczmoifcjzoqj', 8, 4),
       (8, 'Nana', 100, 100, 100, 'female', 'zeiFKHZ/AZ', 7, 4);

INSERT INTO SuperPeople
values (9, 'La Chose', 25, 50, 75, 'Non Binairy', 'qzorfj,mzj,az:', null, null);
