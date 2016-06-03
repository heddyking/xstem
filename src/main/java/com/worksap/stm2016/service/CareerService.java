/**
 * 
 */
package com.worksap.stm2016.service;

import static com.worksap.stm2016.jooq.domain.tables.CheckAttendance.CHECK_ATTENDANCE;
import static com.worksap.stm2016.jooq.domain.tables.CheckPerformance.CHECK_PERFORMANCE;
import static com.worksap.stm2016.jooq.domain.tables.CheckSkill.CHECK_SKILL;
import static com.worksap.stm2016.jooq.domain.tables.InfoSte.INFO_STE;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.jooq.DSLContext;
import org.jooq.impl.DSL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author Xiaoxi
 *
 */
@Service
@Transactional
public class CareerService
{
	@Autowired
	private DSLContext dsl;
	
	public int addAttendance(Integer steid,Date date, Integer hours){
		Timestamp createdAt=new Timestamp(System.currentTimeMillis());
		Timestamp updatedAt=createdAt;
		return dsl.insertInto(CHECK_ATTENDANCE)
					.set(CHECK_ATTENDANCE.STEID,steid)
					.set(CHECK_ATTENDANCE.DATE,date)
					.set(CHECK_ATTENDANCE.HOURS,hours)
					.set(CHECK_ATTENDANCE.STATE,1)
					.set(CHECK_ATTENDANCE.UPDATEDBY,steid)
					.set(CHECK_ATTENDANCE.CREATEDAT,createdAt)
					.set(CHECK_ATTENDANCE.UPDATEDAT,updatedAt)
					.returning(CHECK_ATTENDANCE.ATTENDANCEID)
					.fetchOne()
					.getValue(CHECK_ATTENDANCE.ATTENDANCEID);
	}
	
	public int updateAttendance(Integer attendanceid,Integer steid,Date date, Integer hours){
		return dsl.update(CHECK_ATTENDANCE)
			.set(CHECK_ATTENDANCE.DATE,date)
			.set(CHECK_ATTENDANCE.HOURS,hours)
			.set(CHECK_ATTENDANCE.STATE,1)
			.set(CHECK_ATTENDANCE.UPDATEDBY,steid)
			.where(CHECK_ATTENDANCE.ATTENDANCEID.eq(attendanceid))
			.execute();
	}
	
	public int approveAttendance(Integer attendanceid,Integer fteid){
		return dsl.update(CHECK_ATTENDANCE)
				.set(CHECK_ATTENDANCE.STATE,2)
				.set(CHECK_ATTENDANCE.UPDATEDBY,fteid)
				.set(CHECK_ATTENDANCE.UPDATEDAT,new Timestamp(System.currentTimeMillis()))
				.where(CHECK_ATTENDANCE.ATTENDANCEID.eq(attendanceid))
				.execute();	
	}
	
	public int rejectAttendance(Integer attendanceid,Integer fteid){
		return dsl.update(CHECK_ATTENDANCE)
				.set(CHECK_ATTENDANCE.STATE,3)
				.set(CHECK_ATTENDANCE.UPDATEDBY,fteid)
				.set(CHECK_ATTENDANCE.UPDATEDAT,new Timestamp(System.currentTimeMillis()))
				.where(CHECK_ATTENDANCE.ATTENDANCEID.eq(attendanceid))
				.execute();	
	}
	
	public int deleteAttendance(Integer attendanceid,Integer steid){
		return dsl.update(CHECK_ATTENDANCE)
				.set(CHECK_ATTENDANCE.STATE,0)
				.set(CHECK_ATTENDANCE.UPDATEDBY,steid)
				.set(CHECK_ATTENDANCE.UPDATEDAT,new Timestamp(System.currentTimeMillis()))
				.where(CHECK_ATTENDANCE.ATTENDANCEID.eq(attendanceid))
				.execute();	
	}
	
	public List<Map<String,Object>> getAttendanceListBySteid(Integer steid){
		return dsl.select(CHECK_ATTENDANCE.fields())
			.select(INFO_STE.NAME,INFO_STE.GENDER,INFO_STE.BIRTHDAY,INFO_STE.EMAIL,
					INFO_STE.EMAIL_SELF,INFO_STE.PHONE,INFO_STE.TELEPHONE,INFO_STE.DEPARTMENTID)
			.from(CHECK_ATTENDANCE)
			.join(INFO_STE)
			.on(CHECK_ATTENDANCE.STEID.eq(INFO_STE.STEID))
			.where(CHECK_ATTENDANCE.STEID.eq(steid))
			.and(CHECK_ATTENDANCE.STATE.ne(0))
			.fetchMaps();
	}
	
