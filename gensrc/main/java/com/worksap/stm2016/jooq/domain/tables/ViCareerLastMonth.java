/**
 * This class is generated by jOOQ
 */
package com.worksap.stm2016.jooq.domain.tables;


import com.worksap.stm2016.jooq.domain.Ss1604c195Rd4;
import com.worksap.stm2016.jooq.domain.tables.records.ViCareerLastMonthRecord;

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
public class ViCareerLastMonth extends TableImpl<ViCareerLastMonthRecord> {

	private static final long serialVersionUID = -1682193774;

	/**
	 * The reference instance of <code>ss1604c195_rd4.vi_career_last_month</code>
	 */
	public static final ViCareerLastMonth VI_CAREER_LAST_MONTH = new ViCareerLastMonth();

	/**
	 * The class holding records for this type
	 */
	@Override
	public Class<ViCareerLastMonthRecord> getRecordType() {
		return ViCareerLastMonthRecord.class;
	}

	/**
	 * The column <code>ss1604c195_rd4.vi_career_last_month.steid</code>.
	 */
	public final TableField<ViCareerLastMonthRecord, Integer> STEID = createField("steid", org.jooq.impl.SQLDataType.INTEGER, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_career_last_month.name</code>.
	 */
	public final TableField<ViCareerLastMonthRecord, String> NAME = createField("name", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_career_last_month.positionid</code>.
	 */
	public final TableField<ViCareerLastMonthRecord, Integer> POSITIONID = createField("positionid", org.jooq.impl.SQLDataType.INTEGER, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_career_last_month.departmentid</code>.
	 */
	public final TableField<ViCareerLastMonthRecord, Integer> DEPARTMENTID = createField("departmentid", org.jooq.impl.SQLDataType.INTEGER, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_career_last_month.positionname</code>.
	 */
	public final TableField<ViCareerLastMonthRecord, String> POSITIONNAME = createField("positionname", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_career_last_month.departmentname</code>.
	 */
	public final TableField<ViCareerLastMonthRecord, String> DEPARTMENTNAME = createField("departmentname", org.jooq.impl.SQLDataType.VARCHAR, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_career_last_month.attendancenums</code>.
	 */
	public final TableField<ViCareerLastMonthRecord, Long> ATTENDANCENUMS = createField("attendancenums", org.jooq.impl.SQLDataType.BIGINT, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_career_last_month.attendancehours</code>.
	 */
	public final TableField<ViCareerLastMonthRecord, Long> ATTENDANCEHOURS = createField("attendancehours", org.jooq.impl.SQLDataType.BIGINT, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_career_last_month.performancenums</code>.
	 */
	public final TableField<ViCareerLastMonthRecord, Long> PERFORMANCENUMS = createField("performancenums", org.jooq.impl.SQLDataType.BIGINT, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_career_last_month.performancehours</code>.
	 */
	public final TableField<ViCareerLastMonthRecord, Long> PERFORMANCEHOURS = createField("performancehours", org.jooq.impl.SQLDataType.BIGINT, this, "");

	/**
	 * The column <code>ss1604c195_rd4.vi_career_last_month.month</code>.
	 */
	public final TableField<ViCareerLastMonthRecord, String> MONTH = createField("month", org.jooq.impl.SQLDataType.CLOB, this, "");

	/**
	 * Create a <code>ss1604c195_rd4.vi_career_last_month</code> table reference
	 */
	public ViCareerLastMonth() {
		this("vi_career_last_month", null);
	}

	/**
	 * Create an aliased <code>ss1604c195_rd4.vi_career_last_month</code> table reference
	 */
	public ViCareerLastMonth(String alias) {
		this(alias, VI_CAREER_LAST_MONTH);
	}

	private ViCareerLastMonth(String alias, Table<ViCareerLastMonthRecord> aliased) {
		this(alias, aliased, null);
	}

	private ViCareerLastMonth(String alias, Table<ViCareerLastMonthRecord> aliased, Field<?>[] parameters) {
		super(alias, Ss1604c195Rd4.SS1604C195_RD4, aliased, parameters, "");
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public ViCareerLastMonth as(String alias) {
		return new ViCareerLastMonth(alias, this);
	}

	/**
	 * Rename this table
	 */
	public ViCareerLastMonth rename(String name) {
		return new ViCareerLastMonth(name, null);
	}
}
