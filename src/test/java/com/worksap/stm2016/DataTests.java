package com.worksap.stm2016;

import org.jooq.DSLContext;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


/**
 * @author xiaoxi
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(Application.class)
public class DataTests
{

	@Autowired
	private DSLContext dsl;

	@Test
	public void blank(){
		
	}
	
//	@Test
	public void generate()  {
		dsl.execute(reset);
		dsl.execute(data);
	}
	
	public String reset=
			"delete from sns_message;\n" +
			"delete from sns_timeline;\n" +
			"delete from staffing_change_log;\n" +
			"delete from staffing_change;\n" +
			"delete from check_attendance;\n" +
			"delete from check_performance;\n" +
			"delete from check_skill;\n" +
			"delete from recruit_published;\n" +
			"delete from recruit_agency;\n" +
			"delete from recruit_pool_log;\n" +
			"delete from recruit_pool;\n" +
			"delete from recruit_interview;\n" +
			"delete from recruit_applyment_log;\n" +
			"delete from recruit_applyment;\n" +
			"delete from info_ste;\n" +
			"delete from recruit_position_log;\n" +
			"delete from recruit_position;\n" +
			"delete from info_fte;\n" +
			"delete from info_department;\n" +
			"delete from info_account;\n";
	
	public String data=
			"insert into info_department (departmentid,departmentname,parent_departmentid) values (1,'committee',null);\n" +
			"insert into info_department (departmentid,departmentname,parent_departmentid) values (2,'hr',1);\n" +
			"insert into info_department (departmentid,departmentname,parent_departmentid) values (3,'tech',1);\n" +
			"insert into info_department (departmentid,departmentname,parent_departmentid) values (4,'dev',3);\n" +
			"insert into info_department (departmentid,departmentname,parent_departmentid) values (5,'qa',3);\n" +
			"\n" +
			"\n" +
			"\n" +
			"insert into info_fte (fteid,birthday,departmentid,email,email_self,gender,\"location\",\"name\",phone,\"role\",telephone) values(1,'1990-1-1',2,'shuimuyanyuan@qq.com','shuimuyanyuan@qq.com',false,'shanghai','Zhang Joy','02154742387',1,'13866666666');\n" +
			"insert into info_fte (fteid,birthday,departmentid,email,email_self,gender,\"location\",\"name\",phone,\"role\",telephone) values(2,'1990-1-2',2,'hr@qq.com','hr@qq.com',true,'shanghai','Wang Ming','02154742388',2,'13866688888');\n" +
			"insert into info_fte (fteid,birthday,departmentid,email,email_self,gender,\"location\",\"name\",phone,\"role\",telephone) values(3,'1990-1-3',4,'mg1@qq.com','mg1@qq.com',true,'shanghai','Wang Xiao','02154742389',3,'13866689999');\n" +
			"insert into info_fte (fteid,birthday,departmentid,email,email_self,gender,\"location\",\"name\",phone,\"role\",telephone) values(4,'1990-1-4',5,'mg2@qq.com','mg2@qq.com',true,'shanghai','Wang Xi','02154742380',3,'13866680000');\n" +
			"\n" +
			"\n" +
			"\n" +
			"insert into info_account (accountid,email,\"password\",refid,\"role\") values(1,'shuimuyanyuan@qq.com','123',1,1);\n" +
			"insert into info_account (accountid,email,\"password\",refid,\"role\") values(2,'hr@qq.com','123',2,2);\n" +
			"insert into info_account (accountid,email,\"password\",refid,\"role\") values(3,'mg1@qq.com','123',3,3);\n" +
			"insert into info_account (accountid,email,\"password\",refid,\"role\") values(4,'mg2@qq.com','123',4,3);\n" +
			"insert into info_account (accountid,email,\"password\",refid,\"role\") values(5,'w1@qq.com','123',1,10);\n" +
			"insert into info_account (accountid,email,\"password\",refid,\"role\") values(6,'w2@qq.com','123',2,10);\n" +
			"insert into info_account (accountid,email,\"password\",refid,\"role\") values(7,'w3@qq.com','123',3,10);\n" +
			"insert into info_account (accountid,email,\"password\",refid,\"role\") values(8,'w4@qq.com','123',4,10);\n" +
			"insert into info_account (accountid,email,\"password\",refid,\"role\") values(9,'w5@qq.com','123',5,10);\n" +
			"insert into info_account (accountid,email,\"password\",refid,\"role\") values(10,'z1@qq.com','123',6,11);\n" +
			"\n" +
			"\n" +
			"\n" +
			"INSERT INTO recruit_position(positionname, \"number\", location_req, date_req, duration_req, skill_req1, skill_req2, skill_req3, skill_req4, skill_req5, createdby, updatedby, createdat, updatedat, departmentid, positionid, description)\n" +
			"VALUES ('Java Dev', 5, 'shanghai', '2016-6-20', 6, 'Java', 'Linux', 'Spring', 'JDBC', 'Mysql', 3, 3, '2016-5-30', '2016-5-30', 4, 1, 'Hue Java Development');\n" +
			"INSERT INTO recruit_position(positionname, \"number\", location_req, date_req, duration_req, skill_req1, skill_req2, skill_req3, skill_req4, skill_req5, createdby, updatedby, createdat, updatedat, departmentid, positionid, description)\n" +
			"VALUES ('Java QA', 8, 'shanghai', '2016-6-30', 8, 'Java', 'JUnit', 'Spring', 'Jmeter', 'Tsung', 4, 4, '2016-5-30', '2016-5-30', 5, 2, 'Hue Project Test');\n" +
			"INSERT INTO recruit_position(positionname, \"number\", location_req, date_req, duration_req, skill_req1, skill_req2, skill_req3, skill_req4, skill_req5, createdby, updatedby, createdat, updatedat, departmentid, positionid, description)\n" +
			"VALUES ('Java OPS', 5, 'shanghai', '2016-6-20', 6, 'Java', 'Hadoop', 'Splunk', 'Nginx', 'Docker', 4, 4, '2016-5-30', '2016-5-30', 5, 3, 'Hue Java OPS');\n" +
			"INSERT INTO recruit_position(positionname, \"number\", location_req, date_req, duration_req, skill_req1, skill_req2, skill_req3, skill_req4, skill_req5, createdby, updatedby, createdat, updatedat, departmentid, positionid, description)\n" +
			"VALUES ('Android Dev', 7, 'shanghai', '2016-6-22', 6, 'Android', 'ADB', 'Ionic', 'Meteor', 'AngularJS', 3, 3, '2016-5-30', '2016-5-30', 4, 4, 'Hue Android Client Development');\n" +
			"INSERT INTO recruit_position(positionname, \"number\", location_req, date_req, duration_req, skill_req1, skill_req2, skill_req3, skill_req4, skill_req5, createdby, updatedby, createdat, updatedat, departmentid, positionid, description)\n" +
			"VALUES ('Deep Research', 2, 'shanghai', '2016-6-25', 12, 'Data Mining', 'NLP', 'Machine Learning', 'Neural Network', 'LR', 3, 3, '2016-5-30', '2016-5-30', 4, 5, 'Hue Machine Learning Research');\n" +
			"\n" +
			"\n" +
			"\n" +
			"INSERT INTO recruit_pool(poolid, positionid, realnumber, apply_due, apply_start, poster_url, createdby, updatedby, createdat, updatedat)\n" +
			"VALUES (1, 1, 6, '2016-6-16', '2016-6-1', null, 2, 2, '2016-5-30', '2016-5-30');\n" +
			"INSERT INTO recruit_pool(poolid, positionid, realnumber, apply_due, apply_start, poster_url, createdby, updatedby, createdat, updatedat)\n" +
			"VALUES (2, 2, 10, '2016-6-16', '2016-6-1', null, 2, 2, '2016-5-30', '2016-5-30');\n" +
			"INSERT INTO recruit_pool(poolid, positionid, realnumber, apply_due, apply_start, poster_url, createdby, updatedby, createdat, updatedat)\n" +
			"VALUES (3, 3, 7, '2016-6-16', '2016-6-1', null, 2, 2, '2016-5-30', '2016-5-30');\n" +
			"INSERT INTO recruit_pool(poolid, positionid, realnumber, apply_due, apply_start, poster_url, createdby, updatedby, createdat, updatedat)\n" +
			"VALUES (4, 4, 8, '2016-6-16', '2016-6-1', null, 2, 2, '2016-5-30', '2016-5-30');\n" +
			"INSERT INTO recruit_pool(poolid, positionid, realnumber, apply_due, apply_start, poster_url, createdby, updatedby, createdat, updatedat)\n" +
			"VALUES (5, 5, 2, '2016-6-16', '2016-6-1', null, 2, 2, '2016-5-30', '2016-5-30');\n" +
			"\n" +
			"\n" +
			"\n" +
			"INSERT INTO recruit_agency(agencyid, agency_url, agency_tpl, agency_auth, agencyname)\n" +
			"VALUES (1, 'http://www.indeed.com', null, null, 'Indeed');\n" +
			"INSERT INTO recruit_agency(agencyid, agency_url, agency_tpl, agency_auth, agencyname)\n" +
			"VALUES (2, 'http://www.dajie.com/', null, null, 'Dajie');\n" +
			"INSERT INTO recruit_agency(agencyid, agency_url, agency_tpl, agency_auth, agencyname)\n" +
			"VALUES (3, 'http://www.51job.com/', null, null, '51job');\n" +
			"INSERT INTO recruit_agency(agencyid, agency_url, agency_tpl, agency_auth, agencyname)\n" +
			"VALUES (4, 'http://www.glassdoor.com/', null, null, 'Glassdoor');\n" +
			"INSERT INTO recruit_agency(agencyid, agency_url, agency_tpl, agency_auth, agencyname)\n" +
			"VALUES (5, 'http://www.kanzhun.com/', null, null, 'Kanzhun');\n" +
			"\n" +
			"\n" +
			"\n" +
			"INSERT INTO recruit_published(publishedid, poolid, agencyid)\n" +
			"VALUES (1, 1, 1);\n" +
			"INSERT INTO recruit_published(publishedid, poolid, agencyid)\n" +
			"VALUES (2, 1, 2);\n" +
			"INSERT INTO recruit_published(publishedid, poolid, agencyid)\n" +
			"VALUES (3, 1, 3);\n" +
			"INSERT INTO recruit_published(publishedid, poolid, agencyid)\n" +
			"VALUES (4, 2, 4);\n" +
			"INSERT INTO recruit_published(publishedid, poolid, agencyid)\n" +
			"VALUES (5, 2, 5);\n" +
			"INSERT INTO recruit_published(publishedid, poolid, agencyid)\n" +
			"VALUES (6, 2, 1);\n" +
			"INSERT INTO recruit_published(publishedid, poolid, agencyid)\n" +
			"VALUES (7, 3, 1);\n" +
			"INSERT INTO recruit_published(publishedid, poolid, agencyid)\n" +
			"VALUES (8, 3, 2);\n" +
			"INSERT INTO recruit_published(publishedid, poolid, agencyid)\n" +
			"VALUES (9, 3, 4);\n" +
			"INSERT INTO recruit_published(publishedid, poolid, agencyid)\n" +
			"VALUES (10, 4, 3);\n" +
			"INSERT INTO recruit_published(publishedid, poolid, agencyid)\n" +
			"VALUES (11, 4, 5);\n" +
			"INSERT INTO recruit_published(publishedid, poolid, agencyid)\n" +
			"VALUES (12, 5, 1);\n" +
			"INSERT INTO recruit_published(publishedid, poolid, agencyid)\n" +
			"VALUES (13, 5, 4);\n" +
			"\n" +
			"\n" +
			"\n" +
			"INSERT INTO info_ste(steid, name, gender, birthday, location, email, email_self, phone, telephone, departmentid, role, offer_url, contract_url, positionid, skills)\n" +
			"VALUES (1, 'Wang Yi', true, '1990-2-2', 'shanghai', 'w1@qq.com', 'w1@qq.com', '02157378851', '15216688611', null, 10, null, null, null, 'java,algorithm,mysql,hadoop,spring');\n" +
			"INSERT INTO info_ste(steid, name, gender, birthday, location, email, email_self, phone, telephone, departmentid, role, offer_url, contract_url, positionid, skills)\n" +
			"VALUES (2, 'Wang Er', true, '1989-2-21', 'shanghai', 'w2@qq.com', 'w2@qq.com', '02157378852', '15216688628', null, 10, null, null, null, 'java,jmeter,database,system,network,junit');\n" +
			"INSERT INTO info_ste(steid, name, gender, birthday, location, email, email_self, phone, telephone, departmentid, role, offer_url, contract_url, positionid, skills)\n" +
			"VALUES (3, 'Wang San', true, '1991-3-2', 'shanghai', 'w3@qq.com', 'w3@qq.com', '02157378853', '15216688638', null, 10, null, null, null, 'spark,cloudera,artifical neural network,data mining, NLP');\n" +
			"INSERT INTO info_ste(steid, name, gender, birthday, location, email, email_self, phone, telephone, departmentid, role, offer_url, contract_url, positionid, skills)\n" +
			"VALUES (4, 'Wang Si', true, '1990-5-25', 'shanghai', 'w4@qq.com', 'w4@qq.com', '02157378854', '15216688648', null, 10, null, null, null, 'data mining,algorithm,jmeter,spark,spring');\n" +
			"INSERT INTO info_ste(steid, name, gender, birthday, location, email, email_self, phone, telephone, departmentid, role, offer_url, contract_url, positionid, skills)\n" +
			"VALUES (5, 'Wang Wu', true, '1992-6-5', 'shanghai', 'w5@qq.com', 'w5@qq.com', '02157378855', '15216688655', null, 10, null, null, null, 'c++, nodejs,android,meteor,html5');\n" +
			"INSERT INTO info_ste(steid, name, gender, birthday, location, email, email_self, phone, telephone, departmentid, role, offer_url, contract_url, positionid, skills)\n" +
			"VALUES (6, 'Zhang Yi', true, '1989-11-2', 'shanghai', 'z1@qq.com', 'z1@qq.com', '02157378856', '15216688668', 4, 11, null, null, 1, 'java,linux,mysql,spring,ml');\n" +
			"\n" +
			"\n" +
			"\n" +
			"INSERT INTO check_attendance(attendanceid, steid, date, hours, state, updatedby, createdat, updatedat)\n" +
			"VALUES (1, 6, '2016-5-24', 8, 2, 3, '2016-5-27', '2016-5-27');\n" +
			"INSERT INTO check_attendance(attendanceid, steid, date, hours, state, updatedby, createdat, updatedat)\n" +
			"VALUES (2, 6, '2016-5-25', 8, 2, 3, '2016-5-27', '2016-5-27');\n" +
			"INSERT INTO check_attendance(attendanceid, steid, date, hours, state, updatedby, createdat, updatedat)\n" +
			"VALUES (3, 6, '2016-5-26', 8, 2, 3, '2016-5-27', '2016-5-27');\n" +
			"INSERT INTO check_attendance(attendanceid, steid, date, hours, state, updatedby, createdat, updatedat)\n" +
			"VALUES (4, 6, '2016-5-27', 8, 2, 3, '2016-5-27', '2016-5-27');\n" +
			"INSERT INTO check_attendance(attendanceid, steid, date, hours, state, updatedby, createdat, updatedat)\n" +
			"VALUES (5, 6, '2016-5-30', 8, 1, 6, '2016-5-30', '2016-5-30');\n" +
			"\n" +
			"\n" +
			"\n" +
			"INSERT INTO check_performance(performanceid, steid, week_lastday, hours, description, state, updatedby, createdat, updatedat)\n" +
			"VALUES (1, 6, '2016-5-27', 5, 'develop the hue thread pool module', 1, 6, '2016-5-30', '2016-5-30');\n" +
			"\n" +
			"\n" +
			"\n" +
			"INSERT INTO check_skill(steid, description, state, updatedby, createdat, updatedat, skillid, skill, score)\n" +
			"VALUES (6, 'Java 8 programming skills', 1, 6, '2016-5-30', '2016-5-30', 1, 'Java', null);\n" +
			"INSERT INTO check_skill(steid, description, state, updatedby, createdat, updatedat, skillid, skill, score)\n" +
			"VALUES (6, 'Database sql and O-R mapping skills', 1, 6, '2016-5-30', '2016-5-30', 2, 'Mysql', null);\n" +
			"INSERT INTO check_skill(steid, description, state, updatedby, createdat, updatedat, skillid, skill, score)\n" +
			"VALUES (6, 'Data Mining skills', 1, 6, '2016-5-30', '2016-5-30', 3, 'Data Mining', null);\n";
}


//--##check
//--0. self canceled
//--1. wait check
//--2. checked
//--3. rejected
//
//
//--##role
//--0-admin
//--1-hrm
//--2-hr
//--3-mg
//--4-other
//--10-candidate ste
//--11-ste
//--12-dismissed ste
//
//
//--##apply
//--0-self cancelled
//--1- wait hr check
//--2- wait mg check
//--3- wait arrange interview
//--4- interview
//--5- pass
//--6- fail
//
//
//--##snsmessage
//--0-sending
//--1-sent
//--2-withdraw
//
//
//--##snstimeline
//--0-sending
//--1-displaying
//--2-deleted
//
//
//--##staffingchange
//--0-ste apply check fail
//--1-ste apply wait mg check
//--2-ste apply mg checked wait hr check
//--3-ste apply pass
//--10-hr apply check fail
//--11-hr apply wait mg check
//--12-hr apply pass




////delete duplicate positions
//delete from recruit_position where 
//(
//select rank 
//from (select positionid, rank() over (partition by (positionname) order by updatedat desc) as rank from recruit_position) as t 
//where t.positionid=recruit_position.positionid
//) <> 1

////delete duplicate pool
//delete from recruit_pool where 
//(
//select rank 
//from (select poolid, rank() over (partition by (positionid) order by updatedat desc) as rank from recruit_pool) as t 
//where t.poolid=recruit_pool.poolid
//) <> 1