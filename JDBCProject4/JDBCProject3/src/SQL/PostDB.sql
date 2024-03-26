CREATE TABLE post
(
    id BIGINT,
    userId BIGINT,
    title varchar(255),
    slug varchar(255),
    views Bigint,
    image varchar(255),
    body Text,
    published BIGINT,
    createAt TIMESTAMP,
    updateAt TIMESTAMP,

    PRIMARY KEY (id),

    CONSTRAINT Post_User FOREIGN KEY (userId) REFERENCES User (id)
);

INSERT INTO post
VALUES ()