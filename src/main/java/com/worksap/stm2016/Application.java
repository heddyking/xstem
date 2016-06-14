package com.worksap.stm2016;

import java.util.TimeZone;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;  

/**
 * @author xiaoxi
 *
 */
@SpringBootApplication
@EnableAutoConfiguration
@ComponentScan  
public class Application
{
	public static void main(String[] args)
	{
		TimeZone.setDefault(TimeZone.getTimeZone("Asia/Shanghai")); 
		SpringApplication.run(Application.class, args);
	}

}
