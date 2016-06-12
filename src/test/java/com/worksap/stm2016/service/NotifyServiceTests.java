/**
 * 
 */
package com.worksap.stm2016.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.worksap.stm2016.Application;

/**
 * @author Xiaoxi
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(Application.class)
public class NotifyServiceTests
{
	@Autowired
	private NotifyService notifyService;
	
	private static final Logger logger = LoggerFactory.getLogger(NotifyServiceTests.class);
	
	@Test
	public void blank(){
		
	}
	
	
	//@Test
	public void pendingSelfInfo(){
		logger.info("pendingSelfInfo: "+notifyService.pendingSelfInfo(1));
	}

	//@Test
	public void inquirySelfApplication(){
		notifyService.inquirySelfApplication(10, 1);
	}

	//@Test
	public void pendingSelfApplication(){
		logger.info("pendingSelfApplication: "+notifyService.pendingSelfApplication(1));
	}

	//@Test
	public void inquirySelfSalary(){
		notifyService.inquirySelfSalary(11, 6);
	}

	//@Test
	public void pendingSelfSalary(){
		logger.info("pendingSelfSalary: "+notifyService.pendingSelfSalary(6));
	}

	//@Test
	public void inquiryHRSalary(){
		notifyService.inquiryHRSalary(2, 2);
	}

	//@Test
	public void pendingHRSalary(){
		logger.info("pendingHRSalary: "+notifyService.pendingHRSalary(2));
	}

	//@Test
	public void pendingHRPublish(){
		logger.info("pendingHRPublish: "+notifyService.pendingHRPublish());
	}

	//@Test
	public void pendingHRFilter(){
		logger.info("pendingHRFilter: "+notifyService.pendingHRFilter());
	}

	//@Test
	public void pendingHRArrange(){
		logger.info("pendingHRArrange: "+notifyService.pendingHRArrange());
	}

	//@Test
	public void pendingHROfferStage(){
		logger.info("pendingHROfferStage: "+notifyService.pendingHROfferStage());
	}

	//@Test
	public void pendingMGFilter(){
		logger.info("pendingMGFilter: "+notifyService.pendingMGFilter(5));
	}

	//@Test
	public void pendingMGInterview(){
		logger.info("pendingMGInterview: "+notifyService.pendingMGInterview(5));
	}
}
