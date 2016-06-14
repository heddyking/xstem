package com.worksap.stm2016.util;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.worksap.stm2016.Application;
import com.worksap.stm2016.global.Constants;

/**
 * Created by wang_xiaox on 5/21/2016.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(Application.class)
public class EmailUtilTests {
	
	@Test
	public void blank(){
	}
	
//	@Test
    public void sendEmail(){
		String title="WAP Interview Reminder";
		String msg="Hi @STE:\n\n"+
				   "You are set to interview with WAP! Please confirm that you received this message and that the schedule below works for you.\n"+
				   "Time:@TIME \n"+
				   "Location:@LOCATION \n"+
				   "Contact　Person:@PERSON \n"+
				   "Contact Number:@PHONE \n"+
				   "Replenish:@REPLENISH \n\n"+
				   "Regards \n\n"+
				   "WAP HR TEAM";

        EmailUtil.sendEmail("981088636@qq.com", title, msg);
    }

}
