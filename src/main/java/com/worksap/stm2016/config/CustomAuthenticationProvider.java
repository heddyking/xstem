package com.worksap.stm2016.config;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;

@Component
public class CustomAuthenticationProvider implements AuthenticationProvider {
 
    @Override
    public Authentication authenticate(Authentication authentication) 
      throws AuthenticationException {
        String name = authentication.getName();
        String password = authentication.getCredentials().toString();
//        Collection<? extends GrantedAuthority> authorities = Arrays.asList(new GrantedAuthority[]{new SimpleGrantedAuthority(name)});
        List<GrantedAuthority> authorities=new ArrayList<GrantedAuthority>();
        authorities.add(new SimpleGrantedAuthority("ROLE_"+name.substring(0, name.indexOf("@"))));
        
        System.out.println("@@@@@@@@@@"+name+"##########"+password);
         
        if (shouldAuthenticateAgainstThirdPartySystem(name,password)) {
            // use the credentials and authenticate against the third-party system
            return new UsernamePasswordAuthenticationToken(name, password, authorities);
        } else {
        	throw new BadCredentialsException("Bad Credentials");
        }
    }
 
    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }
    
    public boolean shouldAuthenticateAgainstThirdPartySystem(String name, String password){
    	if(name==null || password==null) return false;
    	
    	if(name.equals("ste@qq.com") && password.equals("123")){
    		return true;
    	}
    	if(name.equals("hr@qq.com") && password.equals("123")){
    		return true;
    	}
    	if(name.equals("mg@qq.com") && password.equals("123")){
    		return true;
    	}
    	return false;
    }
}