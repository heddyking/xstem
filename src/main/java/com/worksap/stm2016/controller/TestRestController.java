package com.worksap.stm2016.controller;

import java.util.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestRestController {
	private JdbcTemplate jdbcTemplate;

    @Autowired
    public TestRestController(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
    
    @RequestMapping("/xxx")
    public String index() {
        return "Greetings from Spring Boot!";
    }
    
    @RequestMapping("/yyy")
    public List<String> yyyy() {
    	List<String> list=new ArrayList<String>();
    	list.add("sdfasfd");
    	list.add("三法师");
        return list;
    }
    
    @RequestMapping("/zzz")
    public List<Map<String,Object>> zzz() {
    	List<Map<String,Object>> list=new ArrayList<Map<String,Object>>();
    	Map<String,Object> map=new HashMap<String,Object>();
    	map.put("a", "aaaa");
    	map.put("b", "bbbbbbb");
    	Map<String,Object> map2=new HashMap<String,Object>();
    	map2.put("e", "23154324");
    	map2.put("g", "34667yt");
    	map2.put("u", new Date());
    	list.add(map);
    	list.add(map2);
        return list;
    }
    
    @RequestMapping("/ttt")
    public String asssd() {
    	String str= jdbcTemplate.queryForObject("select password from tbl_account where email=?",new Object[]{"wang_xiaox@worksap.co.jp"}, String.class);
		System.out.println(str);	
    	return str;
    }
}
