package com.worksap.stm2016.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.worksap.stm2016.security.UserInfo;
import com.worksap.stm2016.service.AccountService;

@RestController
public class AccountController {
	@Autowired
	private AccountService accountService;
	
	//http://localhost/regist?email=testemail323@qq.com&name=testname324&password=123&
	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public Integer regist(String email,String name, String password){
		return accountService.regist(email, name, password);
	}

	//http://localhost/userinfo
	@RequestMapping(value = "/userinfo", method = RequestMethod.GET)
	public Map<String,Object> userinfo(){
		UserInfo userinfo=(UserInfo) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return userinfo.toMap();
	}
}
