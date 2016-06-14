/**
 * This class is generated by jOOQ
 */
package com.worksap.stm2016.jooq.domain.tables.records;


import com.worksap.stm2016.jooq.domain.tables.RecruitPublished;

import javax.annotation.Generated;

import org.jooq.Field;
import org.jooq.Record1;
import org.jooq.Record3;
import org.jooq.Row3;
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
public class RecruitPublishedRecord extends UpdatableRecordImpl<RecruitPublishedRecord> implements Record3<Integer, Integer, Integer> {

	private static final long serialVersionUID = 752866647;

	/**
	 * Setter for <code>ss1604c195_rd2.recruit_published.publishedid</code>.
	 */
	public void setPublishedid(Integer value) {
		setValue(0, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.recruit_published.publishedid</code>.
	 */
	public Integer getPublishedid() {
		return (Integer) getValue(0);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.recruit_published.poolid</code>.
	 */
	public void setPoolid(Integer value) {
		setValue(1, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.recruit_published.poolid</code>.
	 */
	public Integer getPoolid() {
		return (Integer) getValue(1);
	}

	/**
	 * Setter for <code>ss1604c195_rd2.recruit_published.agencyid</code>.
	 */
	public void setAgencyid(Integer value) {
		setValue(2, value);
	}

	/**
	 * Getter for <code>ss1604c195_rd2.recruit_published.agencyid</code>.
	 */
	public Integer getAgencyid() {
		return (Integer) getValue(2);
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
	// Record3 type implementation
	// -------------------------------------------------------------------------

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Row3<Integer, Integer, Integer> fieldsRow() {
		return (Row3) super.fieldsRow();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Row3<Integer, Integer, Integer> valuesRow() {
		return (Row3) super.valuesRow();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field1() {
		return RecruitPublished.RECRUIT_PUBLISHED.PUBLISHEDID;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field2() {
		return RecruitPublished.RECRUIT_PUBLISHED.POOLID;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Field<Integer> field3() {
		return RecruitPublished.RECRUIT_PUBLISHED.AGENCYID;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value1() {
		return getPublishedid();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value2() {
		return getPoolid();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Integer value3() {
		return getAgencyid();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public RecruitPublishedRecord value1(Integer value) {
		setPublishedid(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public RecruitPublishedRecord value2(Integer value) {
		setPoolid(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public RecruitPublishedRecord value3(Integer value) {
		setAgencyid(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public RecruitPublishedRecord values(Integer value1, Integer value2, Integer value3) {
		value1(value1);
		value2(value2);
		value3(value3);
		return this;
	}

	// -------------------------------------------------------------------------
	// Constructors
	// -------------------------------------------------------------------------

	/**
	 * Create a detached RecruitPublishedRecord
	 */
	public RecruitPublishedRecord() {
		super(RecruitPublished.RECRUIT_PUBLISHED);
	}

	/**
	 * Create a detached, initialised RecruitPublishedRecord
	 */
	public RecruitPublishedRecord(Integer publishedid, Integer poolid, Integer agencyid) {
		super(RecruitPublished.RECRUIT_PUBLISHED);

		setValue(0, publishedid);
		setValue(1, poolid);
		setValue(2, agencyid);
	}
}
