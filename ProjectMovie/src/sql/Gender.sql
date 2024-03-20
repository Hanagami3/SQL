CREATE TABLE Genders
(
    gender_id int(11),
    gender varchar(50),

    PRIMARY KEY (gender_ID)
);

INSERT INTO Genders
values (1, 'Man'),
       (2, 'Woman'),
       (3, 'Undefined');

delete from genders;