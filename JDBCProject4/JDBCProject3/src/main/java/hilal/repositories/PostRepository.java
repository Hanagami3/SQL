package hilal.repositories;

import hilal.models.Post;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class PostRepository {

private static Connection getConnection() throws SQLException {
        Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/blogdb",
                "blogger",
                "p@ssw0rd"
        );
        System.out.println("CONNECTION TO DB IS MADE");

        return connection;
    }

    public long create(Post newPost) throws SQLException {
//        Statement createStatement = getConnection().createStatement();
//        String query = "INSERT INTO post " +
//                "(userid, title) " +
//                "VALUES " +
//                "('" + newPost.getUserId() + "', " +
//                "'" + newPost.getTitle() + "')";
////        statement.executeUpdate() -> creates a record, or updates a record.
//        return createStatement.executeUpdate(query);
//        //Statement createStatement = getConnection().createStatement();
        String query = "insert into post (userid, title,slug,image,body,published) values (?, ?,?,?,?,?)";
        PreparedStatement insertStatement = getConnection().prepareStatement(query);

        insertStatement.setLong(1,newPost.getUserId());
        insertStatement.setString(2,newPost.getTitle());
        insertStatement.setString(3,newPost.getSlug());
        insertStatement.setString(4,newPost.getImage());
        insertStatement.setString(5,newPost.getBody());
        insertStatement.setLong(6,newPost.getPublished());

        return insertStatement.executeUpdate();
    }



    public Post read(long id) throws SQLException {

        Statement selectStatement = getConnection().createStatement();

        String query = "SELECT id, userid, title, slug, views, image, body, published" +
                       " FROM Post" +
                       " Where id = " + id;
        ResultSet resultSet = selectStatement.executeQuery(query);
        while (resultSet.next()){
            System.out.println(resultSet.getInt("Id") + "|" +
                    resultSet.getLong("userId") + "|" +
                    resultSet.getString("title") + "|" +
                    resultSet.getString("slug") + "|" +
                    resultSet.getLong("view") + "|" +
                    resultSet.getString("image") + "|" +
                    resultSet.getString("body") + "|" +
                    resultSet.getString("published")
            );
            Post post = new Post();

        }

        return null;
    }

    public List<Post> read(Post example) throws SQLException {

        List<Post> postList=new ArrayList<>();
        Statement selectStatement = getConnection().createStatement();

        long idToFind = example.getId();

        String query="SELECT id,userid,title FROM POST " +
                "WHERE id = " + idToFind;

        ResultSet result=selectStatement.executeQuery(query);

        while(result.next()) {
            Post post = new Post();
            post.setId(result.getLong("id"));
            post.setUserId(result.getLong("userid"));
            post.setTitle(result.getString("title"));
            postList.add(post);
        }
        if (postList.contains(idToFind)) return postList;
        else return Collections.emptyList();
        // return empty collection if fails

    }

    public List<Post> read() throws SQLException {
        List<Post> postList=new ArrayList<>();
        Statement selectStatement = getConnection().createStatement();

        String query="SELECT id,userid,title FROM POST";
        ResultSet result=selectStatement.executeQuery(query);

        while(result.next()){
            Post post=new Post();
            post.setId(result.getLong("id"));
            post.setUserId(result.getLong("userid"));
            post.setTitle(result.getString("title"));
            postList.add(post);
        }
        return postList;

    }

    public boolean update(long id, Post existingPost) throws SQLException {

        Statement updateStatement = getConnection().createStatement();

        // return false if fails
        return false;
    }

    public boolean delete(long id) throws SQLException {

        Statement deleteStatement = getConnection().createStatement();

        // return false if fails
        return false;
    }

}
