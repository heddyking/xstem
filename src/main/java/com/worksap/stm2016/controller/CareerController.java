package com.worksap.stm2016.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.worksap.stm2016.security.UserInfo;
import com.worksap.stm2016.service.CareerService;
import com.worksap.stm2016.util.DateUtil;

@RestController
public class CareerController {
    
	@Autowired
	private CareerService careerService;
	
	//http://localhost/ste/addAttendance
    @RequestMapping("/ste/addAttendance")
	public int addAttendance(String date, Integer hours){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return careerService.addAttendance(userinfo.getUserid(), DateUtil.parseDate(date), hours);
	}
	
	//http://localhost/ste/updateAttendance
    @RequestMapping("/ste/updateAttendance")
	public int updateAttendance(Integer attendanceid,String date, Integer hours){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return careerService.updateAttendance(attendanceid, userinfo.getUserid(), DateUtil.parseDate(date), hours);
	}
	
	//http://localhost/mg/approveAttendance
    @RequestMapping("/mg/approveAttendance")
	public int approveAttendance(Integer attendanceid){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return careerService.approveAttendance(attendanceid, userinfo.getUserid());
	}
	
	//http://localhost/mg/rejectAttendance
    @RequestMapping("/mg/rejectAttendance")
	public int rejectAttendance(Integer attendanceid){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return careerService.rejectAttendance(attendanceid, userinfo.getUserid());
	}
	
	//http://localhost/ste/deleteAttendance
    @RequestMapping("/ste/deleteAttendance")
	public int deleteAttendance(Integer attendanceid){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return careerService.deleteAttendance(attendanceid, userinfo.getUserid());
	}
	
	//http://localhost/ste/getAttendanceListBySteid
    @RequestMapping("/ste/getAttendanceListBySteid")
	public List<Map<String,Object>> getAttendanceListBySteid(){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return careerService.getAttendanceListBySteid(userinfo.getUserid());
	}
	
	//http://localhost/hr/getAttendanceListBySteid
    @RequestMapping("/hr/getAttendanceListBySteid")
	public List<Map<String,Object>> getAttendanceListBySteid(Integer steid){
		return careerService.getAttendanceListBySteid(steid);
	}

	//http://localhost/mg/getAttendanceListByDepartment
    @RequestMapping("/mg/getAttendanceListByDepartment")
	public List<Map<String,Object>> getAttendanceListByDepartment(){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return careerService.getAttendanceListByDepartment(userinfo.getDepartmentid());
	}

	//http://localhost/ste/addPerformance
    @RequestMapping("/ste/addPerformance")
	public int addPerformance(String date, Integer hours, String description){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return careerService.addPerformance(userinfo.getUserid(), DateUtil.parseDate(date), hours, description);
	}

	//http://localhost/ste/updatePerformance
    @RequestMapping("/ste/updatePerformance")
	public int updatePerformance(Integer performanceid,String date, Integer hours,String description){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return careerService.updatePerformance(performanceid, userinfo.getUserid(), DateUtil.parseDate(date), hours, description);
	}

	//http://localhost/mg/approvePerformance
    @RequestMapping("/mg/approvePerformance")
	public int approvePerformance(Integer performanceid){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return careerService.approvePerformance(performanceid, userinfo.getUserid());
	}

	//http://localhost/mg/rejectPerformance
    @RequestMapping("/mg/rejectPerformance")
	public int rejectPerformance(Integer performanceid){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return careerService.rejectPerformance(performanceid, userinfo.getUserid());
	}

	//http://localhost/ste/deletePerformance
    @RequestMapping("/ste/deletePerformance")
	public int deletePerformance(Integer performanceid){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return careerService.deletePerformance(performanceid, userinfo.getUserid());
	}

	//http://localhost/ste/getPerformanceListBySteid
    @RequestMapping("/ste/getPerformanceListBySteid")
	public List<Map<String,Object>> getPerformanceListBySteid(){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return careerService.getPerformanceListBySteid(userinfo.getUserid());
	}
	
	//http://localhost/hr/getPerformanceListBySteid
    @RequestMapping("/hr/getPerformanceListBySteid")
	public List<Map<String,Object>> getPerformanceListBySteid(Integer steid){
		return careerService.getPerformanceListBySteid(steid);
	}

	//http://localhost/mg/getPerformanceListByDepartment
    @RequestMapping("/mg/getPerformanceListByDepartment")
	public List<Map<String,Object>> getPerformanceListByDepartment(){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return careerService.getPerformanceListByDepartment(userinfo.getUserid());
	}

	//http://localhost/ste/addSkill
    @RequestMapping("/ste/addSkill")
	public int addSkill(String skill, String description){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return careerService.addSkill(userinfo.getUserid(), skill, description);
	}

	//http://localhost/ste/updateSkill
    @RequestMapping("/ste/updateSkill")
	public int updateSkill(Integer skillid,String skill, String description){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return careerService.updateSkill(skillid, userinfo.getUserid(), skill, description);
	}

	//http://localhost/mg/approveSkill
    @RequestMapping("/mg/approveSkill")
	public int approveSkill(Integer skillid,Integer score){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return careerService.approveSkill(skillid, score, userinfo.getUserid());
	}

	//http://localhost/mg/rejectSkill
    @RequestMapping("/mg/rejectSkill")
	public int rejectSkill(Integer skillid){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return careerService.rejectSkill(skillid, userinfo.getUserid());
	}

	//http://localhost/ste/deleteSkill
    @RequestMapping("/ste/deleteSkill")
	public int deleteSkill(Integer skillid){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return careerService.deleteSkill(skillid, userinfo.getUserid());
	}

	//http://localhost/ste/getSkillListBySteid
    @RequestMapping("/ste/getSkillListBySteid")
	public List<Map<String,Object>> getSkillListBySteid(){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return careerService.getSkillListBySteid(userinfo.getUserid());
	}
	
	//http://localhost/hr/getSkillListBySteid
    @RequestMapping("/hr/getSkillListBySteid")
	public List<Map<String,Object>> getSkillListBySteid(Integer steid){
		return careerService.getSkillListBySteid(steid);
	}

	//http://localhost/mg/getSkillListByDepartment
    @RequestMapping("/mg/getSkillListByDepartment")
	public List<Map<String,Object>> getSkillListByDepartment(){
		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return careerService.getSkillListByDepartment(userinfo.getDepartmentid());
	}
}
