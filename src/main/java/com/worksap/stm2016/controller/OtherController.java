package com.worksap.stm2016.controller;

import java.util.Arrays;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.worksap.stm2016.global.Constants;

@RestController
public class OtherController {
	private final static Logger logger = LoggerFactory.getLogger(OtherController.class);
	
	//http://localhost/getSkills
	@RequestMapping("/getSkills")
	public List<String> getSkills(){
		Arrays.sort(Constants.skills);
		return Arrays.asList(Constants.skills);
	}

	//http://localhost/getSkills
	@RequestMapping("/getSites")
	public List<String> getSites(){
		return Arrays.asList(Constants.sites);
	}
	
	
}
