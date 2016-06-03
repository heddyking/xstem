package com.worksap.stm2016.security;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;

import com.worksap.stm2016.service.AccountService;

@Component
public class CustomAuthenticationProvider implements AuthenticationProvider {
	@Autowired
	private AccountService accountService;
	
    @Override
    public Authentication authenticate(Authentication authentication) 
      throws AuthenticationException {
        String name = authentication.getName();
        String password = authentication.getCredentials().toString();
        System.out.println("@@@@@@@@@@"+name+"##########"+password);
        UserInfo userinfo=shouldAuthenticateAgainstThirdPartySystem(name,password);
         
        if (userinfo!=null) {
            // use the credentials and authenticate against the third-party system
        	 List<GrantedAuthority> authorities=new ArrayList<GrantedAuthority>();
             authorities.add(new SimpleGrantedAuthority("ROLE_"+userinfo.getRole()));
             return new UsernamePasswordAuthenticationToken(userinfo, password, authorities);
        } else {
        	throw new BadCredentialsException("Bad Credentials");
        }
    }
 
    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }
    
    public UserInfo shouldAuthenticateAgainstThirdPartySystem(String email, String password){
    	if(email==null || password==null) return null;
    	
    	UserInfo userinfo=new UserInfo();
    	try{
    		Map<String,Object> map=accountService.fteAccount(email);
    		userinfo.setEmail(email);
    		userinfo.setRole((Integer)map.get("role"));
    		userinfo.setUserid((Integer)map.get("fteid"));
    		userinfo.setDepartmentid((Integer)map.get("departmentid"));
    		userinfo.setPositionid((Integer)map.get("positionid"));
    		if(password.equals(map.get("password"))) return userinfo;
    		else return null;
    	}catch(Exception e){
    		try{
    			Map<String,Object> map=accountService.steAccount(email);
    			userinfo.setEmail(email);
        		userinfo.setRole((Integer)map.get("role"));
        		userinfo.setUserid((Integer)map.get("steid"));
        		userinfo.setDepartmentid((Integer)map.get("departmentid"));
        		userinfo.setPositionid((Integer)map.get("positionid"));
        		if(password.equals(map.get("password"))) return userinfo;
        		else return null;
        	}catch(Exception exp){
        		return null;
        	}
    	}
    }
}