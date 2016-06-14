/**
 * This class is generated by jOOQ
 */
package com.worksap.stm2016.jooq.domain.tables.records;


import com.worksap.stm2016.jooq.domain.tables.RecruitAgency;

import javax.annotation.Generated;

import org.jooq.Field;
import org.jooq.Record1;
import org.jooq.Record5;
import org.jooq.Row5;
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
public class RecruitAgencyRecord extends UpdatableRecordImpl<RecruitAgencyRecord> implements Record5<Integer, String, String, String, String> {

	private static final long serialVersionUID = 2109265598;

	/**
	 * Setter for <code>ss1604c195_rd2.recruit_agency.agencyid</code>.
	 */
	public void setAgencyid(Integer value) {
		setValue(0, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.recruit_agency.agencyid</code>.
	 */
	public Integer getAgencyid() {
		return (Integer) getValue(0);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.recruit_agency.agency_url</code>.
	 */
	public void setAgencyUrl(String value) {
		setValue(1, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.recruit_agency.agency_url</code>.
	 */
	public String getAgencyUrl() {
		return (String) getValue(1);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.recruit_agency.agency_tpl</code>. template
	 */
	public void setAgencyTpl(String value) {
		setValue(2, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.recruit_agency.agency_tpl</code>. template
	 */
	public String getAgencyTpl() {
		return (String) getValue(2);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.recruit_agency.agency_auth</code>. auth string
	 */
	public void setAgencyAuth(String value) {
		setValue(3, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.recruit_agency.agency_auth</code>. auth string
	 */
	public String getAgencyAuth() {
		return (String) getValue(3);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.recruit_agency.agencyname</code>.
	 */
	public void setAgencyname(String value) {
		setValue(4, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.recruit_agency.agencyname</code>.
	 */
	public String getAgencyname() {
		return (String) getValue(4);
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
	// Record5 type implementation
	// -------------------------------------------------------------------------

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Row5<Integer, String, String, String, String> fieldsRow() {
		return (Row5) super.fieldsRow();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Row5<Integer, String, String, String, String> valuesRow() {
		return (Row5) super.valuesRow();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field1() {
		return RecruitAgency.RECRUIT_AGENCY.AGENCYID;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field2() {
		return RecruitAgency.RECRUIT_AGENCY.AGENCY_URL;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field3() {
		return RecruitAgency.RECRUIT_AGENCY.AGENCY_TPL;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field4() {
		return RecruitAgency.RECRUIT_AGENCY.AGENCY_AUTH;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field5() {
		return RecruitAgency.RECRUIT_AGENCY.AGENCYNAME;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value1() {
		return getAgencyid();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String value2() {
		return getAgencyUrl();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String value3() {
		return getAgencyTpl();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String value4() {
		return getAgencyAuth();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String value5() {
		return getAgencyname();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public RecruitAgencyRecord value1(Integer value) {
		setAgencyid(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public RecruitAgencyRecord value2(String value) {
		setAgencyUrl(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public RecruitAgencyRecord value3(String value) {
		setAgencyTpl(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public RecruitAgencyRecord value4(String value) {
		setAgencyAuth(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public RecruitAgencyRecord value5(String value) {
		setAgencyname(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public RecruitAgencyRecord values(Integer value1, String value2, String value3, String value4, String value5) {
		value1(value1);
		value2(value2);
		value3(value3);
		value4(value4);
		value5(value5);
		return this;
	}

	// -------------------------------------------------------------------------
	// Constructors
	// -------------------------------------------------------------------------

	/**
	 * Create a detached RecruitAgencyRecord
	 */
	public RecruitAgencyRecord() {
		super(RecruitAgency.RECRUIT_AGENCY);
	}

	/**
	 * Create a detached, initialised RecruitAgencyRecord
	 */
	public RecruitAgencyRecord(Integer agencyid, String agencyUrl, String agencyTpl, String agencyAuth, String agencyname) {
		super(RecruitAgency.RECRUIT_AGENCY);

		setValue(0, agencyid);
		setValue(1, agencyUrl);
		setValue(2, agencyTpl);
		setValue(3, agencyAuth);
		setValue(4, agencyname);
	}
}
