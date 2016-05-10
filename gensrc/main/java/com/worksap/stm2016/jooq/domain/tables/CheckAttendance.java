/**
 * This class is generated by jOOQ
 */
package com.worksap.stm2016.jooq.domain.tables;


import com.worksap.stm2016.jooq.domain.Keys;
import com.worksap.stm2016.jooq.domain.Ss1604c195Rd4;
import com.worksap.stm2016.jooq.domain.tables.records.CheckAttendanceRecord;

import java.sql.Date;
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
public class CheckAttendance extends TableImpl<CheckAttendanceRecord> {

	private static final long serialVersionUID = 341697632;

	/**
	 * The reference instance of <code>ss1604c195_rd4.check_attendance</code>
	 */
	public static final CheckAttendance CHECK_ATTENDANCE = new CheckAttendance();

	/**
	 * The class holding records for this type
	 */
	@Override
	public Class<CheckAttendanceRecord> getRecordType() {
		return CheckAttendanceRecord.class;
	}

	/**
	 * The column <code>ss1604c195_rd4.check_attendance.attendanceid</code>.
	 */
	public final TableField<CheckAttendanceRecord, Integer> ATTENDANCEID = createField("attendanceid", org.jooq.impl.SQLDataType.INTEGER.nullable(false).defaulted(true), this, "");

	/**
	 * The column <code>ss1604c195_rd4.check_attendance.steid</code>.
	 */
	public final TableField<CheckAttendanceRecord, Integer> STEID = createField("steid", org.jooq.impl.SQLDataType.INTEGER, this, "");

	/**
	 * The column <code>ss1604c195_rd4.check_attendance.date</code>.
	 */
	public final TableField<CheckAttendanceRecord, Date> DATE = createField("date", org.jooq.impl.SQLDataType.DATE, this, "");

	/**
	 * The column <code>ss1604c195_rd4.check_attendance.hours</code>.
	 */
	public final TableField<CheckAttendanceRecord, Integer> HOURS = createField("hours", org.jooq.impl.SQLDataType.INTEGER, this, "");

	/**
	 * The column <code>ss1604c195_rd4.check_attendance.state</code>. 1. wait check
2. checked
	 */
	public final TableField<CheckAttendanceRecord, Integer> STATE = createField("state", org.jooq.impl.SQLDataType.INTEGER, this, "1. wait check\r\n2. checked");

	/**
	 * The column <code>ss1604c195_rd4.check_attendance.updatedby</code>.
	 */
	public final TableField<CheckAttendanceRecord, Integer> UPDATEDBY = createField("updatedby", org.jooq.impl.SQLDataType.INTEGER, this, "");

	/**
	 * The column <code>ss1604c195_rd4.check_attendance.createdat</code>.
	 */
	public final TableField<CheckAttendanceRecord, Timestamp> CREATEDAT = createField("createdat", org.jooq.impl.SQLDataType.TIMESTAMP, this, "");

	/**
	 * The column <code>ss1604c195_rd4.check_attendance.updatedat</code>.
	 */
	public final TableField<CheckAttendanceRecord, Timestamp> UPDATEDAT = createField("updatedat", org.jooq.impl.SQLDataType.TIMESTAMP, this, "");

	/**
	 * Create a <code>ss1604c195_rd4.check_attendance</code> table reference
	 */
	public CheckAttendance() {
		this("check_attendance", null);
	}

	/**
	 * Create an aliased <code>ss1604c195_rd4.check_attendance</code> table reference
	 */
	public CheckAttendance(String alias) {
		this(alias, CHECK_ATTENDANCE);
	}

	private CheckAttendance(String alias, Table<CheckAttendanceRecord> aliased) {
		this(alias, aliased, null);
	}

	private CheckAttendance(String alias, Table<CheckAttendanceRecord> aliased, Field<?>[] parameters) {
		super(alias, Ss1604c195Rd4.SS1604C195_RD4, aliased, parameters, "");
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Identity<CheckAttendanceRecord, Integer> getIdentity() {
		return Keys.IDENTITY_CHECK_ATTENDANCE;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public UniqueKey<CheckAttendanceRecord> getPrimaryKey() {
		return Keys.CHECK_ATTENDANCE_PKEY;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public List<UniqueKey<CheckAttendanceRecord>> getKeys() {
		return Arrays.<UniqueKey<CheckAttendanceRecord>>asList(Keys.CHECK_ATTENDANCE_PKEY);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public CheckAttendance as(String alias) {
		return new CheckAttendance(alias, this);
	}

	/**
	 * Rename this table
	 */
	public CheckAttendance rename(String name) {
		return new CheckAttendance(name, null);
	}
}
