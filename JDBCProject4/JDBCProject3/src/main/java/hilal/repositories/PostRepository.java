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
        Statement createStatement = getConnection().createStatement();
        String query = "INSERT INTO post " +
               "(userid, title) " +
                "VALUES " +
                "('" + newPost.getUserId() + "', " +
               "'" + newPost.getTitle() + "')";
       //statement.executeUpdate() -> creates a record, or updates a record.
       return createStatement.executeUpdate(query);
        //Statement createStatement = getConnection().createStatement();
        /*String query = "insert into post (userid, title,slug,image,body,published) values (?, ?,?,?,?,?)";
        PreparedStatement insertStatement = getConnection().prepareStatement(query);

        insertStatement.setLong(1,newPost.getUserId());
        insertStatement.setString(2,newPost.getTitle());
        insertStatement.setString(3,newPost.getSlug());
        insertStatement.setString(4,newPost.getImage());
        insertStatement.setString(5,newPost.getBody());
        insertStatement.setLong(6,newPost.getPublished());*/

        //return insertStatement.executeUpdate();
    }



    public Post read(long id) throws SQLException {

        Statement selectStatement = getConnection().createStatement();

        String query = "SELECT id, userid, title, slug, views, image, body, published" +
                       " FROM Post" +
                       " Where id = " + id;
        ResultSet resultSet = selectStatement.executeQuery(query);
        Post post = new Post();
        while (resultSet.next()){
                    post.setId(resultSet.getInt("Id"));
                    post.setUserId(resultSet.getLong("userId"));
                    post.setTitle(resultSet.getString("title"));
                    post.setSlug(resultSet.getString("slug"));
                    post.setViews(resultSet.getLong("views"));
                    post.setImage(resultSet.getString("image"));
                    post.setBody(resultSet.getString("body"));
                    post.setPublished(resultSet.getLong("published"));
        }
        if (post.getId() != 0) return post;
        else return null;
    }

    public List<Post> read(Post example) throws SQLException {

        List<Post> postList=new ArrayList<>();
        Statement selectStatement = getConnection().createStatement();

        String query="SELECT id, userid, title FROM POST " +
                "WHERE id = " + example.getId();

        ResultSet result = selectStatement.executeQuery(query);

        while(result.next()) {
            Post post = new Post();
            post.setId(result.getLong("id"));
            post.setUserId(result.getLong("userid"));
            post.setTitle(result.getString("title"));
            postList.add(post);
        }
        if (!postList.isEmpty()) return postList;
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

        String query = "UPDATE Post " +
                "SET title = " + existingPost.getTitle() + ", " +
                "slug = " + existingPost.getSlug() + ", " +
                "views = " + existingPost.getViews() + ", " +
                "image = " + existingPost.getImage() + ", " +
                "body = " + existingPost.getBody() + ", " +
                "published = " + existingPost.getPublished() + " " +
                "WHERE id = " + id;
        //updateStatement.executeUpdate(query);

        if (updateStatement.executeUpdate(query) > 0 )return true;
        // return false if fails
        else return false;
    }

    public boolean delete(long id) throws SQLException {

        String query = " DELETE FROM Post WHERE id = " + id;
        Statement deleteStatement = getConnection().createStatement();
        //deleteStatement.executeUpdate(query);

        if (deleteStatement.executeUpdate(query) != 0) return true;
        // return false if fails
        else return false;
    }

}
