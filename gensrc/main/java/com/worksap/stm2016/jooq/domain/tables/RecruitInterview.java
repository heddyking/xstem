/**
 * This class is generated by jOOQ
 */
package com.worksap.stm2016.jooq.domain.tables;


import com.worksap.stm2016.jooq.domain.Keys;
import com.worksap.stm2016.jooq.domain.Ss1604c195Rd4;
import com.worksap.stm2016.jooq.domain.tables.records.RecruitInterviewRecord;

import java.sql.Timestamp;
import java.util.Arrays;
import java.util.List;

import javax.annotation.Generated;

import org.jooq.Field;
import org.jooq.Identity;
import org.jooq.Table;
import org.jooq.TableField;
import org.jooq.UniqueKey;
import org.jooq.impl.TableImpl;


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
public class RecruitInterview extends TableImpl<RecruitInterviewRecord> {

	private static final long serialVersionUID = 1430319499;

	/**
	 * The reference instance of <code>ss1604c195_rd4.recruit_interview</code>
	 */
	public static final RecruitInterview RECRUIT_INTERVIEW = new RecruitInterview();

	/**
	 * The class holding records for this type
	 */
	@Override
	public Class<RecruitInterviewRecord> getRecordType() {
		return RecruitInterviewRecord.class;
	}

	/**
	 * The column <code>ss1604c195_rd4.recruit_interview.interviewid</code>.
	 */
	public final TableField<RecruitInterviewRecord, Integer> INTERVIEWID = createField("interviewid", org.jooq.impl.SQLDataType.INTEGER.nullable(false).defaulted(true), this, "");

	/**
	 * The column <code>ss1604c195_rd4.recruit_interview.starttime</code>.
	 */
	public final TableField<RecruitInterviewRecord, Timestamp> STARTTIME = createField("starttime", org.jooq.impl.SQLDataType.TIMESTAMP, this, "");

	/**
	 * The column <code>ss1604c195_rd4.recruit_interview.endtime</code>.
	 */
	public final TableField<RecruitInterviewRecord, Timestamp> ENDTIME = createField("endtime", org.jooq.impl.SQLDataType.TIMESTAMP, this, "");

	/**
	 * The column <code>ss1604c195_rd4.recruit_interview.location</code>.
	 */
	public final TableField<RecruitInterviewRecord, String> LOCATION = createField("location", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.recruit_interview.contact_person</code>.
	 */
	public final TableField<RecruitInterviewRecord, String> CONTACT_PERSON = createField("contact_person", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.recruit_interview.contact_phone</code>.
	 */
	public final TableField<RecruitInterviewRecord, String> CONTACT_PHONE = createField("contact_phone", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.recruit_interview.replenish</code>.
	 */
	public final TableField<RecruitInterviewRecord, String> REPLENISH = createField("replenish", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * Create a <code>ss1604c195_rd4.recruit_interview</code> table reference
	 */
	public RecruitInterview() {
		this("recruit_interview", null);
	}

	/**
	 * Create an aliased <code>ss1604c195_rd4.recruit_interview</code> table reference
	 */
	public RecruitInterview(String alias) {
		this(alias, RECRUIT_INTERVIEW);
	}

	private RecruitInterview(String alias, Table<RecruitInterviewRecord> aliased) {
		this(alias, aliased, null);
	}

	private RecruitInterview(String alias, Table<RecruitInterviewRecord> aliased, Field<?>[] parameters) {
		super(alias, Ss1604c195Rd4.SS1604C195_RD4, aliased, parameters, "");
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Identity<RecruitInterviewRecord, Integer> getIdentity() {
		return Keys.IDENTITY_RECRUIT_INTERVIEW;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public UniqueKey<RecruitInterviewRecord> getPrimaryKey() {
		return Keys.RECRUIT_INTERVIEW_PKEY;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public List<UniqueKey<RecruitInterviewRecord>> getKeys() {
		return Arrays.<UniqueKey<RecruitInterviewRecord>>asList(Keys.RECRUIT_INTERVIEW_PKEY);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public RecruitInterview as(String alias) {
		return new RecruitInterview(alias, this);
	}

	/**
	 * Rename this table
	 */
	public RecruitInterview rename(String name) {
		return new RecruitInterview(name, null);
	}
}
