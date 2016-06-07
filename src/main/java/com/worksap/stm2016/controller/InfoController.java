package com.worksap.stm2016.controller;

import static com.worksap.stm2016.jooq.domain.tables.InfoFte.INFO_FTE;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.worksap.stm2016.entities.UserInfo;
import com.worksap.stm2016.global.Role;
import com.worksap.stm2016.service.InfoService;
import com.worksap.stm2016.util.DateUtil;
import com.worksap.stm2016.util.JsonUtil;

@RestController
public class InfoController {
	private final static Logger logger = LoggerFactory.getLogger(InfoController.class);

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

	//http://localhost/hr/getSTEByID
	@RequestMapping("/hr/getSTEByID")
	public Map<String,Object> getSTEByID(Integer steid){
		return infoService.getPersonalInfo(steid);
	}

	//http://localhost/getSTEListInDept
	@RequestMapping("/mg/getSTEListInDept")
	public List<Map<String,Object>> getSTEListInDept(){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return infoService.getInfoList(userinfo.getDepartmentid());
	}

	//http://localhost/mg/getSTEByID
	@RequestMapping("/mg/getSTEByID")
	public Map<String,Object> getSTEByID2(Integer steid){
		return infoService.getPersonalInfo(steid);
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
		logger.info("/ste/updatePersonalInfo");
		logger.warn("jsonStr="+jsonStr);
		Map<String,Object> params=null;
		try {
			params=JsonUtil.parseMap(jsonStr);
		} catch (Exception e) {
			return -1;
		} 
		String name=(String) params.get("name");
		Boolean gender=Boolean.valueOf((String) params.get("gender"));
		Date birthday=DateUtil.parseDate((String)params.get("birthday"));
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

	//http://localhost/hr/updateOfferInfo?
	@RequestMapping(value = "/hr/updateOfferInfo", method = RequestMethod.GET)
	public Integer updateOfferInfo(Integer steid,String offer_url){
		return infoService.updateOfferInfo(steid,offer_url);
	}

	//http://localhost/hr/updateContractInfo?
	@RequestMapping(value = "/hr/updateContractInfo", method = RequestMethod.GET)
	public Integer updateContractInfo(Integer steid,String contract_url){
		return infoService.updateContractInfo(steid,contract_url);
	}
	
	//http://localhost/hr/updateOnboardInfo?
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

	//http://localhost/hr/getMGbyDepartment
	@RequestMapping("/hr/getMGbyDepartment")
	public List<Map<String,Object>> getMGbyDepartment(Integer departmentid){
		return infoService.getMGbyDepartment(departmentid);
	}

	//http://localhost/hr/getFTE
	@RequestMapping("/hr/getFTE")
	public Map<String,Object> getFTE(Integer fteid){
		return infoService.getFTE(fteid);
	}
}
