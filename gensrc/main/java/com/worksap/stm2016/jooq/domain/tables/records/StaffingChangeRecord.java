/**
 * This class is generated by jOOQ
 */
package com.worksap.stm2016.jooq.domain.tables.records;


import com.worksap.stm2016.jooq.domain.tables.StaffingChange;

import java.sql.Date;
import java.sql.Timestamp;

import javax.annotation.Generated;

import org.jooq.Field;
import org.jooq.Record1;
import org.jooq.Record11;
import org.jooq.Row11;
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
public class StaffingChangeRecord extends UpdatableRecordImpl<StaffingChangeRecord> implements Record11<Integer, Integer, Integer, Date, Integer, Integer, Integer, Timestamp, Timestamp, Integer, Integer> {

	private static final long serialVersionUID = -201664286;

	/**
	 * Setter for <code>ss1604c195_rd2.staffing_change.steid</code>.
	 */
	public void setSteid(Integer value) {
		setValue(0, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.staffing_change.steid</code>.
	 */
	public Integer getSteid() {
		return (Integer) getValue(0);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.staffing_change.from_positionid</code>. null if from candidate
	 */
	public void setFromPositionid(Integer value) {
		setValue(1, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.staffing_change.from_positionid</code>. null if from candidate
	 */
	public Integer getFromPositionid() {
		return (Integer) getValue(1);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.staffing_change.to_positionid</code>. null if dismissed
0 if regularization
	 */
	public void setToPositionid(Integer value) {
		setValue(2, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.staffing_change.to_positionid</code>. null if dismissed
0 if regularization
	 */
	public Integer getToPositionid() {
		return (Integer) getValue(2);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.staffing_change.date_req</code>.
	 */
	public void setDateReq(Date value) {
		setValue(3, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.staffing_change.date_req</code>.
	 */
	public Date getDateReq() {
		return (Date) getValue(3);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.staffing_change.duration_req</code>. months
	 */
	public void setDurationReq(Integer value) {
		setValue(4, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.staffing_change.duration_req</code>. months
	 */
	public Integer getDurationReq() {
		return (Integer) getValue(4);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.staffing_change.createdby</code>.
	 */
	public void setCreatedby(Integer value) {
		setValue(5, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.staffing_change.createdby</code>.
	 */
	public Integer getCreatedby() {
		return (Integer) getValue(5);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.staffing_change.updatedby</code>.
	 */
	public void setUpdatedby(Integer value) {
		setValue(6, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.staffing_change.updatedby</code>.
	 */
	public Integer getUpdatedby() {
		return (Integer) getValue(6);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.staffing_change.createdat</code>.
	 */
	public void setCreatedat(Timestamp value) {
		setValue(7, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.staffing_change.createdat</code>.
	 */
	public Timestamp getCreatedat() {
		return (Timestamp) getValue(7);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.staffing_change.updatedat</code>.
	 */
	public void setUpdatedat(Timestamp value) {
		setValue(8, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.staffing_change.updatedat</code>.
	 */
	public Timestamp getUpdatedat() {
		return (Timestamp) getValue(8);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.staffing_change.state</code>. 0-ste apply check fail
1-ste apply wait mg check
2-ste apply mg checked wait hr check
3-ste apply pass

10-hr apply check fail
11-hr apply wait mg check
12-hr apply pass
	 */
	public void setState(Integer value) {
		setValue(9, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.staffing_change.state</code>. 0-ste apply check fail
1-ste apply wait mg check
2-ste apply mg checked wait hr check
3-ste apply pass

10-hr apply check fail
11-hr apply wait mg check
12-hr apply pass
	 */
	public Integer getState() {
		return (Integer) getValue(9);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.staffing_change.changeid</code>.
	 */
	public void setChangeid(Integer value) {
		setValue(10, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.staffing_change.changeid</code>.
	 */
	public Integer getChangeid() {
		return (Integer) getValue(10);
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
	// Record11 type implementation
	// -------------------------------------------------------------------------

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Row11<Integer, Integer, Integer, Date, Integer, Integer, Integer, Timestamp, Timestamp, Integer, Integer> fieldsRow() {
		return (Row11) super.fieldsRow();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Row11<Integer, Integer, Integer, Date, Integer, Integer, Integer, Timestamp, Timestamp, Integer, Integer> valuesRow() {
		return (Row11) super.valuesRow();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field1() {
		return StaffingChange.STAFFING_CHANGE.STEID;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field2() {
		return StaffingChange.STAFFING_CHANGE.FROM_POSITIONID;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field3() {
		return StaffingChange.STAFFING_CHANGE.TO_POSITIONID;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Date> field4() {
		return StaffingChange.STAFFING_CHANGE.DATE_REQ;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field5() {
		return StaffingChange.STAFFING_CHANGE.DURATION_REQ;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field6() {
		return StaffingChange.STAFFING_CHANGE.CREATEDBY;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field7() {
		return StaffingChange.STAFFING_CHANGE.UPDATEDBY;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Timestamp> field8() {
		return StaffingChange.STAFFING_CHANGE.CREATEDAT;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Timestamp> field9() {
		return StaffingChange.STAFFING_CHANGE.UPDATEDAT;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field10() {
		return StaffingChange.STAFFING_CHANGE.STATE;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field11() {
		return StaffingChange.STAFFING_CHANGE.CHANGEID;
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
	public Integer value2() {
		return getFromPositionid();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value3() {
		return getToPositionid();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Date value4() {
		return getDateReq();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value5() {
		return getDurationReq();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value6() {
		return getCreatedby();
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
	public Integer value10() {
		return getState();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value11() {
		return getChangeid();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public StaffingChangeRecord value1(Integer value) {
		setSteid(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public StaffingChangeRecord value2(Integer value) {
		setFromPositionid(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public StaffingChangeRecord value3(Integer value) {
		setToPositionid(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public StaffingChangeRecord value4(Date value) {
		setDateReq(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public StaffingChangeRecord value5(Integer value) {
		setDurationReq(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public StaffingChangeRecord value6(Integer value) {
		setCreatedby(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public StaffingChangeRecord value7(Integer value) {
		setUpdatedby(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public StaffingChangeRecord value8(Timestamp value) {
		setCreatedat(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public StaffingChangeRecord value9(Timestamp value) {
		setUpdatedat(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public StaffingChangeRecord value10(Integer value) {
		setState(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public StaffingChangeRecord value11(Integer value) {
		setChangeid(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public StaffingChangeRecord values(Integer value1, Integer value2, Integer value3, Date value4, Integer value5, Integer value6, Integer value7, Timestamp value8, Timestamp value9, Integer value10, Integer value11) {
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
	 * Create a detached StaffingChangeRecord
	 */
	public StaffingChangeRecord() {
		super(StaffingChange.STAFFING_CHANGE);
	}

	/**
	 * Create a detached, initialised StaffingChangeRecord
	 */
	public StaffingChangeRecord(Integer steid, Integer fromPositionid, Integer toPositionid, Date dateReq, Integer durationReq, Integer createdby, Integer updatedby, Timestamp createdat, Timestamp updatedat, Integer state, Integer changeid) {
		super(StaffingChange.STAFFING_CHANGE);

		setValue(0, steid);
		setValue(1, fromPositionid);
		setValue(2, toPositionid);
		setValue(3, dateReq);
		setValue(4, durationReq);
		setValue(5, createdby);
		setValue(6, updatedby);
		setValue(7, createdat);
		setValue(8, updatedat);
		setValue(9, state);
		setValue(10, changeid);
	}
}
