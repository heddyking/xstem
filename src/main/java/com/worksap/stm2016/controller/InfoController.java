package com.worksap.stm2016.controller;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.worksap.stm2016.security.UserInfo;
import com.worksap.stm2016.service.InfoService;
import com.worksap.stm2016.util.DateUtil;
import com.worksap.stm2016.util.JsonUtil;

@RestController
public class InfoController {
	
	@Autowired
	private InfoService infoService;
	
	//http://localhost/ste/personalInfo
	@RequestMapping("/ste/personalInfo")
	public Map<String,Object> getPersonalInfo(){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return infoService.getPersonalInfo(userinfo.getUserid());
	}
	
	//http://localhost/hr/getSTEList
	@RequestMapping("/hr/getSTEList")
	public List<Map<String,Object>> getSTEList(){
		return infoService.getInfoList(null);
	}
	
	//http://localhost/getSTEListInDept
	@RequestMapping("/mg/getSTEListInDept")
	public List<Map<String,Object>> getSTEListInDept(){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return infoService.getInfoList(userinfo.getDepartmentid());
	}
	
	//http://localhost/updatePersonalInfo?
	@RequestMapping(value = "/ste/updatePersonalInfo", method = RequestMethod.GET)
	public Integer updatePersonalInfo(String name,Boolean gender,Date birthday, String location,String email,
			String email_self,String phone,String telephone,String experiences,String skills,String resume_url){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return infoService.updatePersonalInfo(userinfo.getUserid(), name, gender, birthday, location, 
				email, email_self, phone, telephone, experiences, skills, resume_url);
	}
	
	@RequestMapping(value = "/ste/updatePersonalInfo", method = RequestMethod.POST)
	public Integer updatePersonalInfo(String jsonStr){
		Map<String,Object> params=null;
		try {
			params=JsonUtil.parseMap(jsonStr);
		} catch (Exception e) {
			return -1;
		} 
		String name=(String) params.get("name");
		Boolean gender=(Boolean) params.get("gender");
		Date birthday=DateUtil.parseDate((String)params.get("birtday"));
		String location=(String) params.get("location");
		String email=(String) params.get("email");
		String email_self=(String) params.get("email_self");
		String phone=(String) params.get("phone");
		String telephone=(String) params.get("telephone");
		String experiences=(String) params.get("experiences");
		String skills=(String) params.get("skills");
		String resume_url=(String) params.get("resume_url");
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		
		return infoService.updatePersonalInfo(userinfo.getUserid(), name, gender, birthday, location, 
				email, email_self, phone, telephone, experiences, skills, resume_url);
	}
	
	
	//http://localhost/updateOnboardInfo?
	@RequestMapping(value = "/hr/updateOnboardInfo", method = RequestMethod.GET)
	public Integer updateOnboardInfo(Integer steid,String email,String phone,String offer_url, String contract_url ){
		return infoService.updateOnboardInfo(steid, email, phone, offer_url, contract_url);
	}
	
	@RequestMapping(value = "/hr/updateOnboardInfo", method = RequestMethod.POST)
	public Integer updateOnboardInfo(String jsonStr){
		Map<String,Object> params=null;
		try {
			params=JsonUtil.parseMap(jsonStr);
		} catch (Exception e) {
			return -1;
		} 
		Integer steid=(Integer) params.get("steid");
		String email=(String) params.get("email");
		String phone=(String) params.get("phone");
		String offer_url=(String) params.get("offer_url");
		String contract_url=(String) params.get("contract_url");
		return infoService.updateOnboardInfo(steid, email, phone, offer_url, contract_url);
	}
}
