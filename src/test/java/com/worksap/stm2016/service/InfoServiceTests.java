package com.worksap.stm2016.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.sql.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.worksap.stm2016.Application;


/**
 * @author xiaoxi
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(Application.class)
public class InfoServiceTests
{

	@Autowired
	private InfoService infoService;
	
	private static final Logger logger = LoggerFactory.getLogger(InfoServiceTests.class);
	
	@Test
	public void getPersonalInfo(){
		Map r1=infoService.getPersonalInfo(1);
		Map r2=infoService.getPersonalInfo(6);
		
		assertNotNull(r1);
		assertNotNull(r2);
		logger.info(r1.toString());
		logger.info(r2.toString());
	}
	
	@Test
	public void getInfoList(){
		List r1=infoService.getInfoList(null);
		List r2=infoService.getInfoList(4);
		
		assertTrue(r1.size()>0);
		assertTrue(r2.size()>0);
		logger.info(r1.toString());
		logger.info(r2.toString());
	}
	
	@Test
	public void updatePersonalInfo(){
		int r1= infoService.updatePersonalInfo(1,"Wang Yi", false, Date.valueOf("1990-02-02"), "shanghai", "w1@qq.com", "w1@qq.com", 
				"0215737"+(new Random().nextInt(9000)+1000), "15216688611", "google", "java,algorithm,mysql,hadoop,spring", null);
		int r2= infoService.updatePersonalInfo(6,"Zhang Yi", true, Date.valueOf("1989-03-11"), "shanghai", "z1@qq.com", "z1@qq.com", 
				"0215737"+(new Random().nextInt(9000)+1000), "15216688668", "intel", "java,linux,mysql,spring,ml", null);
		
		assertEquals(r1,1);
		assertEquals(r2,1);
	}
	
	@Test 
	public void updateOnboardInfo(){
		int r1=infoService.updateOnboardInfo(6,"z1@qq.com", "0215737"+(new Random().nextInt(9000)+1000), "http://dwz.cn/3vqEeh", "http://dwz.cn/3vqEeh");
		
		assertEquals(r1,1);
	}
}
