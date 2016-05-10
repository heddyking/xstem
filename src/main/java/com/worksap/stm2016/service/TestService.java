/**
 * 
 */
package com.worksap.stm2016.service;

import static com.worksap.stm2016.jooq.domain.tables.TestPosts.TEST_POSTS;
import static com.worksap.stm2016.jooq.domain.tables.TestComments.TEST_COMMENTS;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.jooq.DSLContext;
import org.jooq.Record;
import org.jooq.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.worksap.stm2016.jooq.domain.tables.records.TestCommentsRecord;
import com.worksap.stm2016.jooq.domain.tables.records.TestPostsRecord;
import com.worksap.stm2016.entities.TestComment;
import com.worksap.stm2016.entities.TestPost;

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
		Result<Record> result = dsl.select().from(TEST_POSTS).fetch();
		for (Record r : result) {
		    posts.add(getPostEntity(r));
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
}
