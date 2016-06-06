/**
 * 
 */
package com.worksap.stm2016.service;

import static com.worksap.stm2016.jooq.domain.tables.InfoSte.INFO_STE;
import static com.worksap.stm2016.jooq.domain.tables.InfoDepartment.INFO_DEPARTMENT;
import static com.worksap.stm2016.jooq.domain.tables.RecruitPosition.RECRUIT_POSITION;
import static com.worksap.stm2016.jooq.domain.tables.InfoFte.INFO_FTE;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.jooq.DSLContext;
import org.jooq.Record;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.worksap.stm2016.global.Role;

/**
 * @author Xiaoxi
 *
 */
@Service
@Transactional
public class InfoService
{
	@Autowired
	private DSLContext dsl;
	
	public Map<String,Object> getPersonalInfo(Integer steid){
		Record r=dsl.select(INFO_STE.fields())
				.select(INFO_DEPARTMENT.DEPARTMENTNAME)
				.select(RECRUIT_POSITION.POSITIONNAME)
				.from(INFO_STE)
				.leftJoin(INFO_DEPARTMENT)
				.on(INFO_STE.DEPARTMENTID.eq(INFO_DEPARTMENT.DEPARTMENTID))
				.leftJoin(RECRUIT_POSITION)
				.on(INFO_STE.POSITIONID.eq(RECRUIT_POSITION.POSITIONID))
				.where(INFO_STE.STEID.eq(steid))
				.fetchOne();
		return r.intoMap();
	}
	
	public List<Map<String,Object>> getInfoList(Integer departmentid){
		if(departmentid==null){
			return dsl.select(INFO_STE.fields())
					.select(INFO_DEPARTMENT.DEPARTMENTNAME)
					.select(RECRUIT_POSITION.POSITIONNAME)
					.from(INFO_STE)
					.leftJoin(INFO_DEPARTMENT)
					.on(INFO_STE.DEPARTMENTID.eq(INFO_DEPARTMENT.DEPARTMENTID))
					.leftJoin(RECRUIT_POSITION)
					.on(INFO_STE.POSITIONID.eq(RECRUIT_POSITION.POSITIONID))
					.fetchMaps();
		}
		else{
			return dsl.select(INFO_STE.fields())
					.select(INFO_DEPARTMENT.DEPARTMENTNAME)
					.select(RECRUIT_POSITION.POSITIONNAME)
					.from(INFO_STE)
					.leftJoin(INFO_DEPARTMENT)
					.on(INFO_STE.DEPARTMENTID.eq(INFO_DEPARTMENT.DEPARTMENTID))
					.leftJoin(RECRUIT_POSITION)
					.on(INFO_STE.POSITIONID.eq(RECRUIT_POSITION.POSITIONID))
					.where(INFO_STE.DEPARTMENTID.eq(departmentid))
					.fetchMaps();
		}
	}
	
	public Integer updatePersonalInfo(Integer steid,String name,Boolean gender,Date birthday, String location,String email,
			String email_self,String phone,String telephone,String experiences,String skills,String resume_url){
		return dsl.update(INFO_STE)
			.set(INFO_STE.NAME,name)
			.set(INFO_STE.BIRTHDAY,birthday)
			.set(INFO_STE.GENDER,gender)
			.set(INFO_STE.LOCATION,location)
			.set(INFO_STE.EMAIL,email)
			.set(INFO_STE.EMAIL_SELF,email_self)
			.set(INFO_STE.PHONE,phone)
			.set(INFO_STE.TELEPHONE,telephone)
			.set(INFO_STE.EXPERIENCES,experiences)
			.set(INFO_STE.SKILLS,skills)
			.set(INFO_STE.RESUME_URL,resume_url)
			.where(INFO_STE.STEID.eq(steid))
			.execute();
	}
	
	public Integer updateOnboardInfo(Integer steid,String email,String phone,String offer_url, String contract_url ){
		return dsl.update(INFO_STE)
				.set(INFO_STE.EMAIL,email)
				.set(INFO_STE.PHONE,phone)
				.set(INFO_STE.OFFER_URL,offer_url)
				.set(INFO_STE.CONTRACT_URL,contract_url)
				.where(INFO_STE.STEID.eq(steid))
				.execute();
	}
	
	
	public List<Map<String,Object>> getMGbyDepartment(Integer departmentid){
		return dsl.select()
				.from(INFO_FTE)
				.where(INFO_FTE.DEPARTMENTID.eq(departmentid))
				.and(INFO_FTE.ROLE.eq(Integer.valueOf(Role.MG.i())))
				.fetchMaps();
	}
	
	public Map<String,Object> getFTE(Integer fteid){
		return dsl.selectFrom(INFO_FTE)
				.where(INFO_FTE.FTEID.eq(fteid))
				.fetchOne().intoMap();
	}
}
