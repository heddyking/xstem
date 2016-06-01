/**
 * 
 */
package com.worksap.stm2016.service;

import static com.worksap.stm2016.jooq.domain.tables.InfoDepartment.INFO_DEPARTMENT;
import static com.worksap.stm2016.jooq.domain.tables.InfoFte.INFO_FTE;
import static com.worksap.stm2016.jooq.domain.tables.RecruitAgency.RECRUIT_AGENCY;
import static com.worksap.stm2016.jooq.domain.tables.RecruitApplyment.RECRUIT_APPLYMENT;
import static com.worksap.stm2016.jooq.domain.tables.RecruitApplymentLog.RECRUIT_APPLYMENT_LOG;
import static com.worksap.stm2016.jooq.domain.tables.RecruitPool.RECRUIT_POOL;
import static com.worksap.stm2016.jooq.domain.tables.RecruitPosition.RECRUIT_POSITION;
import static com.worksap.stm2016.jooq.domain.tables.RecruitPublished.RECRUIT_PUBLISHED;
import static com.worksap.stm2016.jooq.domain.tables.ViRecruitApplymentHistory.VI_RECRUIT_APPLYMENT_HISTORY;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.jooq.DSLContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.worksap.stm2016.jooq.domain.tables.RecruitApplymentLog;

/**
 * @author Xiaoxi
 *
 */
@Service
@Transactional
public class RecruitService
{
	@Autowired
	private DSLContext dsl;
	
	public int addPosition(Integer departmentid,String positionname,Integer number,
			String location_req, Date date_req,Integer duration_req,String skill_req1,
			String skill_req2,String skill_req3,String skill_req4,String skill_req5,String description,Integer fteid){
		Timestamp createdAt=new Timestamp(System.currentTimeMillis());
		Timestamp updatedAt=createdAt;
		return dsl.insertInto(RECRUIT_POSITION)
			.set(RECRUIT_POSITION.DEPARTMENTID,departmentid)
			.set(RECRUIT_POSITION.POSITIONNAME,positionname)
			.set(RECRUIT_POSITION.NUMBER,number)
			.set(RECRUIT_POSITION.LOCATION_REQ,location_req)
			.set(RECRUIT_POSITION.DATE_REQ,date_req)
			.set(RECRUIT_POSITION.DURATION_REQ,duration_req)
			.set(RECRUIT_POSITION.SKILL_REQ1,skill_req1)
			.set(RECRUIT_POSITION.SKILL_REQ2,skill_req2)
			.set(RECRUIT_POSITION.SKILL_REQ3,skill_req3)
			.set(RECRUIT_POSITION.SKILL_REQ4,skill_req4)
			.set(RECRUIT_POSITION.SKILL_REQ5,skill_req5)
			.set(RECRUIT_POSITION.DESCRIPTION,description)
			.set(RECRUIT_POSITION.CREATEDBY,fteid)
			.set(RECRUIT_POSITION.UPDATEDBY,fteid)
			.set(RECRUIT_POSITION.CREATEDAT,createdAt)
			.set(RECRUIT_POSITION.UPDATEDAT,updatedAt)
			.returning(RECRUIT_POSITION.POSITIONID)
			.fetchOne()
			.getValue(RECRUIT_POSITION.POSITIONID);
	}
	
	public int updatePosition(Integer positionid,Integer departmentid,String positionname,
			Integer number,String location_req, Date date_req,Integer duration_req,String skill_req1,
			String skill_req2,String skill_req3,String skill_req4,String skill_req5,String description,Integer fteid){
		return dsl.update(RECRUIT_POSITION)
			.set(RECRUIT_POSITION.DEPARTMENTID,departmentid)
			.set(RECRUIT_POSITION.POSITIONNAME,positionname)
			.set(RECRUIT_POSITION.NUMBER,number)
			.set(RECRUIT_POSITION.LOCATION_REQ,location_req)
			.set(RECRUIT_POSITION.DATE_REQ,date_req)
			.set(RECRUIT_POSITION.DURATION_REQ,duration_req)
			.set(RECRUIT_POSITION.SKILL_REQ1,skill_req1)
			.set(RECRUIT_POSITION.SKILL_REQ2,skill_req2)
			.set(RECRUIT_POSITION.SKILL_REQ3,skill_req3)
			.set(RECRUIT_POSITION.SKILL_REQ4,skill_req4)
			.set(RECRUIT_POSITION.SKILL_REQ5,skill_req5)
			.set(RECRUIT_POSITION.DESCRIPTION,description)
			.set(RECRUIT_POSITION.UPDATEDAT,new Timestamp(System.currentTimeMillis()))
			.set(RECRUIT_POSITION.UPDATEDBY,fteid)
			.where(RECRUIT_POSITION.POSITIONID.eq(positionid))
			.execute();
	}
	