	public List<Map<String,Object>> getAttendanceListByDepartment(Integer departmentid){
		return dsl.select(CHECK_ATTENDANCE.fields())
			.select(INFO_STE.NAME,INFO_STE.GENDER,INFO_STE.BIRTHDAY,INFO_STE.EMAIL,
					INFO_STE.EMAIL_SELF,INFO_STE.PHONE,INFO_STE.TELEPHONE,INFO_STE.DEPARTMENTID)
			.from(CHECK_ATTENDANCE)
			.join(INFO_STE)
			.on(CHECK_ATTENDANCE.STEID.eq(INFO_STE.STEID))
			.where(INFO_STE.DEPARTMENTID.eq(departmentid))
			.and(CHECK_ATTENDANCE.STATE.eq(1))
			.fetchMaps();
	}
	
	public int addPerformance(Integer steid,Date date, Integer hours, String description){
		Timestamp createdAt=new Timestamp(System.currentTimeMillis());
		Timestamp updatedAt=createdAt;
		return dsl.insertInto(CHECK_PERFORMANCE)
					.set(CHECK_PERFORMANCE.STEID,steid)
					.set(CHECK_PERFORMANCE.WEEK_LASTDAY,date)
					.set(CHECK_PERFORMANCE.HOURS,hours)
					.set(CHECK_PERFORMANCE.DESCRIPTION,description)
					.set(CHECK_PERFORMANCE.STATE,1)
					.set(CHECK_PERFORMANCE.UPDATEDBY,steid)
					.set(CHECK_PERFORMANCE.CREATEDAT,createdAt)
					.set(CHECK_PERFORMANCE.UPDATEDAT,updatedAt)
					.returning(CHECK_PERFORMANCE.PERFORMANCEID)
					.fetchOne()
					.getValue(CHECK_PERFORMANCE.PERFORMANCEID);
	}
	
	public int updatePerformance(Integer performanceid,Integer steid,Date date, Integer hours,String description){
		return dsl.update(CHECK_PERFORMANCE)
			.set(CHECK_PERFORMANCE.WEEK_LASTDAY,date)
			.set(CHECK_PERFORMANCE.HOURS,hours)
			.set(CHECK_PERFORMANCE.DESCRIPTION,description)
			.set(CHECK_PERFORMANCE.STATE,1)
			.set(CHECK_PERFORMANCE.UPDATEDBY,steid)
			.where(CHECK_PERFORMANCE.PERFORMANCEID.eq(performanceid))
			.execute();
	}
	
	public int approvePerformance(Integer performanceid,Integer fteid){
		return dsl.update(CHECK_PERFORMANCE)
				.set(CHECK_PERFORMANCE.STATE,2)
				.set(CHECK_PERFORMANCE.UPDATEDBY,fteid)
				.set(CHECK_PERFORMANCE.UPDATEDAT,new Timestamp(System.currentTimeMillis()))
				.where(CHECK_PERFORMANCE.PERFORMANCEID.eq(performanceid))
				.execute();	
	}
	
	public int rejectPerformance(Integer performanceid,Integer fteid){
		return dsl.update(CHECK_PERFORMANCE)
				.set(CHECK_PERFORMANCE.STATE,3)
				.set(CHECK_PERFORMANCE.UPDATEDBY,fteid)
				.set(CHECK_PERFORMANCE.UPDATEDAT,new Timestamp(System.currentTimeMillis()))
				.where(CHECK_PERFORMANCE.PERFORMANCEID.eq(performanceid))
				.execute();	
	}
	
	public int deletePerformance(Integer performanceid,Integer steid){
		return dsl.update(CHECK_PERFORMANCE)
				.set(CHECK_PERFORMANCE.STATE,0)
				.set(CHECK_PERFORMANCE.UPDATEDBY,steid)
				.set(CHECK_PERFORMANCE.UPDATEDAT,new Timestamp(System.currentTimeMillis()))
				.where(CHECK_PERFORMANCE.PERFORMANCEID.eq(performanceid))
				.execute();	
	}
	
	public List<Map<String,Object>> getPerformanceListBySteid(Integer steid){
		return dsl.select(CHECK_PERFORMANCE.fields())
			.select(INFO_STE.NAME,INFO_STE.GENDER,INFO_STE.BIRTHDAY,INFO_STE.EMAIL,
					INFO_STE.EMAIL_SELF,INFO_STE.PHONE,INFO_STE.TELEPHONE,INFO_STE.DEPARTMENTID)
			.from(CHECK_PERFORMANCE)
			.join(INFO_STE)
			.on(CHECK_PERFORMANCE.STEID.eq(INFO_STE.STEID))
			.where(CHECK_PERFORMANCE.STEID.eq(steid))
			.fetchMaps();
	}
	
