package com.worksap.stm2016.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.worksap.stm2016.global.Constants;

@RestController
public class OtherController {
	
	//http://localhost/getSkills
	@RequestMapping("/getSkills")
	public List<String> getSkills(){
		return Arrays.asList(Constants.skills);
	}
}
