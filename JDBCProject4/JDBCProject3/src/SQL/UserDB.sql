CREATE TABLE User
(
    id BIGINT,
    userName varchar(255),
    email varchar(255),
    role varchar(255),
    password varchar(255),
    createdAt TIMESTAMP,
    updateAt TIMESTAMP,

    PRIMARY KEY (id)
)