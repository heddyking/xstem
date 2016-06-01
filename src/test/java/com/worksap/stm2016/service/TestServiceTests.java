package com.worksap.stm2016.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.sql.Timestamp;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.worksap.stm2016.Application;
import com.worksap.stm2016.entities.TestComment;
import com.worksap.stm2016.entities.TestPost;

/**
 * @author xiaoxi
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(Application.class)
@TransactionConfiguration(transactionManager="transactionManager")
public class TestServiceTests
{

	@Autowired
	private TestService blogService;

	@Autowired DataSourceTransactionManager txMgr;

//	@Test
//	public void createPost_createComment_findById_findAllPosts() {
//		TransactionStatus tx = txMgr.getTransaction(new DefaultTransactionDefinition());
//		try {
//			TestPost post = new TestPost(0, "My new Post", "This is my new test post", new Timestamp(System.currentTimeMillis()));
//			TestPost savedPost = blogService.createPost(post);
//			TestPost newPost = blogService.getPost(savedPost.getId());
//			int tempid=savedPost.getId();
//			assertEquals("My new Post", newPost.getTitle());
//			assertEquals("This is my new test post", newPost.getContent());
//
//
//			Integer postId = tempid;
//			TestComment comment = new TestComment(0, postId, "User4", "user4@gmail.com", "This is my new comment on post1", new Timestamp(System.currentTimeMillis()));
//			TestComment savedComment = blogService.createComment(comment);
//			TestPost post2 = blogService.getPost(postId);
//			List<TestComment> comments = post2.getComments();
//			assertNotNull(comments);
//			for (TestComment comm : comments)
//			{
//				if(savedComment.getId() == comm.getId()){
//					assertEquals("User4", comm.getName());
//					assertEquals("user4@gmail.com", comm.getEmail());
//					assertEquals("This is my new comment on post1", comm.getContent());
//				}
//			}
//
//
//			TestPost post3 = blogService.getPost(tempid);
//			assertNotNull(post3);
//			System.out.println(post3);
//			List<TestComment> comments2 = post3.getComments();
//			System.out.println(comments2);
//
//
//			List<TestPost> posts = blogService.getAllPosts();
//			assertNotNull(posts);
//			assertTrue(!posts.isEmpty());
//			for (TestPost post4 : posts)
//			{
//				System.err.println(post4);
//			}	
//
////			int a=10/0;
//
//			txMgr.commit(tx);
//		}
//		catch (Exception e) {
//			e.printStackTrace();
//			txMgr.rollback(tx);
//		}
//	}


	@Test
	public void createPost_createComment_findById_findAllPosts2() {
		blogService.aaaa();
	}
}
