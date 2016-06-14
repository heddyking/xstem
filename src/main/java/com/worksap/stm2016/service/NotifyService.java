/**
 * 
 */
package com.worksap.stm2016.service;

import static com.worksap.stm2016.jooq.domain.tables.InfoSte.INFO_STE;
import static com.worksap.stm2016.jooq.domain.tables.NotifyPointer.NOTIFY_POINTER;
import static com.worksap.stm2016.jooq.domain.tables.RecruitApplyment.RECRUIT_APPLYMENT;
import static com.worksap.stm2016.jooq.domain.tables.RecruitPool.RECRUIT_POOL;
import static com.worksap.stm2016.jooq.domain.tables.RecruitPosition.RECRUIT_POSITION;
import static com.worksap.stm2016.jooq.domain.tables.ViCareerEachMonth.VI_CAREER_EACH_MONTH;
import static com.worksap.stm2016.jooq.domain.tables.ViCareerLastMonth.VI_CAREER_LAST_MONTH;
import static com.worksap.stm2016.jooq.domain.tables.ViRecruitApplymentHistory.VI_RECRUIT_APPLYMENT_HISTORY;
import static com.worksap.stm2016.jooq.domain.tables.CheckAttendance.CHECK_ATTENDANCE;
import static com.worksap.stm2016.jooq.domain.tables.CheckPerformance.CHECK_PERFORMANCE;
import static com.worksap.stm2016.jooq.domain.tables.CheckSkill.CHECK_SKILL;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.jooq.DSLContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author Xiaoxi
 *
 */
@Service
@Transactional
public class NotifyService
{
	@Autowired
	private DSLContext dsl;

	public int pendingSelfInfo(int steid){
		try{
			Map<String,Object> map=dsl.selectFrom(INFO_STE)
					.where(INFO_STE.STEID.eq(steid))
					.fetchOne().intoMap();

			if(map.get("name")==null ||
					map.get("gender")==null ||
					map.get("birthday")==null ||
					map.get("email")==null ||
					map.get("telephone")==null ||
					map.get("skills")==null ||
					map.get("resume_url")==null){
				return 1;
			}
			return 0;
		}catch(Exception e){
			return 0;
		}
	}

	public int inquirySelfApplication(int role, int steid){
		return dsl.insertInto(NOTIFY_POINTER)
				.set(NOTIFY_POINTER.ROLE,role)
				.set(NOTIFY_POINTER.REF_ID,steid)
				.set(NOTIFY_POINTER.TYPE,1)
				.set(NOTIFY_POINTER.INQUIRY_TIME,new Timestamp(System.currentTimeMillis()))
				.execute();
	}

	public int pendingSelfApplication(int steid){
		try{
			Timestamp ts=dsl.select(NOTIFY_POINTER.INQUIRY_TIME)
					.from(NOTIFY_POINTER)
					.where(NOTIFY_POINTER.ROLE.eq(10))
					.or(NOTIFY_POINTER.ROLE.eq(11))
					.and(NOTIFY_POINTER.REF_ID.eq(steid))
					.and(NOTIFY_POINTER.TYPE.eq(1))
					.orderBy(NOTIFY_POINTER.INQUIRY_TIME.desc())
					.limit(1)
					.offset(0)
					.fetchOne(0,Timestamp.class);

			Integer applymentid=dsl.select(RECRUIT_APPLYMENT.APPLYMENTID)
					.from(RECRUIT_APPLYMENT)
					.where(RECRUIT_APPLYMENT.STEID.eq(steid))
					.and(RECRUIT_APPLYMENT.STATE.ne(0))  //Not deleted by self
					.orderBy(RECRUIT_APPLYMENT.CREATEDAT.desc())
					.limit(1)
					.offset(0)
					.fetchOne(0,Integer.class);

			if(ts==null){
				return dsl.selectCount()
						.from(VI_RECRUIT_APPLYMENT_HISTORY)
						.where(VI_RECRUIT_APPLYMENT_HISTORY.APPLYMENTID.eq(applymentid))
						.fetchOne(0,int.class);
			}

			return dsl.selectCount()
					.from(VI_RECRUIT_APPLYMENT_HISTORY)
					.where(VI_RECRUIT_APPLYMENT_HISTORY.APPLYMENTID.eq(applymentid))
					.and(VI_RECRUIT_APPLYMENT_HISTORY.UPDATEDAT.gt(ts))
					.fetchOne(0,int.class);
		}catch(Exception e){
			return 0;
		}
	}

