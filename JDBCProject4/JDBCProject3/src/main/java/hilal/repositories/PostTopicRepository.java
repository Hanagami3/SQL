package hilal.repositories;

import hilal.models.PostLike;
import hilal.models.PostTopic;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class PostTopicRepository {

private static Connection getConnection() throws SQLException {
        Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/blogdb",
                "blogger",
                "p@ssw0rd"
        );
        System.out.println("CONNECTION TO DB IS MADE");

        return connection;
    }

    public long create(PostTopic newPostTopic) throws SQLException {


        Statement createStatement = getConnection().createStatement();

        String query = "INSERT INTO PostTopic " +
                "(postID, topicID)" +
                "VALUES " +
                "('" + newPostTopic.getPostId() + ", " +
                "('" + newPostTopic.getTopicId() + ", ";
        long result = createStatement.executeUpdate(query);

        if (result > 0) return result;
        else return -1;
    }

    public PostTopic read(long id) throws SQLException {

        Statement selectStatement = getConnection().createStatement();

        String query = "SELECT postId, topicId" +
                "FROM PostTopic " +
                "WHERE id = " + id;
        ResultSet resultSet = selectStatement.executeQuery(query);
        PostTopic postTopic = new PostTopic();
        while (resultSet.next()){
            postTopic.setPostId(resultSet.getInt("postId"));
            postTopic.setTopicId(resultSet.getInt("topicId"));
        }
        if (postTopic != null) return postTopic;
        else return null;
    }

    public List<PostTopic> read(PostTopic example) throws SQLException {

        List<PostTopic> postTopicList = new ArrayList<>();
        Statement selectStatement = getConnection().createStatement();

        String query = "SELECT postId, topicId" +
                "FROM PostTopic " +
                "WHERE id = " + example.getTopicId();
        ResultSet resultSet = selectStatement.executeQuery(query);

        while (resultSet.next()){
            PostTopic postTopic = new PostTopic();
            postTopic.setPostId(resultSet.getInt("postId"));
            postTopic.setTopicId(resultSet.getInt("topicId"));
            postTopicList.add(postTopic);
        }
        if (!postTopicList.isEmpty()) return postTopicList;
        else return Collections.emptyList();
    }

    public List<PostTopic> read() throws SQLException {

        List<PostTopic> postTopicList = new ArrayList<>();
        Statement selectStatement = getConnection().createStatement();

        String query = "SELECT postId, topicId" +
                "FROM PostTopic ";
        ResultSet resultSet = selectStatement.executeQuery(query);

        while (resultSet.next()){
            PostTopic postTopic = new PostTopic();
            postTopic.setPostId(resultSet.getLong("postId"));
            postTopic.setTopicId(resultSet.getLong("topicId"));
            postTopicList.add(postTopic);
        }
        if (!postTopicList.isEmpty()) return postTopicList;
        else return Collections.emptyList();
    }

    public boolean update(long id, PostTopic existingPostTopic) throws SQLException {

        Statement updateStatement = getConnection().createStatement();

        String query = "UPDATE PostTopic " +
                "SET postId = " + existingPostTopic.getPostId() + ", " +
                "topicId = '" + existingPostTopic.getTopicId() + "'" +
                "Where id = " + id;

        if (updateStatement.executeUpdate(query) > 0 )return true;
        else return false;
    }

    public boolean delete(long id) throws SQLException {

        Statement deleteStatement = getConnection().createStatement();

        String query = "DELETE FROM PostTopic " +
                "WHERE id = " +id;

        if (deleteStatement.executeUpdate(query) != 0) return true;
            // return false if fails
        else return false;
    }

}
