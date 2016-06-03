package com.worksap.stm2016.controller;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.worksap.stm2016.security.UserInfo;
import com.worksap.stm2016.service.RecruitService;
import com.worksap.stm2016.util.DateUtil;
import com.worksap.stm2016.util.JsonUtil;

@RestController
public class RecruitController {
	@Autowired
	private RecruitService recruitService;

	//http://localhost/mg/addPosition
	@RequestMapping(value = "/mg/addPosition", method = RequestMethod.POST)
	public int addPosition(String jsonStr){
		Map<String,Object> params=null;
		try {
			params=JsonUtil.parseMap(jsonStr);
		} catch (Exception e) {
			return -1;
		} 
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		Integer departmentid=userinfo.getDepartmentid();
		String positionname=(String)params.get("positionname");
		Integer number=(Integer)params.get("number");
		String location_req=(String)params.get("location_req");
		Date date_req=DateUtil.parseDate((String)params.get("date_req"));
		Integer duration_req=(Integer)params.get("duration_req");
		String skill_req1=(String)params.get("skill_req1");
		String skill_req2=(String)params.get("skill_req2");
		String skill_req3=(String)params.get("skill_req3");
		String skill_req4=(String)params.get("skill_req4");
		String skill_req5=(String)params.get("skill_req5");
		String description=(String)params.get("description");
		Integer fteid=userinfo.getUserid();

		return recruitService.addPosition(departmentid, positionname, number, location_req, date_req, 
				duration_req, skill_req1, skill_req2, skill_req3, skill_req4, skill_req5, description, fteid);
	}

	//http://localhost/mg/updatePosition
	@RequestMapping(value = "/mg/updatePosition", method = RequestMethod.POST)
	public int updatePosition(String jsonStr){
		Map<String,Object> params=null;
		try {
			params=JsonUtil.parseMap(jsonStr);
		} catch (Exception e) {
			return -1;
		} 
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		Integer positionid=(Integer)params.get("positionid");
		Integer departmentid=userinfo.getDepartmentid();
		String positionname=(String)params.get("positionname");
		Integer number=(Integer)params.get("number");
		String location_req=(String)params.get("location_req");
		Date date_req=DateUtil.parseDate((String)params.get("date_req"));
		Integer duration_req=(Integer)params.get("duration_req");
		String skill_req1=(String)params.get("skill_req1");
		String skill_req2=(String)params.get("skill_req2");
		String skill_req3=(String)params.get("skill_req3");
		String skill_req4=(String)params.get("skill_req4");
		String skill_req5=(String)params.get("skill_req5");
		String description=(String)params.get("description");
		Integer fteid=userinfo.getUserid();

		return recruitService.updatePosition(positionid, departmentid, positionname, number, location_req, date_req, 
				duration_req, skill_req1, skill_req2, skill_req3, skill_req4, skill_req5, description, fteid);

	}

	//http://localhost/mg/deletePosition
	@RequestMapping("/mg/deletePosition")
	public int deletePosition(Integer positionid){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return recruitService.deletePosition(positionid, userinfo.getUserid());
	}

	//http://localhost/mg/getPositionList
	@RequestMapping("/mg/getPositionList")
	public List<Map<String,Object>> getPositionList(Integer departmentid){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return recruitService.getPositionList(userinfo.getDepartmentid());
	}

	//http://localhost/getTotalPositionList
	@RequestMapping("/getTotalPositionList")
	public List<Map<String,Object>> getTotalPositionList(){
		return recruitService.getPositionList(null);
	}

	//http://localhost/hr/addPool
	@RequestMapping("/hr/addPool")
	public int addPool(Integer positionid,Integer number){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return recruitService.addPool(positionid, number, userinfo.getUserid());
	}

	//http://localhost/hr/updatePool
	@RequestMapping("/hr/updatePool")
	public int updatePool(Integer poolid,Integer number,String apply_start,String apply_due){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return recruitService.updatePool(poolid, number,
				DateUtil.parseDate(apply_start),DateUtil.parseDate(apply_due), userinfo.getUserid());
	}

	//http://localhost/hr/deletePool
	@RequestMapping("/hr/deletePool")
	public int deletePool(Integer poolid){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return recruitService.deletePool(poolid, userinfo.getUserid());
	}

	//http://localhost/hr/getHRPoolList
	@RequestMapping("/hr/getHRPoolList")
	public List<Map<String,Object>> getHRPoolList(){
		return recruitService.getHRPoolList();
	}

	//http://localhost/getPoolList
	@RequestMapping("/getPoolList")
	public List<Map<String,Object>> getPoolList(){
		return recruitService.getPoolList();
	}

	//http://localhost/getAgencies
	@RequestMapping("/getAgencies")
	public List<Map<String,Object>> getAgencies(){
		return recruitService.getAgencies();
	}

	//http://localhost/getPublishedList
	@RequestMapping("/getPublishedList")
	public List<Map<String,Object>> getPublishedList(Integer poolid){
		return recruitService.getPublishedList(poolid);
	}

	//http://localhost/hr/addPublished
	@RequestMapping("/hr/addPublished")
	public int addPublished(Integer poolid,Integer agencyid){
		return recruitService.addPublished(poolid, agencyid);
	}

