package com.worksap.stm2016.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.worksap.stm2016.service.DaemonService;


@Controller
public class DaemonController {
	private final static Logger logger = LoggerFactory.getLogger(DaemonController.class);
	
    private DaemonService ds;

    @Autowired
    public DaemonController(DaemonService ds) {
        this.ds=ds;
        logger.info("Start Interview Reminder Daemon");
//        ds.interviewReminder();
    }
}
