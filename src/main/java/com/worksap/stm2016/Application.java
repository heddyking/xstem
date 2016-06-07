package com.worksap.stm2016;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.worksap.stm2016.service.DaemonService;  

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
		SpringApplication.run(Application.class, args);
	}

}
