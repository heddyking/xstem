package com.worksap.stm2016.util;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.worksap.stm2016.Application;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(Application.class)
public class StringUtilTests {
	private static final Logger logger = LoggerFactory.getLogger(StringUtilTests.class);

	@Test
	public void blank(){
		
	}
	
//	@Test
	public void regular(){
		logger.info(StringUtil.regular("QEA123 DfJ67++ \n\f	XxXx"));
	}
}
