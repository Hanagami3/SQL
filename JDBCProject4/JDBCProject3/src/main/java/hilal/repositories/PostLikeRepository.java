package hilal.repositories;

import hilal.models.PostLike;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class PostLikeRepository {

private static Connection getConnection() throws SQLException {
        Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/blogdb",
                "blogger",
                "p@ssw0rd"
        );
        System.out.println("CONNECTION TO DB IS MADE");

        return connection;
    }

    public long create(PostLike newPostLike) throws SQLException {

        Statement createStatement = getConnection().createStatement();

        String query = "INSERT INTO PostLike " +
                "(postId, userId) " +
                "VALUES " +
                "('" + newPostLike.getPostId() + "', " +
                "'" + newPostLike.getUserId() + "')";
        long result = createStatement.executeUpdate(query);

        if (result > 0) return result;
        else return -1;
    }

    public PostLike read(long id) throws SQLException {

        Statement selectStatement = getConnection().createStatement();

        String query = "SELECT postId, userId " +
                "FROM PostLike " +
                "WHERE postId = " + id;
        ResultSet resultSet = selectStatement.executeQuery(query);
        PostLike postLike = new PostLike();
        while (resultSet.next()){
            postLike.setPostId(resultSet.getInt("postId"));
            postLike.setUserId(resultSet.getInt("userId"));
        }
        if (postLike != null) return postLike;
        else return null;
    }

    public List<PostLike> read(PostLike example) throws SQLException {

        List<PostLike> postLikeList = new ArrayList<>();
        Statement selectStatement = getConnection().createStatement();

        String query = "SELECT postId, userId " +
                "FROM PostLike " +
                "WHERE postId = " + example.getPostId();
        ResultSet result = selectStatement.executeQuery(query);

        while (result.next()){
            PostLike postLike = new PostLike();
            postLike.setPostId(result.getInt("postId"));
            postLike.setUserId(result.getInt("userId"));
            postLikeList.add(postLike);
        }
        if (!postLikeList.isEmpty()) return postLikeList;
        else return Collections.emptyList();
    }

    public List<PostLike> read() throws SQLException {

        List<PostLike> postLikeList = new ArrayList<>();
        Statement selectStatement = getConnection().createStatement();

        String query = "SELECT postId, userId " +
                "FROM PostLike ";
        ResultSet result = selectStatement.executeQuery(query);

        while (result.next()){
            PostLike postLike = new PostLike();
            postLike.setPostId(result.getInt("postId"));
            postLike.setUserId(result.getInt("userId"));
            postLikeList.add(postLike);
        }
        if (!postLikeList.isEmpty()) return postLikeList;
        else return Collections.emptyList();
    }

    public boolean update(long id, PostLike existingPostLike) throws SQLException {

        Statement updateStatement = getConnection().createStatement();

        String query = "UPDATE PostLike " +
                "SET postId = " + existingPostLike.getPostId() + ", " +
                " userId = " + existingPostLike.getUserId() + " " +
                " WHERE postid = " + id;

        if (updateStatement.executeUpdate(query) > 0 ) return true;
        else return false;
    }

    public boolean delete(long id) throws SQLException {

        Statement deleteStatement = getConnection().createStatement();
        String query = " DELETE FROM PostLike WHERE postid = " + id;

        if (deleteStatement.executeUpdate(query) != 0) return true;
        else return false;
    }
}
