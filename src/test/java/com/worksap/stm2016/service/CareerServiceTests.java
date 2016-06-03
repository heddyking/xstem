package com.worksap.stm2016.service;

import static org.junit.Assert.*;
import java.sql.Date;
import java.util.List;

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
public class CareerServiceTests
{

	@Autowired
	private CareerService careerService;
	
	private static final Logger logger = LoggerFactory.getLogger(CareerServiceTests.class);
	
	@Test
	public void attendanceTest(){
		int r1=careerService.addAttendance(6, Date.valueOf("2016-05-29"), 8);
		int r2=careerService.addAttendance(6, Date.valueOf("2016-05-30"), 8);
		int r3=careerService.addAttendance(6, Date.valueOf("2016-05-31"), 8);
		List r4=careerService.getAttendanceListByDepartment(4);
		int r5=careerService.updateAttendance(r2, 6, Date.valueOf("2016-05-30"), 4);
		int r6=careerService.updateAttendance(r3, 6, Date.valueOf("2016-05-31"), 10);
		int r7=careerService.approveAttendance(r1, 3);
		int r8=careerService.rejectAttendance(r2, 3);
		int r9=careerService.deleteAttendance(r3, 6);
		List r10=careerService.getAttendanceListBySteid(6);
		
		
		assertTrue(r1>0);
		assertTrue(r2>0);
		assertTrue(r3>0);
		assertTrue(!r4.isEmpty());
		assertTrue(r5==1);
		assertTrue(r6==1);
		assertTrue(r7==1);
		assertTrue(r8==1);
		assertTrue(r9==1);
		assertTrue(!r10.isEmpty());
		logger.info(r4.toString());
		logger.info(r10.toString());
		
		careerService.deleteAttendance(r1, 6);
		careerService.deleteAttendance(r2, 6);
		careerService.deleteAttendance(r3, 6);
	}
	
	@Test
	public void performanceTest(){
		int r1=careerService.addPerformance(6, Date.valueOf("2016-05-17"), 2, "help to deploy environment");
		int r2=careerService.addPerformance(6, Date.valueOf("2016-05-24"), 6, "back-end optmization");
		int r3=careerService.addPerformance(6, Date.valueOf("2016-06-01"), 4, "regression test");
		List r4=careerService.getPerformanceListByDepartment(4);
		int r5=careerService.updatePerformance(r1, 6, Date.valueOf("2016-05-17"), 4, "help to deploy environment @shanghai" );
		int r6=careerService.updatePerformance(r3, 6, Date.valueOf("2016-05-24"), 10,"back-end optmization @usa");
		int r7=careerService.approvePerformance(r1, 3);
		int r8=careerService.rejectPerformance(r2, 3);
		int r9=careerService.deletePerformance(r3, 6);
		List r10=careerService.getPerformanceListBySteid(6);
		
		
		assertTrue(r1>0);
		assertTrue(r2>0);
		assertTrue(r3>0);
		assertTrue(!r4.isEmpty());
		assertTrue(r5==1);
		assertTrue(r6==1);
		assertTrue(r7==1);
		assertTrue(r8==1);
		assertTrue(r9==1);
		assertTrue(!r10.isEmpty());
		logger.info(r4.toString());
		logger.info(r10.toString());
		
		careerService.deletePerformance(r1, 6);
		careerService.deletePerformance(r2, 6);
		careerService.deletePerformance(r3, 6);
	}
	
	@Test
	public void skillTest(){
		int r1=careerService.addSkill(6, "JOOQ", "OR mapping, used it for 4 years");
		int r2=careerService.addSkill(6, "JUnit", "unit test, used it for 3 years");
		int r3=careerService.addSkill(6, "Flyway", "db migration, used it for 1 years");
		List r4=careerService.getSkillListByDepartment(4);
		int r5=careerService.updateSkill(r1, 6, "JOOQ", "OR mapping, used it for 2 years");
		int r6=careerService.updateSkill(r3, 6, "Flyway", "db migration, used it for 2 years");
		int r7=careerService.approveSkill(r1, 8, 3);
		int r8=careerService.rejectSkill(r2, 3);
		int r9=careerService.deleteSkill(r3, 6);
		List r10=careerService.getSkillListBySteid(6);
		
		
		assertTrue(r1>0);
		assertTrue(r2>0);
		assertTrue(r3>0);
		assertTrue(!r4.isEmpty());
		assertTrue(r5==1);
		assertTrue(r6==1);
		assertTrue(r7==1);
		assertTrue(r8==1);
		assertTrue(r9==1);
		assertTrue(!r10.isEmpty());
		logger.info(r4.toString());
		logger.info(r10.toString());
		
		careerService.deletePerformance(r1, 6);
		careerService.deletePerformance(r2, 6);
		careerService.deletePerformance(r3, 6);
	}

}
