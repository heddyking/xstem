/**
 * 
 */
package com.worksap.stm2016.entities;

import java.sql.Timestamp;

/**
 * @author Siva
 *
 */
public class TestComment
{
	private Integer id;
	private TestPost post;
	private String name;
	private String email;
	private String content;
	private Timestamp createdOn;
	
	public TestComment()
	{
	}
	
	public TestComment(Integer id, Integer postId, String name, String email, String content, Timestamp createdOn)
	{
		super();
		this.id = id;
		this.post = new TestPost(postId);
		this.name = name;
		this.email = email;
		this.content = content;
		this.createdOn = createdOn;
	}

	@Override
	public String toString()
	{
		return "Comment [id=" + id + ", postId=" + post.getId() + ", name=" + name + ", email=" + email + ", content=" + content
		        + ", createdOn=" + createdOn + "]";
	}

	public Integer getId()
	{
		return id;
	}
	public void setId(Integer id)
	{
		this.id = id;
	}
	public TestPost getPost()
	{
		return post;
	}
	public void setPost(TestPost post)
	{
		this.post = post;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	public String getContent()
	{
		return content;
	}
	public void setContent(String content)
	{
		this.content = content;
	}
	public Timestamp getCreatedOn()
	{
		return createdOn;
	}
	public void setCreatedOn(Timestamp createdOn)
	{
		this.createdOn = createdOn;
	}
	
}
