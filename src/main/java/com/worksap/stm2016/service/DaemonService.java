package com.worksap.stm2016.service;

import static com.worksap.stm2016.jooq.domain.tables.ViRecruitInterviewReminder.VI_RECRUIT_INTERVIEW_REMINDER;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.jooq.DSLContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.worksap.stm2016.global.Constants;
import com.worksap.stm2016.util.EmailUtil;

@Service
@Transactional
public class DaemonService {
	private final static Logger logger = LoggerFactory.getLogger(DaemonService.class);

	@Autowired
	private DSLContext dsl;
	
	public void interviewReminder(){
		
		new Thread(() -> {
			while(true){
				List<Map<String,Object>> rs=dsl.selectFrom(VI_RECRUIT_INTERVIEW_REMINDER).fetchMaps();
				for(Map<String,Object> r:rs){
					
//					String mg_msg=Constants.email_mg_msg
//							.replace("@MG", (String)r.get("contact_person"))
//							.replace("@TIME", ((Timestamp)r.get("starttime")).toString()+" ~ "+((Timestamp)r.get("endtime")).toString())
//							.replace("@STE", (String)r.get("name"))
//							.replace("@GENDER", (Boolean)r.get("gender")?"Male":"Female")
//							.replace("@TELEPHONE", (String)r.get("telephone"))
//							.replace("@RESUME", (String)r.get("resume_url"));
					
					String ste_msg=Constants.email_ste_msg
							.replace("@STE",(String)r.get("name"))
							.replace("@TIME", 
									((Timestamp)r.get("starttime")).toString().substring(0,Math.min(16,((Timestamp)r.get("starttime")).toString().length()))
									 +" ~ "
									 +((Timestamp)r.get("endtime")).toString().substring(0,Math.min(16, ((Timestamp)r.get("endtime")).toString().length())))
							.replace("@LOCATION", (String)r.get("location"))
							.replace("@PERSON", (String)r.get("contact_person"))
							.replace("@PHONE", (String)r.get("contact_phone"))
							.replace("@REPLENISH", (String)r.get("replenish"));
					
					String ste_email=(String)r.get("email");
					
					logger.info("send email to: "+ste_email);
					logger.info("msg: "+ste_msg);
					
					EmailUtil.sendEmail(ste_email, Constants.email_title, ste_msg);
					
				}
				try {
					Thread.sleep(24L*60L*60L*1000L);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			
		}).start();
	}
}
