CREATE TABLE PostLike
(
    postId BIGINT,
    userId BIGINT,

    CONSTRAINT PostLike_Post FOREIGN KEY (postId) REFERENCES Post (id),
    CONSTRAINT PostLike_User FOREIGN KEY (userId) REFERENCES User (id)

)