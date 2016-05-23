package com.worksap.stm2016.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .authorizeRequests()
            	.antMatchers("/pages_ste/*").hasRole("ste")
            	.antMatchers("/pages_hr/*").hasRole("hr")
            	.antMatchers("/pages_mg/*").hasRole("mg")
            	.anyRequest().permitAll()
                .and()
            .formLogin()
                .loginPage("/login")
                .permitAll()
                .and()
        		.exceptionHandling().accessDeniedPage("/403");
//                .and()
//            .logout()
//            	.logoutRequestMatcher(new AntPathRequestMatcher("/logout")).permitAll();
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
