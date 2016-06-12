package com.worksap.stm2016.controller;

import java.util.Arrays;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.worksap.stm2016.global.Constants;
import com.worksap.stm2016.util.HttpUtil;

@RestController
public class OtherController {
	private final static Logger logger = LoggerFactory.getLogger(OtherController.class);
	
	//http://localhost/getSkills
	@RequestMapping("/getSkills")
	public List<String> getSkills(){
		logger.info(HttpUtil.url(((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest()));

		Arrays.sort(Constants.skills);
		return Arrays.asList(Constants.skills);
	}

	//http://localhost/getSkills
	@RequestMapping("/getSites")
	public List<String> getSites(){
		logger.info(HttpUtil.url(((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest()));

		return Arrays.asList(Constants.sites);
	}
	
	
}