	public int deletePosition(Integer positionid,Integer fteid){
		return dsl.update(RECRUIT_POSITION)
			.set(RECRUIT_POSITION.ISVALID,false)
			.set(RECRUIT_POSITION.UPDATEDAT,new Timestamp(System.currentTimeMillis()))
			.set(RECRUIT_POSITION.UPDATEDBY,fteid)
			.where(RECRUIT_POSITION.POSITIONID.eq(positionid))
			.execute();
	}
	
	public List<Map<String,Object>> getPositionList(Integer departmentid){
		if(departmentid==null){
			return dsl.select(RECRUIT_POSITION.fields())
					.select(INFO_DEPARTMENT.DEPARTMENTNAME,INFO_DEPARTMENT.PARENT_DEPARTMENTID)
					.from(RECRUIT_POSITION)
					.join(INFO_DEPARTMENT)
					.on(RECRUIT_POSITION.DEPARTMENTID.eq(INFO_DEPARTMENT.DEPARTMENTID))
					.where(RECRUIT_POSITION.ISVALID.eq(true))
					.fetchMaps();
		}
		else{
			return dsl.select(RECRUIT_POSITION.fields())
					.select(INFO_DEPARTMENT.DEPARTMENTNAME,INFO_DEPARTMENT.PARENT_DEPARTMENTID)
					.from(RECRUIT_POSITION)
					.join(INFO_DEPARTMENT)
					.on(RECRUIT_POSITION.DEPARTMENTID.eq(INFO_DEPARTMENT.DEPARTMENTID))
					.where(RECRUIT_POSITION.DEPARTMENTID.eq(departmentid))
					.and(RECRUIT_POSITION.ISVALID.eq(true))
					.fetchMaps();
		}
	}
	
	public int addPool(Integer positionid,Integer number,Integer fteid){
		Timestamp createdAt=new Timestamp(System.currentTimeMillis());
		Timestamp updatedAt=createdAt;
		return dsl.insertInto(RECRUIT_POOL)
			.set(RECRUIT_POOL.POSITIONID,positionid)
			.set(RECRUIT_POOL.REALNUMBER,number)
			.set(RECRUIT_POOL.CREATEDBY,fteid)
			.set(RECRUIT_POOL.UPDATEDBY,fteid)
			.set(RECRUIT_POOL.CREATEDAT,createdAt)
			.set(RECRUIT_POOL.UPDATEDAT,updatedAt)
			.returning(RECRUIT_POOL.POOLID)
			.fetchOne()
			.getValue(RECRUIT_POOL.POOLID);
	}
	
	public int updatePool(Integer poolid,Integer realnumber,Date apply_start,Date apply_due,Integer fteid){
		if(apply_due!=null && apply_start!=null && apply_due.after(apply_start)){
			return dsl.update(RECRUIT_POOL)
					.set(RECRUIT_POOL.REALNUMBER,realnumber)
					.set(RECRUIT_POOL.APPLY_START,apply_start)
					.set(RECRUIT_POOL.APPLY_DUE,apply_due)
					.set(RECRUIT_POOL.UPDATEDBY,fteid)
					.set(RECRUIT_POOL.UPDATEDAT,new Timestamp(System.currentTimeMillis()))
					.where(RECRUIT_POOL.POOLID.eq(poolid))
					.execute();
		}
		return 0;
	}
	
	public int deletePool(Integer poolid,Integer fteid){
		return dsl.update(RECRUIT_POOL)
			.set(RECRUIT_POOL.ISVALID,false)
			.set(RECRUIT_POOL.UPDATEDAT,new Timestamp(System.currentTimeMillis()))
			.set(RECRUIT_POOL.UPDATEDBY,fteid)
			.where(RECRUIT_POOL.POOLID.eq(poolid))
			.execute();
	}
	
