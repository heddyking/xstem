/*
Navicat PGSQL Data Transfer

Source Server         : Localhost
Source Server Version : 90502
Source Host           : localhost:5432
Source Database       : stm
Source Schema         : ss1604c195_rd4

Target Server Type    : PGSQL
Target Server Version : 90502
File Encoding         : 65001

Date: 2016-05-18 11:43:01
*/


-- ----------------------------
-- Sequence structure for account_accountid_seq
-- ----------------------------
-- DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."account_accountid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."account_accountid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for check_attendance_attendanceid_seq
-- ----------------------------
-- DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."check_attendance_attendanceid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."check_attendance_attendanceid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for check_performance_performanceid_seq
-- ----------------------------
-- DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."check_performance_performanceid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."check_performance_performanceid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for check_skill_skillid_seq
-- ----------------------------
-- DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."check_skill_skillid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."check_skill_skillid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for COMMENTS_ID_seq
-- ----------------------------
-- DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."COMMENTS_ID_seq";
CREATE SEQUENCE "ss1604c195_rd4"."COMMENTS_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 25
 CACHE 1;
SELECT setval('"ss1604c195_rd4"."COMMENTS_ID_seq"', 25, true);

-- ----------------------------
-- Sequence structure for department_departmentid_seq
-- ----------------------------
-- DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."department_departmentid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."department_departmentid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for fte_fteid_seq
-- ----------------------------
-- DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."fte_fteid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."fte_fteid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for POSTS_ID_seq
-- ----------------------------
-- DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."POSTS_ID_seq";
CREATE SEQUENCE "ss1604c195_rd4"."POSTS_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 25
 CACHE 1;
SELECT setval('"ss1604c195_rd4"."POSTS_ID_seq"', 25, true);

