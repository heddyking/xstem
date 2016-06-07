/**
 * This class is generated by jOOQ
 */
package com.worksap.stm2016.jooq.domain.tables.records;


import com.worksap.stm2016.jooq.domain.tables.ViRecruitInterviewContext;

import java.sql.Date;
import java.sql.Timestamp;

import javax.annotation.Generated;

import org.jooq.impl.TableRecordImpl;


/**
 * This class is generated by jOOQ.
 */
@Generated(
	value = {
		"http://www.jooq.org",
		"jOOQ version:3.7.2"
	},
	comments = "This class is generated by jOOQ"
)
@SuppressWarnings({ "all", "unchecked", "rawtypes" })
public class ViRecruitInterviewContextRecord extends TableRecordImpl<ViRecruitInterviewContextRecord> {

	private static final long serialVersionUID = 1990298277;

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.interviewid</code>.
	 */
	public void setInterviewid(Integer value) {
		setValue(0, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.interviewid</code>.
	 */
	public Integer getInterviewid() {
		return (Integer) getValue(0);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.endtime</code>.
	 */
	public void setEndtime(Timestamp value) {
		setValue(1, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.endtime</code>.
	 */
	public Timestamp getEndtime() {
		return (Timestamp) getValue(1);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.location</code>.
	 */
	public void setLocation(String value) {
		setValue(2, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.location</code>.
	 */
	public String getLocation() {
		return (String) getValue(2);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.contact_person</code>.
	 */
	public void setContactPerson(String value) {
		setValue(3, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.contact_person</code>.
	 */
	public String getContactPerson() {
		return (String) getValue(3);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.contact_phone</code>.
	 */
	public void setContactPhone(String value) {
		setValue(4, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.contact_phone</code>.
	 */
	public String getContactPhone() {
		return (String) getValue(4);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.replenish</code>.
	 */
	public void setReplenish(String value) {
		setValue(5, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.replenish</code>.
	 */
	public String getReplenish() {
		return (String) getValue(5);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.applymentid</code>.
	 */
	public void setApplymentid(Integer value) {
		setValue(6, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.applymentid</code>.
	 */
	public Integer getApplymentid() {
		return (Integer) getValue(6);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.starttime</code>.
	 */
	public void setStarttime(Timestamp value) {
		setValue(7, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.starttime</code>.
	 */
	public Timestamp getStarttime() {
		return (Timestamp) getValue(7);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.state</code>.
	 */
	public void setState(Integer value) {
		setValue(8, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.state</code>.
	 */
	public Integer getState() {
		return (Integer) getValue(8);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.createdat</code>.
	 */
	public void setCreatedat(Timestamp value) {
		setValue(9, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.createdat</code>.
	 */
	public Timestamp getCreatedat() {
		return (Timestamp) getValue(9);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.updatedat</code>.
	 */
	public void setUpdatedat(Timestamp value) {
		setValue(10, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.updatedat</code>.
	 */
	public Timestamp getUpdatedat() {
		return (Timestamp) getValue(10);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.updatedby</code>.
	 */
	public void setUpdatedby(Integer value) {
		setValue(11, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.updatedby</code>.
	 */
	public Integer getUpdatedby() {
		return (Integer) getValue(11);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.positionname</code>.
	 */
	public void setPositionname(String value) {
		setValue(12, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.positionname</code>.
	 */
	public String getPositionname() {
		return (String) getValue(12);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.number</code>.
	 */
	public void setNumber(Integer value) {
		setValue(13, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.number</code>.
	 */
	public Integer getNumber() {
		return (Integer) getValue(13);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.location_req</code>.
	 */
	public void setLocationReq(String value) {
		setValue(14, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.location_req</code>.
	 */
	public String getLocationReq() {
		return (String) getValue(14);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.date_req</code>.
	 */
	public void setDateReq(Date value) {
		setValue(15, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.date_req</code>.
	 */
	public Date getDateReq() {
		return (Date) getValue(15);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.duration_req</code>.
	 */
	public void setDurationReq(Integer value) {
		setValue(16, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.duration_req</code>.
	 */
	public Integer getDurationReq() {
		return (Integer) getValue(16);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.skill_req1</code>.
	 */
	public void setSkillReq1(String value) {
		setValue(17, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.skill_req1</code>.
	 */
	public String getSkillReq1() {
		return (String) getValue(17);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.skill_req2</code>.
	 */
	public void setSkillReq2(String value) {
		setValue(18, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.skill_req2</code>.
	 */
	public String getSkillReq2() {
		return (String) getValue(18);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.skill_req3</code>.
	 */
	public void setSkillReq3(String value) {
		setValue(19, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.skill_req3</code>.
	 */
	public String getSkillReq3() {
		return (String) getValue(19);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.skill_req4</code>.
	 */
	public void setSkillReq4(String value) {
		setValue(20, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.skill_req4</code>.
	 */
	public String getSkillReq4() {
		return (String) getValue(20);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.skill_req5</code>.
	 */
	public void setSkillReq5(String value) {
		setValue(21, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.skill_req5</code>.
	 */
	public String getSkillReq5() {
		return (String) getValue(21);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.description</code>.
	 */
	public void setDescription(String value) {
		setValue(22, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.description</code>.
	 */
	public String getDescription() {
		return (String) getValue(22);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.departmentid</code>.
	 */
	public void setDepartmentid(Integer value) {
		setValue(23, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.departmentid</code>.
	 */
	public Integer getDepartmentid() {
		return (Integer) getValue(23);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.departmentname</code>.
	 */
	public void setDepartmentname(String value) {
		setValue(24, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.departmentname</code>.
	 */
	public String getDepartmentname() {
		return (String) getValue(24);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.parent_departmentid</code>.
	 */
	public void setParentDepartmentid(Integer value) {
		setValue(25, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.parent_departmentid</code>.
	 */
	public Integer getParentDepartmentid() {
		return (Integer) getValue(25);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.name</code>.
	 */
	public void setName(String value) {
		setValue(26, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.name</code>.
	 */
	public String getName() {
		return (String) getValue(26);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.birthday</code>.
	 */
	public void setBirthday(Date value) {
		setValue(27, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.birthday</code>.
	 */
	public Date getBirthday() {
		return (Date) getValue(27);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.gender</code>.
	 */
	public void setGender(Boolean value) {
		setValue(28, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.gender</code>.
	 */
	public Boolean getGender() {
		return (Boolean) getValue(28);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.email</code>.
	 */
	public void setEmail(String value) {
		setValue(29, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.email</code>.
	 */
	public String getEmail() {
		return (String) getValue(29);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.email_self</code>.
	 */
	public void setEmailSelf(String value) {
		setValue(30, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.email_self</code>.
	 */
	public String getEmailSelf() {
		return (String) getValue(30);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.phone</code>.
	 */
	public void setPhone(String value) {
		setValue(31, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.phone</code>.
	 */
	public String getPhone() {
		return (String) getValue(31);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.telephone</code>.
	 */
	public void setTelephone(String value) {
		setValue(32, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.telephone</code>.
	 */
	public String getTelephone() {
		return (String) getValue(32);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.skills</code>.
	 */
	public void setSkills(String value) {
		setValue(33, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.skills</code>.
	 */
	public String getSkills() {
		return (String) getValue(33);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.experiences</code>.
	 */
	public void setExperiences(String value) {
		setValue(34, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.experiences</code>.
	 */
	public String getExperiences() {
		return (String) getValue(34);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.vi_recruit_interview_context.resume_url</code>.
	 */
	public void setResumeUrl(String value) {
		setValue(35, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.vi_recruit_interview_context.resume_url</code>.
	 */
	public String getResumeUrl() {
		return (String) getValue(35);
	}

	// -------------------------------------------------------------------------
	// Constructors
	// -------------------------------------------------------------------------

	/**
	 * Create a detached ViRecruitInterviewContextRecord
	 */
	public ViRecruitInterviewContextRecord() {
		super(ViRecruitInterviewContext.VI_RECRUIT_INTERVIEW_CONTEXT);
	}

	/**
	 * Create a detached, initialised ViRecruitInterviewContextRecord
	 */
	public ViRecruitInterviewContextRecord(Integer interviewid, Timestamp endtime, String location, String contactPerson, String contactPhone, String replenish, Integer applymentid, Timestamp starttime, Integer state, Timestamp createdat, Timestamp updatedat, Integer updatedby, String positionname, Integer number, String locationReq, Date dateReq, Integer durationReq, String skillReq1, String skillReq2, String skillReq3, String skillReq4, String skillReq5, String description, Integer departmentid, String departmentname, Integer parentDepartmentid, String name, Date birthday, Boolean gender, String email, String emailSelf, String phone, String telephone, String skills, String experiences, String resumeUrl) {
		super(ViRecruitInterviewContext.VI_RECRUIT_INTERVIEW_CONTEXT);

		setValue(0, interviewid);
		setValue(1, endtime);
		setValue(2, location);
		setValue(3, contactPerson);
		setValue(4, contactPhone);
		setValue(5, replenish);
		setValue(6, applymentid);
		setValue(7, starttime);
		setValue(8, state);
		setValue(9, createdat);
		setValue(10, updatedat);
		setValue(11, updatedby);
		setValue(12, positionname);
		setValue(13, number);
		setValue(14, locationReq);
		setValue(15, dateReq);
		setValue(16, durationReq);
		setValue(17, skillReq1);
		setValue(18, skillReq2);
		setValue(19, skillReq3);
		setValue(20, skillReq4);
		setValue(21, skillReq5);
		setValue(22, description);
		setValue(23, departmentid);
		setValue(24, departmentname);
		setValue(25, parentDepartmentid);
		setValue(26, name);
		setValue(27, birthday);
		setValue(28, gender);
		setValue(29, email);
		setValue(30, emailSelf);
		setValue(31, phone);
		setValue(32, telephone);
		setValue(33, skills);
		setValue(34, experiences);
		setValue(35, resumeUrl);
	}
}
