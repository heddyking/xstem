/**
 * 
 */
package com.worksap.stm2016.service;

import static com.worksap.stm2016.jooq.domain.tables.InfoSte.INFO_STE;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.jooq.DSLContext;
import org.jooq.Record;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
		Record r=dsl.select().from(INFO_STE).where(INFO_STE.STEID.eq(steid)).fetchOne();
		return r.intoMap();
	}
	
	public List<Map<String,Object>> getInfoList(Integer departmentid){
		if(departmentid==null){
			return dsl.select().from(INFO_STE).fetchMaps();
		}
		else{
			return dsl.select().from(INFO_STE).where(INFO_STE.DEPARTMENTID.eq(departmentid)).fetchMaps();
		}
	}
	
	public Integer updatePersonalInfo(Integer steid,String name,boolean gender,Date birthday, String location,String email,
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
	
	
	
}
