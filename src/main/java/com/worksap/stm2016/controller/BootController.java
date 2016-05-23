package com.worksap.stm2016.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

//import com.worksap.stm2016.xroster.model.Person;

@Controller
public class BootController {
    
    @RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
    	System.out.println("#################");
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){    
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
    }
    
    @RequestMapping(value="/403", method = RequestMethod.GET)
    public String denied (HttpServletRequest request, HttpServletResponse response) {
    	System.out.println("#################");
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){    
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
    }
    
//    @RequestMapping(value="/pages_ste/", method = RequestMethod.GET)
//    public String pages_ste (HttpServletRequest request, HttpServletResponse response) {
//    	System.out.println("#################");
//        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//        if (auth != null){    
//            new SecurityContextLogoutHandler().logout(request, response, auth);
//        }
//        return "redirect:/pages_ste/index.html";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
//    }
//    
//    @RequestMapping(value="/pages_hr/", method = RequestMethod.GET)
//    public String pages_hr (HttpServletRequest request, HttpServletResponse response) {
//    	System.out.println("#################");
//        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//        if (auth != null){    
//            new SecurityContextLogoutHandler().logout(request, response, auth);
//        }
//        return "redirect:/pages_hr/index.html";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
//    }
//    
//    @RequestMapping(value="/pages_mg/", method = RequestMethod.GET)
//    public String pages_mg (HttpServletRequest request, HttpServletResponse response) {
//    	System.out.println("#################");
//        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//        if (auth != null){    
//            new SecurityContextLogoutHandler().logout(request, response, auth);
//        }
//        return "redirect:/pages_mg/index.html";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
//    }

}