	public int inquirySelfSalary(int role, int steid){
		return dsl.insertInto(NOTIFY_POINTER)
				.set(NOTIFY_POINTER.ROLE,role)
				.set(NOTIFY_POINTER.REF_ID,steid)
				.set(NOTIFY_POINTER.TYPE,2)
				.set(NOTIFY_POINTER.INQUIRY_TIME,new Timestamp(System.currentTimeMillis()))
				.execute();
	}

	public int pendingSelfSalary(int steid){
		try{
			Timestamp ts=dsl.select(NOTIFY_POINTER.INQUIRY_TIME)
					.from(NOTIFY_POINTER)
					.where(NOTIFY_POINTER.ROLE.eq(10))
					.or(NOTIFY_POINTER.ROLE.eq(11))
					.and(NOTIFY_POINTER.REF_ID.eq(steid))
					.and(NOTIFY_POINTER.TYPE.eq(2))
					.orderBy(NOTIFY_POINTER.INQUIRY_TIME.desc())
					.limit(1)
					.offset(0)
					.fetchOne(0,Timestamp.class);

			String month=dsl.select(VI_CAREER_EACH_MONTH.MONTH)
					.from(VI_CAREER_EACH_MONTH)
					.where(VI_CAREER_EACH_MONTH.STEID.eq(steid))
					.orderBy(VI_CAREER_EACH_MONTH.MONTH.desc())
					.limit(1)
					.offset(0)
					.fetchOne(0,String.class);

			if(month==null || month.isEmpty()) return 0;
			if(ts==null) return 1;
			Timestamp updatedat=Timestamp.valueOf(month+"-01 00:00:00");
			updatedat.setMonth(updatedat.getMonth()+1);
			if(updatedat.after(ts)) return 1;
			return 0;
		}catch(Exception e){
			return 0;
		}
	}

	public int inquiryHRSalary(int role, int fteid){
		return dsl.insertInto(NOTIFY_POINTER)
				.set(NOTIFY_POINTER.ROLE,role)
				.set(NOTIFY_POINTER.REF_ID,fteid)
				.set(NOTIFY_POINTER.TYPE,3)
				.set(NOTIFY_POINTER.INQUIRY_TIME,new Timestamp(System.currentTimeMillis()))
				.execute();
	}

	public int pendingHRSalary(int fteid){
		try{
			Timestamp ts=dsl.select(NOTIFY_POINTER.INQUIRY_TIME)
					.from(NOTIFY_POINTER)
					.where(NOTIFY_POINTER.ROLE.eq(1))
					.or(NOTIFY_POINTER.ROLE.eq(2))
					.and(NOTIFY_POINTER.REF_ID.eq(fteid))
					.and(NOTIFY_POINTER.TYPE.eq(3))
					.orderBy(NOTIFY_POINTER.INQUIRY_TIME.desc())
					.limit(1)
					.offset(0)
					.fetchOne(0,Timestamp.class);

			String month=dsl.select(VI_CAREER_LAST_MONTH.MONTH)
					.from(VI_CAREER_LAST_MONTH)
					.orderBy(VI_CAREER_LAST_MONTH.STEID.asc())
					.limit(1)
					.offset(0)
					.fetchOne(0,String.class);

			if(month==null || month.isEmpty()) return 0;
			if(ts==null) return 1;
			Timestamp updatedat=Timestamp.valueOf(month+"-01 00:00:00");
			updatedat.setMonth(updatedat.getMonth()+1);
			if(updatedat.after(ts)) return 1;
			return 0;
		}catch(Exception e){
			return 0;
		}
	}