	//http://localhost/hr/delPublished
	@RequestMapping("/hr/delPublished")
	public int delPublished(Integer poolid,Integer agencyid){
		return recruitService.delPublished(poolid, agencyid);
	}

	//http://localhost/ste/addApplyment
	@RequestMapping("/ste/addApplyment")
	public int addApplyment(Integer positionid){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return recruitService.addApplyment(userinfo.getUserid(), positionid);
	}

	//http://localhost/ste/getSelfActiveApplyment
	@RequestMapping("/ste/getSelfActiveApplyment")
	public Map<String,Object> getSelfActiveApplyment(){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return recruitService.getSelfActiveApplyment(userinfo.getUserid());
	}

	//http://localhost/ste/getSelfLatestApplyment
	@RequestMapping("/ste/getSelfLatestApplyment")
	public Map<String,Object> getSelfLatestApplyment(Integer steid){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return recruitService.getSelfLatestApplyment(userinfo.getUserid());
	}

	//http://localhost/ste/getApplymentHistory
	@RequestMapping("/ste/getApplymentHistory")
	public List<Map<String,Object>>getApplymentHistory(Integer applymentid){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		Map<String,Object> map=recruitService.getSelfLatestApplyment(userinfo.getUserid());
		return recruitService.getApplymentHistory((Integer)map.get("applymentid"));
	}

	//http://localhost/hr/getApplymentListHRChecking
	@RequestMapping("/hr/getApplymentListHRChecking")
	public List<Map<String,Object>>getApplymentListHRChecking(){
		return recruitService.getApplymentListByState(1);
	}

	//http://localhost/mg/getApplymentListHRChecking
	@RequestMapping("/mg/getApplymentListMGChecking")
	public List<Map<String,Object>>getApplymentListMGChecking(){
		return recruitService.getApplymentListByState(2);
	}

	//http://localhost/hr/getApplymentListArranging
	@RequestMapping("/hr/getApplymentListArranging")
	public List<Map<String,Object>>getApplymentListArranging(){
		return recruitService.getApplymentListByState(3);
	}

	//http://localhost/mg/getApplymentListInterviewing
	@RequestMapping("/mg/getApplymentListInterviewing")
	public List<Map<String,Object>>getApplymentListInterviewing(){
		return recruitService.getApplymentListByState(4);
	}

	//http://localhost/mg/getApplymentListPassed
	@RequestMapping("/mg/getApplymentListPassed")
	public List<Map<String,Object>>getApplymentListPassed(){
		return recruitService.getApplymentListByState(5);
	}

	//http://localhost/hr/getApplymentListAccepted
	@RequestMapping("/hr/getApplymentListAccepted")
	public List<Map<String,Object>>getApplymentListAccepted(){
		return recruitService.getApplymentListByState(10);
	}

	//http://localhost/hr/checkPass
	@RequestMapping("/hr/checkPass")
	public int HRcheckPass(Integer applymentid){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return recruitService.updateApplyment(applymentid, 2, userinfo.getUserid());
	}

	//http://localhost/hr/checkFail
	@RequestMapping("/hr/checkFail")
	public int HRcheckFail(Integer applymentid){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return recruitService.updateApplyment(applymentid, 6, userinfo.getUserid());
	}

	//http://localhost/mg/checkPass
	@RequestMapping("/mg/checkPass")
	public int MGcheckPass(Integer applymentid){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return recruitService.updateApplyment(applymentid, 3, userinfo.getUserid());
	}

	//http://localhost/mg/checkFail
	@RequestMapping("/mg/checkFail")
	public int MGcheckFail(Integer applymentid){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return recruitService.updateApplyment(applymentid, 6, userinfo.getUserid());
	}

	//http://localhost/mg/MGinvPass
	@RequestMapping("/mg/MGinvPass")
	public int MGinvPass(Integer applymentid){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return recruitService.updateApplyment(applymentid, 5, userinfo.getUserid());
	}

	//http://localhost/mg/MGinvFail
	@RequestMapping("/mg/MGinvFail")
	public int MGinvFail(Integer applymentid){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return recruitService.updateApplyment(applymentid, 6, userinfo.getUserid());
	}

	//http://localhost/ste/accept
	@RequestMapping("/ste/accept")
	public int accept(Integer applymentid){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return recruitService.updateApplyment(applymentid, 10, userinfo.getUserid());
	}

	//http://localhost/ste/cancel
	@RequestMapping("/ste/cancel")
	public int cancel(Integer applymentid){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return recruitService.updateApplyment(applymentid, 0, userinfo.getUserid());
	}

	//http://localhost/hr/arrangeInterview
	@RequestMapping("/hr/arrangeInterview")
	public int arrangeInterview(Integer applymentid,Timestamp starttime, Timestamp endtime,
			String location,String contact_person, String contact_phone,String replenish){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return recruitService.arrangeInterview(applymentid, starttime, endtime, 
				location, contact_person, contact_phone, replenish, userinfo.getUserid());
	}

	//http://localhost/hr/getInterviewList
	@RequestMapping("/hr/getInterviewList")
	public List<Map<String,Object>> getInterviewList(){
		return recruitService.getInterviewList(null);
	}

	//http://localhost/mg/getInterviewList
	@RequestMapping("/mg/getInterviewList")
	public List<Map<String,Object>> getInterviewList2(){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return recruitService.getInterviewList(userinfo.getUserid());
	}
}
