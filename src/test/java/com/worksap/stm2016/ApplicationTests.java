package com.worksap.stm2016;

import static org.junit.Assert.assertNotNull;

import java.sql.Date;
import java.sql.Timestamp;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.worksap.stm2016.global.Role;


/**
 * @author xiaoxi
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(Application.class)
public class ApplicationTests
{

	@Autowired
	private Application application;
	
	@Test
	public void blank(){
		
	}
	
//	@Test
	public void check()  {
		assertNotNull(application);
	}
	
//	@Test
	public void test(){
		Date date=Date.valueOf("1993-02-02");
		System.out.println(date.toString());
		Date created=new Date(System.currentTimeMillis());
		System.out.println(created.toString());
		Timestamp ts=Timestamp.valueOf("2016-06-02 16:08:00");
		System.out.println(ts.toLocaleString());
		System.out.println(Role.ADMIN.toString());
	}
}