	public int pendingHRPublish(){
		try{
			List<Map<String,Object>> list=dsl.select(RECRUIT_POSITION.NUMBER,RECRUIT_POOL.REALNUMBER)
					.from(RECRUIT_POSITION)
					.leftJoin(RECRUIT_POOL)
					.on(RECRUIT_POSITION.POSITIONID.eq(RECRUIT_POOL.POSITIONID))
					.fetchMaps();
			int r=0;
			for(Map<String,Object> map: list){
				Integer n=(Integer)map.get("number");
				Integer m=(Integer)map.get("realnumber");
				if(m==null || m<n){
					++r;
				}
			}
			return r;
		}catch(Exception e){
			return 0;
		}
	}

	public int pendingHRFilter(){
		try{
			return (Integer)dsl.selectCount()
					.from(RECRUIT_APPLYMENT)
					.where(RECRUIT_APPLYMENT.STATE.eq(1))
					.fetchOne(0, int.class);
		}catch(Exception e){
			return 0;
		}
	}


	public int pendingHRArrange(){
		try{
			return (Integer)dsl.selectCount()
					.from(RECRUIT_APPLYMENT)
					.where(RECRUIT_APPLYMENT.STATE.eq(3))
					.fetchOne(0, int.class);
		}catch(Exception e){
			return 0;
		}
	}

	public int pendingHROfferStage(){
		try{
			return (Integer)dsl.selectCount()
					.from(RECRUIT_APPLYMENT)
					.where(RECRUIT_APPLYMENT.STATE.eq(5))
					.or(RECRUIT_APPLYMENT.STATE.eq(10))
					.or(RECRUIT_APPLYMENT.STATE.eq(11))
					.fetchOne(0, int.class);
		}catch(Exception e){
			return 0;
		}
	}

	public int pendingMGFilter(int departmentid){
		try{
			return (Integer)dsl.selectCount()
					.from(RECRUIT_APPLYMENT)
					.join(RECRUIT_POSITION)
					.on(RECRUIT_POSITION.POSITIONID.eq(RECRUIT_APPLYMENT.POSITIONID))
					.where(RECRUIT_APPLYMENT.STATE.eq(2))
					.and(RECRUIT_POSITION.DEPARTMENTID.eq(departmentid))
					.fetchOne(0, int.class);
		}catch(Exception e){
			return 0;
		}
	}

	public int pendingMGInterview(int departmentid){
		try{
			return (Integer)dsl.selectCount()
					.from(RECRUIT_APPLYMENT)
					.join(RECRUIT_POSITION)
					.on(RECRUIT_POSITION.POSITIONID.eq(RECRUIT_APPLYMENT.POSITIONID))
					.where(RECRUIT_APPLYMENT.STATE.eq(4))
					.and(RECRUIT_POSITION.DEPARTMENTID.eq(departmentid))
					.fetchOne(0, int.class);
		}catch(Exception e){
			return 0;
		}
	}

	public int pendingMGAttendance(int departmentid){
		try{
			return (Integer)dsl.selectCount()
					.from(CHECK_ATTENDANCE)
					.join(INFO_STE)
					.on(CHECK_ATTENDANCE.STEID.eq(INFO_STE.STEID))
					.where(CHECK_ATTENDANCE.STATE.eq(1))
					.and(INFO_STE.DEPARTMENTID.eq(departmentid))
					.fetchOne(0, int.class);
		}catch(Exception e){
			return 0;
		}
	}

	public int pendingMGPerformance(int departmentid){
		try{
			return (Integer)dsl.selectCount()
					.from(CHECK_PERFORMANCE)
					.join(INFO_STE)
					.on(CHECK_PERFORMANCE.STEID.eq(INFO_STE.STEID))
					.where(CHECK_PERFORMANCE.STATE.eq(1))
					.and(INFO_STE.DEPARTMENTID.eq(departmentid))
					.fetchOne(0, int.class);
		}catch(Exception e){
			return 0;
		}
	}

	public int pendingMGSkill(int departmentid){
		try{
			return (Integer)dsl.selectCount()
					.from(CHECK_SKILL)
					.join(INFO_STE)
					.on(CHECK_SKILL.STEID.eq(INFO_STE.STEID))
					.where(CHECK_SKILL.STATE.eq(1))
					.and(INFO_STE.DEPARTMENTID.eq(departmentid))
					.fetchOne(0, int.class);
		}catch(Exception e){
			return 0;
		}
	}
}
