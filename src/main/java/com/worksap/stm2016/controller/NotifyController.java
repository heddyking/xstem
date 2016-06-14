package com.worksap.stm2016.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.worksap.stm2016.entities.UserInfo;
import com.worksap.stm2016.service.NotifyService;
import com.worksap.stm2016.util.HttpUtil;

@RestController
public class NotifyController {
	private final static Logger logger = LoggerFactory.getLogger(NotifyController.class);

	@Autowired
	private NotifyService notifyService;

	//http://localhost/ste/pendingSTE
	@RequestMapping("/ste/pendingSTE")
	public Map<String,Object> pendingSTE(){
//		logger.info(HttpUtil.url(((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest()));

		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//		logger.info(userinfo==null? "no userinfo" : userinfo.toString());

		int r1=notifyService.pendingSelfInfo(userinfo.getUserid());
		int r2=notifyService.pendingSelfApplication(userinfo.getUserid());
		int r3=notifyService.pendingSelfSalary(userinfo.getUserid());
		int r=(r1==0?0:1)+(r2==0?0:1)+(r3==0?0:1);
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("r", r);
		map.put("r1", r1);
		map.put("r2", r2);
		map.put("r3", r3);
		return map;
	}

	//http://localhost/ste/pendingSelfInfo
	@RequestMapping("/ste/pendingSelfInfo")
	public int pendingSelfInfo(){
		logger.info(HttpUtil.url(((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest()));

		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		logger.info(userinfo==null? "no userinfo" : userinfo.toString());

		return notifyService.pendingSelfInfo(userinfo.getUserid());
	}

	//http://localhost/ste/inquirySelfApplication
	@RequestMapping("/ste/inquirySelfApplication")
	public int inquirySelfApplication(){
		logger.info(HttpUtil.url(((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest()));

		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		logger.info(userinfo==null? "no userinfo" : userinfo.toString());

		return notifyService.inquirySelfApplication(userinfo.getRole(),userinfo.getUserid());
	}

	//http://localhost/ste/pendingSelfApplication
	@RequestMapping("/ste/pendingSelfApplication")
	public int pendingSelfApplication(){
		logger.info(HttpUtil.url(((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest()));

		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		logger.info(userinfo==null? "no userinfo" : userinfo.toString());

		return notifyService.pendingSelfApplication(userinfo.getUserid());
	}

	//http://localhost/ste/inquirySelfSalary
	@RequestMapping("/ste/inquirySelfSalary")
	public int inquirySelfSalary(){
		logger.info(HttpUtil.url(((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest()));

		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		logger.info(userinfo==null? "no userinfo" : userinfo.toString());

		return notifyService.inquirySelfSalary(userinfo.getRole(),userinfo.getUserid());
	}

	//http://localhost/ste/pendingSelfSalary
	@RequestMapping("/ste/pendingSelfSalary")
	public int pendingSelfSalary(){
		logger.info(HttpUtil.url(((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest()));

		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		logger.info(userinfo==null? "no userinfo" : userinfo.toString());

		return notifyService.pendingSelfSalary(userinfo.getUserid());
	}

	//http://localhost/hr/inquiryHRSalary
	@RequestMapping("/hr/inquiryHRSalary")
	public int inquiryHRSalary(){
		logger.info(HttpUtil.url(((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest()));

		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		logger.info(userinfo==null? "no userinfo" : userinfo.toString());

		return notifyService.inquiryHRSalary(userinfo.getRole(), userinfo.getUserid());
	}

	//http://localhost/hr/pendingHR
	@RequestMapping("/hr/pendingHR")
	public Map<String,Object> pendingHR(){
//		logger.info(HttpUtil.url(((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest()));

		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//		logger.info(userinfo==null? "no userinfo" : userinfo.toString());

		int r1=notifyService.pendingHRPublish();
		int r2=notifyService.pendingHRFilter();
		int r3=notifyService.pendingHRArrange();
		int r4=notifyService.pendingHROfferStage();
		int r5=notifyService.pendingHRSalary(userinfo.getUserid());
		int r=(r1==0?0:1)+(r2==0?0:1)+(r3==0?0:1)+(r4==0?0:1)+(r5==0?0:1);
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("r", r);
		map.put("r1", r1);
		map.put("r2", r2);
		map.put("r3", r3);
		map.put("r4", r4);
		map.put("r5", r5);
		return map;
	}

	//http://localhost/hr/pendingHRSalary
	@RequestMapping("/hr/pendingHRSalary")
	public int pendingHRSalary(){
		logger.info(HttpUtil.url(((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest()));

		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		logger.info(userinfo==null? "no userinfo" : userinfo.toString());

		return notifyService.pendingHRSalary(userinfo.getUserid());
	}

	//http://localhost/hr/pendingHRPublish
	@RequestMapping("/hr/pendingHRPublish")
	public int pendingHRPublish(){
		logger.info(HttpUtil.url(((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest()));

		return notifyService.pendingHRPublish();
	}

	//http://localhost/hr/pendingHRFilter
	@RequestMapping("/hr/pendingHRFilter")
	public int pendingHRFilter(){
		logger.info(HttpUtil.url(((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest()));

		return notifyService.pendingHRFilter();
	}

	//http://localhost/hr/pendingHRArrange
	@RequestMapping("/hr/pendingHRArrange")
	public int pendingHRArrange(){
		logger.info(HttpUtil.url(((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest()));

		return notifyService.pendingHRArrange();
	}

	//http://localhost/hr/pendingHROfferStage
	@RequestMapping("/hr/pendingHROfferStage")
	public int pendingHROfferStage(){
		logger.info(HttpUtil.url(((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest()));

		return notifyService.pendingHROfferStage();
	}

	//http://localhost/mg/pendingMG
	@RequestMapping("/mg/pendingMG")
	public Map<String,Object> pendingMG(){
//		logger.info(HttpUtil.url(((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest()));

		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//		logger.info(userinfo==null? "no userinfo" : userinfo.toString());

		int r1=notifyService.pendingMGFilter(userinfo.getDepartmentid());
		int r2=notifyService.pendingMGInterview(userinfo.getDepartmentid());
		int r3=notifyService.pendingMGAttendance(userinfo.getDepartmentid());
		int r4=notifyService.pendingMGPerformance(userinfo.getDepartmentid());
		int r5=notifyService.pendingMGSkill(userinfo.getDepartmentid());
		int r=(r1==0?0:1)+(r2==0?0:1)+(r3==0?0:1)+(r4==0?0:1)+(r5==0?0:1);
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("r", r);
		map.put("r1", r1);
		map.put("r2", r2);
		map.put("r3", r3);
		map.put("r4", r4);
		map.put("r5", r5);
		return map;
	}

	//http://localhost/mg/pendingMGFilter
	@RequestMapping("/mg/pendingMGFilter")
	public int pendingMGFilter(){
		logger.info(HttpUtil.url(((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest()));

		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		logger.info(userinfo==null? "no userinfo" : userinfo.toString());

		return notifyService.pendingMGFilter(userinfo.getDepartmentid());

	}

	//http://localhost/mg/pendingMGInterview
	@RequestMapping("/mg/pendingMGInterview")
	public int pendingMGInterview(){
		logger.info(HttpUtil.url(((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest()));

		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		logger.info(userinfo==null? "no userinfo" : userinfo.toString());

		return notifyService.pendingMGInterview(userinfo.getDepartmentid());
	}

	//http://localhost/mg/pendingMGAttendance
	@RequestMapping("/mg/pendingMGAttendance")
	public int pendingMGAttendance(){
		logger.info(HttpUtil.url(((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest()));

		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		logger.info(userinfo==null? "no userinfo" : userinfo.toString());

		return notifyService.pendingMGAttendance(userinfo.getDepartmentid());
	}

	//http://localhost/mg/pendingMGPerformance
	@RequestMapping("/mg/pendingMGPerformance")
	public int pendingMGPerformance(){
		logger.info(HttpUtil.url(((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest()));

		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		logger.info(userinfo==null? "no userinfo" : userinfo.toString());

		return notifyService.pendingMGPerformance(userinfo.getDepartmentid());
	}

	//http://localhost/mg/pendingMGSkill
	@RequestMapping("/mg/pendingMGSkill")
	public int pendingMGSkill(){
		logger.info(HttpUtil.url(((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest()));

		UserInfo userinfo=(UserInfo)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		logger.info(userinfo==null? "no userinfo" : userinfo.toString());

		return notifyService.pendingMGSkill(userinfo.getDepartmentid());
	}
}
