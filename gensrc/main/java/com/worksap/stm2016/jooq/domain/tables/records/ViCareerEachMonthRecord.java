/**
 * This class is generated by jOOQ
 */
package com.worksap.stm2016.jooq.domain.tables.records;


import com.worksap.stm2016.jooq.domain.tables.ViCareerEachMonth;

import javax.annotation.Generated;

import org.jooq.Field;
import org.jooq.Record11;
import org.jooq.Row11;
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
public class ViCareerEachMonthRecord extends TableRecordImpl<ViCareerEachMonthRecord> implements Record11<Integer, String, Integer, Integer, String, String, Long, Long, Long, Long, String> {

	private static final long serialVersionUID = 648510274;

	/**
	 * Setter for <code>ss1604c195_rd2.vi_career_each_month.steid</code>.
	 */
	public void setSteid(Integer value) {
		setValue(0, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.vi_career_each_month.steid</code>.
	 */
	public Integer getSteid() {
		return (Integer) getValue(0);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.vi_career_each_month.name</code>.
	 */
	public void setName(String value) {
		setValue(1, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.vi_career_each_month.name</code>.
	 */
	public String getName() {
		return (String) getValue(1);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.vi_career_each_month.positionid</code>.
	 */
	public void setPositionid(Integer value) {
		setValue(2, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.vi_career_each_month.positionid</code>.
	 */
	public Integer getPositionid() {
		return (Integer) getValue(2);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.vi_career_each_month.departmentid</code>.
	 */
	public void setDepartmentid(Integer value) {
		setValue(3, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.vi_career_each_month.departmentid</code>.
	 */
	public Integer getDepartmentid() {
		return (Integer) getValue(3);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.vi_career_each_month.positionname</code>.
	 */
	public void setPositionname(String value) {
		setValue(4, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.vi_career_each_month.positionname</code>.
	 */
	public String getPositionname() {
		return (String) getValue(4);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.vi_career_each_month.departmentname</code>.
	 */
	public void setDepartmentname(String value) {
		setValue(5, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.vi_career_each_month.departmentname</code>.
	 */
	public String getDepartmentname() {
		return (String) getValue(5);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.vi_career_each_month.attendancenums</code>.
	 */
	public void setAttendancenums(Long value) {
		setValue(6, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.vi_career_each_month.attendancenums</code>.
	 */
	public Long getAttendancenums() {
		return (Long) getValue(6);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.vi_career_each_month.attendancehours</code>.
	 */
	public void setAttendancehours(Long value) {
		setValue(7, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.vi_career_each_month.attendancehours</code>.
	 */
	public Long getAttendancehours() {
		return (Long) getValue(7);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.vi_career_each_month.performancenums</code>.
	 */
	public void setPerformancenums(Long value) {
		setValue(8, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.vi_career_each_month.performancenums</code>.
	 */
	public Long getPerformancenums() {
		return (Long) getValue(8);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.vi_career_each_month.performancehours</code>.
	 */
	public void setPerformancehours(Long value) {
		setValue(9, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.vi_career_each_month.performancehours</code>.
	 */
	public Long getPerformancehours() {
		return (Long) getValue(9);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.vi_career_each_month.month</code>.
	 */
	public void setMonth(String value) {
		setValue(10, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.vi_career_each_month.month</code>.
	 */
	public String getMonth() {
		return (String) getValue(10);
	}

	// -------------------------------------------------------------------------
	// Record11 type implementation
	// -------------------------------------------------------------------------

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Row11<Integer, String, Integer, Integer, String, String, Long, Long, Long, Long, String> fieldsRow() {
		return (Row11) super.fieldsRow();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Row11<Integer, String, Integer, Integer, String, String, Long, Long, Long, Long, String> valuesRow() {
		return (Row11) super.valuesRow();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field1() {
		return ViCareerEachMonth.VI_CAREER_EACH_MONTH.STEID;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field2() {
		return ViCareerEachMonth.VI_CAREER_EACH_MONTH.NAME;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field3() {
		return ViCareerEachMonth.VI_CAREER_EACH_MONTH.POSITIONID;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field4() {
		return ViCareerEachMonth.VI_CAREER_EACH_MONTH.DEPARTMENTID;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field5() {
		return ViCareerEachMonth.VI_CAREER_EACH_MONTH.POSITIONNAME;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field6() {
		return ViCareerEachMonth.VI_CAREER_EACH_MONTH.DEPARTMENTNAME;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Long> field7() {
		return ViCareerEachMonth.VI_CAREER_EACH_MONTH.ATTENDANCENUMS;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Long> field8() {
		return ViCareerEachMonth.VI_CAREER_EACH_MONTH.ATTENDANCEHOURS;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Long> field9() {
		return ViCareerEachMonth.VI_CAREER_EACH_MONTH.PERFORMANCENUMS;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Long> field10() {
		return ViCareerEachMonth.VI_CAREER_EACH_MONTH.PERFORMANCEHOURS;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field11() {
		return ViCareerEachMonth.VI_CAREER_EACH_MONTH.MONTH;
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
	public Integer value3() {
		return getPositionid();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value4() {
		return getDepartmentid();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String value5() {
		return getPositionname();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String value6() {
		return getDepartmentname();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Long value7() {
		return getAttendancenums();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Long value8() {
		return getAttendancehours();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Long value9() {
		return getPerformancenums();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Long value10() {
		return getPerformancehours();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String value11() {
		return getMonth();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public ViCareerEachMonthRecord value1(Integer value) {
		setSteid(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public ViCareerEachMonthRecord value2(String value) {
		setName(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public ViCareerEachMonthRecord value3(Integer value) {
		setPositionid(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public ViCareerEachMonthRecord value4(Integer value) {
		setDepartmentid(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public ViCareerEachMonthRecord value5(String value) {
		setPositionname(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public ViCareerEachMonthRecord value6(String value) {
		setDepartmentname(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public ViCareerEachMonthRecord value7(Long value) {
		setAttendancenums(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public ViCareerEachMonthRecord value8(Long value) {
		setAttendancehours(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public ViCareerEachMonthRecord value9(Long value) {
		setPerformancenums(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public ViCareerEachMonthRecord value10(Long value) {
		setPerformancehours(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public ViCareerEachMonthRecord value11(String value) {
		setMonth(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public ViCareerEachMonthRecord values(Integer value1, String value2, Integer value3, Integer value4, String value5, String value6, Long value7, Long value8, Long value9, Long value10, String value11) {
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
		return this;
	}

	// -------------------------------------------------------------------------
	// Constructors
	// -------------------------------------------------------------------------

	/**
	 * Create a detached ViCareerEachMonthRecord
	 */
	public ViCareerEachMonthRecord() {
		super(ViCareerEachMonth.VI_CAREER_EACH_MONTH);
	}

	/**
	 * Create a detached, initialised ViCareerEachMonthRecord
	 */
	public ViCareerEachMonthRecord(Integer steid, String name, Integer positionid, Integer departmentid, String positionname, String departmentname, Long attendancenums, Long attendancehours, Long performancenums, Long performancehours, String month) {
		super(ViCareerEachMonth.VI_CAREER_EACH_MONTH);

		setValue(0, steid);
		setValue(1, name);
		setValue(2, positionid);
		setValue(3, departmentid);
		setValue(4, positionname);
		setValue(5, departmentname);
		setValue(6, attendancenums);
		setValue(7, attendancehours);
		setValue(8, performancenums);
		setValue(9, performancehours);
		setValue(10, month);
	}
}
