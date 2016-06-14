/*
Navicat PGSQL Data Transfer

Source Server         : Localhost
Source Server Version : 90502
Source Host           : 172.26.131.120:5432
Source Database       : stm
Source Schema         : ss1604c195_rd2

Target Server Type    : PGSQL
Target Server Version : 90502
File Encoding         : 65001

Date: 2016-06-12 19:08:29
*/


-- ----------------------------
-- Sequence structure for account_accountid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd2"."account_accountid_seq";
CREATE SEQUENCE "ss1604c195_rd2"."account_accountid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666683
 CACHE 1;
SELECT setval('"ss1604c195_rd2"."account_accountid_seq"', 666683, true);

-- ----------------------------
-- Sequence structure for check_attendance_attendanceid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd2"."check_attendance_attendanceid_seq";
CREATE SEQUENCE "ss1604c195_rd2"."check_attendance_attendanceid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666684
 CACHE 1;
SELECT setval('"ss1604c195_rd2"."check_attendance_attendanceid_seq"', 666684, true);

-- ----------------------------
-- Sequence structure for check_performance_performanceid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd2"."check_performance_performanceid_seq";
CREATE SEQUENCE "ss1604c195_rd2"."check_performance_performanceid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666675
 CACHE 1;
SELECT setval('"ss1604c195_rd2"."check_performance_performanceid_seq"', 666675, true);

-- ----------------------------
-- Sequence structure for check_skill_skillid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd2"."check_skill_skillid_seq";
CREATE SEQUENCE "ss1604c195_rd2"."check_skill_skillid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666671
 CACHE 1;
SELECT setval('"ss1604c195_rd2"."check_skill_skillid_seq"', 666671, true);

-- ----------------------------
-- Sequence structure for COMMENTS_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd2"."COMMENTS_ID_seq";
CREATE SEQUENCE "ss1604c195_rd2"."COMMENTS_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 48
 CACHE 1;
SELECT setval('"ss1604c195_rd2"."COMMENTS_ID_seq"', 48, true);

-- ----------------------------
-- Sequence structure for department_departmentid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd2"."department_departmentid_seq";
CREATE SEQUENCE "ss1604c195_rd2"."department_departmentid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666666
 CACHE 1;

-- ----------------------------
-- Sequence structure for fte_fteid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd2"."fte_fteid_seq";
CREATE SEQUENCE "ss1604c195_rd2"."fte_fteid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666666
 CACHE 1;

-- ----------------------------
-- Sequence structure for notify_pointer_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd2"."notify_pointer_ID_seq";
CREATE SEQUENCE "ss1604c195_rd2"."notify_pointer_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 114
 CACHE 1;
SELECT setval('"ss1604c195_rd2"."notify_pointer_ID_seq"', 114, true);

-- ----------------------------
-- Sequence structure for POSTS_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd2"."POSTS_ID_seq";
CREATE SEQUENCE "ss1604c195_rd2"."POSTS_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 51
 CACHE 1;
SELECT setval('"ss1604c195_rd2"."POSTS_ID_seq"', 51, true);

-- ----------------------------
-- Sequence structure for recruit_agency_agencyid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd2"."recruit_agency_agencyid_seq";
CREATE SEQUENCE "ss1604c195_rd2"."recruit_agency_agencyid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666666
 CACHE 1;

-- ----------------------------
-- Sequence structure for recruit_applyment_applymentid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd2"."recruit_applyment_applymentid_seq";
CREATE SEQUENCE "ss1604c195_rd2"."recruit_applyment_applymentid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666734
 CACHE 1;
SELECT setval('"ss1604c195_rd2"."recruit_applyment_applymentid_seq"', 666734, true);

-- ----------------------------
-- Sequence structure for recruit_applyment_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd2"."recruit_applyment_log_id_seq";
CREATE SEQUENCE "ss1604c195_rd2"."recruit_applyment_log_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 530
 CACHE 1;
SELECT setval('"ss1604c195_rd2"."recruit_applyment_log_id_seq"', 530, true);

-- ----------------------------
-- Sequence structure for recruit_interview_interviewid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd2"."recruit_interview_interviewid_seq";
CREATE SEQUENCE "ss1604c195_rd2"."recruit_interview_interviewid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666704
 CACHE 1;
SELECT setval('"ss1604c195_rd2"."recruit_interview_interviewid_seq"', 666704, true);

-- ----------------------------
-- Sequence structure for recruit_pool_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd2"."recruit_pool_log_id_seq";
CREATE SEQUENCE "ss1604c195_rd2"."recruit_pool_log_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 112
 CACHE 1;
SELECT setval('"ss1604c195_rd2"."recruit_pool_log_id_seq"', 112, true);

-- ----------------------------
-- Sequence structure for recruit_pool_poolid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd2"."recruit_pool_poolid_seq";
CREATE SEQUENCE "ss1604c195_rd2"."recruit_pool_poolid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666698
 CACHE 1;
SELECT setval('"ss1604c195_rd2"."recruit_pool_poolid_seq"', 666698, true);

-- ----------------------------
-- Sequence structure for recruit_position_copy_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd2"."recruit_position_copy_id_seq";
CREATE SEQUENCE "ss1604c195_rd2"."recruit_position_copy_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 190
 CACHE 1;
SELECT setval('"ss1604c195_rd2"."recruit_position_copy_id_seq"', 190, true);

-- ----------------------------
-- Sequence structure for recruit_position_positionid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd2"."recruit_position_positionid_seq";
CREATE SEQUENCE "ss1604c195_rd2"."recruit_position_positionid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 91
 CACHE 1;
SELECT setval('"ss1604c195_rd2"."recruit_position_positionid_seq"', 91, true);

-- ----------------------------
-- Sequence structure for recruit_published_publishedid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd2"."recruit_published_publishedid_seq";
CREATE SEQUENCE "ss1604c195_rd2"."recruit_published_publishedid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666700
 CACHE 1;
SELECT setval('"ss1604c195_rd2"."recruit_published_publishedid_seq"', 666700, true);

-- ----------------------------
-- Sequence structure for sns_message_messageid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd2"."sns_message_messageid_seq";
CREATE SEQUENCE "ss1604c195_rd2"."sns_message_messageid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666666
 CACHE 1;

-- ----------------------------
-- Sequence structure for sns_timeline_timelineid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd2"."sns_timeline_timelineid_seq";
CREATE SEQUENCE "ss1604c195_rd2"."sns_timeline_timelineid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666666
 CACHE 1;

-- ----------------------------
-- Sequence structure for staffing_change_changeid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd2"."staffing_change_changeid_seq";
CREATE SEQUENCE "ss1604c195_rd2"."staffing_change_changeid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666666
 CACHE 1;

-- ----------------------------
-- Sequence structure for staffing_change_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd2"."staffing_change_log_id_seq";
CREATE SEQUENCE "ss1604c195_rd2"."staffing_change_log_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"ss1604c195_rd2"."staffing_change_log_id_seq"', 2, true);

-- ----------------------------
-- Sequence structure for ste_steid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd2"."ste_steid_seq";
CREATE SEQUENCE "ss1604c195_rd2"."ste_steid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 24
 CACHE 1;
SELECT setval('"ss1604c195_rd2"."ste_steid_seq"', 24, true);

