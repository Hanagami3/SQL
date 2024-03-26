CREATE TABLE PostTopic
(
    postId BIGINT,
    topicId BIGINT,

    CONSTRAINT PostTopic_PostId FOREIGN KEY (postId) REFERENCES Post (id),
    CONSTRAINT PostTopic_TopicId FOREIGN KEY (topicId) REFERENCES Topic (id)
)