/**
 * This class is generated by jOOQ
 */
package com.worksap.stm2016.jooq.domain.tables.records;


import com.worksap.stm2016.jooq.domain.tables.CheckPerformance;

import java.sql.Date;
import java.sql.Timestamp;

import javax.annotation.Generated;

import org.jooq.Field;
import org.jooq.Record1;
import org.jooq.Record9;
import org.jooq.Row9;
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
public class CheckPerformanceRecord extends UpdatableRecordImpl<CheckPerformanceRecord> implements Record9<Integer, Integer, Date, Integer, String, Integer, Integer, Timestamp, Timestamp> {

	private static final long serialVersionUID = -804004337;

	/**
	 * Setter for <code>ss1604c195_rd4.check_performance.performanceid</code>.
	 */
	public void setPerformanceid(Integer value) {
		setValue(0, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.check_performance.performanceid</code>.
	 */
	public Integer getPerformanceid() {
		return (Integer) getValue(0);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.check_performance.steid</code>.
	 */
	public void setSteid(Integer value) {
		setValue(1, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.check_performance.steid</code>.
	 */
	public Integer getSteid() {
		return (Integer) getValue(1);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.check_performance.week_lastday</code>.
	 */
	public void setWeekLastday(Date value) {
		setValue(2, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.check_performance.week_lastday</code>.
	 */
	public Date getWeekLastday() {
		return (Date) getValue(2);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.check_performance.hours</code>.
	 */
	public void setHours(Integer value) {
		setValue(3, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.check_performance.hours</code>.
	 */
	public Integer getHours() {
		return (Integer) getValue(3);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.check_performance.description</code>.
	 */
	public void setDescription(String value) {
		setValue(4, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.check_performance.description</code>.
	 */
	public String getDescription() {
		return (String) getValue(4);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.check_performance.state</code>. 1-wait check
2-checked
	 */
	public void setState(Integer value) {
		setValue(5, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.check_performance.state</code>. 1-wait check
2-checked
	 */
	public Integer getState() {
		return (Integer) getValue(5);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.check_performance.updatedby</code>.
	 */
	public void setUpdatedby(Integer value) {
		setValue(6, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.check_performance.updatedby</code>.
	 */
	public Integer getUpdatedby() {
		return (Integer) getValue(6);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.check_performance.createdat</code>.
	 */
	public void setCreatedat(Timestamp value) {
		setValue(7, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.check_performance.createdat</code>.
	 */
	public Timestamp getCreatedat() {
		return (Timestamp) getValue(7);
	}

	/**
	 * Setter for <code>ss1604c195_rd4.check_performance.updatedat</code>.
	 */
	public void setUpdatedat(Timestamp value) {
		setValue(8, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd4.check_performance.updatedat</code>.
	 */
	public Timestamp getUpdatedat() {
		return (Timestamp) getValue(8);
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
	// Record9 type implementation
	// -------------------------------------------------------------------------

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Row9<Integer, Integer, Date, Integer, String, Integer, Integer, Timestamp, Timestamp> fieldsRow() {
		return (Row9) super.fieldsRow();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Row9<Integer, Integer, Date, Integer, String, Integer, Integer, Timestamp, Timestamp> valuesRow() {
		return (Row9) super.valuesRow();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field1() {
		return CheckPerformance.CHECK_PERFORMANCE.PERFORMANCEID;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field2() {
		return CheckPerformance.CHECK_PERFORMANCE.STEID;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Date> field3() {
		return CheckPerformance.CHECK_PERFORMANCE.WEEK_LASTDAY;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field4() {
		return CheckPerformance.CHECK_PERFORMANCE.HOURS;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field5() {
		return CheckPerformance.CHECK_PERFORMANCE.DESCRIPTION;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field6() {
		return CheckPerformance.CHECK_PERFORMANCE.STATE;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field7() {
		return CheckPerformance.CHECK_PERFORMANCE.UPDATEDBY;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Timestamp> field8() {
		return CheckPerformance.CHECK_PERFORMANCE.CREATEDAT;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Timestamp> field9() {
		return CheckPerformance.CHECK_PERFORMANCE.UPDATEDAT;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value1() {
		return getPerformanceid();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value2() {
		return getSteid();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Date value3() {
		return getWeekLastday();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value4() {
		return getHours();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String value5() {
		return getDescription();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value6() {
		return getState();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value7() {
		return getUpdatedby();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Timestamp value8() {
		return getCreatedat();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Timestamp value9() {
		return getUpdatedat();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public CheckPerformanceRecord value1(Integer value) {
		setPerformanceid(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public CheckPerformanceRecord value2(Integer value) {
		setSteid(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public CheckPerformanceRecord value3(Date value) {
		setWeekLastday(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public CheckPerformanceRecord value4(Integer value) {
		setHours(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public CheckPerformanceRecord value5(String value) {
		setDescription(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public CheckPerformanceRecord value6(Integer value) {
		setState(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public CheckPerformanceRecord value7(Integer value) {
		setUpdatedby(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public CheckPerformanceRecord value8(Timestamp value) {
		setCreatedat(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public CheckPerformanceRecord value9(Timestamp value) {
		setUpdatedat(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public CheckPerformanceRecord values(Integer value1, Integer value2, Date value3, Integer value4, String value5, Integer value6, Integer value7, Timestamp value8, Timestamp value9) {
		value1(value1);
		value2(value2);
		value3(value3);
		value4(value4);
		value5(value5);
		value6(value6);
		value7(value7);
		value8(value8);
		value9(value9);
		return this;
	}

	// -------------------------------------------------------------------------
	// Constructors
	// -------------------------------------------------------------------------

	/**
	 * Create a detached CheckPerformanceRecord
	 */
	public CheckPerformanceRecord() {
		super(CheckPerformance.CHECK_PERFORMANCE);
	}

	/**
	 * Create a detached, initialised CheckPerformanceRecord
	 */
	public CheckPerformanceRecord(Integer performanceid, Integer steid, Date weekLastday, Integer hours, String description, Integer state, Integer updatedby, Timestamp createdat, Timestamp updatedat) {
		super(CheckPerformance.CHECK_PERFORMANCE);

		setValue(0, performanceid);
		setValue(1, steid);
		setValue(2, weekLastday);
		setValue(3, hours);
		setValue(4, description);
		setValue(5, state);
		setValue(6, updatedby);
		setValue(7, createdat);
		setValue(8, updatedat);
	}
}