-- ----------------------------
-- Table structure for check_attendance
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd2"."check_attendance";
CREATE TABLE "ss1604c195_rd2"."check_attendance" (
"attendanceid" int4 DEFAULT nextval('"ss1604c195_rd2".check_attendance_attendanceid_seq'::regclass) NOT NULL,
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
COMMENT ON COLUMN "ss1604c195_rd2"."check_attendance"."state" IS '1. wait check
2. checked';

-- ----------------------------
-- Records of check_attendance
-- ----------------------------
INSERT INTO "ss1604c195_rd2"."check_attendance" VALUES ('1', '6', '2016-05-24', '8', '2', '3', '2016-05-27 00:00:00', '2016-05-27 00:00:00');
INSERT INTO "ss1604c195_rd2"."check_attendance" VALUES ('2', '6', '2016-05-25', '8', '2', '3', '2016-05-27 00:00:00', '2016-05-27 00:00:00');
INSERT INTO "ss1604c195_rd2"."check_attendance" VALUES ('3', '6', '2016-05-26', '8', '2', '3', '2016-05-27 00:00:00', '2016-05-27 00:00:00');
INSERT INTO "ss1604c195_rd2"."check_attendance" VALUES ('4', '6', '2016-05-27', '8', '2', '3', '2016-05-27 00:00:00', '2016-05-27 00:00:00');
INSERT INTO "ss1604c195_rd2"."check_attendance" VALUES ('5', '6', '2016-05-30', '8', '2', '3', '2016-05-30 00:00:00', '2016-06-08 18:25:25.096');
INSERT INTO "ss1604c195_rd2"."check_attendance" VALUES ('666682', '22', '2016-06-08', '8', '2', '3', '2016-06-08 18:24:52.056', '2016-06-08 18:25:06.112');
INSERT INTO "ss1604c195_rd2"."check_attendance" VALUES ('666683', '22', '2016-05-30', '8', '2', '3', '2016-06-08 18:25:17.553', '2016-06-08 18:25:22.216');
INSERT INTO "ss1604c195_rd2"."check_attendance" VALUES ('666684', '2', '2016-06-12', '8', '1', '2', '2016-06-12 15:46:42.214', '2016-06-12 15:46:42.214');

-- ----------------------------
-- Table structure for check_performance
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd2"."check_performance";
CREATE TABLE "ss1604c195_rd2"."check_performance" (
"performanceid" int4 DEFAULT nextval('"ss1604c195_rd2".check_performance_performanceid_seq'::regclass) NOT NULL,
"steid" int4,
"week_lastday" date,
"hours" int4,
"description" varchar COLLATE "default",
"state" int4,
"updatedby" int4,
"createdat" timestamp(6),
"updatedat" timestamp(6),
"week_firstday" date
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd2"."check_performance"."state" IS '1-wait check
2-checked';

-- ----------------------------
-- Records of check_performance
-- ----------------------------
INSERT INTO "ss1604c195_rd2"."check_performance" VALUES ('1', '6', '2016-05-27', '5', 'develop the hue thread pool module', '1', '6', '2016-05-30 00:00:00', '2016-05-30 00:00:00', null);

-- ----------------------------
-- Table structure for check_skill
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd2"."check_skill";
CREATE TABLE "ss1604c195_rd2"."check_skill" (
"steid" int4,
"description" varchar COLLATE "default",
"state" int4,
"updatedby" int4,
"createdat" timestamp(6),
"updatedat" timestamp(6),
"skillid" int4 DEFAULT nextval('"ss1604c195_rd2".check_skill_skillid_seq'::regclass) NOT NULL,
"skill" varchar COLLATE "default",
"score" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd2"."check_skill"."state" IS '1-wait check
2-checked';

-- ----------------------------
-- Records of check_skill
-- ----------------------------
INSERT INTO "ss1604c195_rd2"."check_skill" VALUES ('6', 'Java 8 programming skills', '1', '6', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '1', 'Java', null);
INSERT INTO "ss1604c195_rd2"."check_skill" VALUES ('6', 'Database sql and O-R mapping skills', '1', '6', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '2', 'Mysql', null);
INSERT INTO "ss1604c195_rd2"."check_skill" VALUES ('6', 'Data Mining skills', '1', '6', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '3', 'Data Mining', null);

-- ----------------------------
-- Table structure for info_account
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd2"."info_account";
CREATE TABLE "ss1604c195_rd2"."info_account" (
"accountid" int4 DEFAULT nextval('"ss1604c195_rd2".account_accountid_seq'::regclass) NOT NULL,
"email" varchar COLLATE "default",
"password" varchar COLLATE "default",
"refid" int4,
"role" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd2"."info_account"."role" IS '0-admin
1-hrm
2-hr
3-mg
4-other

10-candidate ste
11-ste
12-dismissed ste';

-- ----------------------------
-- Records of info_account
-- ----------------------------
INSERT INTO "ss1604c195_rd2"."info_account" VALUES ('1', 'shuimuyanyuan@qq.com', '123', '1', '1');
INSERT INTO "ss1604c195_rd2"."info_account" VALUES ('2', 'hr@qq.com', '123', '2', '2');
INSERT INTO "ss1604c195_rd2"."info_account" VALUES ('3', 'mg1@qq.com', '123', '3', '3');
INSERT INTO "ss1604c195_rd2"."info_account" VALUES ('4', 'mg2@qq.com', '123', '4', '3');
INSERT INTO "ss1604c195_rd2"."info_account" VALUES ('5', 'w1@qq.com', '123', '1', '10');
INSERT INTO "ss1604c195_rd2"."info_account" VALUES ('6', 'w2@qq.com', '123', '2', '10');
INSERT INTO "ss1604c195_rd2"."info_account" VALUES ('7', 'w3@qq.com', '123', '3', '10');
INSERT INTO "ss1604c195_rd2"."info_account" VALUES ('8', 'w4@qq.com', '123', '4', '10');
INSERT INTO "ss1604c195_rd2"."info_account" VALUES ('9', 'w5@qq.com', '123', '5', '10');
INSERT INTO "ss1604c195_rd2"."info_account" VALUES ('10', 'z1@qq.com', '123', '6', '11');
INSERT INTO "ss1604c195_rd2"."info_account" VALUES ('666681', '981088636@qq.com', '123', '22', '10');
INSERT INTO "ss1604c195_rd2"."info_account" VALUES ('666682', 'testemail323@qq.com', '123', '23', '10');

-- ----------------------------
-- Table structure for info_department
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd2"."info_department";
CREATE TABLE "ss1604c195_rd2"."info_department" (
"departmentid" int4 DEFAULT nextval('"ss1604c195_rd2".department_departmentid_seq'::regclass) NOT NULL,
"departmentname" varchar COLLATE "default",
"parent_departmentid" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of info_department
-- ----------------------------
INSERT INTO "ss1604c195_rd2"."info_department" VALUES ('1', 'committee', null);
INSERT INTO "ss1604c195_rd2"."info_department" VALUES ('2', 'hr', '1');
INSERT INTO "ss1604c195_rd2"."info_department" VALUES ('3', 'tech', '1');
INSERT INTO "ss1604c195_rd2"."info_department" VALUES ('4', 'dev', '3');
INSERT INTO "ss1604c195_rd2"."info_department" VALUES ('5', 'qa', '3');

-- ----------------------------
-- Table structure for info_fte
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd2"."info_fte";
CREATE TABLE "ss1604c195_rd2"."info_fte" (
"fteid" int4 DEFAULT nextval('"ss1604c195_rd2".fte_fteid_seq'::regclass) NOT NULL,
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
COMMENT ON COLUMN "ss1604c195_rd2"."info_fte"."role" IS '0-admin
1-hrm
2-hr
3-mg
4-other';

-- ----------------------------
-- Records of info_fte
-- ----------------------------
INSERT INTO "ss1604c195_rd2"."info_fte" VALUES ('1', 'Zhang Joy', 'shuimuyanyuan@qq.com', 'f', '13866666666', '2', '1990-01-01', 'shanghai', '1', 'shuimuyanyuan@qq.com', '021-54742387');
INSERT INTO "ss1604c195_rd2"."info_fte" VALUES ('2', 'Wang Ming', 'hr@qq.com', 't', '13866688888', '2', '1990-01-02', 'shanghai', '2', 'hr@qq.com', '021-54742388');
INSERT INTO "ss1604c195_rd2"."info_fte" VALUES ('3', 'Wang Xiao', 'mg1@qq.com', 't', '13866689999', '4', '1990-01-03', 'shanghai', '3', 'mg1@qq.com', '021-54742389');
INSERT INTO "ss1604c195_rd2"."info_fte" VALUES ('4', 'Wang Xi', 'mg2@qq.com', 't', '13866680000', '5', '1990-01-04', 'shanghai', '3', 'mg2@qq.com', '021-54742380');

-- ----------------------------
-- Table structure for info_ste
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd2"."info_ste";
CREATE TABLE "ss1604c195_rd2"."info_ste" (
"steid" int4 DEFAULT nextval('"ss1604c195_rd2".ste_steid_seq'::regclass) NOT NULL,
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
"skills" varchar COLLATE "default",
"experiences" varchar COLLATE "default",
"resume_url" varchar COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd2"."info_ste"."role" IS '10-candidate ste
11-ste
12-dismissed ste';

-- ----------------------------
-- Records of info_ste
-- ----------------------------
INSERT INTO "ss1604c195_rd2"."info_ste" VALUES ('1', 'Wang Yi', 't', '1990-02-02', 'shanghai', 'w1@qq.com', 'w1@qq.com', '021-57378851', '15216688611', '5', '10', '/downloadFile?file=55826c72055128f646f1a00d55aada7a.pem', '/downloadFile?file=d41d8cd98f00b204e9800998ecf8427e', '2', '["Algorithm","Java","Jdbc","Linux","Spring"]', 'microsoft', '/downloadFile?file=95c7dad612ce3a17696178a93610b3e6.xlsx');
INSERT INTO "ss1604c195_rd2"."info_ste" VALUES ('2', 'Wang Er', 't', '1989-02-21', 'shanghai', 'w2@qq.com', 'w2@qq.com', '021-57378852', '15216688628', '5', '10', null, null, '2', '["AR","Algorithm","C","C++","Java"]', 'google, intel', '/downloadFile?file=03ef92a8505dd7f59042b5cdccf27911.docx');
INSERT INTO "ss1604c195_rd2"."info_ste" VALUES ('3', 'Wang San', 't', '1991-03-02', 'shanghai', 'w3@qq.com', 'w3@qq.com', '021-57378853', '15216688638', '4', '10', '/downloadFile?file=6ef80a37348f8a952289ace6f8ad32b3.log', '/downloadFile?file=d41d8cd98f00b204e9800998ecf8427e', '5', '["Android","Java","Linux"]', 'google', '/downloadFile?file=55826c72055128f646f1a00d55aada7a.pem');
INSERT INTO "ss1604c195_rd2"."info_ste" VALUES ('4', 'Wang Si', 'f', '1990-05-25', 'shanghai', 'w4@qq.com', 'w4@qq.com', '021-57378854', '15216688648', '5', '10', null, null, '2', '["Algorithm","Java","Js"]', 'google', '/downloadFile?file=55826c72055128f646f1a00d55aada7a.pem');
INSERT INTO "ss1604c195_rd2"."info_ste" VALUES ('5', 'Wang Wu', 't', '1992-06-05', 'shanghai', 'w5@qq.com', 'w5@qq.com', '021-57378855', '15216688655', '5', '10', null, null, '2', 'c++, nodejs,android,meteor,html5', null, null);
INSERT INTO "ss1604c195_rd2"."info_ste" VALUES ('6', 'Zhang Yi', 't', '1989-11-02', 'shanghai', 'z1@qq.com', 'z1@qq.com', '021-57378856', '15216688668', '5', '11', null, null, '2', 'java,linux,mysql,spring,ml', null, null);
INSERT INTO "ss1604c195_rd2"."info_ste" VALUES ('22', 'Wang Xi', 'f', '1990-02-23', 'shanghai', '981088636@qq.com', '981088636@qq.com', '021-54746789', '15898788996', '5', '10', '/downloadFile?file=0b6dbc45a5e389015e7bb87dc43c38f3.odb', '/downloadFile?file=d41d8cd98f00b204e9800998ecf8427e', '2', '["Algorithm","Android","C","Database","Java"]', 'google', '/downloadFile?file=6ef80a37348f8a952289ace6f8ad32b3.log');
INSERT INTO "ss1604c195_rd2"."info_ste" VALUES ('23', 'testname324', null, null, null, 'testemail323@qq.com', 'testemail323@qq.com', null, null, null, '10', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for notify_pointer
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd2"."notify_pointer";
CREATE TABLE "ss1604c195_rd2"."notify_pointer" (
"ID" int4 DEFAULT nextval('"ss1604c195_rd2"."notify_pointer_ID_seq"'::regclass) NOT NULL,
"role" int4,
"ref_id" int4,
"type" int4,
"inquiry_time" timestamp(6)
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd2"."notify_pointer"."type" IS '1- inquiry ste applycation
2- inquiry ste salary
3- inqury hr salary';

-- ----------------------------
-- Records of notify_pointer
-- ----------------------------
INSERT INTO "ss1604c195_rd2"."notify_pointer" VALUES ('113', '11', '6', '2', '2016-06-12 19:04:50.159');
INSERT INTO "ss1604c195_rd2"."notify_pointer" VALUES ('114', '2', '2', '3', '2016-06-12 19:05:04.413');

-- ----------------------------
-- Table structure for recruit_agency
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd2"."recruit_agency";
CREATE TABLE "ss1604c195_rd2"."recruit_agency" (
"agencyid" int4 DEFAULT nextval('"ss1604c195_rd2".recruit_agency_agencyid_seq'::regclass) NOT NULL,
"agency_url" varchar COLLATE "default",
"agency_tpl" char(1) COLLATE "default",
"agency_auth" varchar COLLATE "default",
"agencyname" varchar COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd2"."recruit_agency"."agency_tpl" IS 'template';
COMMENT ON COLUMN "ss1604c195_rd2"."recruit_agency"."agency_auth" IS 'auth string';

-- ----------------------------
-- Records of recruit_agency
-- ----------------------------
INSERT INTO "ss1604c195_rd2"."recruit_agency" VALUES ('1', 'http://www.indeed.com', null, null, 'Indeed');
INSERT INTO "ss1604c195_rd2"."recruit_agency" VALUES ('2', 'http://www.dajie.com/', null, null, 'Dajie');
INSERT INTO "ss1604c195_rd2"."recruit_agency" VALUES ('3', 'http://www.51job.com/', null, null, '51job');
INSERT INTO "ss1604c195_rd2"."recruit_agency" VALUES ('4', 'http://www.glassdoor.com/', null, null, 'Glassdoor');
INSERT INTO "ss1604c195_rd2"."recruit_agency" VALUES ('5', 'http://www.kanzhun.com/', null, null, 'Kanzhun');

-- ----------------------------
-- Table structure for recruit_applyment
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd2"."recruit_applyment";
CREATE TABLE "ss1604c195_rd2"."recruit_applyment" (
"steid" int4,
"positionid" int4,
"state" int4,
"updatedby" int4,
"createdat" timestamp(6),
"updatedat" timestamp(6),
"applymentid" int4 DEFAULT nextval('"ss1604c195_rd2".recruit_applyment_applymentid_seq'::regclass) NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd2"."recruit_applyment"."state" IS '0-self cancelled
1- wait hr check
2- wait mg check
3- wait arrange interview
4- interview
5- pass
6- fail
';

-- ----------------------------
-- Records of recruit_applyment
-- ----------------------------
INSERT INTO "ss1604c195_rd2"."recruit_applyment" VALUES ('22', '91', '0', '22', '2016-06-08 18:17:42.91', '2016-06-08 18:22:29.001', '666726');
INSERT INTO "ss1604c195_rd2"."recruit_applyment" VALUES ('1', '2', '0', '1', '2016-06-12 12:33:13.411', '2016-06-12 12:38:23.315', '666727');
INSERT INTO "ss1604c195_rd2"."recruit_applyment" VALUES ('2', '1', '0', '2', '2016-06-12 15:50:04.048', '2016-06-12 15:50:04.048', '666728');
INSERT INTO "ss1604c195_rd2"."recruit_applyment" VALUES ('3', '5', '0', '3', '2016-06-12 15:53:16.629', '2016-06-12 15:53:36.915', '666729');
INSERT INTO "ss1604c195_rd2"."recruit_applyment" VALUES ('3', '91', '0', '3', '2016-06-12 15:53:41.906', '2016-06-12 15:53:45.739', '666730');
INSERT INTO "ss1604c195_rd2"."recruit_applyment" VALUES ('3', '5', '0', '3', '2016-06-12 15:53:49.753', '2016-06-12 15:53:49.753', '666731');
INSERT INTO "ss1604c195_rd2"."recruit_applyment" VALUES ('2', '5', '2', '2', '2016-06-12 15:56:54.967', '2016-06-12 18:26:18.786', '666732');
INSERT INTO "ss1604c195_rd2"."recruit_applyment" VALUES ('3', '5', '12', '3', '2016-06-12 15:59:15.176', '2016-06-12 18:58:32.419', '666733');
INSERT INTO "ss1604c195_rd2"."recruit_applyment" VALUES ('4', '91', '2', '2', '2016-06-12 17:46:45.145', '2016-06-12 18:26:16.944', '666734');

-- ----------------------------
-- Table structure for recruit_applyment_log
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd2"."recruit_applyment_log";
CREATE TABLE "ss1604c195_rd2"."recruit_applyment_log" (
"steid" int4,
"positionid" int4,
"state" int4,
"updatedby" int4,
"createdat" timestamp(6),
"updatedat" timestamp(6),
"applymentid" int4,
"id" int4 DEFAULT nextval('"ss1604c195_rd2".recruit_applyment_log_id_seq'::regclass) NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd2"."recruit_applyment_log"."state" IS '0-self cancelled
1- wait hr check
2- wait mg check
3- wait arrange interview
4- interview
5- pass
6- fail
';

-- ----------------------------
-- Records of recruit_applyment_log
-- ----------------------------
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('22', '91', '1', '22', '2016-06-08 18:17:42.91', '2016-06-08 18:17:42.91', '666726', '476');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('22', '91', '2', '2', '2016-06-08 18:17:42.91', '2016-06-08 18:17:54.939', '666726', '477');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('22', '91', '3', '3', '2016-06-08 18:17:42.91', '2016-06-08 18:18:01.075', '666726', '478');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('22', '91', '4', '2', '2016-06-08 18:17:42.91', '2016-06-08 18:18:45.037', '666726', '479');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('22', '91', '5', '3', '2016-06-08 18:17:42.91', '2016-06-08 18:21:40.868', '666726', '480');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('22', '91', '10', '22', '2016-06-08 18:17:42.91', '2016-06-08 18:22:29.001', '666726', '481');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('22', '91', '12', '22', '2016-06-08 18:17:42.91', '2016-06-08 18:22:29.001', '666726', '482');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('22', '91', '0', '22', '2016-06-08 18:17:42.91', '2016-06-08 18:22:29.001', '666726', '483');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('1', '2', '1', '1', '2016-06-12 12:33:13.411', '2016-06-12 12:33:13.411', '666727', '484');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('1', '2', '2', '2', '2016-06-12 12:33:13.411', '2016-06-12 12:33:52.166', '666727', '485');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('1', '2', '3', '4', '2016-06-12 12:33:13.411', '2016-06-12 12:35:28.135', '666727', '486');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('1', '2', '4', '2', '2016-06-12 12:33:13.411', '2016-06-12 12:36:22.887', '666727', '487');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('1', '2', '5', '4', '2016-06-12 12:33:13.411', '2016-06-12 12:36:57.581', '666727', '488');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('1', '2', '10', '1', '2016-06-12 12:33:13.411', '2016-06-12 12:38:23.315', '666727', '489');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('1', '2', '12', '1', '2016-06-12 12:33:13.411', '2016-06-12 12:38:23.315', '666727', '490');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('22', '91', '0', '22', '2016-06-08 18:17:42.91', '2016-06-08 18:22:29.001', '666726', '491');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('1', '2', '0', '1', '2016-06-12 12:33:13.411', '2016-06-12 12:38:23.315', '666727', '492');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('2', '1', '1', '2', '2016-06-12 15:50:04.048', '2016-06-12 15:50:04.048', '666728', '493');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('22', '91', '0', '22', '2016-06-08 18:17:42.91', '2016-06-08 18:22:29.001', '666726', '494');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('1', '2', '0', '1', '2016-06-12 12:33:13.411', '2016-06-12 12:38:23.315', '666727', '495');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('2', '1', '0', '2', '2016-06-12 15:50:04.048', '2016-06-12 15:50:04.048', '666728', '496');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('3', '5', '1', '3', '2016-06-12 15:53:16.629', '2016-06-12 15:53:16.629', '666729', '497');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('3', '5', '0', '3', '2016-06-12 15:53:16.629', '2016-06-12 15:53:36.915', '666729', '498');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('22', '91', '0', '22', '2016-06-08 18:17:42.91', '2016-06-08 18:22:29.001', '666726', '499');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('1', '2', '0', '1', '2016-06-12 12:33:13.411', '2016-06-12 12:38:23.315', '666727', '500');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('2', '1', '0', '2', '2016-06-12 15:50:04.048', '2016-06-12 15:50:04.048', '666728', '501');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('3', '5', '0', '3', '2016-06-12 15:53:16.629', '2016-06-12 15:53:36.915', '666729', '502');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('3', '91', '1', '3', '2016-06-12 15:53:41.906', '2016-06-12 15:53:41.906', '666730', '503');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('3', '91', '0', '3', '2016-06-12 15:53:41.906', '2016-06-12 15:53:45.739', '666730', '504');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('22', '91', '0', '22', '2016-06-08 18:17:42.91', '2016-06-08 18:22:29.001', '666726', '505');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('1', '2', '0', '1', '2016-06-12 12:33:13.411', '2016-06-12 12:38:23.315', '666727', '506');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('2', '1', '0', '2', '2016-06-12 15:50:04.048', '2016-06-12 15:50:04.048', '666728', '507');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('3', '5', '0', '3', '2016-06-12 15:53:16.629', '2016-06-12 15:53:36.915', '666729', '508');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('3', '91', '0', '3', '2016-06-12 15:53:41.906', '2016-06-12 15:53:45.739', '666730', '509');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('3', '5', '1', '3', '2016-06-12 15:53:49.753', '2016-06-12 15:53:49.753', '666731', '510');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('22', '91', '0', '22', '2016-06-08 18:17:42.91', '2016-06-08 18:22:29.001', '666726', '511');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('1', '2', '0', '1', '2016-06-12 12:33:13.411', '2016-06-12 12:38:23.315', '666727', '512');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('2', '1', '0', '2', '2016-06-12 15:50:04.048', '2016-06-12 15:50:04.048', '666728', '513');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('3', '5', '0', '3', '2016-06-12 15:53:16.629', '2016-06-12 15:53:36.915', '666729', '514');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('3', '91', '0', '3', '2016-06-12 15:53:41.906', '2016-06-12 15:53:45.739', '666730', '515');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('3', '5', '0', '3', '2016-06-12 15:53:49.753', '2016-06-12 15:53:49.753', '666731', '516');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('2', '5', '1', '2', '2016-06-12 15:56:54.967', '2016-06-12 15:56:54.967', '666732', '517');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('3', '5', '0', '3', '2016-06-12 15:53:16.629', '2016-06-12 15:53:36.915', '666729', '518');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('3', '91', '0', '3', '2016-06-12 15:53:41.906', '2016-06-12 15:53:45.739', '666730', '519');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('3', '5', '0', '3', '2016-06-12 15:53:49.753', '2016-06-12 15:53:49.753', '666731', '520');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('3', '5', '1', '3', '2016-06-12 15:59:15.176', '2016-06-12 15:59:15.176', '666733', '521');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('4', '91', '1', '4', '2016-06-12 17:46:45.145', '2016-06-12 17:46:45.145', '666734', '522');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('4', '91', '2', '2', '2016-06-12 17:46:45.145', '2016-06-12 18:26:16.944', '666734', '523');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('2', '5', '2', '2', '2016-06-12 15:56:54.967', '2016-06-12 18:26:18.786', '666732', '524');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('3', '5', '2', '2', '2016-06-12 15:59:15.176', '2016-06-12 18:55:54.71', '666733', '525');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('3', '5', '3', '3', '2016-06-12 15:59:15.176', '2016-06-12 18:56:37.672', '666733', '526');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('3', '5', '4', '2', '2016-06-12 15:59:15.176', '2016-06-12 18:57:25.107', '666733', '527');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('3', '5', '5', '3', '2016-06-12 15:59:15.176', '2016-06-12 18:57:36.335', '666733', '528');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('3', '5', '10', '3', '2016-06-12 15:59:15.176', '2016-06-12 18:58:32.419', '666733', '529');
INSERT INTO "ss1604c195_rd2"."recruit_applyment_log" VALUES ('3', '5', '12', '3', '2016-06-12 15:59:15.176', '2016-06-12 18:58:32.419', '666733', '530');

-- ----------------------------
-- Table structure for recruit_interview
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd2"."recruit_interview";
CREATE TABLE "ss1604c195_rd2"."recruit_interview" (
"interviewid" int4 DEFAULT nextval('"ss1604c195_rd2".recruit_interview_interviewid_seq'::regclass) NOT NULL,
"endtime" timestamp(6),
"location" varchar COLLATE "default",
"contact_person" varchar COLLATE "default",
"contact_phone" varchar COLLATE "default",
"replenish" varchar COLLATE "default",
"applymentid" int4,
"starttime" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of recruit_interview
-- ----------------------------
INSERT INTO "ss1604c195_rd2"."recruit_interview" VALUES ('666702', '2016-06-08 20:00:00', 'Mountain Rainer, No.600 Longhua Road, Shanghai', 'Wang Xiao', '021-54742389', 'Dress Suit Please!', '666726', '2016-06-08 18:00:00');
INSERT INTO "ss1604c195_rd2"."recruit_interview" VALUES ('666703', '2016-06-12 14:00:00', 'Mountain Rainer, No.600 Longhua Road, Shanghai', 'Wang Xi', '021-54742380', 'Dress Suit, Bring Pen', '666727', '2016-06-12 12:00:00');
INSERT INTO "ss1604c195_rd2"."recruit_interview" VALUES ('666704', '2016-06-12 20:00:00', 'Wudaokou, No.230 Helun Road, Beijing', 'Wang Xiao', '021-54742389', 'dress suit', '666733', '2016-06-12 18:00:00');

-- ----------------------------
-- Table structure for recruit_pool
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd2"."recruit_pool";
CREATE TABLE "ss1604c195_rd2"."recruit_pool" (
"poolid" int4 DEFAULT nextval('"ss1604c195_rd2".recruit_pool_poolid_seq'::regclass) NOT NULL,
"positionid" int4,
"realnumber" int4,
"apply_due" date,
"apply_start" date,
"poster_url" varchar COLLATE "default",
"createdby" int4,
"updatedby" int4,
"createdat" timestamp(6),
"updatedat" timestamp(6),
"isvalid" bool DEFAULT true NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of recruit_pool
-- ----------------------------
INSERT INTO "ss1604c195_rd2"."recruit_pool" VALUES ('1', '1', '6', '2016-06-16', '2016-06-01', null, '2', '2', '2016-05-30 00:00:00', '2016-05-30 00:00:00', 't');
INSERT INTO "ss1604c195_rd2"."recruit_pool" VALUES ('2', '2', '10', '2016-06-16', '2016-06-01', null, '2', '2', '2016-05-30 00:00:00', '2016-05-30 00:00:00', 't');
INSERT INTO "ss1604c195_rd2"."recruit_pool" VALUES ('3', '3', '7', '2016-06-16', '2016-06-01', null, '2', '2', '2016-05-30 00:00:00', '2016-05-30 00:00:00', 't');
INSERT INTO "ss1604c195_rd2"."recruit_pool" VALUES ('4', '4', '8', '2016-06-16', '2016-06-01', null, '2', '2', '2016-05-30 00:00:00', '2016-05-30 00:00:00', 't');
INSERT INTO "ss1604c195_rd2"."recruit_pool" VALUES ('5', '5', '2', '2016-06-16', '2016-06-01', null, '2', '2', '2016-05-30 00:00:00', '2016-05-30 00:00:00', 't');
INSERT INTO "ss1604c195_rd2"."recruit_pool" VALUES ('666698', '91', '5', '2016-06-15', '2016-06-08', null, '2', '2', '2016-06-08 18:16:50.571', '2016-06-08 18:17:16.506', 't');

-- ----------------------------
-- Table structure for recruit_pool_log
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd2"."recruit_pool_log";
CREATE TABLE "ss1604c195_rd2"."recruit_pool_log" (
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
"id" int4 DEFAULT nextval('"ss1604c195_rd2".recruit_pool_log_id_seq'::regclass) NOT NULL,
"isvalid" bool
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of recruit_pool_log
-- ----------------------------
INSERT INTO "ss1604c195_rd2"."recruit_pool_log" VALUES ('1', '6', '2016-06-16', '2016-06-01', null, '2', '2', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '1', '106', 't');
INSERT INTO "ss1604c195_rd2"."recruit_pool_log" VALUES ('2', '10', '2016-06-16', '2016-06-01', null, '2', '2', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '2', '107', 't');
INSERT INTO "ss1604c195_rd2"."recruit_pool_log" VALUES ('3', '7', '2016-06-16', '2016-06-01', null, '2', '2', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '3', '108', 't');
INSERT INTO "ss1604c195_rd2"."recruit_pool_log" VALUES ('4', '8', '2016-06-16', '2016-06-01', null, '2', '2', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '4', '109', 't');
INSERT INTO "ss1604c195_rd2"."recruit_pool_log" VALUES ('5', '2', '2016-06-16', '2016-06-01', null, '2', '2', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '5', '110', 't');
INSERT INTO "ss1604c195_rd2"."recruit_pool_log" VALUES ('91', '3', null, null, null, '2', '2', '2016-06-08 18:16:50.571', '2016-06-08 18:16:50.571', '666698', '111', 't');
INSERT INTO "ss1604c195_rd2"."recruit_pool_log" VALUES ('91', '5', '2016-06-15', '2016-06-08', null, '2', '2', '2016-06-08 18:16:50.571', '2016-06-08 18:17:16.506', '666698', '112', 't');

-- ----------------------------
-- Table structure for recruit_position
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd2"."recruit_position";
CREATE TABLE "ss1604c195_rd2"."recruit_position" (
"positionname" varchar COLLATE "default",
"number" int4,
"location_req" varchar COLLATE "default",
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
"positionid" int4 DEFAULT nextval('"ss1604c195_rd2".recruit_position_positionid_seq'::regclass) NOT NULL,
"description" varchar COLLATE "default",
"isvalid" bool DEFAULT true NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd2"."recruit_position"."duration_req" IS 'months';

-- ----------------------------
-- Records of recruit_position
-- ----------------------------
INSERT INTO "ss1604c195_rd2"."recruit_position" VALUES ('Java Dev', '5', 'shanghai', '2016-06-20', '6', 'Java', 'Linux', 'Spring', 'JDBC', 'Mysql', '3', '3', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '4', '1', 'Hue Java Development', 't');
INSERT INTO "ss1604c195_rd2"."recruit_position" VALUES ('Java QA', '8', 'shanghai', '2016-06-30', '8', 'Java', 'JUnit', 'Spring', 'Jmeter', 'Tsung', '4', '4', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '5', '2', 'Hue Project Test', 't');
INSERT INTO "ss1604c195_rd2"."recruit_position" VALUES ('Java OPS', '5', 'shanghai', '2016-06-20', '6', 'Java', 'Hadoop', 'Splunk', 'Nginx', 'Docker', '4', '4', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '5', '3', 'Hue Java OPS', 't');
INSERT INTO "ss1604c195_rd2"."recruit_position" VALUES ('Android Dev', '7', 'shanghai', '2016-06-22', '6', 'Android', 'ADB', 'Ionic', 'Meteor', 'AngularJS', '3', '3', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '4', '4', 'Hue Android Client Development', 't');
INSERT INTO "ss1604c195_rd2"."recruit_position" VALUES ('Deep Research', '2', 'shanghai', '2016-06-25', '12', 'Data Mining', 'NLP', 'Machine Learning', 'Neural Network', 'LR', '3', '3', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '4', '5', 'Hue Machine Learning Research', 't');
INSERT INTO "ss1604c195_rd2"."recruit_position" VALUES ('Java Basic Research', '3', 'shanghai', '2016-06-20', '6', 'Algorithm', 'Java', 'Spring', null, null, '3', '3', '2016-06-08 18:16:38.434', '2016-06-08 18:16:38.434', '4', '91', 'Research Position, You should have strong research skills', 't');

-- ----------------------------
-- Table structure for recruit_position_log
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd2"."recruit_position_log";
CREATE TABLE "ss1604c195_rd2"."recruit_position_log" (
"positionname" varchar COLLATE "default",
"number" int4,
"location_req" varchar COLLATE "default",
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
"id" int4 DEFAULT nextval('"ss1604c195_rd2".recruit_position_copy_id_seq'::regclass) NOT NULL,
"description" varchar COLLATE "default",
"isvalid" bool
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd2"."recruit_position_log"."duration_req" IS 'months';

-- ----------------------------
-- Records of recruit_position_log
-- ----------------------------
INSERT INTO "ss1604c195_rd2"."recruit_position_log" VALUES ('Java Dev', '5', 'shanghai', '2016-06-20', '6', 'Java', 'Linux', 'Spring', 'JDBC', 'Mysql', '3', '3', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '4', '1', '185', 'Hue Java Development', 't');
INSERT INTO "ss1604c195_rd2"."recruit_position_log" VALUES ('Java QA', '8', 'shanghai', '2016-06-30', '8', 'Java', 'JUnit', 'Spring', 'Jmeter', 'Tsung', '4', '4', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '5', '2', '186', 'Hue Project Test', 't');
INSERT INTO "ss1604c195_rd2"."recruit_position_log" VALUES ('Java OPS', '5', 'shanghai', '2016-06-20', '6', 'Java', 'Hadoop', 'Splunk', 'Nginx', 'Docker', '4', '4', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '5', '3', '187', 'Hue Java OPS', 't');
INSERT INTO "ss1604c195_rd2"."recruit_position_log" VALUES ('Android Dev', '7', 'shanghai', '2016-06-22', '6', 'Android', 'ADB', 'Ionic', 'Meteor', 'AngularJS', '3', '3', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '4', '4', '188', 'Hue Android Client Development', 't');
INSERT INTO "ss1604c195_rd2"."recruit_position_log" VALUES ('Deep Research', '2', 'shanghai', '2016-06-25', '12', 'Data Mining', 'NLP', 'Machine Learning', 'Neural Network', 'LR', '3', '3', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '4', '5', '189', 'Hue Machine Learning Research', 't');
INSERT INTO "ss1604c195_rd2"."recruit_position_log" VALUES ('Java Basic Research', '3', 'shanghai', '2016-06-20', '6', 'Algorithm', 'Java', 'Spring', null, null, '3', '3', '2016-06-08 18:16:38.434', '2016-06-08 18:16:38.434', '4', '91', '190', 'Research Position, You should have strong research skills', 't');

-- ----------------------------
-- Table structure for recruit_published
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd2"."recruit_published";
CREATE TABLE "ss1604c195_rd2"."recruit_published" (
"publishedid" int4 DEFAULT nextval('"ss1604c195_rd2".recruit_published_publishedid_seq'::regclass) NOT NULL,
"poolid" int4,
"agencyid" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of recruit_published
-- ----------------------------
INSERT INTO "ss1604c195_rd2"."recruit_published" VALUES ('1', '1', '1');
INSERT INTO "ss1604c195_rd2"."recruit_published" VALUES ('2', '1', '2');
INSERT INTO "ss1604c195_rd2"."recruit_published" VALUES ('3', '1', '3');
INSERT INTO "ss1604c195_rd2"."recruit_published" VALUES ('4', '2', '4');
INSERT INTO "ss1604c195_rd2"."recruit_published" VALUES ('5', '2', '5');
INSERT INTO "ss1604c195_rd2"."recruit_published" VALUES ('6', '2', '1');
INSERT INTO "ss1604c195_rd2"."recruit_published" VALUES ('7', '3', '1');
INSERT INTO "ss1604c195_rd2"."recruit_published" VALUES ('8', '3', '2');
INSERT INTO "ss1604c195_rd2"."recruit_published" VALUES ('9', '3', '4');
INSERT INTO "ss1604c195_rd2"."recruit_published" VALUES ('10', '4', '3');
INSERT INTO "ss1604c195_rd2"."recruit_published" VALUES ('11', '4', '5');
INSERT INTO "ss1604c195_rd2"."recruit_published" VALUES ('12', '5', '1');
INSERT INTO "ss1604c195_rd2"."recruit_published" VALUES ('13', '5', '4');
INSERT INTO "ss1604c195_rd2"."recruit_published" VALUES ('666698', '666698', '1');
INSERT INTO "ss1604c195_rd2"."recruit_published" VALUES ('666699', '666698', '4');
INSERT INTO "ss1604c195_rd2"."recruit_published" VALUES ('666700', '666698', '5');

-- ----------------------------
-- Table structure for sns_message
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd2"."sns_message";
CREATE TABLE "ss1604c195_rd2"."sns_message" (
"messageid" int4 DEFAULT nextval('"ss1604c195_rd2".sns_message_messageid_seq'::regclass) NOT NULL,
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
COMMENT ON COLUMN "ss1604c195_rd2"."sns_message"."status" IS '0-sending
1-sent
2-withdraw';

-- ----------------------------
-- Records of sns_message
-- ----------------------------

-- ----------------------------
-- Table structure for sns_timeline
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd2"."sns_timeline";
CREATE TABLE "ss1604c195_rd2"."sns_timeline" (
"timelineid" int4 DEFAULT nextval('"ss1604c195_rd2".sns_timeline_timelineid_seq'::regclass) NOT NULL,
"refid" int4,
"refrole" int4,
"time" timestamp(6),
"content" varchar COLLATE "default",
"status" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd2"."sns_timeline"."status" IS '0-sending
1-displaying
2-deleted';

-- ----------------------------
-- Records of sns_timeline
-- ----------------------------

-- ----------------------------
-- Table structure for staffing_change
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd2"."staffing_change";
CREATE TABLE "ss1604c195_rd2"."staffing_change" (
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
"changeid" int4 DEFAULT nextval('"ss1604c195_rd2".staffing_change_changeid_seq'::regclass) NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd2"."staffing_change"."from_positionid" IS 'null if from candidate';
COMMENT ON COLUMN "ss1604c195_rd2"."staffing_change"."to_positionid" IS 'null if dismissed
0 if regularization';
COMMENT ON COLUMN "ss1604c195_rd2"."staffing_change"."duration_req" IS 'months';
COMMENT ON COLUMN "ss1604c195_rd2"."staffing_change"."state" IS '0-ste apply check fail
1-ste apply wait mg check
2-ste apply mg checked wait hr check
3-ste apply pass

10-hr apply check fail
11-hr apply wait mg check
12-hr apply pass';

-- ----------------------------
-- Records of staffing_change
-- ----------------------------

-- ----------------------------
-- Table structure for staffing_change_log
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd2"."staffing_change_log";
CREATE TABLE "ss1604c195_rd2"."staffing_change_log" (
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
"id" int4 DEFAULT nextval('"ss1604c195_rd2".staffing_change_log_id_seq'::regclass) NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd2"."staffing_change_log"."from_positionid" IS 'null if from candidate';
COMMENT ON COLUMN "ss1604c195_rd2"."staffing_change_log"."to_positionid" IS 'null if dismissed
0 if regularization';
COMMENT ON COLUMN "ss1604c195_rd2"."staffing_change_log"."duration_req" IS 'months';
COMMENT ON COLUMN "ss1604c195_rd2"."staffing_change_log"."state" IS '0-ste apply check fail
1-ste apply wait mg check
2-ste apply mg checked wait hr check
3-ste apply pass

10-hr apply check fail
11-hr apply wait mg check
12-hr apply pass';

-- ----------------------------
-- Records of staffing_change_log
-- ----------------------------

-- ----------------------------
-- Table structure for test_comments
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd2"."test_comments";
CREATE TABLE "ss1604c195_rd2"."test_comments" (
"ID" int4 DEFAULT nextval('"ss1604c195_rd2"."COMMENTS_ID_seq"'::regclass) NOT NULL,
"POST_ID" int4 NOT NULL,
"NAME" varchar COLLATE "default" NOT NULL,
"EMAIL" varchar COLLATE "default" NOT NULL,
"CONTENT" text COLLATE "default",
"CREATED_ON" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of test_comments
-- ----------------------------
INSERT INTO "ss1604c195_rd2"."test_comments" VALUES ('23', '23', 'User4', 'user4@gmail.com', 'This is my new comment on post1', '2016-05-10 19:14:03.69');
INSERT INTO "ss1604c195_rd2"."test_comments" VALUES ('24', '24', 'User4', 'user4@gmail.com', 'This is my new comment on post1', '2016-05-10 19:16:20.752');
INSERT INTO "ss1604c195_rd2"."test_comments" VALUES ('25', '25', 'User4', 'user4@gmail.com', 'This is my new comment on post1', '2016-05-10 19:36:09.381');
INSERT INTO "ss1604c195_rd2"."test_comments" VALUES ('26', '26', 'User4', 'user4@gmail.com', 'This is my new comment on post1', '2016-05-18 15:11:08.43');
INSERT INTO "ss1604c195_rd2"."test_comments" VALUES ('27', '27', 'User4', 'user4@gmail.com', 'This is my new comment on post1', '2016-05-30 10:09:33.397');
INSERT INTO "ss1604c195_rd2"."test_comments" VALUES ('28', '28', 'User4', 'user4@gmail.com', 'This is my new comment on post1', '2016-05-30 10:38:34.05');
INSERT INTO "ss1604c195_rd2"."test_comments" VALUES ('29', '29', 'User4', 'user4@gmail.com', 'This is my new comment on post1', '2016-05-30 10:39:11.084');
INSERT INTO "ss1604c195_rd2"."test_comments" VALUES ('34', '34', 'User4', 'user4@gmail.com', 'This is my new comment on post1', '2016-05-30 11:06:07.985');
INSERT INTO "ss1604c195_rd2"."test_comments" VALUES ('36', '36', 'User4', 'user4@gmail.com', 'This is my new comment on post1', '2016-05-30 11:08:16.998');
INSERT INTO "ss1604c195_rd2"."test_comments" VALUES ('47', '47', 'User4', 'user4@gmail.com', 'This is my new comment on post1', '2016-05-30 11:41:39.555');
INSERT INTO "ss1604c195_rd2"."test_comments" VALUES ('48', '49', 'User4', 'user4@gmail.com', 'This is my new comment on post1', '2016-05-30 11:43:38.568');

-- ----------------------------
-- Table structure for test_posts
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd2"."test_posts";
CREATE TABLE "ss1604c195_rd2"."test_posts" (
"ID" int4 DEFAULT nextval('"ss1604c195_rd2"."POSTS_ID_seq"'::regclass) NOT NULL,
"TITLE" varchar COLLATE "default" NOT NULL,
"CONTENT" text COLLATE "default",
"CREATED_ON" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of test_posts
-- ----------------------------
INSERT INTO "ss1604c195_rd2"."test_posts" VALUES ('23', 'My new Post', 'This is my new test post', '2016-05-10 19:14:02.922');
INSERT INTO "ss1604c195_rd2"."test_posts" VALUES ('24', 'My new Post', 'This is my new test post', '2016-05-10 19:16:19.773');
INSERT INTO "ss1604c195_rd2"."test_posts" VALUES ('25', 'My new Post', 'This is my new test post', '2016-05-10 19:36:08.665');
INSERT INTO "ss1604c195_rd2"."test_posts" VALUES ('26', 'My new Post', 'This is my new test post', '2016-05-18 15:11:07.385');
INSERT INTO "ss1604c195_rd2"."test_posts" VALUES ('27', 'My new Post', 'This is my new test post', '2016-05-30 10:09:32.418');
INSERT INTO "ss1604c195_rd2"."test_posts" VALUES ('28', 'My new Post', 'This is my new test post', '2016-05-30 10:38:33.256');
INSERT INTO "ss1604c195_rd2"."test_posts" VALUES ('29', 'My new Post', 'This is my new test post', '2016-05-30 10:39:10.376');
INSERT INTO "ss1604c195_rd2"."test_posts" VALUES ('34', 'My new Post', 'This is my new test post', '2016-05-30 11:06:07.283');
INSERT INTO "ss1604c195_rd2"."test_posts" VALUES ('36', 'My new Post', 'This is my new test post', '2016-05-30 11:08:16.669');
INSERT INTO "ss1604c195_rd2"."test_posts" VALUES ('47', 'My new Post', 'This is my new test post', '2016-05-30 11:41:38.693');
INSERT INTO "ss1604c195_rd2"."test_posts" VALUES ('48', 'My new Post', 'This is my new test post', '2016-05-30 11:41:54.517');
INSERT INTO "ss1604c195_rd2"."test_posts" VALUES ('49', 'My new Post', 'This is my new test post', '2016-05-30 11:43:38.269');

-- ----------------------------
-- View structure for vi_career_each_month
-- ----------------------------
CREATE OR REPLACE VIEW "ss1604c195_rd2"."vi_career_each_month" AS
 SELECT x.steid,
    x.name,
    x.positionid,
    x.departmentid,
    x.positionname,
    x.departmentname,
    x.attendancenums,
    x.attendancehours,
    y.performancenums,
    y.performancehours,
    x.month
   FROM (( SELECT info_ste.steid,
            info_ste.name,
            info_ste.positionid,
            info_ste.departmentid,
            info_department.departmentname,
            recruit_position.positionname,
            count(a.steid) AS attendancenums,
            sum(a.hours) AS attendancehours,
            "substring"((date_trunc('month'::text, (a.date)::timestamp with time zone) || ''::text), 0, 8) AS month
           FROM (((( SELECT check_attendance.attendanceid,
                    check_attendance.steid,
                    check_attendance.date,
                    check_attendance.hours,
                    check_attendance.state,
                    check_attendance.updatedby,
                    check_attendance.createdat,
                    check_attendance.updatedat
                   FROM ss1604c195_rd2.check_attendance
                  WHERE ((check_attendance.state = 2) AND (check_attendance.date < (date_trunc('month'::text, now()) - '00:00:01'::interval)))) a
             JOIN ss1604c195_rd2.info_ste ON ((info_ste.steid = a.steid)))
             JOIN ss1604c195_rd2.info_department ON ((info_ste.departmentid = info_department.departmentid)))
             JOIN ss1604c195_rd2.recruit_position ON ((info_ste.positionid = recruit_position.positionid)))
          GROUP BY info_ste.steid, info_ste.name, info_ste.positionid, info_ste.departmentid, info_department.departmentname, recruit_position.positionname, ("substring"((date_trunc('month'::text, (a.date)::timestamp with time zone) || ''::text), 0, 8))) x
     LEFT JOIN ( SELECT info_ste.steid,
            info_ste.name,
            info_ste.positionid,
            info_ste.departmentid,
            info_department.departmentname,
            recruit_position.positionname,
            count(a.steid) AS performancenums,
            sum(a.hours) AS performancehours,
            "substring"((date_trunc('month'::text, (a.week_lastday)::timestamp with time zone) || ''::text), 0, 8) AS month
           FROM (((( SELECT check_performance.performanceid,
                    check_performance.steid,
                    check_performance.week_lastday,
                    check_performance.hours,
                    check_performance.description,
                    check_performance.state,
                    check_performance.updatedby,
                    check_performance.createdat,
                    check_performance.updatedat,
                    check_performance.week_firstday
                   FROM ss1604c195_rd2.check_performance
                  WHERE ((check_performance.state = 2) AND (check_performance.week_lastday < (date_trunc('month'::text, now()) - '00:00:01'::interval)))) a
             JOIN ss1604c195_rd2.info_ste ON ((info_ste.steid = a.steid)))
             JOIN ss1604c195_rd2.info_department ON ((info_ste.departmentid = info_department.departmentid)))
             JOIN ss1604c195_rd2.recruit_position ON ((info_ste.positionid = recruit_position.positionid)))
          GROUP BY info_ste.steid, info_ste.name, info_ste.positionid, info_ste.departmentid, info_department.departmentname, recruit_position.positionname, ("substring"((date_trunc('month'::text, (a.week_lastday)::timestamp with time zone) || ''::text), 0, 8))) y ON (((x.steid = y.steid) AND (x.month = y.month))));

-- ----------------------------
-- View structure for vi_career_last_month
-- ----------------------------
CREATE OR REPLACE VIEW "ss1604c195_rd2"."vi_career_last_month" AS
 SELECT x.steid,
    x.name,
    x.positionid,
    x.departmentid,
    x.positionname,
    x.departmentname,
    x.attendancenums,
    x.attendancehours,
    y.performancenums,
    y.performancehours,
    "substring"(((date_trunc('month'::text, now()) - '1 mon'::interval) || ''::text), 0, 8) AS month
   FROM (( SELECT info_ste.steid,
            info_ste.name,
            info_ste.positionid,
            info_ste.departmentid,
            info_department.departmentname,
            recruit_position.positionname,
            count(a.steid) AS attendancenums,
            sum(a.hours) AS attendancehours
           FROM (((( SELECT check_attendance.attendanceid,
                    check_attendance.steid,
                    check_attendance.date,
                    check_attendance.hours,
                    check_attendance.state,
                    check_attendance.updatedby,
                    check_attendance.createdat,
                    check_attendance.updatedat
                   FROM ss1604c195_rd2.check_attendance
                  WHERE ((check_attendance.state = 2) AND ((check_attendance.date >= (date_trunc('month'::text, now()) - '1 mon'::interval)) AND (check_attendance.date <= (date_trunc('month'::text, now()) - '00:00:01'::interval))))) a
             JOIN ss1604c195_rd2.info_ste ON ((info_ste.steid = a.steid)))
             JOIN ss1604c195_rd2.info_department ON ((info_ste.departmentid = info_department.departmentid)))
             JOIN ss1604c195_rd2.recruit_position ON ((info_ste.positionid = recruit_position.positionid)))
          GROUP BY info_ste.steid, info_ste.name, info_ste.positionid, info_ste.departmentid, info_department.departmentname, recruit_position.positionname) x
     LEFT JOIN ( SELECT info_ste.steid,
            info_ste.name,
            info_ste.positionid,
            info_ste.departmentid,
            info_department.departmentname,
            recruit_position.positionname,
            count(a.steid) AS performancenums,
            sum(a.hours) AS performancehours
           FROM (((( SELECT check_performance.performanceid,
                    check_performance.steid,
                    check_performance.week_lastday,
                    check_performance.hours,
                    check_performance.description,
                    check_performance.state,
                    check_performance.updatedby,
                    check_performance.createdat,
                    check_performance.updatedat,
                    check_performance.week_firstday
                   FROM ss1604c195_rd2.check_performance
                  WHERE ((check_performance.state = 2) AND ((check_performance.week_lastday >= (date_trunc('month'::text, now()) - '1 mon'::interval)) AND (check_performance.week_lastday <= (date_trunc('month'::text, now()) - '00:00:01'::interval))))) a
             JOIN ss1604c195_rd2.info_ste ON ((info_ste.steid = a.steid)))
             JOIN ss1604c195_rd2.info_department ON ((info_ste.departmentid = info_department.departmentid)))
             JOIN ss1604c195_rd2.recruit_position ON ((info_ste.positionid = recruit_position.positionid)))
          GROUP BY info_ste.steid, info_ste.name, info_ste.positionid, info_ste.departmentid, info_department.departmentname, recruit_position.positionname) y ON ((x.steid = y.steid)));

-- ----------------------------
-- View structure for vi_recruit_applyment_history
-- ----------------------------
CREATE OR REPLACE VIEW "ss1604c195_rd2"."vi_recruit_applyment_history" AS
 SELECT a.steid,
    g.gender,
    g.birthday,
    g.email,
    g.telephone,
    g.experiences,
    g.skills,
    g.resume_url,
    g.offer_url,
    g.contract_url,
    a.positionid,
    a.state,
    a.updatedby,
    a.createdat,
    a.updatedat,
    a.applymentid,
    a.id,
    b.positionname,
    b.date_req,
    b.duration_req,
    b.location_req,
    b.number,
    b.skill_req1,
    b.skill_req2,
    b.skill_req3,
    b.skill_req4,
    b.skill_req5,
    b.description,
    c.departmentname,
    d.name AS fte_name,
    d.email AS fte_email,
    d.email_self AS fte_email_self,
    d.phone AS fte_phone,
    d.telephone AS fte_telephone,
    e.departmentname AS fte_departmentname,
    f.interviewid,
    f.contact_person AS inv_contact_person,
    f.contact_phone AS inv_contact_phone,
    f.starttime AS inv_starttime,
    f.endtime AS inv_endtime,
    f.location AS inv_location,
    f.replenish AS inv_replenish
   FROM ((((((( SELECT recruit_applyment_log.steid,
            recruit_applyment_log.positionid,
            recruit_applyment_log.state,
            recruit_applyment_log.updatedby,
            recruit_applyment_log.createdat,
            recruit_applyment_log.updatedat,
            recruit_applyment_log.applymentid,
            recruit_applyment_log.id
           FROM ss1604c195_rd2.recruit_applyment_log
          WHERE (recruit_applyment_log.createdat > ((now())::date - 100))) a
     JOIN ss1604c195_rd2.recruit_position b ON ((a.positionid = b.positionid)))
     JOIN ss1604c195_rd2.info_department c ON ((b.departmentid = c.departmentid)))
     LEFT JOIN ss1604c195_rd2.info_fte d ON (((a.updatedby = d.fteid) AND (a.state > 1))))
     LEFT JOIN ss1604c195_rd2.info_department e ON ((d.departmentid = e.departmentid)))
     LEFT JOIN ss1604c195_rd2.recruit_interview f ON ((a.applymentid = f.applymentid)))
     JOIN ss1604c195_rd2.info_ste g ON ((a.steid = g.steid)));

-- ----------------------------
-- View structure for vi_recruit_interview_context
-- ----------------------------
CREATE OR REPLACE VIEW "ss1604c195_rd2"."vi_recruit_interview_context" AS
 SELECT i.interviewid,
    i.endtime,
    i.location,
    i.contact_person,
    i.contact_phone,
    i.replenish,
    i.applymentid,
    i.starttime,
    a.state,
    a.createdat,
    a.updatedat,
    a.updatedby,
    p.positionname,
    p.number,
    p.location_req,
    p.date_req,
    p.duration_req,
    p.skill_req1,
    p.skill_req2,
    p.skill_req3,
    p.skill_req4,
    p.skill_req5,
    p.description,
    p.departmentid,
    d.departmentname,
    d.parent_departmentid,
    s.name,
    s.birthday,
    s.gender,
    s.email,
    s.email_self,
    s.phone,
    s.telephone,
    s.skills,
    s.experiences,
    s.resume_url
   FROM ((((( SELECT recruit_interview.interviewid,
            recruit_interview.endtime,
            recruit_interview.location,
            recruit_interview.contact_person,
            recruit_interview.contact_phone,
            recruit_interview.replenish,
            recruit_interview.applymentid,
            recruit_interview.starttime
           FROM ss1604c195_rd2.recruit_interview
          WHERE (recruit_interview.endtime > now())) i
     JOIN ss1604c195_rd2.recruit_applyment a ON ((i.applymentid = a.applymentid)))
     JOIN ss1604c195_rd2.recruit_position p ON ((a.positionid = p.positionid)))
     JOIN ss1604c195_rd2.info_department d ON ((p.departmentid = d.departmentid)))
     JOIN ss1604c195_rd2.info_ste s ON ((a.steid = s.steid)));

-- ----------------------------
-- View structure for vi_recruit_interview_reminder
-- ----------------------------
CREATE OR REPLACE VIEW "ss1604c195_rd2"."vi_recruit_interview_reminder" AS
 SELECT i.interviewid,
    i.endtime,
    i.location,
    i.contact_person,
    i.contact_phone,
    i.replenish,
    i.applymentid,
    i.starttime,
    a.state,
    a.createdat,
    a.updatedat,
    a.updatedby,
    p.positionname,
    p.number,
    p.location_req,
    p.date_req,
    p.duration_req,
    p.skill_req1,
    p.skill_req2,
    p.skill_req3,
    p.skill_req4,
    p.skill_req5,
    p.description,
    p.departmentid,
    d.departmentname,
    d.parent_departmentid,
    s.name,
    s.birthday,
    s.gender,
    s.email,
    s.email_self,
    s.phone,
    s.telephone,
    s.skills,
    s.experiences,
    s.resume_url
   FROM ((((( SELECT recruit_interview.interviewid,
            recruit_interview.endtime,
            recruit_interview.location,
            recruit_interview.contact_person,
            recruit_interview.contact_phone,
            recruit_interview.replenish,
            recruit_interview.applymentid,
            recruit_interview.starttime
           FROM ss1604c195_rd2.recruit_interview
          WHERE (recruit_interview.endtime > now())) i
     JOIN ss1604c195_rd2.recruit_applyment a ON ((i.applymentid = a.applymentid)))
     JOIN ss1604c195_rd2.recruit_position p ON ((a.positionid = p.positionid)))
     JOIN ss1604c195_rd2.info_department d ON ((p.departmentid = d.departmentid)))
     JOIN ss1604c195_rd2.info_ste s ON ((a.steid = s.steid)))
  WHERE ((a.state = 4) AND (i.starttime < (now() + '1 day'::interval)) AND (i.starttime > now()));

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "ss1604c195_rd2"."account_accountid_seq" OWNED BY "info_account"."accountid";
ALTER SEQUENCE "ss1604c195_rd2"."check_attendance_attendanceid_seq" OWNED BY "check_attendance"."attendanceid";
ALTER SEQUENCE "ss1604c195_rd2"."check_performance_performanceid_seq" OWNED BY "check_performance"."performanceid";
ALTER SEQUENCE "ss1604c195_rd2"."check_skill_skillid_seq" OWNED BY "check_skill"."skillid";
ALTER SEQUENCE "ss1604c195_rd2"."COMMENTS_ID_seq" OWNED BY "test_comments"."ID";
ALTER SEQUENCE "ss1604c195_rd2"."department_departmentid_seq" OWNED BY "info_department"."departmentid";
ALTER SEQUENCE "ss1604c195_rd2"."fte_fteid_seq" OWNED BY "info_fte"."fteid";
ALTER SEQUENCE "ss1604c195_rd2"."notify_pointer_ID_seq" OWNED BY "notify_pointer"."ID";
ALTER SEQUENCE "ss1604c195_rd2"."POSTS_ID_seq" OWNED BY "test_posts"."ID";
ALTER SEQUENCE "ss1604c195_rd2"."recruit_agency_agencyid_seq" OWNED BY "recruit_agency"."agencyid";
ALTER SEQUENCE "ss1604c195_rd2"."recruit_applyment_applymentid_seq" OWNED BY "recruit_applyment"."applymentid";
ALTER SEQUENCE "ss1604c195_rd2"."recruit_applyment_log_id_seq" OWNED BY "recruit_applyment_log"."id";
ALTER SEQUENCE "ss1604c195_rd2"."recruit_interview_interviewid_seq" OWNED BY "recruit_interview"."interviewid";
ALTER SEQUENCE "ss1604c195_rd2"."recruit_pool_log_id_seq" OWNED BY "recruit_pool_log"."id";
ALTER SEQUENCE "ss1604c195_rd2"."recruit_pool_poolid_seq" OWNED BY "recruit_pool"."poolid";
ALTER SEQUENCE "ss1604c195_rd2"."recruit_position_copy_id_seq" OWNED BY "recruit_position_log"."id";
ALTER SEQUENCE "ss1604c195_rd2"."recruit_position_positionid_seq" OWNED BY "recruit_position"."positionid";
ALTER SEQUENCE "ss1604c195_rd2"."recruit_published_publishedid_seq" OWNED BY "recruit_published"."publishedid";
ALTER SEQUENCE "ss1604c195_rd2"."sns_message_messageid_seq" OWNED BY "sns_message"."messageid";
ALTER SEQUENCE "ss1604c195_rd2"."sns_timeline_timelineid_seq" OWNED BY "sns_timeline"."timelineid";
ALTER SEQUENCE "ss1604c195_rd2"."staffing_change_changeid_seq" OWNED BY "staffing_change"."changeid";
ALTER SEQUENCE "ss1604c195_rd2"."staffing_change_log_id_seq" OWNED BY "staffing_change_log"."id";
ALTER SEQUENCE "ss1604c195_rd2"."ste_steid_seq" OWNED BY "info_ste"."steid";

-- ----------------------------
-- Indexes structure for table check_attendance
-- ----------------------------
CREATE INDEX "check_attendance_steid_idx" ON "ss1604c195_rd2"."check_attendance" USING btree (steid);
CREATE INDEX "check_attendance_steid_idx1" ON "ss1604c195_rd2"."check_attendance" USING btree (steid);
CREATE INDEX "check_attendance_steid_idx2" ON "ss1604c195_rd2"."check_attendance" USING btree (steid);
CREATE INDEX "check_attendance_steid_idx3" ON "ss1604c195_rd2"."check_attendance" USING btree (steid);
CREATE INDEX "check_attendance_steid_idx4" ON "ss1604c195_rd2"."check_attendance" USING btree (steid);
CREATE INDEX "check_attendance_steid_idx5" ON "ss1604c195_rd2"."check_attendance" USING btree (steid);

-- ----------------------------
-- Primary Key structure for table check_attendance
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."check_attendance" ADD PRIMARY KEY ("attendanceid");

-- ----------------------------
-- Indexes structure for table check_performance
-- ----------------------------
CREATE INDEX "check_performance_steid_idx" ON "ss1604c195_rd2"."check_performance" USING btree (steid);

-- ----------------------------
-- Primary Key structure for table check_performance
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."check_performance" ADD PRIMARY KEY ("performanceid");

-- ----------------------------
-- Indexes structure for table check_skill
-- ----------------------------
CREATE INDEX "check_skill_steid_idx" ON "ss1604c195_rd2"."check_skill" USING btree (steid);

-- ----------------------------
-- Primary Key structure for table check_skill
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."check_skill" ADD PRIMARY KEY ("skillid");

-- ----------------------------
-- Uniques structure for table info_account
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."info_account" ADD UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table info_account
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."info_account" ADD PRIMARY KEY ("accountid");

-- ----------------------------
-- Indexes structure for table info_department
-- ----------------------------
CREATE INDEX "info_department_parent_departmentid_idx" ON "ss1604c195_rd2"."info_department" USING btree (parent_departmentid);

-- ----------------------------
-- Primary Key structure for table info_department
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."info_department" ADD PRIMARY KEY ("departmentid");

-- ----------------------------
-- Indexes structure for table info_fte
-- ----------------------------
CREATE INDEX "info_fte_departmentid_idx" ON "ss1604c195_rd2"."info_fte" USING btree (departmentid);

-- ----------------------------
-- Primary Key structure for table info_fte
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."info_fte" ADD PRIMARY KEY ("fteid");

-- ----------------------------
-- Indexes structure for table info_ste
-- ----------------------------
CREATE INDEX "info_ste_departmentid_idx" ON "ss1604c195_rd2"."info_ste" USING btree (departmentid);
CREATE INDEX "info_ste_positionid_idx" ON "ss1604c195_rd2"."info_ste" USING btree (positionid);
CREATE INDEX "info_ste_positionid_idx1" ON "ss1604c195_rd2"."info_ste" USING btree (positionid);

-- ----------------------------
-- Primary Key structure for table info_ste
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."info_ste" ADD PRIMARY KEY ("steid");

-- ----------------------------
-- Primary Key structure for table notify_pointer
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."notify_pointer" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table recruit_agency
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."recruit_agency" ADD PRIMARY KEY ("agencyid");

-- ----------------------------
-- Indexes structure for table recruit_applyment
-- ----------------------------
CREATE INDEX "recruit_applyment_positionid_idx" ON "ss1604c195_rd2"."recruit_applyment" USING btree (positionid);
CREATE INDEX "recruit_applyment_steid_idx" ON "ss1604c195_rd2"."recruit_applyment" USING btree (steid);

-- ----------------------------
-- Triggers structure for table recruit_applyment
-- ----------------------------
CREATE TRIGGER "tr_recruit_applyment_insert" AFTER INSERT ON "ss1604c195_rd2"."recruit_applyment"
FOR EACH ROW
EXECUTE PROCEDURE "ss1604c195_rd2"."fn_recruit_applyment_insert"();
CREATE TRIGGER "tr_recruit_applyment_update" AFTER UPDATE ON "ss1604c195_rd2"."recruit_applyment"
FOR EACH ROW
EXECUTE PROCEDURE "ss1604c195_rd2"."fn_recruit_applyment_update"();

-- ----------------------------
-- Primary Key structure for table recruit_applyment
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."recruit_applyment" ADD PRIMARY KEY ("applymentid");

-- ----------------------------
-- Primary Key structure for table recruit_applyment_log
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."recruit_applyment_log" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table recruit_interview
-- ----------------------------
CREATE INDEX "recruit_interview_applymentid_idx" ON "ss1604c195_rd2"."recruit_interview" USING btree (applymentid);

-- ----------------------------
-- Primary Key structure for table recruit_interview
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."recruit_interview" ADD PRIMARY KEY ("interviewid");

-- ----------------------------
-- Indexes structure for table recruit_pool
-- ----------------------------
CREATE INDEX "recruit_pool_positionid_idx" ON "ss1604c195_rd2"."recruit_pool" USING btree (positionid);

-- ----------------------------
-- Triggers structure for table recruit_pool
-- ----------------------------
CREATE TRIGGER "tr_recruit_pool_insert" AFTER INSERT ON "ss1604c195_rd2"."recruit_pool"
FOR EACH ROW
EXECUTE PROCEDURE "ss1604c195_rd2"."fn_recruit_pool_insert"();
CREATE TRIGGER "tr_recruit_pool_update" AFTER UPDATE ON "ss1604c195_rd2"."recruit_pool"
FOR EACH ROW
EXECUTE PROCEDURE "ss1604c195_rd2"."fn_recruit_pool_update"();

-- ----------------------------
-- Primary Key structure for table recruit_pool
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."recruit_pool" ADD PRIMARY KEY ("poolid");

-- ----------------------------
-- Primary Key structure for table recruit_pool_log
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."recruit_pool_log" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table recruit_position
-- ----------------------------
CREATE INDEX "recruit_position_departmentid_idx" ON "ss1604c195_rd2"."recruit_position" USING btree (departmentid);

-- ----------------------------
-- Triggers structure for table recruit_position
-- ----------------------------
CREATE TRIGGER "tr_recruit_position_insert" AFTER INSERT ON "ss1604c195_rd2"."recruit_position"
FOR EACH ROW
EXECUTE PROCEDURE "ss1604c195_rd2"."fn_recruit_position_insert"();
CREATE TRIGGER "tr_recruit_position_update" AFTER UPDATE ON "ss1604c195_rd2"."recruit_position"
FOR EACH ROW
EXECUTE PROCEDURE "ss1604c195_rd2"."fn_recruit_position_update"();

-- ----------------------------
-- Primary Key structure for table recruit_position
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."recruit_position" ADD PRIMARY KEY ("positionid");

-- ----------------------------
-- Primary Key structure for table recruit_position_log
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."recruit_position_log" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table recruit_published
-- ----------------------------
CREATE INDEX "recruit_published_agencyid_idx" ON "ss1604c195_rd2"."recruit_published" USING btree (agencyid);

-- ----------------------------
-- Primary Key structure for table recruit_published
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."recruit_published" ADD PRIMARY KEY ("publishedid");

-- ----------------------------
-- Primary Key structure for table sns_message
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."sns_message" ADD PRIMARY KEY ("messageid");

-- ----------------------------
-- Primary Key structure for table sns_timeline
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."sns_timeline" ADD PRIMARY KEY ("timelineid");

-- ----------------------------
-- Indexes structure for table staffing_change
-- ----------------------------
CREATE INDEX "staffing_change_from_positionid_idx" ON "ss1604c195_rd2"."staffing_change" USING btree (from_positionid);
CREATE INDEX "staffing_change_steid_idx" ON "ss1604c195_rd2"."staffing_change" USING btree (steid);
CREATE INDEX "staffing_change_to_positionid_idx" ON "ss1604c195_rd2"."staffing_change" USING btree (to_positionid);

-- ----------------------------
-- Triggers structure for table staffing_change
-- ----------------------------
CREATE TRIGGER "tr_staffing_change_insert" AFTER INSERT ON "ss1604c195_rd2"."staffing_change"
FOR EACH ROW
EXECUTE PROCEDURE "ss1604c195_rd2"."fn_staffing_change_insert"();
CREATE TRIGGER "tr_staffing_change_update" AFTER UPDATE ON "ss1604c195_rd2"."staffing_change"
FOR EACH ROW
EXECUTE PROCEDURE "ss1604c195_rd2"."fn_staffing_change_update"();

-- ----------------------------
-- Primary Key structure for table staffing_change
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."staffing_change" ADD PRIMARY KEY ("changeid");

-- ----------------------------
-- Primary Key structure for table staffing_change_log
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."staffing_change_log" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table test_comments
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."test_comments" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table test_posts
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."test_posts" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Foreign Key structure for table "ss1604c195_rd2"."test_comments"
-- ----------------------------
ALTER TABLE "ss1604c195_rd2"."test_comments" ADD FOREIGN KEY ("POST_ID") REFERENCES "ss1604c195_rd2"."test_posts" ("ID") ON DELETE NO ACTION ON UPDATE NO ACTION;
