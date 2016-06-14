/**
 * This class is generated by jOOQ
 */
package com.worksap.stm2016.jooq.domain.tables.records;


import com.worksap.stm2016.jooq.domain.tables.CheckSkill;

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
public class CheckSkillRecord extends UpdatableRecordImpl<CheckSkillRecord> implements Record9<Integer, String, Integer, Integer, Timestamp, Timestamp, Integer, String, Integer> {

	private static final long serialVersionUID = 1800646955;

	/**
	 * Setter for <code>ss1604c195_rd2.check_skill.steid</code>.
	 */
	public void setSteid(Integer value) {
		setValue(0, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.check_skill.steid</code>.
	 */
	public Integer getSteid() {
		return (Integer) getValue(0);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.check_skill.description</code>.
	 */
	public void setDescription(String value) {
		setValue(1, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.check_skill.description</code>.
	 */
	public String getDescription() {
		return (String) getValue(1);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.check_skill.state</code>. 1-wait check
2-checked
	 */
	public void setState(Integer value) {
		setValue(2, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.check_skill.state</code>. 1-wait check
2-checked
	 */
	public Integer getState() {
		return (Integer) getValue(2);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.check_skill.updatedby</code>.
	 */
	public void setUpdatedby(Integer value) {
		setValue(3, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.check_skill.updatedby</code>.
	 */
	public Integer getUpdatedby() {
		return (Integer) getValue(3);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.check_skill.createdat</code>.
	 */
	public void setCreatedat(Timestamp value) {
		setValue(4, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.check_skill.createdat</code>.
	 */
	public Timestamp getCreatedat() {
		return (Timestamp) getValue(4);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.check_skill.updatedat</code>.
	 */
	public void setUpdatedat(Timestamp value) {
		setValue(5, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.check_skill.updatedat</code>.
	 */
	public Timestamp getUpdatedat() {
		return (Timestamp) getValue(5);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.check_skill.skillid</code>.
	 */
	public void setSkillid(Integer value) {
		setValue(6, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.check_skill.skillid</code>.
	 */
	public Integer getSkillid() {
		return (Integer) getValue(6);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.check_skill.skill</code>.
	 */
	public void setSkill(String value) {
		setValue(7, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.check_skill.skill</code>.
	 */
	public String getSkill() {
		return (String) getValue(7);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.check_skill.score</code>.
	 */
	public void setScore(Integer value) {
		setValue(8, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.check_skill.score</code>.
	 */
	public Integer getScore() {
		return (Integer) getValue(8);
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
	public Row9<Integer, String, Integer, Integer, Timestamp, Timestamp, Integer, String, Integer> fieldsRow() {
		return (Row9) super.fieldsRow();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Row9<Integer, String, Integer, Integer, Timestamp, Timestamp, Integer, String, Integer> valuesRow() {
		return (Row9) super.valuesRow();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field1() {
		return CheckSkill.CHECK_SKILL.STEID;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field2() {
		return CheckSkill.CHECK_SKILL.DESCRIPTION;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field3() {
		return CheckSkill.CHECK_SKILL.STATE;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field4() {
		return CheckSkill.CHECK_SKILL.UPDATEDBY;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Timestamp> field5() {
		return CheckSkill.CHECK_SKILL.CREATEDAT;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Timestamp> field6() {
		return CheckSkill.CHECK_SKILL.UPDATEDAT;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field7() {
		return CheckSkill.CHECK_SKILL.SKILLID;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<String> field8() {
		return CheckSkill.CHECK_SKILL.SKILL;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field9() {
		return CheckSkill.CHECK_SKILL.SCORE;
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
		return getDescription();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value3() {
		return getState();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value4() {
		return getUpdatedby();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Timestamp value5() {
		return getCreatedat();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Timestamp value6() {
		return getUpdatedat();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value7() {
		return getSkillid();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String value8() {
		return getSkill();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value9() {
		return getScore();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public CheckSkillRecord value1(Integer value) {
		setSteid(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public CheckSkillRecord value2(String value) {
		setDescription(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public CheckSkillRecord value3(Integer value) {
		setState(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public CheckSkillRecord value4(Integer value) {
		setUpdatedby(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public CheckSkillRecord value5(Timestamp value) {
		setCreatedat(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public CheckSkillRecord value6(Timestamp value) {
		setUpdatedat(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public CheckSkillRecord value7(Integer value) {
		setSkillid(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public CheckSkillRecord value8(String value) {
		setSkill(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public CheckSkillRecord value9(Integer value) {
		setScore(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public CheckSkillRecord values(Integer value1, String value2, Integer value3, Integer value4, Timestamp value5, Timestamp value6, Integer value7, String value8, Integer value9) {
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
	 * Create a detached CheckSkillRecord
	 */
	public CheckSkillRecord() {
		super(CheckSkill.CHECK_SKILL);
	}

	/**
	 * Create a detached, initialised CheckSkillRecord
	 */
	public CheckSkillRecord(Integer steid, String description, Integer state, Integer updatedby, Timestamp createdat, Timestamp updatedat, Integer skillid, String skill, Integer score) {
		super(CheckSkill.CHECK_SKILL);

		setValue(0, steid);
		setValue(1, description);
		setValue(2, state);
		setValue(3, updatedby);
		setValue(4, createdat);
		setValue(5, updatedat);
		setValue(6, skillid);
		setValue(7, skill);
		setValue(8, score);
	}
}
