package com.worksap.stm2016.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.worksap.stm2016.Application;
import com.worksap.stm2016.service.AccountService;

/**
 * @author xiaoxi
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(Application.class)
public class StaffingControllerTests
{

	@Autowired
	private StaffingController staffingController;
	
	private static final Logger logger = LoggerFactory.getLogger(StaffingControllerTests.class);

	@Test
	public void blank(){
		
	}
	
}