	public List<Map<String,Object>> getPerformanceListByDepartment(Integer departmentid){
		return dsl.select(CHECK_PERFORMANCE.fields())
			.select(INFO_STE.NAME,INFO_STE.GENDER,INFO_STE.BIRTHDAY,INFO_STE.EMAIL,
					INFO_STE.EMAIL_SELF,INFO_STE.PHONE,INFO_STE.TELEPHONE,INFO_STE.DEPARTMENTID)
			.from(CHECK_PERFORMANCE)
			.join(INFO_STE)
			.on(CHECK_PERFORMANCE.STEID.eq(INFO_STE.STEID))
			.where(INFO_STE.DEPARTMENTID.eq(departmentid))
			.fetchMaps();
	}
	
	public int addSkill(Integer steid,String skill, String description){
		Timestamp createdAt=new Timestamp(System.currentTimeMillis());
		Timestamp updatedAt=createdAt;
		return dsl.insertInto(CHECK_SKILL)
					.set(CHECK_SKILL.STEID,steid)
					.set(CHECK_SKILL.SKILL,skill)
					.set(CHECK_SKILL.DESCRIPTION,description)
					.set(CHECK_SKILL.STATE,1)
					.set(CHECK_SKILL.UPDATEDBY,steid)
					.set(CHECK_SKILL.CREATEDAT,createdAt)
					.set(CHECK_SKILL.UPDATEDAT,updatedAt)
					.returning(CHECK_SKILL.SKILLID)
					.fetchOne()
					.getValue(CHECK_SKILL.SKILLID);
	}
	
	public int updateSkill(Integer skillid,Integer steid,String skill, String description){
		return dsl.update(CHECK_SKILL)
				.set(CHECK_SKILL.SKILL,skill)
				.set(CHECK_SKILL.DESCRIPTION,description)
				.set(CHECK_SKILL.SCORE,DSL.value(null,Integer.class))
				.set(CHECK_SKILL.STATE,1)
				.set(CHECK_SKILL.UPDATEDBY,steid)
				.where(CHECK_SKILL.SKILLID.eq(skillid))
				.execute();
	}
	
	public int approveSkill(Integer skillid,Integer score,Integer fteid){
		return dsl.update(CHECK_SKILL)
				.set(CHECK_SKILL.STATE,2)
				.set(CHECK_SKILL.UPDATEDBY,fteid)
				.set(CHECK_SKILL.SCORE,score)
				.set(CHECK_SKILL.UPDATEDAT,new Timestamp(System.currentTimeMillis()))
				.where(CHECK_SKILL.SKILLID.eq(skillid))
				.execute();	
	}
	
	public int rejectSkill(Integer skillid,Integer fteid){
		return dsl.update(CHECK_SKILL)
				.set(CHECK_SKILL.STATE,3)
				.set(CHECK_SKILL.UPDATEDBY,fteid)
				.set(CHECK_SKILL.UPDATEDAT,new Timestamp(System.currentTimeMillis()))
				.where(CHECK_SKILL.SKILLID.eq(skillid))
				.execute();	
	}
	
	public int deleteSkill(Integer skillid,Integer steid){
		return dsl.update(CHECK_SKILL)
				.set(CHECK_SKILL.STATE,0)
				.set(CHECK_SKILL.UPDATEDBY,steid)
				.set(CHECK_SKILL.UPDATEDAT,new Timestamp(System.currentTimeMillis()))
				.where(CHECK_SKILL.SKILLID.eq(skillid))
				.execute();	
	}
	
	public List<Map<String,Object>> getSkillListBySteid(Integer steid){
		return dsl.select(CHECK_SKILL.fields())
			.select(INFO_STE.NAME,INFO_STE.GENDER,INFO_STE.BIRTHDAY,INFO_STE.EMAIL,
					INFO_STE.EMAIL_SELF,INFO_STE.PHONE,INFO_STE.TELEPHONE,INFO_STE.DEPARTMENTID)
			.from(CHECK_SKILL)
			.join(INFO_STE)
			.on(CHECK_SKILL.STEID.eq(INFO_STE.STEID))
			.where(CHECK_SKILL.STEID.eq(steid))
			.fetchMaps();
	}
	
	public List<Map<String,Object>> getSkillListByDepartment(Integer departmentid){
		return dsl.select(CHECK_SKILL.fields())
			.select(INFO_STE.NAME,INFO_STE.GENDER,INFO_STE.BIRTHDAY,INFO_STE.EMAIL,
					INFO_STE.EMAIL_SELF,INFO_STE.PHONE,INFO_STE.TELEPHONE,INFO_STE.DEPARTMENTID)
			.from(CHECK_SKILL)
			.join(INFO_STE)
			.on(CHECK_SKILL.STEID.eq(INFO_STE.STEID))
			.where(INFO_STE.DEPARTMENTID.eq(departmentid))
			.fetchMaps();
	}
}
