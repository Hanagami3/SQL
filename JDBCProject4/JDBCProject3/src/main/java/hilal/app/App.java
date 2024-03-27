package hilal.app;

import hilal.models.Post;
import hilal.models.PostLike;
import hilal.models.Topic;
import hilal.models.User;
import hilal.repositories.PostLikeRepository;
import hilal.repositories.PostRepository;
import hilal.repositories.TopicRepository;

import java.sql.SQLException;

public class App {

    public static void main(String[] args) throws SQLException {

        /*User user = new User();
        user.setUsername("Max");
        user.setEmail("Max@gmail.com");
        user.setPassword("1234");

        Post post1 = new Post();
        post1.setUserId(1);
        post1.setBody("Hallo");
        post1.setImage("hand");
        post1.setPublished(27/03/24);

        Post post2 = new Post();
        post2.setTitle("Title");
        post2.setBody("body");

        Post post3 = new Post();
        post3.setUserId(2);
        post1.setTitle("Bad");

        PostRepository postRepository = new PostRepository();
        System.out.println("A: " + postRepository.create(post3));
        System.out.println("B: " + postRepository.read(10));
        postRepository.update(11, post2);
        System.out.println("C: " + postRepository.read(post3));
        //System.out.println("D: " + postRepository.delete(8));
        System.out.println("E: " + postRepository.read());*/

        //////////////////////////////////////////////////////////

        PostLike postLike1 = new PostLike();
        postLike1.setPostId(11);
        postLike1.setUserId(1);

        PostLike postLike2 = new PostLike();
        postLike2.setPostId(10);
        postLike2.setUserId(2);

        /*PostLikeRepository postLikeRepository = new PostLikeRepository();
        //System.out.println(postLikeRepository.create(postLike2));
        System.out.println(postLikeRepository.update(10, postLike1));
        System.out.println(postLikeRepository.read(postLike1));
        //System.out.println(postLikeRepository.delete(10));
        System.out.println(postLikeRepository.read());*/

        ///////////////////////////////////////////////////////////

        Topic topic1 = new Topic();
        topic1.setSlug("zZVeq");
        topic1.setName("Onderwerp");

        Topic topic2 = new Topic();
        topic2.setId(1);
        topic2.setSlug("AAAAA");


        TopicRepository topicRepository = new TopicRepository();

        System.out.println(topicRepository.delete(1));
        //System.out.println(topicRepository.create(topic1));
        System.out.println(topicRepository.read(2));
        System.out.println(topicRepository.read(topic1));

        System.out.println(topicRepository.update(0, topic2));
        System.out.println(topicRepository.read());





    }
}