-- ----------------------------
-- Sequence structure for recruit_agency_agencyid_seq
-- ----------------------------
-- DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."recruit_agency_agencyid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."recruit_agency_agencyid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for recruit_applyment_applymentid_seq
-- ----------------------------
-- DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."recruit_applyment_applymentid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."recruit_applyment_applymentid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for recruit_applyment_log_id_seq
-- ----------------------------
-- DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."recruit_applyment_log_id_seq";
CREATE SEQUENCE "ss1604c195_rd4"."recruit_applyment_log_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for recruit_interview_interviewid_seq
-- ----------------------------
-- DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."recruit_interview_interviewid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."recruit_interview_interviewid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for recruit_pool_log_id_seq
-- ----------------------------
-- DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."recruit_pool_log_id_seq";
CREATE SEQUENCE "ss1604c195_rd4"."recruit_pool_log_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for recruit_pool_poolid_seq
-- ----------------------------
-- DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."recruit_pool_poolid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."recruit_pool_poolid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for recruit_position_copy_id_seq
-- ----------------------------
-- DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."recruit_position_copy_id_seq";
CREATE SEQUENCE "ss1604c195_rd4"."recruit_position_copy_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for recruit_position_positionid_seq
-- ----------------------------
-- DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."recruit_position_positionid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."recruit_position_positionid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for recruit_published_publishedid_seq
-- ----------------------------
-- DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."recruit_published_publishedid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."recruit_published_publishedid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for sns_message_messageid_seq
-- ----------------------------
-- DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."sns_message_messageid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."sns_message_messageid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for sns_timeline_timelineid_seq
-- ----------------------------
-- DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."sns_timeline_timelineid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."sns_timeline_timelineid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for staffing_change_changeid_seq
-- ----------------------------
-- DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."staffing_change_changeid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."staffing_change_changeid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for staffing_change_log_id_seq
-- ----------------------------
-- DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."staffing_change_log_id_seq";
CREATE SEQUENCE "ss1604c195_rd4"."staffing_change_log_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for ste_steid_seq
-- ----------------------------
-- DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."ste_steid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."ste_steid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Table structure for check_attendance
-- ----------------------------
-- DROP TABLE IF EXISTS "ss1604c195_rd4"."check_attendance";
CREATE TABLE "ss1604c195_rd4"."check_attendance" (
"attendanceid" int4 DEFAULT nextval('"ss1604c195_rd4".check_attendance_attendanceid_seq'::regclass) NOT NULL,
"steid" int4,
"date" date,
"hours" int4,
"state" int4,
"updatedby" int4,
"createdat" timestamp(6),
"updatedat" timestamp(6)
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd4"."check_attendance"."state" IS '1. wait check
2. checked';

-- ----------------------------
-- Table structure for check_performance
-- ----------------------------
-- DROP TABLE IF EXISTS "ss1604c195_rd4"."check_performance";
CREATE TABLE "ss1604c195_rd4"."check_performance" (
"performanceid" int4 DEFAULT nextval('"ss1604c195_rd4".check_performance_performanceid_seq'::regclass) NOT NULL,
"steid" int4,
"week_lastday" date,
"hours" int4,
"description" varchar COLLATE "default",
"state" int4,
"updatedby" int4,
"createdat" timestamp(6),
"updatedat" timestamp(6)
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd4"."check_performance"."state" IS '1-wait check
2-checked';

-- ----------------------------
-- Table structure for check_skill
-- ----------------------------
-- DROP TABLE IF EXISTS "ss1604c195_rd4"."check_skill";
CREATE TABLE "ss1604c195_rd4"."check_skill" (
"steid" int4,
"description" varchar COLLATE "default",
"state" int4,
"updatedby" int4,
"createdat" timestamp(6),
"updatedat" timestamp(6),
"skillid" int4 DEFAULT nextval('"ss1604c195_rd4".check_skill_skillid_seq'::regclass) NOT NULL,
"skill" varchar COLLATE "default",
"score" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd4"."check_skill"."state" IS '1-wait check
2-checked';

-- ----------------------------
-- Table structure for info_account
-- ----------------------------
-- DROP TABLE IF EXISTS "ss1604c195_rd4"."info_account";
CREATE TABLE "ss1604c195_rd4"."info_account" (
"accountid" int4 DEFAULT nextval('"ss1604c195_rd4".account_accountid_seq'::regclass) NOT NULL,
"email" varchar COLLATE "default",
"password" varchar COLLATE "default",
"refid" int4,
"role" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for info_department
-- ----------------------------
-- DROP TABLE IF EXISTS "ss1604c195_rd4"."info_department";
CREATE TABLE "ss1604c195_rd4"."info_department" (
"departmentid" int4 DEFAULT nextval('"ss1604c195_rd4".department_departmentid_seq'::regclass) NOT NULL,
"departmentname" varchar COLLATE "default",
"parent_departmentid" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for info_fte
-- ----------------------------
-- DROP TABLE IF EXISTS "ss1604c195_rd4"."info_fte";
CREATE TABLE "ss1604c195_rd4"."info_fte" (
"fteid" int4 DEFAULT nextval('"ss1604c195_rd4".fte_fteid_seq'::regclass) NOT NULL,
"name" varchar COLLATE "default",
"email" varchar COLLATE "default",
"gender" bool,
"telephone" varchar COLLATE "default",
"departmentid" int4,
"birthday" date,
"location" varchar COLLATE "default",
"role" int4,
"email_self" varchar COLLATE "default",
"phone" varchar COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd4"."info_fte"."role" IS '0-admin
1-hrm
2-hr
3-mg
4-other';

-- ----------------------------
-- Table structure for info_ste
-- ----------------------------
-- DROP TABLE IF EXISTS "ss1604c195_rd4"."info_ste";
CREATE TABLE "ss1604c195_rd4"."info_ste" (
"steid" int4 DEFAULT nextval('"ss1604c195_rd4".ste_steid_seq'::regclass) NOT NULL,
"name" varchar COLLATE "default",
"gender" bool,
"birthday" date,
"location" varchar COLLATE "default",
"email" varchar COLLATE "default",
"email_self" varchar COLLATE "default",
"phone" varchar COLLATE "default",
"telephone" varchar COLLATE "default",
"departmentid" int4,
"role" int4,
"offer_url" varchar COLLATE "default",
"contract_url" varchar COLLATE "default",
"positionid" int4,
"skills" varchar COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd4"."info_ste"."role" IS '10-candidate ste
11-ste
12-dismissed ste';

-- ----------------------------
-- Table structure for recruit_agency
-- ----------------------------
-- DROP TABLE IF EXISTS "ss1604c195_rd4"."recruit_agency";
CREATE TABLE "ss1604c195_rd4"."recruit_agency" (
"agencyid" int4 DEFAULT nextval('"ss1604c195_rd4".recruit_agency_agencyid_seq'::regclass) NOT NULL,
"agency_url" varchar COLLATE "default",
"agency_tpl" char(1) COLLATE "default",
"agency_auth" varchar COLLATE "default",
"agencyname" varchar COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd4"."recruit_agency"."agency_tpl" IS 'template';
COMMENT ON COLUMN "ss1604c195_rd4"."recruit_agency"."agency_auth" IS 'auth string';

-- ----------------------------
-- Table structure for recruit_applyment
-- ----------------------------
-- DROP TABLE IF EXISTS "ss1604c195_rd4"."recruit_applyment";
CREATE TABLE "ss1604c195_rd4"."recruit_applyment" (
"steid" int4,
"positionid" int4,
"state" int4,
"updatedby" int4,
"createdat" timestamp(6),
"updatedat" timestamp(6),
"applymentid" int4 DEFAULT nextval('"ss1604c195_rd4".recruit_applyment_applymentid_seq'::regclass) NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd4"."recruit_applyment"."state" IS '0-self cancelled
1- wait hr check
2- wait mg check
3- wait arrange interview
4- interview
5- pass
6- fail
';

-- ----------------------------
-- Table structure for recruit_applyment_log
-- ----------------------------
-- DROP TABLE IF EXISTS "ss1604c195_rd4"."recruit_applyment_log";
CREATE TABLE "ss1604c195_rd4"."recruit_applyment_log" (
"steid" int4,
"positionid" int4,
"state" int4,
"updatedby" int4,
"createdat" timestamp(6),
"updatedat" timestamp(6),
"applymentid" int4,
"id" int4 DEFAULT nextval('"ss1604c195_rd4".recruit_applyment_log_id_seq'::regclass) NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd4"."recruit_applyment_log"."state" IS '0-self cancelled
1- wait hr check
2- wait mg check
3- wait arrange interview
4- interview
5- pass
6- fail
';

-- ----------------------------
-- Table structure for recruit_interview
-- ----------------------------
-- DROP TABLE IF EXISTS "ss1604c195_rd4"."recruit_interview";
CREATE TABLE "ss1604c195_rd4"."recruit_interview" (
"interviewid" int4 DEFAULT nextval('"ss1604c195_rd4".recruit_interview_interviewid_seq'::regclass) NOT NULL,
"starttime" timestamptz(6),
"endtime" timestamp(6),
"location" varchar COLLATE "default",
"contact_person" varchar COLLATE "default",
"contact_phone" varchar COLLATE "default",
"replenish" varchar COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for recruit_pool
-- ----------------------------
-- DROP TABLE IF EXISTS "ss1604c195_rd4"."recruit_pool";
CREATE TABLE "ss1604c195_rd4"."recruit_pool" (
"poolid" int4 DEFAULT nextval('"ss1604c195_rd4".recruit_pool_poolid_seq'::regclass) NOT NULL,
"positionid" int4,
"realnumber" int4,
"apply_due" date,
"apply_start" date,
"poster_url" varchar COLLATE "default",
"createdby" int4,
"updatedby" int4,
"createdat" timestamp(6),
"updatedat" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for recruit_pool_log
-- ----------------------------
-- DROP TABLE IF EXISTS "ss1604c195_rd4"."recruit_pool_log";
CREATE TABLE "ss1604c195_rd4"."recruit_pool_log" (
"positionid" int4,
"realnumber" int4,
"apply_due" date,
"apply_start" date,
"poster_url" varchar COLLATE "default",
"createdby" int4,
"updatedby" int4,
"createdat" timestamp(6),
"updatedat" timestamp(6),
"poolid" int4,
"id" int4 DEFAULT nextval('"ss1604c195_rd4".recruit_pool_log_id_seq'::regclass) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for recruit_position
-- ----------------------------
-- DROP TABLE IF EXISTS "ss1604c195_rd4"."recruit_position";
CREATE TABLE "ss1604c195_rd4"."recruit_position" (
"positionname" varchar COLLATE "default",
"number" int4,
"location_req" char(1) COLLATE "default",
"date_req" date,
"duration_req" int4,
"skill_req1" varchar COLLATE "default",
"skill_req2" varchar COLLATE "default",
"skill_req3" varchar COLLATE "default",
"skill_req4" varchar COLLATE "default",
"skill_req5" varchar COLLATE "default",
"createdby" int4,
"updatedby" int4,
"createdat" timestamp(6),
"updatedat" timestamp(6),
"departmentid" int4,
"positionid" int4 DEFAULT nextval('"ss1604c195_rd4".recruit_position_positionid_seq'::regclass) NOT NULL,
"description" varchar COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd4"."recruit_position"."duration_req" IS 'months';

-- ----------------------------
-- Table structure for recruit_position_log
-- ----------------------------
-- DROP TABLE IF EXISTS "ss1604c195_rd4"."recruit_position_log";
CREATE TABLE "ss1604c195_rd4"."recruit_position_log" (
"positionname" varchar COLLATE "default",
"number" int4,
"location_req" char(1) COLLATE "default",
"date_req" date,
"duration_req" int4,
"skill_req1" varchar COLLATE "default",
"skill_req2" varchar COLLATE "default",
"skill_req3" varchar COLLATE "default",
"skill_req4" varchar COLLATE "default",
"skill_req5" varchar COLLATE "default",
"createdby" int4,
"updatedby" int4,
"createdat" timestamp(6),
"updatedat" timestamp(6),
"departmentid" int4,
"positionid" int4,
"id" int4 DEFAULT nextval('"ss1604c195_rd4".recruit_position_copy_id_seq'::regclass) NOT NULL,
"description" varchar COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd4"."recruit_position_log"."duration_req" IS 'months';

-- ----------------------------
-- Table structure for recruit_published
-- ----------------------------
-- DROP TABLE IF EXISTS "ss1604c195_rd4"."recruit_published";
CREATE TABLE "ss1604c195_rd4"."recruit_published" (
"publishedid" int4 DEFAULT nextval('"ss1604c195_rd4".recruit_published_publishedid_seq'::regclass) NOT NULL,
"poolid" int4,
"agencyid" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for sns_message
-- ----------------------------
-- DROP TABLE IF EXISTS "ss1604c195_rd4"."sns_message";
CREATE TABLE "ss1604c195_rd4"."sns_message" (
"messageid" int4 DEFAULT nextval('"ss1604c195_rd4".sns_message_messageid_seq'::regclass) NOT NULL,
"sendfrom" int4,
"rolefrom" int4,
"sendto" int4,
"roleto" int4,
"message" varchar COLLATE "default",
"time" timestamp(6),
"status" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd4"."sns_message"."status" IS '0-sending
1-sent
2-withdraw';

-- ----------------------------
-- Table structure for sns_timeline
-- ----------------------------
-- DROP TABLE IF EXISTS "ss1604c195_rd4"."sns_timeline";
CREATE TABLE "ss1604c195_rd4"."sns_timeline" (
"timelineid" int4 DEFAULT nextval('"ss1604c195_rd4".sns_timeline_timelineid_seq'::regclass) NOT NULL,
"refid" int4,
"refrole" int4,
"time" timestamp(6),
"content" varchar COLLATE "default",
"status" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd4"."sns_timeline"."status" IS '0-sending
1-displaying
2-deleted';

-- ----------------------------
-- Table structure for staffing_change
-- ----------------------------
-- DROP TABLE IF EXISTS "ss1604c195_rd4"."staffing_change";
CREATE TABLE "ss1604c195_rd4"."staffing_change" (
"steid" int4,
"from_positionid" int4,
"to_positionid" int4,
"date_req" date,
"duration_req" int4,
"createdby" int4,
"updatedby" int4,
"createdat" timestamp(6),
"updatedat" timestamp(6),
"state" int4,
"changeid" int4 DEFAULT nextval('"ss1604c195_rd4".staffing_change_changeid_seq'::regclass) NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd4"."staffing_change"."from_positionid" IS 'null if from candidate';
COMMENT ON COLUMN "ss1604c195_rd4"."staffing_change"."to_positionid" IS 'null if dismissed
0 if regularization';
COMMENT ON COLUMN "ss1604c195_rd4"."staffing_change"."duration_req" IS 'months';
COMMENT ON COLUMN "ss1604c195_rd4"."staffing_change"."state" IS '0-ste apply check fail
1-ste apply wait mg check
2-ste apply mg checked wait hr check
3-ste apply pass

10-hr apply check fail
11-hr apply wait mg check
12-hr apply pass';

-- ----------------------------
-- Table structure for staffing_change_log
-- ----------------------------
-- DROP TABLE IF EXISTS "ss1604c195_rd4"."staffing_change_log";
CREATE TABLE "ss1604c195_rd4"."staffing_change_log" (
"steid" int4,
"from_positionid" int4,
"to_positionid" int4,
"date_req" date,
"duration_req" int4,
"createdby" int4,
"updatedby" int4,
"createdat" timestamp(6),
"updatedat" timestamp(6),
"state" int4,
"changeid" int4,
"id" int4 DEFAULT nextval('"ss1604c195_rd4".staffing_change_log_id_seq'::regclass) NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd4"."staffing_change_log"."from_positionid" IS 'null if from candidate';
COMMENT ON COLUMN "ss1604c195_rd4"."staffing_change_log"."to_positionid" IS 'null if dismissed
0 if regularization';
COMMENT ON COLUMN "ss1604c195_rd4"."staffing_change_log"."duration_req" IS 'months';
COMMENT ON COLUMN "ss1604c195_rd4"."staffing_change_log"."state" IS '0-ste apply check fail
1-ste apply wait mg check
2-ste apply mg checked wait hr check
3-ste apply pass

10-hr apply check fail
11-hr apply wait mg check
12-hr apply pass';

-- ----------------------------
-- Table structure for test_comments
-- ----------------------------
-- DROP TABLE IF EXISTS "ss1604c195_rd4"."test_comments";
CREATE TABLE "ss1604c195_rd4"."test_comments" (
"ID" int4 DEFAULT nextval('"ss1604c195_rd4"."COMMENTS_ID_seq"'::regclass) NOT NULL,
"POST_ID" int4 NOT NULL,
"NAME" varchar COLLATE "default" NOT NULL,
"EMAIL" varchar COLLATE "default" NOT NULL,
"CONTENT" text COLLATE "default",
"CREATED_ON" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for test_posts
-- ----------------------------
-- DROP TABLE IF EXISTS "ss1604c195_rd4"."test_posts";
CREATE TABLE "ss1604c195_rd4"."test_posts" (
"ID" int4 DEFAULT nextval('"ss1604c195_rd4"."POSTS_ID_seq"'::regclass) NOT NULL,
"TITLE" varchar COLLATE "default" NOT NULL,
"CONTENT" text COLLATE "default",
"CREATED_ON" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "ss1604c195_rd4"."account_accountid_seq" OWNED BY "info_account"."accountid";
ALTER SEQUENCE "ss1604c195_rd4"."check_attendance_attendanceid_seq" OWNED BY "check_attendance"."attendanceid";
ALTER SEQUENCE "ss1604c195_rd4"."check_performance_performanceid_seq" OWNED BY "check_performance"."performanceid";
ALTER SEQUENCE "ss1604c195_rd4"."check_skill_skillid_seq" OWNED BY "check_skill"."skillid";
ALTER SEQUENCE "ss1604c195_rd4"."COMMENTS_ID_seq" OWNED BY "test_comments"."ID";
ALTER SEQUENCE "ss1604c195_rd4"."department_departmentid_seq" OWNED BY "info_department"."departmentid";
ALTER SEQUENCE "ss1604c195_rd4"."fte_fteid_seq" OWNED BY "info_fte"."fteid";
ALTER SEQUENCE "ss1604c195_rd4"."POSTS_ID_seq" OWNED BY "test_posts"."ID";
ALTER SEQUENCE "ss1604c195_rd4"."recruit_agency_agencyid_seq" OWNED BY "recruit_agency"."agencyid";
ALTER SEQUENCE "ss1604c195_rd4"."recruit_applyment_applymentid_seq" OWNED BY "recruit_applyment"."applymentid";
ALTER SEQUENCE "ss1604c195_rd4"."recruit_applyment_log_id_seq" OWNED BY "recruit_applyment_log"."id";
ALTER SEQUENCE "ss1604c195_rd4"."recruit_interview_interviewid_seq" OWNED BY "recruit_interview"."interviewid";
ALTER SEQUENCE "ss1604c195_rd4"."recruit_pool_log_id_seq" OWNED BY "recruit_pool_log"."id";
ALTER SEQUENCE "ss1604c195_rd4"."recruit_pool_poolid_seq" OWNED BY "recruit_pool"."poolid";
ALTER SEQUENCE "ss1604c195_rd4"."recruit_position_copy_id_seq" OWNED BY "recruit_position_log"."id";
ALTER SEQUENCE "ss1604c195_rd4"."recruit_position_positionid_seq" OWNED BY "recruit_position"."positionid";
ALTER SEQUENCE "ss1604c195_rd4"."recruit_published_publishedid_seq" OWNED BY "recruit_published"."publishedid";
ALTER SEQUENCE "ss1604c195_rd4"."sns_message_messageid_seq" OWNED BY "sns_message"."messageid";
ALTER SEQUENCE "ss1604c195_rd4"."sns_timeline_timelineid_seq" OWNED BY "sns_timeline"."timelineid";
ALTER SEQUENCE "ss1604c195_rd4"."staffing_change_changeid_seq" OWNED BY "staffing_change"."changeid";
ALTER SEQUENCE "ss1604c195_rd4"."staffing_change_log_id_seq" OWNED BY "staffing_change_log"."id";
ALTER SEQUENCE "ss1604c195_rd4"."ste_steid_seq" OWNED BY "info_ste"."steid";

-- ----------------------------
-- Primary Key structure for table check_attendance
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."check_attendance" ADD PRIMARY KEY ("attendanceid");

-- ----------------------------
-- Primary Key structure for table check_performance
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."check_performance" ADD PRIMARY KEY ("performanceid");

-- ----------------------------
-- Primary Key structure for table check_skill
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."check_skill" ADD PRIMARY KEY ("skillid");

-- ----------------------------
-- Uniques structure for table info_account
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."info_account" ADD UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table info_account
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."info_account" ADD PRIMARY KEY ("accountid");

-- ----------------------------
-- Primary Key structure for table info_department
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."info_department" ADD PRIMARY KEY ("departmentid");

-- ----------------------------
-- Primary Key structure for table info_fte
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."info_fte" ADD PRIMARY KEY ("fteid");

-- ----------------------------
-- Primary Key structure for table info_ste
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."info_ste" ADD PRIMARY KEY ("steid");

-- ----------------------------
-- Primary Key structure for table recruit_agency
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."recruit_agency" ADD PRIMARY KEY ("agencyid");

-- ----------------------------
-- Primary Key structure for table recruit_applyment
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."recruit_applyment" ADD PRIMARY KEY ("applymentid");

-- ----------------------------
-- Primary Key structure for table recruit_applyment_log
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."recruit_applyment_log" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table recruit_interview
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."recruit_interview" ADD PRIMARY KEY ("interviewid");

-- ----------------------------
-- Primary Key structure for table recruit_pool
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."recruit_pool" ADD PRIMARY KEY ("poolid");

-- ----------------------------
-- Primary Key structure for table recruit_pool_log
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."recruit_pool_log" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table recruit_position
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."recruit_position" ADD PRIMARY KEY ("positionid");

-- ----------------------------
-- Primary Key structure for table recruit_position_log
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."recruit_position_log" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table recruit_published
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."recruit_published" ADD PRIMARY KEY ("publishedid");

-- ----------------------------
-- Primary Key structure for table sns_message
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."sns_message" ADD PRIMARY KEY ("messageid");

-- ----------------------------
-- Primary Key structure for table sns_timeline
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."sns_timeline" ADD PRIMARY KEY ("timelineid");

-- ----------------------------
-- Primary Key structure for table staffing_change
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."staffing_change" ADD PRIMARY KEY ("changeid");

-- ----------------------------
-- Primary Key structure for table staffing_change_log
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."staffing_change_log" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table test_comments
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."test_comments" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table test_posts
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."test_posts" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Foreign Key structure for table "ss1604c195_rd4"."test_comments"
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."test_comments" ADD FOREIGN KEY ("POST_ID") REFERENCES "ss1604c195_rd4"."test_posts" ("ID") ON DELETE NO ACTION ON UPDATE NO ACTION;
