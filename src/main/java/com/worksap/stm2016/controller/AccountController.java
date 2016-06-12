package com.worksap.stm2016.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.worksap.stm2016.entities.UserInfo;
import com.worksap.stm2016.service.AccountService;
import com.worksap.stm2016.util.HttpUtil;

@RestController
public class AccountController {
	private final static Logger logger = LoggerFactory.getLogger(AccountController.class);
	
	@Autowired
	private AccountService accountService;
	
	//http://localhost/regist?email=testemail323@qq.com&name=testname324&password=123&
	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public Integer regist(String email,String name, String password){
		logger.info(HttpUtil.url(((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest()));
		
		return accountService.regist(email, name, password);
	}

	//http://localhost/userinfo
	@RequestMapping(value = "/userinfo", method = RequestMethod.GET)
	public Map<String,Object> userinfo(){
		UserInfo userinfo=(UserInfo) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return userinfo.toMap();
	}
	
//	//when is login as a role, then access another role's login page it will get /403, but we will redirect it to /
//  @RequestMapping(value="/403", method = RequestMethod.GET)
//  public String denied (HttpServletRequest request, HttpServletResponse response) {
//  	System.out.println("#################");
//      Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//      if (auth != null){    
//          new SecurityContextLogoutHandler().logout(request, response, auth);
//      }
//      System.out.println(auth.getAuthorities());
//      return "redirect:/";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
//  }
}
