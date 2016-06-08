/**
 * This class is generated by jOOQ
 */
package com.worksap.stm2016.jooq.domain.tables;


import com.worksap.stm2016.jooq.domain.Ss1604c195Rd4;
import com.worksap.stm2016.jooq.domain.tables.records.ViRecruitApplymentHistoryRecord;

import java.sql.Date;
import java.sql.Timestamp;

import javax.annotation.Generated;

import org.jooq.Field;
import org.jooq.Table;
import org.jooq.TableField;
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
public class ViRecruitApplymentHistory extends TableImpl<ViRecruitApplymentHistoryRecord> {

	private static final long serialVersionUID = 891350150;

	/**
	 * The reference instance of <code>ss1604c195_rd4.vi_recruit_applyment_history</code>
	 */
	public static final ViRecruitApplymentHistory VI_RECRUIT_APPLYMENT_HISTORY = new ViRecruitApplymentHistory();

	/**
	 * The class holding records for this type
	 */
	@Override
	public Class<ViRecruitApplymentHistoryRecord> getRecordType() {
		return ViRecruitApplymentHistoryRecord.class;
	}

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.steid</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, Integer> STEID = createField("steid", org.jooq.impl.SQLDataType.INTEGER, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.gender</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, Boolean> GENDER = createField("gender", org.jooq.impl.SQLDataType.BOOLEAN, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.birthday</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, Date> BIRTHDAY = createField("birthday", org.jooq.impl.SQLDataType.DATE, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.email</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> EMAIL = createField("email", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.telephone</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> TELEPHONE = createField("telephone", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.experiences</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> EXPERIENCES = createField("experiences", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.skills</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> SKILLS = createField("skills", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.resume_url</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> RESUME_URL = createField("resume_url", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.offer_url</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> OFFER_URL = createField("offer_url", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.contract_url</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> CONTRACT_URL = createField("contract_url", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.positionid</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, Integer> POSITIONID = createField("positionid", org.jooq.impl.SQLDataType.INTEGER, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.state</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, Integer> STATE = createField("state", org.jooq.impl.SQLDataType.INTEGER, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.updatedby</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, Integer> UPDATEDBY = createField("updatedby", org.jooq.impl.SQLDataType.INTEGER, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.createdat</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, Timestamp> CREATEDAT = createField("createdat", org.jooq.impl.SQLDataType.TIMESTAMP, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.updatedat</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, Timestamp> UPDATEDAT = createField("updatedat", org.jooq.impl.SQLDataType.TIMESTAMP, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.applymentid</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, Integer> APPLYMENTID = createField("applymentid", org.jooq.impl.SQLDataType.INTEGER, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.id</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, Integer> ID = createField("id", org.jooq.impl.SQLDataType.INTEGER, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.positionname</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> POSITIONNAME = createField("positionname", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.date_req</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, Date> DATE_REQ = createField("date_req", org.jooq.impl.SQLDataType.DATE, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.duration_req</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, Integer> DURATION_REQ = createField("duration_req", org.jooq.impl.SQLDataType.INTEGER, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.location_req</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> LOCATION_REQ = createField("location_req", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.number</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, Integer> NUMBER = createField("number", org.jooq.impl.SQLDataType.INTEGER, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.skill_req1</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> SKILL_REQ1 = createField("skill_req1", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.skill_req2</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> SKILL_REQ2 = createField("skill_req2", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.skill_req3</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> SKILL_REQ3 = createField("skill_req3", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.skill_req4</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> SKILL_REQ4 = createField("skill_req4", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.skill_req5</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> SKILL_REQ5 = createField("skill_req5", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.description</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> DESCRIPTION = createField("description", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.departmentname</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> DEPARTMENTNAME = createField("departmentname", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.fte_name</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> FTE_NAME = createField("fte_name", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.fte_email</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> FTE_EMAIL = createField("fte_email", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.fte_email_self</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> FTE_EMAIL_SELF = createField("fte_email_self", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.fte_phone</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> FTE_PHONE = createField("fte_phone", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.fte_telephone</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> FTE_TELEPHONE = createField("fte_telephone", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.fte_departmentname</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> FTE_DEPARTMENTNAME = createField("fte_departmentname", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.interviewid</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, Integer> INTERVIEWID = createField("interviewid", org.jooq.impl.SQLDataType.INTEGER, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.inv_contact_person</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> INV_CONTACT_PERSON = createField("inv_contact_person", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.inv_contact_phone</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> INV_CONTACT_PHONE = createField("inv_contact_phone", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.inv_starttime</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, Timestamp> INV_STARTTIME = createField("inv_starttime", org.jooq.impl.SQLDataType.TIMESTAMP, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.inv_endtime</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, Timestamp> INV_ENDTIME = createField("inv_endtime", org.jooq.impl.SQLDataType.TIMESTAMP, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.inv_location</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> INV_LOCATION = createField("inv_location", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_recruit_applyment_history.inv_replenish</code>.
	 */
	public final TableField<ViRecruitApplymentHistoryRecord, String> INV_REPLENISH = createField("inv_replenish", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * Create a <code>ss1604c195_rd4.vi_recruit_applyment_history</code> table reference
	 */
	public ViRecruitApplymentHistory() {
		this("vi_recruit_applyment_history", null);
	}

	/**
	 * Create an aliased <code>ss1604c195_rd4.vi_recruit_applyment_history</code> table reference
	 */
	public ViRecruitApplymentHistory(String alias) {
		this(alias, VI_RECRUIT_APPLYMENT_HISTORY);
	}

	private ViRecruitApplymentHistory(String alias, Table<ViRecruitApplymentHistoryRecord> aliased) {
		this(alias, aliased, null);
	}

	private ViRecruitApplymentHistory(String alias, Table<ViRecruitApplymentHistoryRecord> aliased, Field<?>[] parameters) {
		super(alias, Ss1604c195Rd4.SS1604C195_RD4, aliased, parameters, "");
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public ViRecruitApplymentHistory as(String alias) {
		return new ViRecruitApplymentHistory(alias, this);
	}

	/**
	 * Rename this table
	 */
	public ViRecruitApplymentHistory rename(String name) {
		return new ViRecruitApplymentHistory(name, null);
	}
}
