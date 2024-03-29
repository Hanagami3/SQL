package hilal.repositories;

import hilal.models.Topic;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class TopicRepository {

    private static Connection getConnection() throws SQLException {
        Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/blogdb",
                "blogger",
                "p@ssw0rd"
        );
        System.out.println("CONNECTION TO DB IS MADE");

        return connection;
    }

    public long create(Topic newTopic) throws SQLException {

        String query = "insert into topic (name,slug) values(?,?)";
        PreparedStatement insertStatement = getConnection().prepareStatement(query);
        insertStatement.setString(1, newTopic.getName());
        insertStatement.setString(2, newTopic.getSlug());
        return insertStatement.executeUpdate();
    }

    public Topic read(long id) throws SQLException {

        Statement selectStatement = getConnection().createStatement();

        String query = "SELECT name, slug " +
                "FROM Topic " +
                "WHERE id = " + id;
        ResultSet resultSet = selectStatement.executeQuery(query);
        Topic topic = new Topic();
        while (resultSet.next()){
            topic.setName(resultSet.getString("name"));
            topic.setSlug(resultSet.getString("slug"));
        }
        if (topic != null) return topic;
        else return null;
    }

    public List<Topic> read(Topic example) throws SQLException {

        Statement selectStatement = getConnection().createStatement();
        List<Topic> topicList = new ArrayList<>();
        String query = "SELECT name,slug " +
                "FROM topic " +
                "WHERE id = " + example.getId() ;
        ResultSet result = selectStatement.executeQuery(query);
        while (result.next()) {
            Topic topic = new Topic();
            topic.setName(result.getString("name"));
            topic.setSlug(result.getString("slug"));
            topicList.add(topic);
        }

        if (!topicList.isEmpty())return topicList;
        else return Collections.emptyList();
    }

    public List<Topic> read() throws SQLException {

        Statement selectStatement = getConnection().createStatement();
        List<Topic> topicList = new ArrayList<>();
        String query = "select name,slug from topic";
        ResultSet result = selectStatement.executeQuery(query);
        while (result.next()) {
            Topic topic = new Topic();
            topic.setName(result.getString("name"));
            topic.setSlug(result.getString("slug"));
            topicList.add(topic);
        }

        return topicList;
    }

    public int update(int id, Topic existingTopic) throws SQLException {

        String query = "Update topic Set name=?,slug=? where id =?";
        PreparedStatement updateStatement = getConnection().prepareStatement(query);
        updateStatement.setString(1, existingTopic.getName());
        updateStatement.setString(2, existingTopic.getSlug());
        updateStatement.setLong(3, id);
        return updateStatement.executeUpdate();

    }

    public int delete(int id) throws SQLException {

        String query = "Delete from topic where id=?";
        PreparedStatement deleteStatement = getConnection().prepareStatement(query);
        deleteStatement.setInt(1, id);
        return deleteStatement.executeUpdate();
    }

}
