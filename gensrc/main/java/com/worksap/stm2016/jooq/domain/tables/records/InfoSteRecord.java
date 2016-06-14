/**
 * This class is generated by jOOQ
 */
package com.worksap.stm2016.jooq.domain.tables.records;


import com.worksap.stm2016.jooq.domain.tables.InfoSte;

import java.sql.Date;

import javax.annotation.Generated;

import org.jooq.Field;
import org.jooq.Record1;
import org.jooq.Record17;
import org.jooq.Row17;
import org.jooq.impl.UpdatableRecordImpl;


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
public class InfoSteRecord extends UpdatableRecordImpl<InfoSteRecord> implements Record17<Integer, String, Boolean, Date, String, String, String, String, String, Integer, Integer, String, String, Integer, String, String, String> {

	private static final long serialVersionUID = 1028107843;

	/**
	 * Setter for <code>ss1604c195_rd2.info_ste.steid</code>.
	 */
	public void setSteid(Integer value) {
		setValue(0, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.info_ste.steid</code>.
	 */
	public Integer getSteid() {
		return (Integer) getValue(0);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.info_ste.name</code>.
	 */
	public void setName(String value) {
		setValue(1, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.info_ste.name</code>.
	 */
	public String getName() {
		return (String) getValue(1);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.info_ste.gender</code>.
	 */
	public void setGender(Boolean value) {
		setValue(2, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.info_ste.gender</code>.
	 */
	public Boolean getGender() {
		return (Boolean) getValue(2);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.info_ste.birthday</code>.
	 */
	public void setBirthday(Date value) {
		setValue(3, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.info_ste.birthday</code>.
	 */
	public Date getBirthday() {
		return (Date) getValue(3);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.info_ste.location</code>.
	 */
	public void setLocation(String value) {
		setValue(4, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.info_ste.location</code>.
	 */
	public String getLocation() {
		return (String) getValue(4);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.info_ste.email</code>.
	 */
	public void setEmail(String value) {
		setValue(5, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.info_ste.email</code>.
	 */
	public String getEmail() {
		return (String) getValue(5);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.info_ste.email_self</code>.
	 */
	public void setEmailSelf(String value) {
		setValue(6, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.info_ste.email_self</code>.
	 */
	public String getEmailSelf() {
		return (String) getValue(6);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.info_ste.phone</code>.
	 */
	public void setPhone(String value) {
		setValue(7, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.info_ste.phone</code>.
	 */
	public String getPhone() {
		return (String) getValue(7);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.info_ste.telephone</code>.
	 */
	public void setTelephone(String value) {
		setValue(8, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.info_ste.telephone</code>.
	 */
	public String getTelephone() {
		return (String) getValue(8);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.info_ste.departmentid</code>.
	 */
	public void setDepartmentid(Integer value) {
		setValue(9, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.info_ste.departmentid</code>.
	 */
	public Integer getDepartmentid() {
		return (Integer) getValue(9);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.info_ste.role</code>. 10-candidate ste
11-ste
12-dismissed ste
	 */
	public void setRole(Integer value) {
		setValue(10, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.info_ste.role</code>. 10-candidate ste
11-ste
12-dismissed ste
	 */
	public Integer getRole() {
		return (Integer) getValue(10);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.info_ste.offer_url</code>.
	 */
	public void setOfferUrl(String value) {
		setValue(11, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.info_ste.offer_url</code>.
	 */
	public String getOfferUrl() {
		return (String) getValue(11);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.info_ste.contract_url</code>.
	 */
	public void setContractUrl(String value) {
		setValue(12, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.info_ste.contract_url</code>.
	 */
	public String getContractUrl() {
		return (String) getValue(12);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.info_ste.positionid</code>.
	 */
	public void setPositionid(Integer value) {
		setValue(13, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.info_ste.positionid</code>.
	 */
	public Integer getPositionid() {
		return (Integer) getValue(13);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.info_ste.skills</code>.
	 */
	public void setSkills(String value) {
		setValue(14, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.info_ste.skills</code>.
	 */
	public String getSkills() {
		return (String) getValue(14);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.info_ste.experiences</code>.
	 */
	public void setExperiences(String value) {
		setValue(15, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.info_ste.experiences</code>.
	 */
	public String getExperiences() {
		return (String) getValue(15);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.info_ste.resume_url</code>.
	 */
	public void setResumeUrl(String value) {
		setValue(16, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.info_ste.resume_url</code>.
	 */
	public String getResumeUrl() {
		return (String) getValue(16);
	}

	// -------------------------------------------------------------------------
	// Primary key information
	// -------------------------------------------------------------------------

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Record1<Integer> key() {
		return (Record1) super.key();
	}

	// -------------------------------------------------------------------------
	// Record17 type implementation
	// -------------------------------------------------------------------------

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Row17<Integer, String, Boolean, Date, String, String, String, String, String, Integer, Integer, String, String, Integer, String, String, String> fieldsRow() {
		return (Row17) super.fieldsRow();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Row17<Integer, String, Boolean, Date, String, String, String, String, String, Integer, Integer, String, String, Integer, String, String, String> valuesRow() {
		return (Row17) super.valuesRow();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field1() {
		return InfoSte.INFO_STE.STEID;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field2() {
		return InfoSte.INFO_STE.NAME;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Boolean> field3() {
		return InfoSte.INFO_STE.GENDER;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Date> field4() {
		return InfoSte.INFO_STE.BIRTHDAY;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field5() {
		return InfoSte.INFO_STE.LOCATION;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field6() {
		return InfoSte.INFO_STE.EMAIL;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field7() {
		return InfoSte.INFO_STE.EMAIL_SELF;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field8() {
		return InfoSte.INFO_STE.PHONE;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field9() {
		return InfoSte.INFO_STE.TELEPHONE;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field10() {
		return InfoSte.INFO_STE.DEPARTMENTID;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field11() {
		return InfoSte.INFO_STE.ROLE;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field12() {
		return InfoSte.INFO_STE.OFFER_URL;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field13() {
		return InfoSte.INFO_STE.CONTRACT_URL;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field14() {
		return InfoSte.INFO_STE.POSITIONID;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field15() {
		return InfoSte.INFO_STE.SKILLS;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field16() {
		return InfoSte.INFO_STE.EXPERIENCES;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field17() {
		return InfoSte.INFO_STE.RESUME_URL;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value1() {
		return getSteid();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String value2() {
		return getName();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Boolean value3() {
		return getGender();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Date value4() {
		return getBirthday();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String value5() {
		return getLocation();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String value6() {
		return getEmail();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String value7() {
		return getEmailSelf();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String value8() {
		return getPhone();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String value9() {
		return getTelephone();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value10() {
		return getDepartmentid();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value11() {
		return getRole();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String value12() {
		return getOfferUrl();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String value13() {
		return getContractUrl();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value14() {
		return getPositionid();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String value15() {
		return getSkills();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String value16() {
		return getExperiences();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String value17() {
		return getResumeUrl();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoSteRecord value1(Integer value) {
		setSteid(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoSteRecord value2(String value) {
		setName(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoSteRecord value3(Boolean value) {
		setGender(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoSteRecord value4(Date value) {
		setBirthday(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoSteRecord value5(String value) {
		setLocation(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoSteRecord value6(String value) {
		setEmail(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoSteRecord value7(String value) {
		setEmailSelf(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoSteRecord value8(String value) {
		setPhone(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoSteRecord value9(String value) {
		setTelephone(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoSteRecord value10(Integer value) {
		setDepartmentid(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoSteRecord value11(Integer value) {
		setRole(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoSteRecord value12(String value) {
		setOfferUrl(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoSteRecord value13(String value) {
		setContractUrl(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoSteRecord value14(Integer value) {
		setPositionid(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoSteRecord value15(String value) {
		setSkills(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoSteRecord value16(String value) {
		setExperiences(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoSteRecord value17(String value) {
		setResumeUrl(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoSteRecord values(Integer value1, String value2, Boolean value3, Date value4, String value5, String value6, String value7, String value8, String value9, Integer value10, Integer value11, String value12, String value13, Integer value14, String value15, String value16, String value17) {
		value1(value1);
		value2(value2);
		value3(value3);
		value4(value4);
		value5(value5);
		value6(value6);
		value7(value7);
		value8(value8);
		value9(value9);
		value10(value10);
		value11(value11);
		value12(value12);
		value13(value13);
		value14(value14);
		value15(value15);
		value16(value16);
		value17(value17);
		return this;
	}

	// -------------------------------------------------------------------------
	// Constructors
	// -------------------------------------------------------------------------

	/**
	 * Create a detached InfoSteRecord
	 */
	public InfoSteRecord() {
		super(InfoSte.INFO_STE);
	}

	/**
	 * Create a detached, initialised InfoSteRecord
	 */
	public InfoSteRecord(Integer steid, String name, Boolean gender, Date birthday, String location, String email, String emailSelf, String phone, String telephone, Integer departmentid, Integer role, String offerUrl, String contractUrl, Integer positionid, String skills, String experiences, String resumeUrl) {
		super(InfoSte.INFO_STE);

		setValue(0, steid);
		setValue(1, name);
		setValue(2, gender);
		setValue(3, birthday);
		setValue(4, location);
		setValue(5, email);
		setValue(6, emailSelf);
		setValue(7, phone);
		setValue(8, telephone);
		setValue(9, departmentid);
		setValue(10, role);
		setValue(11, offerUrl);
		setValue(12, contractUrl);
		setValue(13, positionid);
		setValue(14, skills);
		setValue(15, experiences);
		setValue(16, resumeUrl);
	}
}
