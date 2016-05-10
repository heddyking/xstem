/**
 * This class is generated by jOOQ
 */
package com.worksap.stm2016.jooq.domain.tables.records;


import com.worksap.stm2016.jooq.domain.tables.InfoAccount;

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
public class InfoAccountRecord extends UpdatableRecordImpl<InfoAccountRecord> implements Record5<Integer, String, String, Integer, Integer> {

	private static final long serialVersionUID = -2033592778;

	/**
	 * Setter for <code>ss1604c195_rd4.info_account.accountid</code>.
	 */
	public void setAccountid(Integer value) {
		setValue(0, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.info_account.accountid</code>.
	 */
	public Integer getAccountid() {
		return (Integer) getValue(0);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.info_account.email</code>.
	 */
	public void setEmail(String value) {
		setValue(1, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.info_account.email</code>.
	 */
	public String getEmail() {
		return (String) getValue(1);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.info_account.password</code>.
	 */
	public void setPassword(String value) {
		setValue(2, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.info_account.password</code>.
	 */
	public String getPassword() {
		return (String) getValue(2);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.info_account.refid</code>.
	 */
	public void setRefid(Integer value) {
		setValue(3, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.info_account.refid</code>.
	 */
	public Integer getRefid() {
		return (Integer) getValue(3);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.info_account.role</code>.
	 */
	public void setRole(Integer value) {
		setValue(4, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.info_account.role</code>.
	 */
	public Integer getRole() {
		return (Integer) getValue(4);
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
	public Row5<Integer, String, String, Integer, Integer> fieldsRow() {
		return (Row5) super.fieldsRow();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Row5<Integer, String, String, Integer, Integer> valuesRow() {
		return (Row5) super.valuesRow();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field1() {
		return InfoAccount.INFO_ACCOUNT.ACCOUNTID;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field2() {
		return InfoAccount.INFO_ACCOUNT.EMAIL;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field3() {
		return InfoAccount.INFO_ACCOUNT.PASSWORD;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field4() {
		return InfoAccount.INFO_ACCOUNT.REFID;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field5() {
		return InfoAccount.INFO_ACCOUNT.ROLE;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value1() {
		return getAccountid();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String value2() {
		return getEmail();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String value3() {
		return getPassword();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value4() {
		return getRefid();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value5() {
		return getRole();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoAccountRecord value1(Integer value) {
		setAccountid(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoAccountRecord value2(String value) {
		setEmail(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoAccountRecord value3(String value) {
		setPassword(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoAccountRecord value4(Integer value) {
		setRefid(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoAccountRecord value5(Integer value) {
		setRole(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InfoAccountRecord values(Integer value1, String value2, String value3, Integer value4, Integer value5) {
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
	 * Create a detached InfoAccountRecord
	 */
	public InfoAccountRecord() {
		super(InfoAccount.INFO_ACCOUNT);
	}

	/**
	 * Create a detached, initialised InfoAccountRecord
	 */
	public InfoAccountRecord(Integer accountid, String email, String password, Integer refid, Integer role) {
		super(InfoAccount.INFO_ACCOUNT);

		setValue(0, accountid);
		setValue(1, email);
		setValue(2, password);
		setValue(3, refid);
		setValue(4, role);
	}
}
