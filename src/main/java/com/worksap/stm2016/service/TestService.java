/**
 * 
 */
package com.worksap.stm2016.service;

import static com.worksap.stm2016.jooq.domain.tables.TestComments.TEST_COMMENTS;
import static com.worksap.stm2016.jooq.domain.tables.TestPosts.TEST_POSTS;
//import static org.junit.Assert.assertEquals;
//import static org.junit.Assert.assertNotNull;
//import static org.junit.Assert.assertTrue;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.jooq.DSLContext;
import org.jooq.Record;
import org.jooq.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.worksap.stm2016.entities.TestComment;
import com.worksap.stm2016.entities.TestPost;
import com.worksap.stm2016.jooq.domain.tables.records.TestCommentsRecord;
import com.worksap.stm2016.jooq.domain.tables.records.TestPostsRecord;

/**
 * @author Siva
 *
 */
@Service
@Transactional
public class TestService
{
	@Autowired
	private DSLContext dsl;
	
	public TestPost createPost(TestPost post){
		TestPostsRecord postsRecord = dsl.insertInto(TEST_POSTS)
				.set(TEST_POSTS.TITLE, post.getTitle())
				.set(TEST_POSTS.CONTENT, post.getContent())
				.set(TEST_POSTS.CREATED_ON, post.getCreatedOn())
				.returning(TEST_POSTS.ID)
				.fetchOne(); 
			
		post.setId(postsRecord.getId());
		return post;
	}
	
	public List<TestPost> getAllPosts(){		
		List<TestPost> posts = new ArrayList<>();		
		Result<Record> result = (dsl.select().from(TEST_POSTS).fetch());
		for (Record r : result) {
			TestPostsRecord a=(TestPostsRecord)r;
		    posts.add(getPostEntity(a));
		}
		return posts ;
	}

	public TestPost getPost(Integer postId){
		Record record = dsl.select().
								from(TEST_POSTS)
								.where(TEST_POSTS.ID.eq(postId))
								.fetchOne();
		if(record != null)
		{
		    TestPost post = getPostEntity(record);
		    
		    Result<Record> commentRecords = dsl.select().
										from(TEST_COMMENTS)
										.where(TEST_COMMENTS.POST_ID.eq(postId))
										.fetch();
		    
		    for (Record r : commentRecords) {
			    post.addComment(getCommentEntity(r));
			}
		    return post;
		}
		return null;
	}
	
	
	public TestComment createComment(TestComment comment){
		TestCommentsRecord commentsRecord = dsl.insertInto(TEST_COMMENTS)
				.set(TEST_COMMENTS.POST_ID, comment.getPost().getId())
				.set(TEST_COMMENTS.NAME, comment.getName())
				.set(TEST_COMMENTS.EMAIL, comment.getEmail())
				.set(TEST_COMMENTS.CONTENT, comment.getContent())
				.set(TEST_COMMENTS.CREATED_ON, comment.getCreatedOn())
				.returning(TEST_COMMENTS.ID)
				.fetchOne();
			
		comment.setId(commentsRecord.getId());
		return comment;
	}
	
	public void deleteComment(Integer commentId){
		dsl.deleteFrom(TEST_COMMENTS)
				.where(TEST_COMMENTS.ID.equal(commentId))
				.execute();
	}
	
	private TestPost getPostEntity(Record r){
		Integer id = r.getValue(TEST_POSTS.ID, Integer.class);
	    String title = r.getValue(TEST_POSTS.TITLE, String.class);
	    String content = r.getValue(TEST_POSTS.CONTENT, String.class);
	    Timestamp createdOn = r.getValue(TEST_POSTS.CREATED_ON, Timestamp.class);
	    return new TestPost(id, title, content, createdOn);
	}
	
	private TestComment getCommentEntity(Record r) {
		Integer id = r.getValue(TEST_COMMENTS.ID, Integer.class);
		Integer postId = r.getValue(TEST_COMMENTS.POST_ID, Integer.class);
	    String name = r.getValue(TEST_COMMENTS.NAME, String.class);
	    String email = r.getValue(TEST_COMMENTS.EMAIL, String.class);
	    String content = r.getValue(TEST_COMMENTS.CONTENT, String.class);
	    Timestamp createdOn = r.getValue(TEST_COMMENTS.CREATED_ON, Timestamp.class);
	    return new TestComment(id, postId, name, email, content, createdOn);
	}
	
	public void aaaa(){
		TestPost post = new TestPost(0, "My new Post", "This is my new test post", new Timestamp(System.currentTimeMillis()));
		TestPost savedPost = createPost(post);
		TestPost newPost = getPost(savedPost.getId());
		int tempid=savedPost.getId();
//		assertEquals("My new Post", newPost.getTitle());
//		assertEquals("This is my new test post", newPost.getContent());
		
		int a=10/0;

		Integer postId = tempid;
		TestComment comment = new TestComment(0, postId, "User4", "user4@gmail.com", "This is my new comment on post1", new Timestamp(System.currentTimeMillis()));
		TestComment savedComment = createComment(comment);
		TestPost post2 = getPost(postId);
		List<TestComment> comments = post2.getComments();
//		assertNotNull(comments);
		for (TestComment comm : comments)
		{
			if(savedComment.getId() == comm.getId()){
//				assertEquals("User4", comm.getName());
//				assertEquals("user4@gmail.com", comm.getEmail());
//				assertEquals("This is my new comment on post1", comm.getContent());
			}
		}


		TestPost post3 = getPost(tempid);
//		assertNotNull(post3);
		System.out.println(post3);
		List<TestComment> comments2 = post3.getComments();
		System.out.println(comments2);


		List<TestPost> posts = getAllPosts();
//		assertNotNull(posts);
//		assertTrue(!posts.isEmpty());
		for (TestPost post4 : posts)
		{
			System.out.println(post4);
		}	
		
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
	}
}
