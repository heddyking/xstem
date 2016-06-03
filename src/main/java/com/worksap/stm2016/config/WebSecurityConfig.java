package com.worksap.stm2016.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import com.worksap.stm2016.global.Role;
import com.worksap.stm2016.security.CustomAuthenticationProvider;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	@Override
	//--0-admin
	//--1-hrm
	//--2-hr
	//--3-mg
	//--4-other
	//--10-candidate ste
	//--11-ste
	//--12-dismissed ste
	protected void configure(HttpSecurity http) throws Exception {
		http
		.authorizeRequests()
		.antMatchers("/pages_ste/*").hasAnyRole(Role.ADMIN.v(),Role.CANDIDATE.v(),Role.STE.v())
		.antMatchers("/ste/*").hasAnyRole(Role.ADMIN.v(),Role.CANDIDATE.v(),Role.STE.v())
		.antMatchers("/cste/*").hasAnyRole(Role.ADMIN.v(),Role.CANDIDATE.v())
		.antMatchers("/rste/*").hasAnyRole(Role.ADMIN.v(),Role.STE.v())
		.antMatchers("/pages_hr/*").hasAnyRole(Role.ADMIN.v(),Role.HRM.v(),Role.HR.v())
		.antMatchers("/hr/*").hasAnyRole(Role.ADMIN.v(),Role.HRM.v(),Role.HR.v())
		.antMatchers("/hrm/*").hasAnyRole(Role.ADMIN.v(),Role.HRM.v())
		.antMatchers("/pages_mg/*").hasAnyRole(Role.ADMIN.v(),Role.MG.v())
		.antMatchers("/mg/*").hasAnyRole(Role.ADMIN.v(),Role.MG.v())
		.anyRequest().permitAll()
		.and()
		.formLogin()
		.loginPage("/login")
		.permitAll()
		.and()
		.exceptionHandling().accessDeniedPage("/403");
		//            .and()
		//            .logout()
		//            .logoutRequestMatcher(new AntPathRequestMatcher("/logout")).permitAll();
	}

	@Autowired
	CustomAuthenticationProvider provider;

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		//        auth.inMemoryAuthentication()
		//                .withUser("user").password("password").roles("USER");
		//        auth.authenticationProvider(authenticationProvider);
		auth.authenticationProvider(provider);
	}

	//    @Bean
	//    public CustomAuthenticationProvider springAuthenticationProvider() {
	//    	return new CustomAuthenticationProvider();
	//    }	
}
