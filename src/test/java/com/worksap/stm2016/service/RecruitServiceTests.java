package com.worksap.stm2016.service;

import static org.junit.Assert.assertTrue;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

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
public class RecruitServiceTests
{

	@Autowired
	private RecruitService recruitService;

	private static final Logger logger = LoggerFactory.getLogger(RecruitServiceTests.class);

	@Test
	public void blank(){
		
	}
	
//	@Test
	public void positionTest(){
		int r1=recruitService.addPosition(4, "Java HA Dev", 3, "shanghai", Date.valueOf("2016-06-25"), 8, 
				"Java", "Distributed System", "Database", "Golang", "Network", "Use Java develop a HA system", 3);
		int r2=recruitService.addPosition(4, "Database Tool Dev", 5, "shanghai", Date.valueOf("2016-06-28"), 6, 
				"Mysql", "SQL", "Database", "OS", "Network", "Develop Database version control Tool", 3);
		int r3=recruitService.addPosition(4, "AI Research", 2, "shanghai", Date.valueOf("2016-06-25"), 12, 
				"LR", "Distributed System", "ML", "Deep Learning", "OCR", "Develop some AI　algorithm", 3);
		List r4= recruitService.getPositionList(4);
		int r5= recruitService.updatePosition(r2, 4, "Database Tool Dev", 7, "shanghai", Date.valueOf("2016-06-28"), 6, 
				"Mysql", "SQL", "Database", "OS", "Algorithm", "Develop Database version control Tool @shanghai", 3);
		int r6=recruitService.deletePosition(r1, 3);
		int r7=recruitService.deletePosition(r2, 3);
		int r8=recruitService.deletePosition(r3, 3);

		assertTrue(r1>0);
		assertTrue(r2>0);
		assertTrue(r3>0);
		assertTrue(!r4.isEmpty());
		assertTrue(r5==1);
		assertTrue(r6==1);
		assertTrue(r7==1);
		assertTrue(r8==1);
		logger.info(r4.toString());
	}

//	@Test
	public void poolTest(){
		int r1=recruitService.addPosition(4, "Java HA Dev", 3, "shanghai", Date.valueOf("2016-06-25"), 8, 
				"Java", "Distributed System", "Database", "Golang", "Network", "Use Java develop a HA system", 3);
		int r2=recruitService.addPosition(4, "Database Tool Dev", 5, "shanghai", Date.valueOf("2016-06-28"), 6, 
				"Mysql", "SQL", "Database", "OS", "Network", "Develop Database version control Tool", 3);
		int r3=recruitService.addPool(r1, 4, 2);
		int r4=recruitService.addPool(r2, 6, 2);
		int r5=recruitService.updatePool(r3, 5, Date.valueOf("2016-06-05"), Date.valueOf("2016-06-20"), 2);
		List r6=recruitService.getHRPoolList();
		int r7=recruitService.updatePool(r4, 6, Date.valueOf("2016-06-06"), Date.valueOf("2016-06-22"), 2);
		List r8=recruitService.getPoolList();
		int r9=recruitService.deletePool(r3, 2);
		int r10=recruitService.deletePool(r4, 2);
		int r11=recruitService.deletePosition(r1, 3);
		int r12=recruitService.deletePosition(r2, 3);

		assertTrue(r1>0);
		assertTrue(r2>0);
		assertTrue(r3>0);
		assertTrue(r4>0);
		assertTrue(r5==1);
		assertTrue(!r6.isEmpty());
		assertTrue(r7==1);
		assertTrue(!r8.isEmpty());
		assertTrue(r9==1);
		assertTrue(r10==1);
		assertTrue(r11==1);
		assertTrue(r12==1);
		logger.info(r6.toString());
		logger.info(r8.toString());
	}

//	@Test
	//--0-self cancelled
	//--1- wait hr check
	//--2- wait mg check
	//--3- wait arrange interview
	//--4- interview
	//--5- pass
	//--6- fail
	public void applyment_interviewTest(){
		int r1=recruitService.addPosition(4, "Java HA Dev", 3, "shanghai", Date.valueOf("2016-06-25"), 8, 
				"Java", "Distributed System", "Database", "Golang", "Network", "Use Java develop a HA system", 3);
		int r2=recruitService.addPosition(4, "Database Tool Dev", 5, "shanghai", Date.valueOf("2016-06-28"), 6, 
				"Mysql", "SQL", "Database", "OS", "Network", "Develop Database version control Tool", 3);
		int r3=recruitService.addPosition(4, "AI Research", 2, "shanghai", Date.valueOf("2016-06-25"), 12, 
				"LR", "Distributed System", "ML", "Deep Learning", "OCR", "Develop some AI　algorithm", 3);
		int r4=recruitService.addApplyment(1, r1);
		int r5=recruitService.addApplyment(2, r1);
		int r6=recruitService.addApplyment(3, r2);
		int r7=recruitService.addApplyment(4, r2);
		int r8=recruitService.addApplyment(5, r3);
		List r9=recruitService.getApplymentListByState(1);
		int r10=recruitService.updateApplyment(r4, 2, 2);
		int r11=recruitService.updateApplyment(r5, 2, 2);
		int r12=recruitService.updateApplyment(r6, 2, 2);
		int r13=recruitService.updateApplyment(r7, 6, 2);
		int r14=recruitService.updateApplyment(r8, 2, 2);
		List r15=recruitService.getApplymentListByState(2);
		int r16=recruitService.updateApplyment(r4, 3, 3);
		int r17=recruitService.updateApplyment(r5, 6, 3);
		int r18=recruitService.updateApplyment(r6, 3, 3);
		int r19=recruitService.updateApplyment(r8, 3, 3);
		List r20=recruitService.getApplymentListByState(3);
		int r21=recruitService.arrangeInterview(r4, Timestamp.valueOf("2016-06-19 10:00:00"), Timestamp.valueOf("2016-06-19 12:00:00"), "shanghai", "Wang Zhizhi", "021-54746868", "cheers", 2);
		int r22=recruitService.arrangeInterview(r6, Timestamp.valueOf("2016-06-19 13:00:00"), Timestamp.valueOf("2016-06-19 15:00:00"), "shanghai", "Wang Zhizhi", "021-54746868", "cheers", 2);
		int r23=recruitService.arrangeInterview(r8, Timestamp.valueOf("2016-06-19 16:00:00"), Timestamp.valueOf("2016-06-19 18:00:00"), "shanghai", "Wang Zhizhi", "021-54746868", "cheers", 2);
		List r24=recruitService.getInterviewList(4);
		int r25=recruitService.updateApplyment(r4, 5, 3);
		int r26=recruitService.updateApplyment(r6, 6, 3);
		int r27=recruitService.updateApplyment(r8, 5, 3);
		Map r28=recruitService.getSelfActiveApplyment(1);
		Map r29=recruitService.getSelfActiveApplyment(5);
		Map r30=recruitService.getSelfLatestApplyment(1);
		Map r31=recruitService.getSelfLatestApplyment(2);
		Map r32=recruitService.getSelfLatestApplyment(5);
		List r33=recruitService.getApplymentHistory((Integer)r30.get("applymentid"));
		List r34=recruitService.getApplymentHistory((Integer)r31.get("applymentid"));
		List r35=recruitService.getApplymentHistory((Integer)r32.get("applymentid"));
		recruitService.deletePosition(r1, 3);
		recruitService.deletePosition(r2, 3);
		recruitService.deletePosition(r3, 3);
		recruitService.updateApplyment(r4, 0, 1);
		recruitService.updateApplyment(r5, 0, 2);
		recruitService.updateApplyment(r6, 0, 3);
		recruitService.updateApplyment(r7, 0, 4);
		recruitService.updateApplyment(r8, 0, 5);
		
		assertTrue(!r9.isEmpty());
		assertTrue(!r15.isEmpty());
		assertTrue(!r20.isEmpty());
		assertTrue(!r24.isEmpty());
		assertTrue(r28!=null);
		assertTrue(r29!=null);
		assertTrue(r30!=null);
		assertTrue(r31!=null);
		assertTrue(r32!=null);
		assertTrue(!r33.isEmpty());
		assertTrue(!r34.isEmpty());
		assertTrue(!r35.isEmpty());
		logger.info(r9.toString());
		logger.info(r15.toString());
		logger.info(r20.toString());
		logger.info(r24.toString());
		logger.info(r28.toString());
		logger.info(r29.toString());
		logger.info(r30.toString());
		logger.info(r31.toString());
		logger.info(r32.toString());
		logger.info(r33.toString());
		logger.info(r34.toString());
		logger.info(r35.toString());
		
	}
}
