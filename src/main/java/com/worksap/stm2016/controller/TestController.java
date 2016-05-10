package com.worksap.stm2016.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

//import com.worksap.stm2016.xroster.model.Person;


@Controller
public class TestController {
    private JdbcTemplate jdbcTemplate;


    @Autowired
    public TestController(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

//    @RequestMapping("/persons")
//    @ResponseBody
//    List<Person> persons() {
//        List<Person> personList = jdbcTemplate.query("select * from persons", BeanPropertyRowMapper.newInstance(Person.class));
//        return personList;
//    }
    
    @RequestMapping("/haha0")
    public String haha6() {
        return "haha";
    }
    
    @RequestMapping("/hehe")
    public String hehe() {
        return "test/hehe";
    }
    
    @RequestMapping("/test")
    public String test(@RequestParam(value="name", required=false, defaultValue="World") String name, Model model) {
        model.addAttribute("name", name);
        return "test";
    }

    @RequestMapping("/z")
    public String z() {
        return "z";
    }

}