	public List<Map<String,Object>> getHRPoolList(){
		return dsl.select(RECRUIT_POOL.POOLID,RECRUIT_POOL.APPLY_START,RECRUIT_POOL.APPLY_DUE,RECRUIT_POOL.REALNUMBER)
				.select(RECRUIT_POSITION.fields())
				.select(INFO_DEPARTMENT.DEPARTMENTNAME,INFO_DEPARTMENT.PARENT_DEPARTMENTID)
				.from(RECRUIT_POOL,RECRUIT_POSITION,INFO_DEPARTMENT)
				.where(RECRUIT_POOL.ISVALID.eq(true))
				.and(RECRUIT_POOL.POSITIONID.eq(RECRUIT_POSITION.POSITIONID))
				.and(RECRUIT_POSITION.DEPARTMENTID.eq(INFO_DEPARTMENT.DEPARTMENTID))
				.fetchMaps();
	}
	
	public List<Map<String,Object>> getPoolList(){
		return dsl.select(RECRUIT_POOL.POOLID,RECRUIT_POOL.APPLY_START,RECRUIT_POOL.APPLY_DUE,RECRUIT_POOL.REALNUMBER)
				.select(RECRUIT_POSITION.fields())
				.select(INFO_DEPARTMENT.DEPARTMENTNAME,INFO_DEPARTMENT.PARENT_DEPARTMENTID)
				.from(RECRUIT_POOL,RECRUIT_POSITION,INFO_DEPARTMENT)
				.where(RECRUIT_POOL.ISVALID.eq(true))
				.and(RECRUIT_POOL.APPLY_START.isNotNull())
				.and(RECRUIT_POOL.APPLY_DUE.isNotNull())
				.and(RECRUIT_POOL.POSITIONID.eq(RECRUIT_POSITION.POSITIONID))
				.and(RECRUIT_POSITION.DEPARTMENTID.eq(INFO_DEPARTMENT.DEPARTMENTID))
				.fetchMaps();
	}
	
	public List<Map<String,Object>> getAgencies(){
		return dsl.selectFrom(RECRUIT_AGENCY).fetchMaps();
	}
	
	public List<Map<String,Object>> getPublishedList(Integer poolid){
		return dsl.select(RECRUIT_PUBLISHED.fields())
			.select(RECRUIT_AGENCY.AGENCYNAME,RECRUIT_AGENCY.AGENCY_URL)
			.from(RECRUIT_PUBLISHED,RECRUIT_AGENCY)
			.where(RECRUIT_PUBLISHED.POOLID.eq(poolid))
			.and(RECRUIT_PUBLISHED.AGENCYID.eq(RECRUIT_AGENCY.AGENCYID))
			.fetchMaps();
	}
	
	public int addPublished(Integer poolid,Integer agencyid){
		return dsl.insertInto(RECRUIT_PUBLISHED)
				.set(RECRUIT_PUBLISHED.POOLID,poolid)
				.set(RECRUIT_PUBLISHED.AGENCYID,agencyid)
				.returning(RECRUIT_PUBLISHED.PUBLISHEDID)
				.fetchOne()
				.getValue(RECRUIT_PUBLISHED.PUBLISHEDID);
	}
	
	public int delPublished(Integer poolid,Integer agencyid){
		return dsl.deleteFrom(RECRUIT_PUBLISHED)
			.where(RECRUIT_PUBLISHED.POOLID.eq(poolid))
			.and(RECRUIT_PUBLISHED.AGENCYID.eq(agencyid))
			.execute();
	}
	
	
	public int addApplyment(Integer steid,Integer positionid){
		Timestamp createdAt=new Timestamp(System.currentTimeMillis());
		Timestamp updatedAt=createdAt;
		return dsl.insertInto(RECRUIT_APPLYMENT)
			.set(RECRUIT_APPLYMENT.STEID,steid)
			.set(RECRUIT_APPLYMENT.POSITIONID,positionid)
			.set(RECRUIT_APPLYMENT.STATE,1)
			.set(RECRUIT_APPLYMENT.UPDATEDBY,steid)
			.set(RECRUIT_APPLYMENT.CREATEDAT,createdAt)
			.set(RECRUIT_APPLYMENT.UPDATEDAT,updatedAt)
			.returning(RECRUIT_APPLYMENT.APPLYMENTID)
			.fetchOne()
			.getValue(RECRUIT_APPLYMENT.APPLYMENTID);
	}
	
	//Get Active Applyment -- only one Active Applyment
	//--0-self cancelled
	//--1- wait hr check
	//--2- wait mg check
	//--3- wait arrange interview
	//--4- interview
	//--5- pass
	//--6- fail
	public Map<String,Object> getSelfActiveApplyment(Integer steid){
		return dsl.select(RECRUIT_POSITION.fields())
				.select(RECRUIT_APPLYMENT.APPLYMENTID,RECRUIT_APPLYMENT.CREATEDAT,RECRUIT_APPLYMENT.STATE,
					RECRUIT_APPLYMENT.STEID,RECRUIT_APPLYMENT.UPDATEDAT,RECRUIT_APPLYMENT.UPDATEDBY)
				.from(RECRUIT_APPLYMENT)
				.join(RECRUIT_POSITION)
				.on(RECRUIT_APPLYMENT.POSITIONID.eq(RECRUIT_POSITION.POSITIONID))
				.where(RECRUIT_APPLYMENT.STEID.eq(steid))
				.and(RECRUIT_APPLYMENT.STATE.ne(0)) 
				.and(RECRUIT_APPLYMENT.STATE.ne(6)) 
				.fetchOne()
				.intoMap();
	}
	
	
	public Map<String,Object> getSelfLatestApplyment(Integer steid){
		return dsl.select(RECRUIT_POSITION.fields())
				.select(RECRUIT_APPLYMENT.APPLYMENTID,RECRUIT_APPLYMENT.CREATEDAT,RECRUIT_APPLYMENT.STATE,
						RECRUIT_APPLYMENT.STEID,RECRUIT_APPLYMENT.UPDATEDAT,RECRUIT_APPLYMENT.UPDATEDBY)
				.from(RECRUIT_APPLYMENT)
				.join(RECRUIT_POSITION)
				.on(RECRUIT_APPLYMENT.POSITIONID.eq(RECRUIT_POSITION.POSITIONID))
				.where(RECRUIT_APPLYMENT.STEID.eq(steid))
				.orderBy(RECRUIT_APPLYMENT.CREATEDAT.desc())
				.limit(1)
				.offset(0)
				.fetchOne()
				.intoMap();
	}
	
	//get the applyment history of the latest applyment
	public List<Map<String,Object>>getApplymentHistory(Integer applymentid){
		return dsl.selectFrom(VI_RECRUIT_APPLYMENT_HISTORY)
				.where(VI_RECRUIT_APPLYMENT_HISTORY.APPLYMENTID.eq(applymentid))
				.fetchMaps();
	}
	
	//get applyment list of certain state
	public List<Map<String,Object>>getApplymentListByState(Integer state){
		return dsl.select(RECRUIT_POSITION.fields())
				.select(RECRUIT_APPLYMENT.APPLYMENTID,RECRUIT_APPLYMENT.CREATEDAT,RECRUIT_APPLYMENT.STATE,
						RECRUIT_APPLYMENT.STEID,RECRUIT_APPLYMENT.UPDATEDAT,RECRUIT_APPLYMENT.UPDATEDBY)
				.from(RECRUIT_APPLYMENT)
				.join(RECRUIT_POSITION)
				.on(RECRUIT_APPLYMENT.POSITIONID.eq(RECRUIT_POSITION.POSITIONID))
				.where(RECRUIT_APPLYMENT.STATE.eq(state))
				.fetchMaps();
	}		
	
	public int updateApplyment(Integer applymentid, Integer state, Integer steid){
		return dsl.update(RECRUIT_APPLYMENT)
				.set(RECRUIT_APPLYMENT.STATE,state)
				.set(RECRUIT_APPLYMENT.UPDATEDBY,steid)
				.set(RECRUIT_APPLYMENT.UPDATEDAT,new Timestamp(System.currentTimeMillis()))
				.where(RECRUIT_APPLYMENT.APPLYMENTID.eq(applymentid))
				.execute();
	}
	
}