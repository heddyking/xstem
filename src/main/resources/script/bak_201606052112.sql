/*
Navicat PGSQL Data Transfer

Source Server         : localhost
Source Server Version : 90312
Source Host           : localhost:5432
Source Database       : stm
Source Schema         : ss1604c195_rd4

Target Server Type    : PGSQL
Target Server Version : 90312
File Encoding         : 65001

Date: 2016-06-05 21:11:58
*/


-- ----------------------------
-- Sequence structure for account_accountid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."account_accountid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."account_accountid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666675
 CACHE 1;
SELECT setval('"ss1604c195_rd4"."account_accountid_seq"', 666675, true);

-- ----------------------------
-- Sequence structure for check_attendance_attendanceid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."check_attendance_attendanceid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."check_attendance_attendanceid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666678
 CACHE 1;
SELECT setval('"ss1604c195_rd4"."check_attendance_attendanceid_seq"', 666678, true);

-- ----------------------------
-- Sequence structure for check_performance_performanceid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."check_performance_performanceid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."check_performance_performanceid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666672
 CACHE 1;
SELECT setval('"ss1604c195_rd4"."check_performance_performanceid_seq"', 666672, true);

-- ----------------------------
-- Sequence structure for check_skill_skillid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."check_skill_skillid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."check_skill_skillid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666669
 CACHE 1;
SELECT setval('"ss1604c195_rd4"."check_skill_skillid_seq"', 666669, true);

-- ----------------------------
-- Sequence structure for COMMENTS_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."COMMENTS_ID_seq";
CREATE SEQUENCE "ss1604c195_rd4"."COMMENTS_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 48
 CACHE 1;
SELECT setval('"ss1604c195_rd4"."COMMENTS_ID_seq"', 48, true);

-- ----------------------------
-- Sequence structure for department_departmentid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."department_departmentid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."department_departmentid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666666
 CACHE 1;

-- ----------------------------
-- Sequence structure for fte_fteid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."fte_fteid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."fte_fteid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666666
 CACHE 1;

-- ----------------------------
-- Sequence structure for POSTS_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."POSTS_ID_seq";
CREATE SEQUENCE "ss1604c195_rd4"."POSTS_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 51
 CACHE 1;
SELECT setval('"ss1604c195_rd4"."POSTS_ID_seq"', 51, true);

-- ----------------------------
-- Sequence structure for recruit_agency_agencyid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."recruit_agency_agencyid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."recruit_agency_agencyid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666666
 CACHE 1;

-- ----------------------------
-- Sequence structure for recruit_applyment_applymentid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."recruit_applyment_applymentid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."recruit_applyment_applymentid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666715
 CACHE 1;
SELECT setval('"ss1604c195_rd4"."recruit_applyment_applymentid_seq"', 666715, true);

-- ----------------------------
-- Sequence structure for recruit_applyment_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."recruit_applyment_log_id_seq";
CREATE SEQUENCE "ss1604c195_rd4"."recruit_applyment_log_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 200
 CACHE 1;
SELECT setval('"ss1604c195_rd4"."recruit_applyment_log_id_seq"', 200, true);

-- ----------------------------
-- Sequence structure for recruit_interview_interviewid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."recruit_interview_interviewid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."recruit_interview_interviewid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666695
 CACHE 1;
SELECT setval('"ss1604c195_rd4"."recruit_interview_interviewid_seq"', 666695, true);

-- ----------------------------
-- Sequence structure for recruit_pool_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."recruit_pool_log_id_seq";
CREATE SEQUENCE "ss1604c195_rd4"."recruit_pool_log_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 83
 CACHE 1;
SELECT setval('"ss1604c195_rd4"."recruit_pool_log_id_seq"', 83, true);

-- ----------------------------
-- Sequence structure for recruit_pool_poolid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."recruit_pool_poolid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."recruit_pool_poolid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666687
 CACHE 1;
SELECT setval('"ss1604c195_rd4"."recruit_pool_poolid_seq"', 666687, true);

-- ----------------------------
-- Sequence structure for recruit_position_copy_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."recruit_position_copy_id_seq";
CREATE SEQUENCE "ss1604c195_rd4"."recruit_position_copy_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 184
 CACHE 1;
SELECT setval('"ss1604c195_rd4"."recruit_position_copy_id_seq"', 184, true);

-- ----------------------------
-- Sequence structure for recruit_position_positionid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."recruit_position_positionid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."recruit_position_positionid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 90
 CACHE 1;
SELECT setval('"ss1604c195_rd4"."recruit_position_positionid_seq"', 90, true);

-- ----------------------------
-- Sequence structure for recruit_published_publishedid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."recruit_published_publishedid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."recruit_published_publishedid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666666
 CACHE 1;

-- ----------------------------
-- Sequence structure for sns_message_messageid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."sns_message_messageid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."sns_message_messageid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666666
 CACHE 1;

-- ----------------------------
-- Sequence structure for sns_timeline_timelineid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."sns_timeline_timelineid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."sns_timeline_timelineid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666666
 CACHE 1;

-- ----------------------------
-- Sequence structure for staffing_change_changeid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."staffing_change_changeid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."staffing_change_changeid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 666666
 CACHE 1;

-- ----------------------------
-- Sequence structure for staffing_change_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."staffing_change_log_id_seq";
CREATE SEQUENCE "ss1604c195_rd4"."staffing_change_log_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"ss1604c195_rd4"."staffing_change_log_id_seq"', 2, true);

-- ----------------------------
-- Sequence structure for ste_steid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "ss1604c195_rd4"."ste_steid_seq";
CREATE SEQUENCE "ss1604c195_rd4"."ste_steid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 16
 CACHE 1;
SELECT setval('"ss1604c195_rd4"."ste_steid_seq"', 16, true);

-- ----------------------------
-- Table structure for check_attendance
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd4"."check_attendance";
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
-- Records of check_attendance
-- ----------------------------
INSERT INTO "ss1604c195_rd4"."check_attendance" VALUES ('1', '6', '2016-05-24', '8', '0', '6', '2016-05-27 00:00:00', '2016-06-05 11:49:09.136');
INSERT INTO "ss1604c195_rd4"."check_attendance" VALUES ('2', '6', '2016-05-25', '8', '2', '3', '2016-05-27 00:00:00', '2016-05-27 10:00:00');
INSERT INTO "ss1604c195_rd4"."check_attendance" VALUES ('3', '6', '2016-05-26', '8', '0', '6', '2016-05-27 00:00:00', '2016-06-05 11:45:11.36');
INSERT INTO "ss1604c195_rd4"."check_attendance" VALUES ('4', '6', '2016-05-27', '8', '2', '3', '2016-05-27 00:00:00', '2016-05-27 00:00:00');
INSERT INTO "ss1604c195_rd4"."check_attendance" VALUES ('5', '6', '2016-05-30', '8', '0', '6', '2016-05-30 00:00:00', '2016-06-05 11:45:18.969');
INSERT INTO "ss1604c195_rd4"."check_attendance" VALUES ('666666', '6', '2016-05-29', '8', '0', '6', '2016-06-04 10:20:16.74', '2016-06-04 10:20:17.288');
INSERT INTO "ss1604c195_rd4"."check_attendance" VALUES ('666667', '6', '2016-05-30', '4', '0', '6', '2016-06-04 10:20:17.011', '2016-06-04 10:20:17.315');
INSERT INTO "ss1604c195_rd4"."check_attendance" VALUES ('666668', '6', '2016-05-31', '10', '0', '6', '2016-06-04 10:20:17.029', '2016-06-04 10:20:17.34');
INSERT INTO "ss1604c195_rd4"."check_attendance" VALUES ('666669', '6', '2016-05-31', '8', '2', '3', '2016-06-05 11:32:13.632', '2016-06-05 18:20:55.96');
INSERT INTO "ss1604c195_rd4"."check_attendance" VALUES ('666670', '6', '2016-06-01', '6', '0', '6', '2016-06-05 11:33:03.673', '2016-06-05 11:45:09.297');
INSERT INTO "ss1604c195_rd4"."check_attendance" VALUES ('666671', '6', '2016-06-03', '8', '0', '6', '2016-06-05 11:43:55.466', '2016-06-05 11:45:06.801');
INSERT INTO "ss1604c195_rd4"."check_attendance" VALUES ('666672', '6', '2016-06-04', '6', '1', '6', '2016-06-05 11:48:56.802', '2016-06-05 11:48:56.802');
INSERT INTO "ss1604c195_rd4"."check_attendance" VALUES ('666673', '6', '2016-06-03', '9', '1', '6', '2016-06-05 11:49:00.232', '2016-06-05 11:49:00.232');
INSERT INTO "ss1604c195_rd4"."check_attendance" VALUES ('666674', '6', '2016-06-02', '8', '1', '6', '2016-06-05 11:49:02.984', '2016-06-05 11:49:02.984');
INSERT INTO "ss1604c195_rd4"."check_attendance" VALUES ('666675', '6', '2016-06-01', '8', '1', '6', '2016-06-05 11:49:05.775', '2016-06-05 11:49:05.775');
INSERT INTO "ss1604c195_rd4"."check_attendance" VALUES ('666676', '6', '2016-06-05', '8', '0', '6', '2016-06-05 14:37:19.302', '2016-06-05 14:37:43.992');
INSERT INTO "ss1604c195_rd4"."check_attendance" VALUES ('666677', '6', null, '6', '3', '3', '2016-06-05 14:37:26.912', '2016-06-05 18:21:00.349');
INSERT INTO "ss1604c195_rd4"."check_attendance" VALUES ('666678', '6', '2016-06-05', '8', '1', '6', '2016-06-05 14:50:54.545', '2016-06-05 14:50:54.545');

-- ----------------------------
-- Table structure for check_performance
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd4"."check_performance";
CREATE TABLE "ss1604c195_rd4"."check_performance" (
"performanceid" int4 DEFAULT nextval('"ss1604c195_rd4".check_performance_performanceid_seq'::regclass) NOT NULL,
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
COMMENT ON COLUMN "ss1604c195_rd4"."check_performance"."state" IS '1-wait check
2-checked';

-- ----------------------------
-- Records of check_performance
-- ----------------------------
INSERT INTO "ss1604c195_rd4"."check_performance" VALUES ('1', '6', '2016-05-27', '5', 'develop the hue thread pool module', '0', '6', '2016-05-30 00:00:00', '2016-06-05 16:10:12.725', null);
INSERT INTO "ss1604c195_rd4"."check_performance" VALUES ('666666', '6', '2016-05-17', '4', 'help to deploy environment @shanghai', '0', '6', '2016-06-04 10:20:17.374', '2016-06-04 10:20:17.864', null);
INSERT INTO "ss1604c195_rd4"."check_performance" VALUES ('666667', '6', '2016-05-24', '6', 'back-end optmization', '0', '6', '2016-06-04 10:20:17.434', '2016-06-04 10:20:17.882', null);
INSERT INTO "ss1604c195_rd4"."check_performance" VALUES ('666668', '6', '2016-05-24', '10', 'back-end optmization @usa', '0', '6', '2016-06-04 10:20:17.455', '2016-06-04 10:20:17.897', null);
INSERT INTO "ss1604c195_rd4"."check_performance" VALUES ('666669', '6', '2016-06-05', '8', '123', '0', '6', '2016-06-05 16:03:49.406', '2016-06-05 16:04:11.595', '2016-06-05');
INSERT INTO "ss1604c195_rd4"."check_performance" VALUES ('666670', '6', '2016-06-03', '12', 'java ppt making@', '2', '3', '2016-06-05 16:09:37.232', '2016-06-05 19:33:58.97', '2016-06-01');
INSERT INTO "ss1604c195_rd4"."check_performance" VALUES ('666671', '6', '2016-06-05', '6', 'Test Deployment', '3', '3', '2016-06-05 16:18:53.894', '2016-06-05 19:34:01.791', '2016-06-03');
INSERT INTO "ss1604c195_rd4"."check_performance" VALUES ('666672', '6', '2016-06-05', '14', 'additional module development', '1', '6', '2016-06-05 19:34:52.674', '2016-06-05 19:34:52.674', '2016-06-03');

-- ----------------------------
-- Table structure for check_skill
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd4"."check_skill";
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
-- Records of check_skill
-- ----------------------------
INSERT INTO "ss1604c195_rd4"."check_skill" VALUES ('6', 'Java 8 programming skills', '0', '6', '2016-05-30 00:00:00', '2016-06-05 16:48:28.109', '1', 'Java', null);
INSERT INTO "ss1604c195_rd4"."check_skill" VALUES ('6', 'Database sql and O-R mapping skills@', '2', '3', '2016-05-30 00:00:00', '2016-06-05 20:39:20.582', '2', 'AR', '3');
INSERT INTO "ss1604c195_rd4"."check_skill" VALUES ('6', 'Data Mining skills', '2', '3', '2016-05-30 00:00:00', '2016-06-05 20:39:30.546', '3', 'Data Mining', '6');
INSERT INTO "ss1604c195_rd4"."check_skill" VALUES ('6', 'OR mapping, used it for 4 years', '2', '3', '2016-06-04 10:20:17.7', '2016-06-05 20:38:37.603', '666666', 'JOOQ', '3');
INSERT INTO "ss1604c195_rd4"."check_skill" VALUES ('6', 'unit test, used it for 3 years', '1', '6', '2016-06-04 10:20:17.721', '2016-06-05 20:39:07.554', '666667', 'Algorithm', null);
INSERT INTO "ss1604c195_rd4"."check_skill" VALUES ('6', 'db migration, used it for 2 years', '0', '6', '2016-06-04 10:20:17.737', '2016-06-04 10:20:17.835', '666668', 'Flyway', null);
INSERT INTO "ss1604c195_rd4"."check_skill" VALUES ('6', 'have lots of C++ MFC experience', '0', '6', '2016-06-05 16:47:47.971', '2016-06-05 16:48:32.4', '666669', 'C++', null);

-- ----------------------------
-- Table structure for info_account
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd4"."info_account";
CREATE TABLE "ss1604c195_rd4"."info_account" (
"accountid" int4 DEFAULT nextval('"ss1604c195_rd4".account_accountid_seq'::regclass) NOT NULL,
"email" varchar COLLATE "default",
"password" varchar COLLATE "default",
"refid" int4,
"role" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd4"."info_account"."role" IS '0-admin
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
INSERT INTO "ss1604c195_rd4"."info_account" VALUES ('1', 'shuimuyanyuan@qq.com', '123', '1', '1');
INSERT INTO "ss1604c195_rd4"."info_account" VALUES ('2', 'hr@qq.com', '123', '2', '2');
INSERT INTO "ss1604c195_rd4"."info_account" VALUES ('3', 'mg1@qq.com', '123', '3', '3');
INSERT INTO "ss1604c195_rd4"."info_account" VALUES ('4', 'mg2@qq.com', '123', '4', '3');
INSERT INTO "ss1604c195_rd4"."info_account" VALUES ('5', 'w1@qq.com', '123', '1', '10');
INSERT INTO "ss1604c195_rd4"."info_account" VALUES ('6', 'w2@qq.com', '123', '2', '10');
INSERT INTO "ss1604c195_rd4"."info_account" VALUES ('7', 'w3@qq.com', '123', '3', '10');
INSERT INTO "ss1604c195_rd4"."info_account" VALUES ('8', 'w4@qq.com', '123', '4', '10');
INSERT INTO "ss1604c195_rd4"."info_account" VALUES ('9', 'w5@qq.com', '123', '5', '10');
INSERT INTO "ss1604c195_rd4"."info_account" VALUES ('10', 'z1@qq.com', '123', '6', '11');
INSERT INTO "ss1604c195_rd4"."info_account" VALUES ('666667', 'testemail1460@qq.com', 'testpwd7629', '8', '10');
INSERT INTO "ss1604c195_rd4"."info_account" VALUES ('666668', 'testemail3166@qq.com', 'testpwd715', '9', '10');
INSERT INTO "ss1604c195_rd4"."info_account" VALUES ('666669', 'testemail7531@qq.com', 'testpwd6386', '10', '10');
INSERT INTO "ss1604c195_rd4"."info_account" VALUES ('666670', 'testemail7274@qq.com', 'testpwd9035', '11', '10');
INSERT INTO "ss1604c195_rd4"."info_account" VALUES ('666671', 'testemail5247@qq.com', 'testpwd4713', '12', '10');
INSERT INTO "ss1604c195_rd4"."info_account" VALUES ('666672', 'testemail1382@qq.com', 'testpwd8476', '13', '10');
INSERT INTO "ss1604c195_rd4"."info_account" VALUES ('666673', 'testemail3577@qq.com', 'testpwd4957', '14', '10');
INSERT INTO "ss1604c195_rd4"."info_account" VALUES ('666674', 'testemail8519@qq.com', 'testpwd1096', '15', '10');
INSERT INTO "ss1604c195_rd4"."info_account" VALUES ('666675', 'testemail6963@qq.com', 'testpwd7354', '16', '10');

-- ----------------------------
-- Table structure for info_department
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd4"."info_department";
CREATE TABLE "ss1604c195_rd4"."info_department" (
"departmentid" int4 DEFAULT nextval('"ss1604c195_rd4".department_departmentid_seq'::regclass) NOT NULL,
"departmentname" varchar COLLATE "default",
"parent_departmentid" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of info_department
-- ----------------------------
INSERT INTO "ss1604c195_rd4"."info_department" VALUES ('1', 'committee', null);
INSERT INTO "ss1604c195_rd4"."info_department" VALUES ('2', 'hr', '1');
INSERT INTO "ss1604c195_rd4"."info_department" VALUES ('3', 'tech', '1');
INSERT INTO "ss1604c195_rd4"."info_department" VALUES ('4', 'dev', '3');
INSERT INTO "ss1604c195_rd4"."info_department" VALUES ('5', 'qa', '3');

-- ----------------------------
-- Table structure for info_fte
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd4"."info_fte";
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
-- Records of info_fte
-- ----------------------------
INSERT INTO "ss1604c195_rd4"."info_fte" VALUES ('1', 'Zhang Joy', 'shuimuyanyuan@qq.com', 'f', '13866666666', '2', '1990-01-01', 'shanghai', '1', 'shuimuyanyuan@qq.com', '02154742387');
INSERT INTO "ss1604c195_rd4"."info_fte" VALUES ('2', 'Wang Ming', 'hr@qq.com', 't', '13866688888', '2', '1990-01-02', 'shanghai', '2', 'hr@qq.com', '02154742388');
INSERT INTO "ss1604c195_rd4"."info_fte" VALUES ('3', 'Wang Xiao', 'mg1@qq.com', 't', '13866689999', '4', '1990-01-03', 'shanghai', '3', 'mg1@qq.com', '02154742389');
INSERT INTO "ss1604c195_rd4"."info_fte" VALUES ('4', 'Wang Xi', 'mg2@qq.com', 't', '13866680000', '5', '1990-01-04', 'shanghai', '3', 'mg2@qq.com', '02154742380');

-- ----------------------------
-- Table structure for info_ste
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd4"."info_ste";
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
"skills" varchar COLLATE "default",
"experiences" varchar COLLATE "default",
"resume_url" varchar COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd4"."info_ste"."role" IS '10-candidate ste
11-ste
12-dismissed ste';

-- ----------------------------
-- Records of info_ste
-- ----------------------------
INSERT INTO "ss1604c195_rd4"."info_ste" VALUES ('1', 'Wang Yi', 'f', '1990-02-02', 'shanghai', 'w1@qq.com', 'w1@qq.com', '021-57376645', '15216688616', null, '10', null, null, null, 'java,algorithm,mysql,hadoop,spring', 'google, microsoft', '/downloadFile?file=e84b519141508dded8e695249accd4a5.bat');
INSERT INTO "ss1604c195_rd4"."info_ste" VALUES ('2', 'Wang Er', 't', '1989-02-21', 'shanghai', 'w2@qq.com', 'w2@qq.com', '02157378852', '15216688628', null, '10', null, null, null, 'java,jmeter,database,system,network,junit', null, null);
INSERT INTO "ss1604c195_rd4"."info_ste" VALUES ('3', 'Wang San', 't', '1991-03-02', 'shanghai', 'w3@qq.com', 'w3@qq.com', '02157378853', '15216688638', null, '10', null, null, null, 'spark,cloudera,artifical neural network,data mining, NLP', null, null);
INSERT INTO "ss1604c195_rd4"."info_ste" VALUES ('4', 'Wang Si', 't', '1990-05-25', 'shanghai', 'w4@qq.com', 'w4@qq.com', '02157378854', '15216688648', null, '10', null, null, null, 'data mining,algorithm,jmeter,spark,spring', null, null);
INSERT INTO "ss1604c195_rd4"."info_ste" VALUES ('5', 'Wang Wu', 't', '1992-06-05', 'shanghai', 'w5@qq.com', 'w5@qq.com', '02157378855', '15216688655', null, '10', null, null, null, 'c++, nodejs,android,meteor,html5', null, null);
INSERT INTO "ss1604c195_rd4"."info_ste" VALUES ('6', 'Zhang Yi', 't', '1989-03-11', 'shanghai', 'z1@qq.com', 'z1@qq.com', '02157371781', '15216688668', '4', '11', 'http://dwz.cn/3vqEeh', 'http://dwz.cn/3vqEeh', '1', 'java,linux,mysql,spring,ml', 'intel', null);
INSERT INTO "ss1604c195_rd4"."info_ste" VALUES ('8', 'testname3797', null, null, null, 'testemail1460@qq.com', 'testemail1460@qq.com', null, null, null, '10', null, null, null, null, null, null);
INSERT INTO "ss1604c195_rd4"."info_ste" VALUES ('9', 'testname9623', null, null, null, 'testemail3166@qq.com', 'testemail3166@qq.com', null, null, null, '10', null, null, null, null, null, null);
INSERT INTO "ss1604c195_rd4"."info_ste" VALUES ('10', 'testname5759', null, null, null, 'testemail7531@qq.com', 'testemail7531@qq.com', null, null, null, '10', null, null, null, null, null, null);
INSERT INTO "ss1604c195_rd4"."info_ste" VALUES ('11', 'testname748', null, null, null, 'testemail7274@qq.com', 'testemail7274@qq.com', null, null, null, '10', null, null, null, null, null, null);
INSERT INTO "ss1604c195_rd4"."info_ste" VALUES ('12', 'testname7494', null, null, null, 'testemail5247@qq.com', 'testemail5247@qq.com', null, null, null, '10', null, null, null, null, null, null);
INSERT INTO "ss1604c195_rd4"."info_ste" VALUES ('13', 'testname9550', null, null, null, 'testemail1382@qq.com', 'testemail1382@qq.com', null, null, null, '10', null, null, null, null, null, null);
INSERT INTO "ss1604c195_rd4"."info_ste" VALUES ('14', 'testname4379', null, null, null, 'testemail3577@qq.com', 'testemail3577@qq.com', null, null, null, '10', null, null, null, null, null, null);
INSERT INTO "ss1604c195_rd4"."info_ste" VALUES ('15', 'testname3810', null, null, null, 'testemail8519@qq.com', 'testemail8519@qq.com', null, null, null, '10', null, null, null, null, null, null);
INSERT INTO "ss1604c195_rd4"."info_ste" VALUES ('16', 'testname3484', null, null, null, 'testemail6963@qq.com', 'testemail6963@qq.com', null, null, null, '10', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for recruit_agency
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd4"."recruit_agency";
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
-- Records of recruit_agency
-- ----------------------------
INSERT INTO "ss1604c195_rd4"."recruit_agency" VALUES ('1', 'http://www.indeed.com', null, null, 'Indeed');
INSERT INTO "ss1604c195_rd4"."recruit_agency" VALUES ('2', 'http://www.dajie.com/', null, null, 'Dajie');
INSERT INTO "ss1604c195_rd4"."recruit_agency" VALUES ('3', 'http://www.51job.com/', null, null, '51job');
INSERT INTO "ss1604c195_rd4"."recruit_agency" VALUES ('4', 'http://www.glassdoor.com/', null, null, 'Glassdoor');
INSERT INTO "ss1604c195_rd4"."recruit_agency" VALUES ('5', 'http://www.kanzhun.com/', null, null, 'Kanzhun');

-- ----------------------------
-- Table structure for recruit_applyment
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd4"."recruit_applyment";
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
-- Records of recruit_applyment
-- ----------------------------
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('1', '11', '4', '2', '2016-06-04 10:20:49.024', '2016-06-04 10:20:49.479', '666666');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('2', '11', '6', '3', '2016-06-04 10:20:49.047', '2016-06-04 10:20:49.391', '666667');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('3', '12', '4', '2', '2016-06-04 10:20:49.064', '2016-06-04 10:20:49.506', '666668');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('4', '12', '6', '2', '2016-06-04 10:20:49.082', '2016-06-04 10:20:49.319', '666669');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('5', '13', '4', '2', '2016-06-04 10:20:49.098', '2016-06-04 10:20:49.532', '666670');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('1', '19', '4', '2', '2016-06-04 10:20:55.432', '2016-06-04 10:20:55.922', '666671');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('2', '19', '6', '3', '2016-06-04 10:20:55.452', '2016-06-04 10:20:55.843', '666672');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('3', '20', '4', '2', '2016-06-04 10:20:55.473', '2016-06-04 10:20:55.946', '666673');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('4', '20', '6', '2', '2016-06-04 10:20:55.49', '2016-06-04 10:20:55.76', '666674');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('5', '21', '4', '2', '2016-06-04 10:20:55.509', '2016-06-04 10:20:55.972', '666675');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('1', '27', '4', '2', '2016-06-04 10:21:01.247', '2016-06-04 10:21:01.694', '666676');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('2', '27', '6', '3', '2016-06-04 10:21:01.269', '2016-06-04 10:21:01.61', '666677');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('3', '28', '4', '2', '2016-06-04 10:21:01.287', '2016-06-04 10:21:01.718', '666678');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('4', '28', '6', '2', '2016-06-04 10:21:01.307', '2016-06-04 10:21:01.537', '666679');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('5', '29', '4', '2', '2016-06-04 10:21:01.325', '2016-06-04 10:21:01.745', '666680');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('1', '35', '4', '2', '2016-06-04 10:21:06.942', '2016-06-04 10:21:07.444', '666681');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('2', '35', '6', '3', '2016-06-04 10:21:06.965', '2016-06-04 10:21:07.352', '666682');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('3', '36', '4', '2', '2016-06-04 10:21:06.983', '2016-06-04 10:21:07.475', '666683');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('4', '36', '6', '2', '2016-06-04 10:21:07.007', '2016-06-04 10:21:07.27', '666684');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('5', '37', '4', '2', '2016-06-04 10:21:07.026', '2016-06-04 10:21:07.506', '666685');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('1', '43', '4', '2', '2016-06-04 10:21:13.336', '2016-06-04 10:21:13.815', '666686');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('2', '43', '6', '3', '2016-06-04 10:21:13.357', '2016-06-04 10:21:13.738', '666687');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('3', '44', '4', '2', '2016-06-04 10:21:13.377', '2016-06-04 10:21:13.841', '666688');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('4', '44', '6', '2', '2016-06-04 10:21:13.394', '2016-06-04 10:21:13.663', '666689');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('5', '45', '4', '2', '2016-06-04 10:21:13.411', '2016-06-04 10:21:13.865', '666690');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('1', '51', '4', '2', '2016-06-04 10:21:18.998', '2016-06-04 10:21:19.496', '666691');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('2', '51', '6', '3', '2016-06-04 10:21:19.022', '2016-06-04 10:21:19.411', '666692');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('3', '52', '4', '2', '2016-06-04 10:21:19.053', '2016-06-04 10:21:19.521', '666693');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('4', '52', '6', '2', '2016-06-04 10:21:19.071', '2016-06-04 10:21:19.331', '666694');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('5', '53', '4', '2', '2016-06-04 10:21:19.087', '2016-06-04 10:21:19.544', '666695');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('1', '59', '4', '2', '2016-06-04 10:21:26.532', '2016-06-04 10:21:27.02', '666696');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('2', '59', '6', '3', '2016-06-04 10:21:26.554', '2016-06-04 10:21:26.939', '666697');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('3', '60', '4', '2', '2016-06-04 10:21:26.577', '2016-06-04 10:21:27.049', '666698');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('4', '60', '6', '2', '2016-06-04 10:21:26.594', '2016-06-04 10:21:26.862', '666699');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('5', '61', '4', '2', '2016-06-04 10:21:26.612', '2016-06-04 10:21:27.078', '666700');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('1', '67', '0', '1', '2016-06-04 10:23:24.575', '2016-06-04 10:23:25.436', '666701');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('2', '67', '0', '2', '2016-06-04 10:23:24.599', '2016-06-04 10:23:25.451', '666702');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('3', '68', '0', '3', '2016-06-04 10:23:24.617', '2016-06-04 10:23:25.467', '666703');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('4', '68', '0', '4', '2016-06-04 10:23:24.635', '2016-06-04 10:23:25.488', '666704');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('5', '69', '0', '5', '2016-06-04 10:23:24.654', '2016-06-04 10:23:25.509', '666705');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('1', '75', '0', '1', '2016-06-04 11:14:04.949', '2016-06-04 11:14:06.019', '666706');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('2', '75', '0', '2', '2016-06-04 11:14:04.974', '2016-06-04 11:14:06.036', '666707');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('3', '76', '0', '3', '2016-06-04 11:14:04.996', '2016-06-04 11:14:06.061', '666708');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('4', '76', '0', '4', '2016-06-04 11:14:05.013', '2016-06-04 11:14:06.091', '666709');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('5', '77', '0', '5', '2016-06-04 11:14:05.033', '2016-06-04 11:14:06.107', '666710');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('1', '83', '0', '1', '2016-06-04 11:14:08.714', '2016-06-04 11:14:09.608', '666711');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('2', '83', '0', '2', '2016-06-04 11:14:08.739', '2016-06-04 11:14:09.626', '666712');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('3', '84', '0', '3', '2016-06-04 11:14:08.762', '2016-06-04 11:14:09.643', '666713');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('4', '84', '0', '4', '2016-06-04 11:14:08.78', '2016-06-04 11:14:09.661', '666714');
INSERT INTO "ss1604c195_rd4"."recruit_applyment" VALUES ('5', '85', '0', '5', '2016-06-04 11:14:08.801', '2016-06-04 11:14:09.682', '666715');

-- ----------------------------
-- Table structure for recruit_applyment_log
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd4"."recruit_applyment_log";
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
-- Records of recruit_applyment_log
-- ----------------------------
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '11', '1', '1', '2016-06-04 10:20:49.024', '2016-06-04 10:20:49.024', '666666', '7');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '11', '1', '2', '2016-06-04 10:20:49.047', '2016-06-04 10:20:49.047', '666667', '8');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '12', '1', '3', '2016-06-04 10:20:49.064', '2016-06-04 10:20:49.064', '666668', '9');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('4', '12', '1', '4', '2016-06-04 10:20:49.082', '2016-06-04 10:20:49.082', '666669', '10');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '13', '1', '5', '2016-06-04 10:20:49.098', '2016-06-04 10:20:49.098', '666670', '11');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '11', '2', '2', '2016-06-04 10:20:49.024', '2016-06-04 10:20:49.263', '666666', '12');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '11', '2', '2', '2016-06-04 10:20:49.047', '2016-06-04 10:20:49.283', '666667', '13');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '12', '2', '2', '2016-06-04 10:20:49.064', '2016-06-04 10:20:49.302', '666668', '14');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('4', '12', '6', '2', '2016-06-04 10:20:49.082', '2016-06-04 10:20:49.319', '666669', '15');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '13', '2', '2', '2016-06-04 10:20:49.098', '2016-06-04 10:20:49.339', '666670', '16');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '11', '3', '3', '2016-06-04 10:20:49.024', '2016-06-04 10:20:49.375', '666666', '17');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '11', '6', '3', '2016-06-04 10:20:49.047', '2016-06-04 10:20:49.391', '666667', '18');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '12', '3', '3', '2016-06-04 10:20:49.064', '2016-06-04 10:20:49.41', '666668', '19');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '13', '3', '3', '2016-06-04 10:20:49.098', '2016-06-04 10:20:49.428', '666670', '20');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '11', '4', '2', '2016-06-04 10:20:49.024', '2016-06-04 10:20:49.479', '666666', '21');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '12', '4', '2', '2016-06-04 10:20:49.064', '2016-06-04 10:20:49.506', '666668', '22');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '13', '4', '2', '2016-06-04 10:20:49.098', '2016-06-04 10:20:49.532', '666670', '23');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '19', '1', '1', '2016-06-04 10:20:55.432', '2016-06-04 10:20:55.432', '666671', '24');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '19', '1', '2', '2016-06-04 10:20:55.452', '2016-06-04 10:20:55.452', '666672', '25');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '20', '1', '3', '2016-06-04 10:20:55.473', '2016-06-04 10:20:55.473', '666673', '26');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('4', '20', '1', '4', '2016-06-04 10:20:55.49', '2016-06-04 10:20:55.49', '666674', '27');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '21', '1', '5', '2016-06-04 10:20:55.509', '2016-06-04 10:20:55.509', '666675', '28');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '19', '2', '2', '2016-06-04 10:20:55.432', '2016-06-04 10:20:55.702', '666671', '29');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '19', '2', '2', '2016-06-04 10:20:55.452', '2016-06-04 10:20:55.723', '666672', '30');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '20', '2', '2', '2016-06-04 10:20:55.473', '2016-06-04 10:20:55.744', '666673', '31');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('4', '20', '6', '2', '2016-06-04 10:20:55.49', '2016-06-04 10:20:55.76', '666674', '32');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '21', '2', '2', '2016-06-04 10:20:55.509', '2016-06-04 10:20:55.78', '666675', '33');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '19', '3', '3', '2016-06-04 10:20:55.432', '2016-06-04 10:20:55.817', '666671', '34');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '19', '6', '3', '2016-06-04 10:20:55.452', '2016-06-04 10:20:55.843', '666672', '35');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '20', '3', '3', '2016-06-04 10:20:55.473', '2016-06-04 10:20:55.859', '666673', '36');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '21', '3', '3', '2016-06-04 10:20:55.509', '2016-06-04 10:20:55.875', '666675', '37');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '19', '4', '2', '2016-06-04 10:20:55.432', '2016-06-04 10:20:55.922', '666671', '38');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '20', '4', '2', '2016-06-04 10:20:55.473', '2016-06-04 10:20:55.946', '666673', '39');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '21', '4', '2', '2016-06-04 10:20:55.509', '2016-06-04 10:20:55.972', '666675', '40');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '27', '1', '1', '2016-06-04 10:21:01.247', '2016-06-04 10:21:01.247', '666676', '41');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '27', '1', '2', '2016-06-04 10:21:01.269', '2016-06-04 10:21:01.269', '666677', '42');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '28', '1', '3', '2016-06-04 10:21:01.287', '2016-06-04 10:21:01.287', '666678', '43');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('4', '28', '1', '4', '2016-06-04 10:21:01.307', '2016-06-04 10:21:01.307', '666679', '44');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '29', '1', '5', '2016-06-04 10:21:01.325', '2016-06-04 10:21:01.325', '666680', '45');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '27', '2', '2', '2016-06-04 10:21:01.247', '2016-06-04 10:21:01.481', '666676', '46');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '27', '2', '2', '2016-06-04 10:21:01.269', '2016-06-04 10:21:01.498', '666677', '47');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '28', '2', '2', '2016-06-04 10:21:01.287', '2016-06-04 10:21:01.52', '666678', '48');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('4', '28', '6', '2', '2016-06-04 10:21:01.307', '2016-06-04 10:21:01.537', '666679', '49');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '29', '2', '2', '2016-06-04 10:21:01.325', '2016-06-04 10:21:01.553', '666680', '50');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '27', '3', '3', '2016-06-04 10:21:01.247', '2016-06-04 10:21:01.587', '666676', '51');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '27', '6', '3', '2016-06-04 10:21:01.269', '2016-06-04 10:21:01.61', '666677', '52');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '28', '3', '3', '2016-06-04 10:21:01.287', '2016-06-04 10:21:01.627', '666678', '53');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '29', '3', '3', '2016-06-04 10:21:01.325', '2016-06-04 10:21:01.643', '666680', '54');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '27', '4', '2', '2016-06-04 10:21:01.247', '2016-06-04 10:21:01.694', '666676', '55');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '28', '4', '2', '2016-06-04 10:21:01.287', '2016-06-04 10:21:01.718', '666678', '56');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '29', '4', '2', '2016-06-04 10:21:01.325', '2016-06-04 10:21:01.745', '666680', '57');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '35', '1', '1', '2016-06-04 10:21:06.942', '2016-06-04 10:21:06.942', '666681', '58');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '35', '1', '2', '2016-06-04 10:21:06.965', '2016-06-04 10:21:06.965', '666682', '59');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '36', '1', '3', '2016-06-04 10:21:06.983', '2016-06-04 10:21:06.983', '666683', '60');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('4', '36', '1', '4', '2016-06-04 10:21:07.007', '2016-06-04 10:21:07.007', '666684', '61');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '37', '1', '5', '2016-06-04 10:21:07.026', '2016-06-04 10:21:07.026', '666685', '62');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '35', '2', '2', '2016-06-04 10:21:06.942', '2016-06-04 10:21:07.207', '666681', '63');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '35', '2', '2', '2016-06-04 10:21:06.965', '2016-06-04 10:21:07.228', '666682', '64');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '36', '2', '2', '2016-06-04 10:21:06.983', '2016-06-04 10:21:07.249', '666683', '65');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('4', '36', '6', '2', '2016-06-04 10:21:07.007', '2016-06-04 10:21:07.27', '666684', '66');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '37', '2', '2', '2016-06-04 10:21:07.026', '2016-06-04 10:21:07.29', '666685', '67');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '35', '3', '3', '2016-06-04 10:21:06.942', '2016-06-04 10:21:07.333', '666681', '68');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '35', '6', '3', '2016-06-04 10:21:06.965', '2016-06-04 10:21:07.352', '666682', '69');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '36', '3', '3', '2016-06-04 10:21:06.983', '2016-06-04 10:21:07.37', '666683', '70');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '37', '3', '3', '2016-06-04 10:21:07.026', '2016-06-04 10:21:07.391', '666685', '71');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '35', '4', '2', '2016-06-04 10:21:06.942', '2016-06-04 10:21:07.444', '666681', '72');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '36', '4', '2', '2016-06-04 10:21:06.983', '2016-06-04 10:21:07.475', '666683', '73');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '37', '4', '2', '2016-06-04 10:21:07.026', '2016-06-04 10:21:07.506', '666685', '74');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '43', '1', '1', '2016-06-04 10:21:13.336', '2016-06-04 10:21:13.336', '666686', '75');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '43', '1', '2', '2016-06-04 10:21:13.357', '2016-06-04 10:21:13.357', '666687', '76');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '44', '1', '3', '2016-06-04 10:21:13.377', '2016-06-04 10:21:13.377', '666688', '77');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('4', '44', '1', '4', '2016-06-04 10:21:13.394', '2016-06-04 10:21:13.394', '666689', '78');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '45', '1', '5', '2016-06-04 10:21:13.411', '2016-06-04 10:21:13.411', '666690', '79');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '43', '2', '2', '2016-06-04 10:21:13.336', '2016-06-04 10:21:13.606', '666686', '80');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '43', '2', '2', '2016-06-04 10:21:13.357', '2016-06-04 10:21:13.625', '666687', '81');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '44', '2', '2', '2016-06-04 10:21:13.377', '2016-06-04 10:21:13.646', '666688', '82');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('4', '44', '6', '2', '2016-06-04 10:21:13.394', '2016-06-04 10:21:13.663', '666689', '83');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '45', '2', '2', '2016-06-04 10:21:13.411', '2016-06-04 10:21:13.679', '666690', '84');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '43', '3', '3', '2016-06-04 10:21:13.336', '2016-06-04 10:21:13.72', '666686', '85');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '43', '6', '3', '2016-06-04 10:21:13.357', '2016-06-04 10:21:13.738', '666687', '86');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '44', '3', '3', '2016-06-04 10:21:13.377', '2016-06-04 10:21:13.756', '666688', '87');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '45', '3', '3', '2016-06-04 10:21:13.411', '2016-06-04 10:21:13.771', '666690', '88');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '43', '4', '2', '2016-06-04 10:21:13.336', '2016-06-04 10:21:13.815', '666686', '89');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '44', '4', '2', '2016-06-04 10:21:13.377', '2016-06-04 10:21:13.841', '666688', '90');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '45', '4', '2', '2016-06-04 10:21:13.411', '2016-06-04 10:21:13.865', '666690', '91');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '51', '1', '1', '2016-06-04 10:21:18.998', '2016-06-04 10:21:18.998', '666691', '92');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '51', '1', '2', '2016-06-04 10:21:19.022', '2016-06-04 10:21:19.022', '666692', '93');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '52', '1', '3', '2016-06-04 10:21:19.053', '2016-06-04 10:21:19.053', '666693', '94');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('4', '52', '1', '4', '2016-06-04 10:21:19.071', '2016-06-04 10:21:19.071', '666694', '95');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '53', '1', '5', '2016-06-04 10:21:19.087', '2016-06-04 10:21:19.087', '666695', '96');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '51', '2', '2', '2016-06-04 10:21:18.998', '2016-06-04 10:21:19.276', '666691', '97');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '51', '2', '2', '2016-06-04 10:21:19.022', '2016-06-04 10:21:19.296', '666692', '98');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '52', '2', '2', '2016-06-04 10:21:19.053', '2016-06-04 10:21:19.315', '666693', '99');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('4', '52', '6', '2', '2016-06-04 10:21:19.071', '2016-06-04 10:21:19.331', '666694', '100');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '53', '2', '2', '2016-06-04 10:21:19.087', '2016-06-04 10:21:19.348', '666695', '101');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '51', '3', '3', '2016-06-04 10:21:18.998', '2016-06-04 10:21:19.392', '666691', '102');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '51', '6', '3', '2016-06-04 10:21:19.022', '2016-06-04 10:21:19.411', '666692', '103');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '52', '3', '3', '2016-06-04 10:21:19.053', '2016-06-04 10:21:19.427', '666693', '104');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '53', '3', '3', '2016-06-04 10:21:19.087', '2016-06-04 10:21:19.443', '666695', '105');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '51', '4', '2', '2016-06-04 10:21:18.998', '2016-06-04 10:21:19.496', '666691', '106');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '52', '4', '2', '2016-06-04 10:21:19.053', '2016-06-04 10:21:19.521', '666693', '107');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '53', '4', '2', '2016-06-04 10:21:19.087', '2016-06-04 10:21:19.544', '666695', '108');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '59', '1', '1', '2016-06-04 10:21:26.532', '2016-06-04 10:21:26.532', '666696', '109');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '59', '1', '2', '2016-06-04 10:21:26.554', '2016-06-04 10:21:26.554', '666697', '110');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '60', '1', '3', '2016-06-04 10:21:26.577', '2016-06-04 10:21:26.577', '666698', '111');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('4', '60', '1', '4', '2016-06-04 10:21:26.594', '2016-06-04 10:21:26.594', '666699', '112');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '61', '1', '5', '2016-06-04 10:21:26.612', '2016-06-04 10:21:26.612', '666700', '113');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '59', '2', '2', '2016-06-04 10:21:26.532', '2016-06-04 10:21:26.802', '666696', '114');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '59', '2', '2', '2016-06-04 10:21:26.554', '2016-06-04 10:21:26.821', '666697', '115');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '60', '2', '2', '2016-06-04 10:21:26.577', '2016-06-04 10:21:26.843', '666698', '116');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('4', '60', '6', '2', '2016-06-04 10:21:26.594', '2016-06-04 10:21:26.862', '666699', '117');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '61', '2', '2', '2016-06-04 10:21:26.612', '2016-06-04 10:21:26.881', '666700', '118');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '59', '3', '3', '2016-06-04 10:21:26.532', '2016-06-04 10:21:26.917', '666696', '119');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '59', '6', '3', '2016-06-04 10:21:26.554', '2016-06-04 10:21:26.939', '666697', '120');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '60', '3', '3', '2016-06-04 10:21:26.577', '2016-06-04 10:21:26.957', '666698', '121');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '61', '3', '3', '2016-06-04 10:21:26.612', '2016-06-04 10:21:26.975', '666700', '122');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '59', '4', '2', '2016-06-04 10:21:26.532', '2016-06-04 10:21:27.02', '666696', '123');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '60', '4', '2', '2016-06-04 10:21:26.577', '2016-06-04 10:21:27.049', '666698', '124');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '61', '4', '2', '2016-06-04 10:21:26.612', '2016-06-04 10:21:27.078', '666700', '125');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '67', '1', '1', '2016-06-04 10:23:24.575', '2016-06-04 10:23:24.575', '666701', '126');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '67', '1', '2', '2016-06-04 10:23:24.599', '2016-06-04 10:23:24.599', '666702', '127');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '68', '1', '3', '2016-06-04 10:23:24.617', '2016-06-04 10:23:24.617', '666703', '128');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('4', '68', '1', '4', '2016-06-04 10:23:24.635', '2016-06-04 10:23:24.635', '666704', '129');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '69', '1', '5', '2016-06-04 10:23:24.654', '2016-06-04 10:23:24.654', '666705', '130');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '67', '2', '2', '2016-06-04 10:23:24.575', '2016-06-04 10:23:24.854', '666701', '131');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '67', '2', '2', '2016-06-04 10:23:24.599', '2016-06-04 10:23:24.874', '666702', '132');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '68', '2', '2', '2016-06-04 10:23:24.617', '2016-06-04 10:23:24.894', '666703', '133');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('4', '68', '6', '2', '2016-06-04 10:23:24.635', '2016-06-04 10:23:24.911', '666704', '134');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '69', '2', '2', '2016-06-04 10:23:24.654', '2016-06-04 10:23:24.928', '666705', '135');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '67', '3', '3', '2016-06-04 10:23:24.575', '2016-06-04 10:23:24.961', '666701', '136');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '67', '6', '3', '2016-06-04 10:23:24.599', '2016-06-04 10:23:24.986', '666702', '137');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '68', '3', '3', '2016-06-04 10:23:24.617', '2016-06-04 10:23:25.007', '666703', '138');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '69', '3', '3', '2016-06-04 10:23:24.654', '2016-06-04 10:23:25.023', '666705', '139');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '67', '4', '2', '2016-06-04 10:23:24.575', '2016-06-04 10:23:25.072', '666701', '140');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '68', '4', '2', '2016-06-04 10:23:24.617', '2016-06-04 10:23:25.098', '666703', '141');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '69', '4', '2', '2016-06-04 10:23:24.654', '2016-06-04 10:23:25.129', '666705', '142');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '67', '5', '3', '2016-06-04 10:23:24.575', '2016-06-04 10:23:25.179', '666701', '143');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '68', '6', '3', '2016-06-04 10:23:24.617', '2016-06-04 10:23:25.195', '666703', '144');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '69', '5', '3', '2016-06-04 10:23:24.654', '2016-06-04 10:23:25.211', '666705', '145');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '67', '0', '1', '2016-06-04 10:23:24.575', '2016-06-04 10:23:25.436', '666701', '146');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '67', '0', '2', '2016-06-04 10:23:24.599', '2016-06-04 10:23:25.451', '666702', '147');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '68', '0', '3', '2016-06-04 10:23:24.617', '2016-06-04 10:23:25.467', '666703', '148');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('4', '68', '0', '4', '2016-06-04 10:23:24.635', '2016-06-04 10:23:25.488', '666704', '149');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '69', '0', '5', '2016-06-04 10:23:24.654', '2016-06-04 10:23:25.509', '666705', '150');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '75', '1', '1', '2016-06-04 11:14:04.949', '2016-06-04 11:14:04.949', '666706', '151');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '75', '1', '2', '2016-06-04 11:14:04.974', '2016-06-04 11:14:04.974', '666707', '152');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '76', '1', '3', '2016-06-04 11:14:04.996', '2016-06-04 11:14:04.996', '666708', '153');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('4', '76', '1', '4', '2016-06-04 11:14:05.013', '2016-06-04 11:14:05.013', '666709', '154');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '77', '1', '5', '2016-06-04 11:14:05.033', '2016-06-04 11:14:05.033', '666710', '155');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '75', '2', '2', '2016-06-04 11:14:04.949', '2016-06-04 11:14:05.264', '666706', '156');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '75', '2', '2', '2016-06-04 11:14:04.974', '2016-06-04 11:14:05.289', '666707', '157');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '76', '2', '2', '2016-06-04 11:14:04.996', '2016-06-04 11:14:05.312', '666708', '158');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('4', '76', '6', '2', '2016-06-04 11:14:05.013', '2016-06-04 11:14:05.329', '666709', '159');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '77', '2', '2', '2016-06-04 11:14:05.033', '2016-06-04 11:14:05.35', '666710', '160');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '75', '3', '3', '2016-06-04 11:14:04.949', '2016-06-04 11:14:05.401', '666706', '161');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '75', '6', '3', '2016-06-04 11:14:04.974', '2016-06-04 11:14:05.436', '666707', '162');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '76', '3', '3', '2016-06-04 11:14:04.996', '2016-06-04 11:14:05.47', '666708', '163');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '77', '3', '3', '2016-06-04 11:14:05.033', '2016-06-04 11:14:05.528', '666710', '164');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '75', '4', '2', '2016-06-04 11:14:04.949', '2016-06-04 11:14:05.579', '666706', '165');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '76', '4', '2', '2016-06-04 11:14:04.996', '2016-06-04 11:14:05.618', '666708', '166');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '77', '4', '2', '2016-06-04 11:14:05.033', '2016-06-04 11:14:05.648', '666710', '167');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '75', '5', '3', '2016-06-04 11:14:04.949', '2016-06-04 11:14:05.716', '666706', '168');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '76', '6', '3', '2016-06-04 11:14:04.996', '2016-06-04 11:14:05.738', '666708', '169');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '77', '5', '3', '2016-06-04 11:14:05.033', '2016-06-04 11:14:05.764', '666710', '170');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '75', '0', '1', '2016-06-04 11:14:04.949', '2016-06-04 11:14:06.019', '666706', '171');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '75', '0', '2', '2016-06-04 11:14:04.974', '2016-06-04 11:14:06.036', '666707', '172');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '76', '0', '3', '2016-06-04 11:14:04.996', '2016-06-04 11:14:06.061', '666708', '173');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('4', '76', '0', '4', '2016-06-04 11:14:05.013', '2016-06-04 11:14:06.091', '666709', '174');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '77', '0', '5', '2016-06-04 11:14:05.033', '2016-06-04 11:14:06.107', '666710', '175');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '83', '1', '1', '2016-06-04 11:14:08.714', '2016-06-04 11:14:08.714', '666711', '176');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '83', '1', '2', '2016-06-04 11:14:08.739', '2016-06-04 11:14:08.739', '666712', '177');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '84', '1', '3', '2016-06-04 11:14:08.762', '2016-06-04 11:14:08.762', '666713', '178');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('4', '84', '1', '4', '2016-06-04 11:14:08.78', '2016-06-04 11:14:08.78', '666714', '179');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '85', '1', '5', '2016-06-04 11:14:08.801', '2016-06-04 11:14:08.801', '666715', '180');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '83', '2', '2', '2016-06-04 11:14:08.714', '2016-06-04 11:14:09.009', '666711', '181');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '83', '2', '2', '2016-06-04 11:14:08.739', '2016-06-04 11:14:09.029', '666712', '182');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '84', '2', '2', '2016-06-04 11:14:08.762', '2016-06-04 11:14:09.048', '666713', '183');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('4', '84', '6', '2', '2016-06-04 11:14:08.78', '2016-06-04 11:14:09.068', '666714', '184');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '85', '2', '2', '2016-06-04 11:14:08.801', '2016-06-04 11:14:09.085', '666715', '185');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '83', '3', '3', '2016-06-04 11:14:08.714', '2016-06-04 11:14:09.122', '666711', '186');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '83', '6', '3', '2016-06-04 11:14:08.739', '2016-06-04 11:14:09.141', '666712', '187');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '84', '3', '3', '2016-06-04 11:14:08.762', '2016-06-04 11:14:09.156', '666713', '188');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '85', '3', '3', '2016-06-04 11:14:08.801', '2016-06-04 11:14:09.175', '666715', '189');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '83', '4', '2', '2016-06-04 11:14:08.714', '2016-06-04 11:14:09.221', '666711', '190');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '84', '4', '2', '2016-06-04 11:14:08.762', '2016-06-04 11:14:09.247', '666713', '191');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '85', '4', '2', '2016-06-04 11:14:08.801', '2016-06-04 11:14:09.271', '666715', '192');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '83', '5', '3', '2016-06-04 11:14:08.714', '2016-06-04 11:14:09.348', '666711', '193');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '84', '6', '3', '2016-06-04 11:14:08.762', '2016-06-04 11:14:09.366', '666713', '194');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '85', '5', '3', '2016-06-04 11:14:08.801', '2016-06-04 11:14:09.382', '666715', '195');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('1', '83', '0', '1', '2016-06-04 11:14:08.714', '2016-06-04 11:14:09.608', '666711', '196');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('2', '83', '0', '2', '2016-06-04 11:14:08.739', '2016-06-04 11:14:09.626', '666712', '197');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('3', '84', '0', '3', '2016-06-04 11:14:08.762', '2016-06-04 11:14:09.643', '666713', '198');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('4', '84', '0', '4', '2016-06-04 11:14:08.78', '2016-06-04 11:14:09.661', '666714', '199');
INSERT INTO "ss1604c195_rd4"."recruit_applyment_log" VALUES ('5', '85', '0', '5', '2016-06-04 11:14:08.801', '2016-06-04 11:14:09.682', '666715', '200');

-- ----------------------------
-- Table structure for recruit_interview
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd4"."recruit_interview";
CREATE TABLE "ss1604c195_rd4"."recruit_interview" (
"interviewid" int4 DEFAULT nextval('"ss1604c195_rd4".recruit_interview_interviewid_seq'::regclass) NOT NULL,
"starttime" timestamptz(6),
"endtime" timestamp(6),
"location" varchar COLLATE "default",
"contact_person" varchar COLLATE "default",
"contact_phone" varchar COLLATE "default",
"replenish" varchar COLLATE "default",
"applymentid" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of recruit_interview
-- ----------------------------
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666666', '2016-06-19 10:00:00+08', '2016-06-19 12:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666666');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666667', '2016-06-19 13:00:00+08', '2016-06-19 15:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666668');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666668', '2016-06-19 16:00:00+08', '2016-06-19 18:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666670');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666669', '2016-06-19 10:00:00+08', '2016-06-19 12:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666671');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666670', '2016-06-19 13:00:00+08', '2016-06-19 15:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666673');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666671', '2016-06-19 16:00:00+08', '2016-06-19 18:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666675');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666672', '2016-06-19 10:00:00+08', '2016-06-19 12:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666676');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666673', '2016-06-19 13:00:00+08', '2016-06-19 15:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666678');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666674', '2016-06-19 16:00:00+08', '2016-06-19 18:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666680');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666675', '2016-06-19 10:00:00+08', '2016-06-19 12:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666681');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666676', '2016-06-19 13:00:00+08', '2016-06-19 15:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666683');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666677', '2016-06-19 16:00:00+08', '2016-06-19 18:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666685');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666678', '2016-06-19 10:00:00+08', '2016-06-19 12:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666686');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666679', '2016-06-19 13:00:00+08', '2016-06-19 15:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666688');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666680', '2016-06-19 16:00:00+08', '2016-06-19 18:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666690');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666681', '2016-06-19 10:00:00+08', '2016-06-19 12:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666691');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666682', '2016-06-19 13:00:00+08', '2016-06-19 15:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666693');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666683', '2016-06-19 16:00:00+08', '2016-06-19 18:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666695');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666684', '2016-06-19 10:00:00+08', '2016-06-19 12:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666696');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666685', '2016-06-19 13:00:00+08', '2016-06-19 15:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666698');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666686', '2016-06-19 16:00:00+08', '2016-06-19 18:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666700');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666687', '2016-06-19 10:00:00+08', '2016-06-19 12:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666701');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666688', '2016-06-19 13:00:00+08', '2016-06-19 15:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666703');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666689', '2016-06-19 16:00:00+08', '2016-06-19 18:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666705');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666690', '2016-06-19 10:00:00+08', '2016-06-19 12:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666706');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666691', '2016-06-19 13:00:00+08', '2016-06-19 15:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666708');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666692', '2016-06-19 16:00:00+08', '2016-06-19 18:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666710');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666693', '2016-06-19 10:00:00+08', '2016-06-19 12:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666711');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666694', '2016-06-19 13:00:00+08', '2016-06-19 15:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666713');
INSERT INTO "ss1604c195_rd4"."recruit_interview" VALUES ('666695', '2016-06-19 16:00:00+08', '2016-06-19 18:00:00', 'shanghai', 'Wang Zhizhi', '021-54746868', 'cheers', '666715');

-- ----------------------------
-- Table structure for recruit_pool
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd4"."recruit_pool";
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
"updatedat" timestamp(6),
"isvalid" bool DEFAULT true NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of recruit_pool
-- ----------------------------
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('1', '1', '6', '2016-06-16', '2016-06-01', null, '2', '2', '2016-05-30 00:00:00', '2016-05-30 00:00:00', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('2', '2', '10', '2016-06-16', '2016-06-01', null, '2', '2', '2016-05-30 00:00:00', '2016-05-30 00:00:00', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('3', '3', '7', '2016-06-16', '2016-06-01', null, '2', '2', '2016-05-30 00:00:00', '2016-05-30 00:00:00', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('4', '4', '8', '2016-06-16', '2016-06-01', null, '2', '2', '2016-05-30 00:00:00', '2016-05-30 00:00:00', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('5', '5', '2', '2016-06-16', '2016-06-01', null, '2', '2', '2016-05-30 00:00:00', '2016-05-30 00:00:00', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('666666', '9', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:20:44.945', '2016-06-04 10:20:45.063', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('666667', '10', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:20:44.965', '2016-06-04 10:20:45.079', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('666668', '17', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:20:49.824', '2016-06-04 10:20:49.946', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('666669', '18', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:20:49.844', '2016-06-04 10:20:49.965', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('666670', '25', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:20:56.253', '2016-06-04 10:20:56.366', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('666671', '26', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:20:56.274', '2016-06-04 10:20:56.385', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('666672', '33', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:21:02.036', '2016-06-04 10:21:02.147', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('666673', '34', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:21:02.058', '2016-06-04 10:21:02.166', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('666674', '41', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:21:07.811', '2016-06-04 10:21:07.938', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('666675', '42', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:21:07.832', '2016-06-04 10:21:07.958', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('666676', '49', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:21:14.147', '2016-06-04 10:21:14.257', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('666677', '50', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:21:14.166', '2016-06-04 10:21:14.273', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('666678', '57', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:21:19.834', '2016-06-04 10:21:19.946', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('666679', '58', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:21:19.853', '2016-06-04 10:21:19.961', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('666680', '65', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:21:27.379', '2016-06-04 10:21:27.49', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('666681', '66', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:21:27.397', '2016-06-04 10:21:27.507', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('666682', '73', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:23:25.731', '2016-06-04 10:23:25.846', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('666683', '74', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:23:25.753', '2016-06-04 10:23:25.864', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('666684', '81', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 11:14:06.52', '2016-06-04 11:14:06.739', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('666685', '82', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 11:14:06.568', '2016-06-04 11:14:06.809', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('666686', '89', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 11:14:09.92', '2016-06-04 11:14:10.04', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool" VALUES ('666687', '90', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 11:14:09.947', '2016-06-04 11:14:10.057', 'f');

-- ----------------------------
-- Table structure for recruit_pool_log
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd4"."recruit_pool_log";
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
"id" int4 DEFAULT nextval('"ss1604c195_rd4".recruit_pool_log_id_seq'::regclass) NOT NULL,
"isvalid" bool
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of recruit_pool_log
-- ----------------------------
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('1', '6', '2016-06-16', '2016-06-01', null, '2', '2', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '1', '11', null);
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('2', '10', '2016-06-16', '2016-06-01', null, '2', '2', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '2', '12', null);
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('3', '7', '2016-06-16', '2016-06-01', null, '2', '2', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '3', '13', null);
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('4', '8', '2016-06-16', '2016-06-01', null, '2', '2', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '4', '14', null);
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('5', '2', '2016-06-16', '2016-06-01', null, '2', '2', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '5', '15', null);
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('4', '8', '2016-06-16', '2016-06-01', null, '2', '2', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '4', '16', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('4', '8', '2016-06-16', '2016-06-01', null, '2', '2', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '4', '17', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('9', '4', null, null, null, '2', '2', '2016-06-04 10:20:44.945', '2016-06-04 10:20:44.945', '666666', '18', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('10', '6', null, null, null, '2', '2', '2016-06-04 10:20:44.965', '2016-06-04 10:20:44.965', '666667', '19', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('9', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:20:44.945', '2016-06-04 10:20:44.986', '666666', '20', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('10', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:20:44.965', '2016-06-04 10:20:45.023', '666667', '21', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('9', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:20:44.945', '2016-06-04 10:20:45.063', '666666', '22', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('10', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:20:44.965', '2016-06-04 10:20:45.079', '666667', '23', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('17', '4', null, null, null, '2', '2', '2016-06-04 10:20:49.824', '2016-06-04 10:20:49.824', '666668', '24', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('18', '6', null, null, null, '2', '2', '2016-06-04 10:20:49.844', '2016-06-04 10:20:49.844', '666669', '25', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('17', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:20:49.824', '2016-06-04 10:20:49.863', '666668', '26', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('18', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:20:49.844', '2016-06-04 10:20:49.903', '666669', '27', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('17', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:20:49.824', '2016-06-04 10:20:49.946', '666668', '28', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('18', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:20:49.844', '2016-06-04 10:20:49.965', '666669', '29', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('25', '4', null, null, null, '2', '2', '2016-06-04 10:20:56.253', '2016-06-04 10:20:56.253', '666670', '30', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('26', '6', null, null, null, '2', '2', '2016-06-04 10:20:56.274', '2016-06-04 10:20:56.274', '666671', '31', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('25', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:20:56.253', '2016-06-04 10:20:56.292', '666670', '32', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('26', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:20:56.274', '2016-06-04 10:20:56.33', '666671', '33', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('25', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:20:56.253', '2016-06-04 10:20:56.366', '666670', '34', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('26', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:20:56.274', '2016-06-04 10:20:56.385', '666671', '35', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('33', '4', null, null, null, '2', '2', '2016-06-04 10:21:02.036', '2016-06-04 10:21:02.036', '666672', '36', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('34', '6', null, null, null, '2', '2', '2016-06-04 10:21:02.058', '2016-06-04 10:21:02.058', '666673', '37', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('33', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:21:02.036', '2016-06-04 10:21:02.073', '666672', '38', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('34', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:21:02.058', '2016-06-04 10:21:02.108', '666673', '39', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('33', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:21:02.036', '2016-06-04 10:21:02.147', '666672', '40', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('34', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:21:02.058', '2016-06-04 10:21:02.166', '666673', '41', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('41', '4', null, null, null, '2', '2', '2016-06-04 10:21:07.811', '2016-06-04 10:21:07.811', '666674', '42', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('42', '6', null, null, null, '2', '2', '2016-06-04 10:21:07.832', '2016-06-04 10:21:07.832', '666675', '43', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('41', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:21:07.811', '2016-06-04 10:21:07.853', '666674', '44', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('42', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:21:07.832', '2016-06-04 10:21:07.897', '666675', '45', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('41', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:21:07.811', '2016-06-04 10:21:07.938', '666674', '46', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('42', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:21:07.832', '2016-06-04 10:21:07.958', '666675', '47', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('49', '4', null, null, null, '2', '2', '2016-06-04 10:21:14.147', '2016-06-04 10:21:14.147', '666676', '48', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('50', '6', null, null, null, '2', '2', '2016-06-04 10:21:14.166', '2016-06-04 10:21:14.166', '666677', '49', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('49', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:21:14.147', '2016-06-04 10:21:14.185', '666676', '50', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('50', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:21:14.166', '2016-06-04 10:21:14.219', '666677', '51', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('49', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:21:14.147', '2016-06-04 10:21:14.257', '666676', '52', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('50', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:21:14.166', '2016-06-04 10:21:14.273', '666677', '53', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('57', '4', null, null, null, '2', '2', '2016-06-04 10:21:19.834', '2016-06-04 10:21:19.834', '666678', '54', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('58', '6', null, null, null, '2', '2', '2016-06-04 10:21:19.853', '2016-06-04 10:21:19.853', '666679', '55', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('57', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:21:19.834', '2016-06-04 10:21:19.872', '666678', '56', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('58', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:21:19.853', '2016-06-04 10:21:19.909', '666679', '57', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('57', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:21:19.834', '2016-06-04 10:21:19.946', '666678', '58', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('58', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:21:19.853', '2016-06-04 10:21:19.961', '666679', '59', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('65', '4', null, null, null, '2', '2', '2016-06-04 10:21:27.379', '2016-06-04 10:21:27.379', '666680', '60', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('66', '6', null, null, null, '2', '2', '2016-06-04 10:21:27.397', '2016-06-04 10:21:27.397', '666681', '61', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('65', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:21:27.379', '2016-06-04 10:21:27.414', '666680', '62', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('66', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:21:27.397', '2016-06-04 10:21:27.452', '666681', '63', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('65', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:21:27.379', '2016-06-04 10:21:27.49', '666680', '64', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('66', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:21:27.397', '2016-06-04 10:21:27.507', '666681', '65', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('73', '4', null, null, null, '2', '2', '2016-06-04 10:23:25.731', '2016-06-04 10:23:25.731', '666682', '66', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('74', '6', null, null, null, '2', '2', '2016-06-04 10:23:25.753', '2016-06-04 10:23:25.753', '666683', '67', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('73', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:23:25.731', '2016-06-04 10:23:25.771', '666682', '68', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('74', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:23:25.753', '2016-06-04 10:23:25.807', '666683', '69', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('73', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 10:23:25.731', '2016-06-04 10:23:25.846', '666682', '70', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('74', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 10:23:25.753', '2016-06-04 10:23:25.864', '666683', '71', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('81', '4', null, null, null, '2', '2', '2016-06-04 11:14:06.52', '2016-06-04 11:14:06.52', '666684', '72', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('82', '6', null, null, null, '2', '2', '2016-06-04 11:14:06.568', '2016-06-04 11:14:06.568', '666685', '73', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('81', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 11:14:06.52', '2016-06-04 11:14:06.607', '666684', '74', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('82', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 11:14:06.568', '2016-06-04 11:14:06.684', '666685', '75', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('81', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 11:14:06.52', '2016-06-04 11:14:06.739', '666684', '76', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('82', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 11:14:06.568', '2016-06-04 11:14:06.809', '666685', '77', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('89', '4', null, null, null, '2', '2', '2016-06-04 11:14:09.92', '2016-06-04 11:14:09.92', '666686', '78', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('90', '6', null, null, null, '2', '2', '2016-06-04 11:14:09.947', '2016-06-04 11:14:09.947', '666687', '79', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('89', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 11:14:09.92', '2016-06-04 11:14:09.965', '666686', '80', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('90', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 11:14:09.947', '2016-06-04 11:14:10.003', '666687', '81', 't');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('89', '5', '2016-06-20', '2016-06-05', null, '2', '2', '2016-06-04 11:14:09.92', '2016-06-04 11:14:10.04', '666686', '82', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_pool_log" VALUES ('90', '6', '2016-06-22', '2016-06-06', null, '2', '2', '2016-06-04 11:14:09.947', '2016-06-04 11:14:10.057', '666687', '83', 'f');

-- ----------------------------
-- Table structure for recruit_position
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd4"."recruit_position";
CREATE TABLE "ss1604c195_rd4"."recruit_position" (
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
"positionid" int4 DEFAULT nextval('"ss1604c195_rd4".recruit_position_positionid_seq'::regclass) NOT NULL,
"description" varchar COLLATE "default",
"isvalid" bool DEFAULT true NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd4"."recruit_position"."duration_req" IS 'months';

-- ----------------------------
-- Records of recruit_position
-- ----------------------------
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java Dev', '5', 'shanghai', '2016-06-20', '6', 'Java', 'Linux', 'Spring', 'JDBC', 'Mysql', '3', '3', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '4', '1', 'Hue Java Development', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java QA', '8', 'shanghai', '2016-06-30', '8', 'Java', 'JUnit', 'Spring', 'Jmeter', 'Tsung', '4', '4', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '5', '2', 'Hue Project Test', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java OPS', '5', 'shanghai', '2016-06-20', '6', 'Java', 'Hadoop', 'Splunk', 'Nginx', 'Docker', '4', '4', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '5', '3', 'Hue Java OPS', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Android Dev', '7', 'shanghai', '2016-06-22', '6', 'Android', 'ADB', 'Ionic', 'Meteor', 'AngularJS', '3', '3', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '4', '4', 'Hue Android Client Development', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Deep Research', '2', 'shanghai', '2016-06-25', '12', 'Data Mining', 'NLP', 'Machine Learning', 'Neural Network', 'LR', '3', '3', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '4', '5', 'Hue Machine Learning Research', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:20:44.535', '2016-06-04 10:20:44.856', '4', '6', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:20:44.592', '2016-06-04 10:20:44.874', '4', '7', 'Develop Database version control Tool @shanghai', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:20:44.615', '2016-06-04 10:20:44.892', '4', '8', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:20:44.91', '2016-06-04 10:20:45.096', '4', '9', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:20:44.928', '2016-06-04 10:20:45.113', '4', '10', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:20:48.667', '2016-06-04 10:20:48.667', '4', '11', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:20:48.979', '2016-06-04 10:20:48.979', '4', '12', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:20:49.001', '2016-06-04 10:20:49.001', '4', '13', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:20:49.622', '2016-06-04 10:20:49.737', '4', '14', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:20:49.654', '2016-06-04 10:20:49.754', '4', '15', 'Develop Database version control Tool @shanghai', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:20:49.676', '2016-06-04 10:20:49.771', '4', '16', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:20:49.79', '2016-06-04 10:20:50.03', '4', '17', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:20:49.808', '2016-06-04 10:20:50.052', '4', '18', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:20:55.138', '2016-06-04 10:20:55.138', '4', '19', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:20:55.392', '2016-06-04 10:20:55.392', '4', '20', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:20:55.411', '2016-06-04 10:20:55.411', '4', '21', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:20:56.065', '2016-06-04 10:20:56.163', '4', '22', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:20:56.086', '2016-06-04 10:20:56.18', '4', '23', 'Develop Database version control Tool @shanghai', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:20:56.106', '2016-06-04 10:20:56.196', '4', '24', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:20:56.216', '2016-06-04 10:20:56.402', '4', '25', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:20:56.233', '2016-06-04 10:20:56.418', '4', '26', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:00.939', '2016-06-04 10:21:00.939', '4', '27', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:01.208', '2016-06-04 10:21:01.208', '4', '28', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:01.23', '2016-06-04 10:21:01.23', '4', '29', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:01.839', '2016-06-04 10:21:01.946', '4', '30', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:21:01.862', '2016-06-04 10:21:01.961', '4', '31', 'Develop Database version control Tool @shanghai', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:01.884', '2016-06-04 10:21:01.977', '4', '32', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:01.999', '2016-06-04 10:21:02.182', '4', '33', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:02.018', '2016-06-04 10:21:02.199', '4', '34', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:06.631', '2016-06-04 10:21:06.631', '4', '35', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:06.897', '2016-06-04 10:21:06.897', '4', '36', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:06.916', '2016-06-04 10:21:06.916', '4', '37', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:07.602', '2016-06-04 10:21:07.716', '4', '38', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:21:07.625', '2016-06-04 10:21:07.733', '4', '39', 'Develop Database version control Tool @shanghai', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:07.645', '2016-06-04 10:21:07.751', '4', '40', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:07.771', '2016-06-04 10:21:07.979', '4', '41', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:07.792', '2016-06-04 10:21:07.999', '4', '42', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:13.02', '2016-06-04 10:21:13.02', '4', '43', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:13.297', '2016-06-04 10:21:13.297', '4', '44', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:13.316', '2016-06-04 10:21:13.316', '4', '45', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:13.954', '2016-06-04 10:21:14.055', '4', '46', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:21:13.972', '2016-06-04 10:21:14.073', '4', '47', 'Develop Database version control Tool @shanghai', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:13.992', '2016-06-04 10:21:14.089', '4', '48', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:14.111', '2016-06-04 10:21:14.29', '4', '49', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:14.128', '2016-06-04 10:21:14.306', '4', '50', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:18.694', '2016-06-04 10:21:18.694', '4', '51', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:18.955', '2016-06-04 10:21:18.955', '4', '52', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:18.978', '2016-06-04 10:21:18.978', '4', '53', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:19.64', '2016-06-04 10:21:19.741', '4', '54', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:21:19.658', '2016-06-04 10:21:19.759', '4', '55', 'Develop Database version control Tool @shanghai', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:19.678', '2016-06-04 10:21:19.778', '4', '56', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:19.798', '2016-06-04 10:21:19.981', '4', '57', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:19.816', '2016-06-04 10:21:20', '4', '58', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:26.201', '2016-06-04 10:21:26.201', '4', '59', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:26.492', '2016-06-04 10:21:26.492', '4', '60', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:26.512', '2016-06-04 10:21:26.512', '4', '61', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:27.17', '2016-06-04 10:21:27.288', '4', '62', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:21:27.192', '2016-06-04 10:21:27.304', '4', '63', 'Develop Database version control Tool @shanghai', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:27.213', '2016-06-04 10:21:27.322', '4', '64', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:27.344', '2016-06-04 10:21:27.526', '4', '65', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:27.36', '2016-06-04 10:21:27.545', '4', '66', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:23:24.23', '2016-06-04 10:23:25.376', '4', '67', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:23:24.525', '2016-06-04 10:23:25.394', '4', '68', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:23:24.548', '2016-06-04 10:23:25.417', '4', '69', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:23:25.535', '2016-06-04 10:23:25.638', '4', '70', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:23:25.555', '2016-06-04 10:23:25.655', '4', '71', 'Develop Database version control Tool @shanghai', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:23:25.575', '2016-06-04 10:23:25.673', '4', '72', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:23:25.694', '2016-06-04 10:23:25.88', '4', '73', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:23:25.713', '2016-06-04 10:23:25.9', '4', '74', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 11:14:04.555', '2016-06-04 11:14:05.967', '4', '75', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 11:14:04.906', '2016-06-04 11:14:05.987', '4', '76', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 11:14:04.926', '2016-06-04 11:14:06.003', '4', '77', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 11:14:06.225', '2016-06-04 11:14:06.377', '4', '78', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 11:14:06.252', '2016-06-04 11:14:06.416', '4', '79', 'Develop Database version control Tool @shanghai', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 11:14:06.291', '2016-06-04 11:14:06.444', '4', '80', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 11:14:06.474', '2016-06-04 11:14:06.828', '4', '81', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 11:14:06.498', '2016-06-04 11:14:06.851', '4', '82', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 11:14:08.218', '2016-06-04 11:14:09.547', '4', '83', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 11:14:08.669', '2016-06-04 11:14:09.571', '4', '84', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 11:14:08.694', '2016-06-04 11:14:09.589', '4', '85', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 11:14:09.707', '2016-06-04 11:14:09.82', '4', '86', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 11:14:09.729', '2016-06-04 11:14:09.839', '4', '87', 'Develop Database version control Tool @shanghai', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 11:14:09.752', '2016-06-04 11:14:09.864', '4', '88', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 11:14:09.884', '2016-06-04 11:14:10.074', '4', '89', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 11:14:09.904', '2016-06-04 11:14:10.092', '4', '90', 'Develop Database version control Tool', 'f');

-- ----------------------------
-- Table structure for recruit_position_log
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd4"."recruit_position_log";
CREATE TABLE "ss1604c195_rd4"."recruit_position_log" (
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
"id" int4 DEFAULT nextval('"ss1604c195_rd4".recruit_position_copy_id_seq'::regclass) NOT NULL,
"description" varchar COLLATE "default",
"isvalid" bool
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "ss1604c195_rd4"."recruit_position_log"."duration_req" IS 'months';

-- ----------------------------
-- Records of recruit_position_log
-- ----------------------------
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java Dev', '5', 'shanghai', '2016-06-20', '6', 'Java', 'Linux', 'Spring', 'JDBC', 'Mysql', '3', '3', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '4', '1', '15', 'Hue Java Development', null);
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java QA', '8', 'shanghai', '2016-06-30', '8', 'Java', 'JUnit', 'Spring', 'Jmeter', 'Tsung', '4', '4', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '5', '2', '16', 'Hue Project Test', null);
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java OPS', '5', 'shanghai', '2016-06-20', '6', 'Java', 'Hadoop', 'Splunk', 'Nginx', 'Docker', '4', '4', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '5', '3', '17', 'Hue Java OPS', null);
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Android Dev', '7', 'shanghai', '2016-06-22', '6', 'Android', 'ADB', 'Ionic', 'Meteor', 'AngularJS', '3', '3', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '4', '4', '18', 'Hue Android Client Development', null);
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Deep Research', '2', 'shanghai', '2016-06-25', '12', 'Data Mining', 'NLP', 'Machine Learning', 'Neural Network', 'LR', '3', '3', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '4', '5', '19', 'Hue Machine Learning Research', null);
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java Dev', '5', 'shanghai', '2016-06-20', '6', 'Java', 'Linux', 'Spring', 'JDBC', 'Mysql', '3', '3', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '4', '1', '20', 'Hue Java Development', null);
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java QA', '8', 'shanghai', '2016-06-30', '8', 'Java', 'JUnit', 'Spring', 'Jmeter', 'Tsung', '4', '4', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '5', '2', '21', 'Hue Project Test', null);
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java OPS', '5', 'shanghai', '2016-06-20', '6', 'Java', 'Hadoop', 'Splunk', 'Nginx', 'Docker', '4', '4', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '5', '3', '22', 'Hue Java OPS', null);
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Android Dev', '7', 'shanghai', '2016-06-22', '6', 'Android', 'ADB', 'Ionic', 'Meteor', 'AngularJS', '3', '3', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '4', '4', '23', 'Hue Android Client Development', null);
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Deep Research', '2', 'shanghai', '2016-06-25', '12', 'Data Mining', 'NLP', 'Machine Learning', 'Neural Network', 'LR', '3', '3', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '4', '5', '24', 'Hue Machine Learning Research', null);
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:20:44.535', '2016-06-04 10:20:44.535', '4', '6', '25', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:20:44.592', '2016-06-04 10:20:44.592', '4', '7', '26', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:20:44.615', '2016-06-04 10:20:44.615', '4', '8', '27', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:20:44.592', '2016-06-04 10:20:44.839', '4', '7', '28', 'Develop Database version control Tool @shanghai', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:20:44.535', '2016-06-04 10:20:44.856', '4', '6', '29', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:20:44.592', '2016-06-04 10:20:44.874', '4', '7', '30', 'Develop Database version control Tool @shanghai', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:20:44.615', '2016-06-04 10:20:44.892', '4', '8', '31', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:20:44.91', '2016-06-04 10:20:44.91', '4', '9', '32', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:20:44.928', '2016-06-04 10:20:44.928', '4', '10', '33', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:20:44.91', '2016-06-04 10:20:45.096', '4', '9', '34', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:20:44.928', '2016-06-04 10:20:45.113', '4', '10', '35', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:20:48.667', '2016-06-04 10:20:48.667', '4', '11', '36', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:20:48.979', '2016-06-04 10:20:48.979', '4', '12', '37', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:20:49.001', '2016-06-04 10:20:49.001', '4', '13', '38', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:20:49.622', '2016-06-04 10:20:49.622', '4', '14', '39', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:20:49.654', '2016-06-04 10:20:49.654', '4', '15', '40', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:20:49.676', '2016-06-04 10:20:49.676', '4', '16', '41', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:20:49.654', '2016-06-04 10:20:49.718', '4', '15', '42', 'Develop Database version control Tool @shanghai', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:20:49.622', '2016-06-04 10:20:49.737', '4', '14', '43', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:20:49.654', '2016-06-04 10:20:49.754', '4', '15', '44', 'Develop Database version control Tool @shanghai', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:20:49.676', '2016-06-04 10:20:49.771', '4', '16', '45', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:20:49.79', '2016-06-04 10:20:49.79', '4', '17', '46', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:20:49.808', '2016-06-04 10:20:49.808', '4', '18', '47', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:20:49.79', '2016-06-04 10:20:50.03', '4', '17', '48', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:20:49.808', '2016-06-04 10:20:50.052', '4', '18', '49', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:20:55.138', '2016-06-04 10:20:55.138', '4', '19', '50', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:20:55.392', '2016-06-04 10:20:55.392', '4', '20', '51', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:20:55.411', '2016-06-04 10:20:55.411', '4', '21', '52', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:20:56.065', '2016-06-04 10:20:56.065', '4', '22', '53', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:20:56.086', '2016-06-04 10:20:56.086', '4', '23', '54', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:20:56.106', '2016-06-04 10:20:56.106', '4', '24', '55', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:20:56.086', '2016-06-04 10:20:56.145', '4', '23', '56', 'Develop Database version control Tool @shanghai', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:20:56.065', '2016-06-04 10:20:56.163', '4', '22', '57', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:20:56.086', '2016-06-04 10:20:56.18', '4', '23', '58', 'Develop Database version control Tool @shanghai', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:20:56.106', '2016-06-04 10:20:56.196', '4', '24', '59', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:20:56.216', '2016-06-04 10:20:56.216', '4', '25', '60', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:20:56.233', '2016-06-04 10:20:56.233', '4', '26', '61', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:20:56.216', '2016-06-04 10:20:56.402', '4', '25', '62', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:20:56.233', '2016-06-04 10:20:56.418', '4', '26', '63', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:00.939', '2016-06-04 10:21:00.939', '4', '27', '64', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:01.208', '2016-06-04 10:21:01.208', '4', '28', '65', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:01.23', '2016-06-04 10:21:01.23', '4', '29', '66', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:01.839', '2016-06-04 10:21:01.839', '4', '30', '67', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:01.862', '2016-06-04 10:21:01.862', '4', '31', '68', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:01.884', '2016-06-04 10:21:01.884', '4', '32', '69', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:21:01.862', '2016-06-04 10:21:01.925', '4', '31', '70', 'Develop Database version control Tool @shanghai', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:01.839', '2016-06-04 10:21:01.946', '4', '30', '71', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:21:01.862', '2016-06-04 10:21:01.961', '4', '31', '72', 'Develop Database version control Tool @shanghai', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:01.884', '2016-06-04 10:21:01.977', '4', '32', '73', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:01.999', '2016-06-04 10:21:01.999', '4', '33', '74', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:02.018', '2016-06-04 10:21:02.018', '4', '34', '75', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:01.999', '2016-06-04 10:21:02.182', '4', '33', '76', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:02.018', '2016-06-04 10:21:02.199', '4', '34', '77', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:06.631', '2016-06-04 10:21:06.631', '4', '35', '78', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:06.897', '2016-06-04 10:21:06.897', '4', '36', '79', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:06.916', '2016-06-04 10:21:06.916', '4', '37', '80', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:07.602', '2016-06-04 10:21:07.602', '4', '38', '81', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:07.625', '2016-06-04 10:21:07.625', '4', '39', '82', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:07.645', '2016-06-04 10:21:07.645', '4', '40', '83', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:21:07.625', '2016-06-04 10:21:07.691', '4', '39', '84', 'Develop Database version control Tool @shanghai', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:07.602', '2016-06-04 10:21:07.716', '4', '38', '85', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:21:07.625', '2016-06-04 10:21:07.733', '4', '39', '86', 'Develop Database version control Tool @shanghai', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:07.645', '2016-06-04 10:21:07.751', '4', '40', '87', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:07.771', '2016-06-04 10:21:07.771', '4', '41', '88', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:07.792', '2016-06-04 10:21:07.792', '4', '42', '89', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:07.771', '2016-06-04 10:21:07.979', '4', '41', '90', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:07.792', '2016-06-04 10:21:07.999', '4', '42', '91', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:13.02', '2016-06-04 10:21:13.02', '4', '43', '92', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:13.297', '2016-06-04 10:21:13.297', '4', '44', '93', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:13.316', '2016-06-04 10:21:13.316', '4', '45', '94', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:13.954', '2016-06-04 10:21:13.954', '4', '46', '95', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:13.972', '2016-06-04 10:21:13.972', '4', '47', '96', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:13.992', '2016-06-04 10:21:13.992', '4', '48', '97', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:21:13.972', '2016-06-04 10:21:14.038', '4', '47', '98', 'Develop Database version control Tool @shanghai', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:13.954', '2016-06-04 10:21:14.055', '4', '46', '99', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:21:13.972', '2016-06-04 10:21:14.073', '4', '47', '100', 'Develop Database version control Tool @shanghai', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:13.992', '2016-06-04 10:21:14.089', '4', '48', '101', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:14.111', '2016-06-04 10:21:14.111', '4', '49', '102', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:14.128', '2016-06-04 10:21:14.128', '4', '50', '103', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:14.111', '2016-06-04 10:21:14.29', '4', '49', '104', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:14.128', '2016-06-04 10:21:14.306', '4', '50', '105', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:18.694', '2016-06-04 10:21:18.694', '4', '51', '106', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:18.955', '2016-06-04 10:21:18.955', '4', '52', '107', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:18.978', '2016-06-04 10:21:18.978', '4', '53', '108', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:19.64', '2016-06-04 10:21:19.64', '4', '54', '109', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:19.658', '2016-06-04 10:21:19.658', '4', '55', '110', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:19.678', '2016-06-04 10:21:19.678', '4', '56', '111', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:21:19.658', '2016-06-04 10:21:19.72', '4', '55', '112', 'Develop Database version control Tool @shanghai', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:19.64', '2016-06-04 10:21:19.741', '4', '54', '113', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:21:19.658', '2016-06-04 10:21:19.759', '4', '55', '114', 'Develop Database version control Tool @shanghai', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:19.678', '2016-06-04 10:21:19.778', '4', '56', '115', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:19.798', '2016-06-04 10:21:19.798', '4', '57', '116', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:19.816', '2016-06-04 10:21:19.816', '4', '58', '117', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:19.798', '2016-06-04 10:21:19.981', '4', '57', '118', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:19.816', '2016-06-04 10:21:20', '4', '58', '119', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:26.201', '2016-06-04 10:21:26.201', '4', '59', '120', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:26.492', '2016-06-04 10:21:26.492', '4', '60', '121', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:26.512', '2016-06-04 10:21:26.512', '4', '61', '122', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:27.17', '2016-06-04 10:21:27.17', '4', '62', '123', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:27.192', '2016-06-04 10:21:27.192', '4', '63', '124', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:27.213', '2016-06-04 10:21:27.213', '4', '64', '125', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:21:27.192', '2016-06-04 10:21:27.268', '4', '63', '126', 'Develop Database version control Tool @shanghai', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:27.17', '2016-06-04 10:21:27.288', '4', '62', '127', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:21:27.192', '2016-06-04 10:21:27.304', '4', '63', '128', 'Develop Database version control Tool @shanghai', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:21:27.213', '2016-06-04 10:21:27.322', '4', '64', '129', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:27.344', '2016-06-04 10:21:27.344', '4', '65', '130', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:27.36', '2016-06-04 10:21:27.36', '4', '66', '131', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:21:27.344', '2016-06-04 10:21:27.526', '4', '65', '132', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:21:27.36', '2016-06-04 10:21:27.545', '4', '66', '133', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:23:24.23', '2016-06-04 10:23:24.23', '4', '67', '134', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:23:24.525', '2016-06-04 10:23:24.525', '4', '68', '135', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:23:24.548', '2016-06-04 10:23:24.548', '4', '69', '136', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:23:24.23', '2016-06-04 10:23:25.376', '4', '67', '137', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:23:24.525', '2016-06-04 10:23:25.394', '4', '68', '138', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:23:24.548', '2016-06-04 10:23:25.417', '4', '69', '139', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:23:25.535', '2016-06-04 10:23:25.535', '4', '70', '140', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:23:25.555', '2016-06-04 10:23:25.555', '4', '71', '141', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:23:25.575', '2016-06-04 10:23:25.575', '4', '72', '142', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:23:25.555', '2016-06-04 10:23:25.62', '4', '71', '143', 'Develop Database version control Tool @shanghai', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:23:25.535', '2016-06-04 10:23:25.638', '4', '70', '144', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 10:23:25.555', '2016-06-04 10:23:25.655', '4', '71', '145', 'Develop Database version control Tool @shanghai', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 10:23:25.575', '2016-06-04 10:23:25.673', '4', '72', '146', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:23:25.694', '2016-06-04 10:23:25.694', '4', '73', '147', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:23:25.713', '2016-06-04 10:23:25.713', '4', '74', '148', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 10:23:25.694', '2016-06-04 10:23:25.88', '4', '73', '149', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 10:23:25.713', '2016-06-04 10:23:25.9', '4', '74', '150', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 11:14:04.555', '2016-06-04 11:14:04.555', '4', '75', '151', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 11:14:04.906', '2016-06-04 11:14:04.906', '4', '76', '152', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 11:14:04.926', '2016-06-04 11:14:04.926', '4', '77', '153', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 11:14:04.555', '2016-06-04 11:14:05.967', '4', '75', '154', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 11:14:04.906', '2016-06-04 11:14:05.987', '4', '76', '155', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 11:14:04.926', '2016-06-04 11:14:06.003', '4', '77', '156', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 11:14:06.225', '2016-06-04 11:14:06.225', '4', '78', '157', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 11:14:06.252', '2016-06-04 11:14:06.252', '4', '79', '158', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 11:14:06.291', '2016-06-04 11:14:06.291', '4', '80', '159', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 11:14:06.252', '2016-06-04 11:14:06.352', '4', '79', '160', 'Develop Database version control Tool @shanghai', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 11:14:06.225', '2016-06-04 11:14:06.377', '4', '78', '161', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 11:14:06.252', '2016-06-04 11:14:06.416', '4', '79', '162', 'Develop Database version control Tool @shanghai', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 11:14:06.291', '2016-06-04 11:14:06.444', '4', '80', '163', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 11:14:06.474', '2016-06-04 11:14:06.474', '4', '81', '164', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 11:14:06.498', '2016-06-04 11:14:06.498', '4', '82', '165', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 11:14:06.474', '2016-06-04 11:14:06.828', '4', '81', '166', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 11:14:06.498', '2016-06-04 11:14:06.851', '4', '82', '167', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 11:14:08.218', '2016-06-04 11:14:08.218', '4', '83', '168', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 11:14:08.669', '2016-06-04 11:14:08.669', '4', '84', '169', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 11:14:08.694', '2016-06-04 11:14:08.694', '4', '85', '170', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 11:14:08.218', '2016-06-04 11:14:09.547', '4', '83', '171', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 11:14:08.669', '2016-06-04 11:14:09.571', '4', '84', '172', 'Develop Database version control Tool', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 11:14:08.694', '2016-06-04 11:14:09.589', '4', '85', '173', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 11:14:09.707', '2016-06-04 11:14:09.707', '4', '86', '174', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 11:14:09.729', '2016-06-04 11:14:09.729', '4', '87', '175', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 11:14:09.752', '2016-06-04 11:14:09.752', '4', '88', '176', 'Develop some AI　algorithm', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 11:14:09.729', '2016-06-04 11:14:09.797', '4', '87', '177', 'Develop Database version control Tool @shanghai', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 11:14:09.707', '2016-06-04 11:14:09.82', '4', '86', '178', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '7', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Algorithm', '3', '3', '2016-06-04 11:14:09.729', '2016-06-04 11:14:09.839', '4', '87', '179', 'Develop Database version control Tool @shanghai', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('AI Research', '2', 'shanghai', '2016-06-25', '12', 'LR', 'Distributed System', 'ML', 'Deep Learning', 'OCR', '3', '3', '2016-06-04 11:14:09.752', '2016-06-04 11:14:09.864', '4', '88', '180', 'Develop some AI　algorithm', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 11:14:09.884', '2016-06-04 11:14:09.884', '4', '89', '181', 'Use Java develop a HA system', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 11:14:09.904', '2016-06-04 11:14:09.904', '4', '90', '182', 'Develop Database version control Tool', 't');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Java HA Dev', '3', 'shanghai', '2016-06-25', '8', 'Java', 'Distributed System', 'Database', 'Golang', 'Network', '3', '3', '2016-06-04 11:14:09.884', '2016-06-04 11:14:10.074', '4', '89', '183', 'Use Java develop a HA system', 'f');
INSERT INTO "ss1604c195_rd4"."recruit_position_log" VALUES ('Database Tool Dev', '5', 'shanghai', '2016-06-28', '6', 'Mysql', 'SQL', 'Database', 'OS', 'Network', '3', '3', '2016-06-04 11:14:09.904', '2016-06-04 11:14:10.092', '4', '90', '184', 'Develop Database version control Tool', 'f');

-- ----------------------------
-- Table structure for recruit_published
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd4"."recruit_published";
CREATE TABLE "ss1604c195_rd4"."recruit_published" (
"publishedid" int4 DEFAULT nextval('"ss1604c195_rd4".recruit_published_publishedid_seq'::regclass) NOT NULL,
"poolid" int4,
"agencyid" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of recruit_published
-- ----------------------------
INSERT INTO "ss1604c195_rd4"."recruit_published" VALUES ('1', '1', '1');
INSERT INTO "ss1604c195_rd4"."recruit_published" VALUES ('2', '1', '2');
INSERT INTO "ss1604c195_rd4"."recruit_published" VALUES ('3', '1', '3');
INSERT INTO "ss1604c195_rd4"."recruit_published" VALUES ('4', '2', '4');
INSERT INTO "ss1604c195_rd4"."recruit_published" VALUES ('5', '2', '5');
INSERT INTO "ss1604c195_rd4"."recruit_published" VALUES ('6', '2', '1');
INSERT INTO "ss1604c195_rd4"."recruit_published" VALUES ('7', '3', '1');
INSERT INTO "ss1604c195_rd4"."recruit_published" VALUES ('8', '3', '2');
INSERT INTO "ss1604c195_rd4"."recruit_published" VALUES ('9', '3', '4');
INSERT INTO "ss1604c195_rd4"."recruit_published" VALUES ('10', '4', '3');
INSERT INTO "ss1604c195_rd4"."recruit_published" VALUES ('11', '4', '5');
INSERT INTO "ss1604c195_rd4"."recruit_published" VALUES ('12', '5', '1');
INSERT INTO "ss1604c195_rd4"."recruit_published" VALUES ('13', '5', '4');

-- ----------------------------
-- Table structure for sns_message
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd4"."sns_message";
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
-- Records of sns_message
-- ----------------------------

-- ----------------------------
-- Table structure for sns_timeline
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd4"."sns_timeline";
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
-- Records of sns_timeline
-- ----------------------------

-- ----------------------------
-- Table structure for staffing_change
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd4"."staffing_change";
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
-- Records of staffing_change
-- ----------------------------

-- ----------------------------
-- Table structure for staffing_change_log
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd4"."staffing_change_log";
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
-- Records of staffing_change_log
-- ----------------------------

-- ----------------------------
-- Table structure for test_comments
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd4"."test_comments";
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
-- Records of test_comments
-- ----------------------------
INSERT INTO "ss1604c195_rd4"."test_comments" VALUES ('23', '23', 'User4', 'user4@gmail.com', 'This is my new comment on post1', '2016-05-10 19:14:03.69');
INSERT INTO "ss1604c195_rd4"."test_comments" VALUES ('24', '24', 'User4', 'user4@gmail.com', 'This is my new comment on post1', '2016-05-10 19:16:20.752');
INSERT INTO "ss1604c195_rd4"."test_comments" VALUES ('25', '25', 'User4', 'user4@gmail.com', 'This is my new comment on post1', '2016-05-10 19:36:09.381');
INSERT INTO "ss1604c195_rd4"."test_comments" VALUES ('26', '26', 'User4', 'user4@gmail.com', 'This is my new comment on post1', '2016-05-18 15:11:08.43');
INSERT INTO "ss1604c195_rd4"."test_comments" VALUES ('27', '27', 'User4', 'user4@gmail.com', 'This is my new comment on post1', '2016-05-30 10:09:33.397');
INSERT INTO "ss1604c195_rd4"."test_comments" VALUES ('28', '28', 'User4', 'user4@gmail.com', 'This is my new comment on post1', '2016-05-30 10:38:34.05');
INSERT INTO "ss1604c195_rd4"."test_comments" VALUES ('29', '29', 'User4', 'user4@gmail.com', 'This is my new comment on post1', '2016-05-30 10:39:11.084');
INSERT INTO "ss1604c195_rd4"."test_comments" VALUES ('34', '34', 'User4', 'user4@gmail.com', 'This is my new comment on post1', '2016-05-30 11:06:07.985');
INSERT INTO "ss1604c195_rd4"."test_comments" VALUES ('36', '36', 'User4', 'user4@gmail.com', 'This is my new comment on post1', '2016-05-30 11:08:16.998');
INSERT INTO "ss1604c195_rd4"."test_comments" VALUES ('47', '47', 'User4', 'user4@gmail.com', 'This is my new comment on post1', '2016-05-30 11:41:39.555');
INSERT INTO "ss1604c195_rd4"."test_comments" VALUES ('48', '49', 'User4', 'user4@gmail.com', 'This is my new comment on post1', '2016-05-30 11:43:38.568');

-- ----------------------------
-- Table structure for test_posts
-- ----------------------------
DROP TABLE IF EXISTS "ss1604c195_rd4"."test_posts";
CREATE TABLE "ss1604c195_rd4"."test_posts" (
"ID" int4 DEFAULT nextval('"ss1604c195_rd4"."POSTS_ID_seq"'::regclass) NOT NULL,
"TITLE" varchar COLLATE "default" NOT NULL,
"CONTENT" text COLLATE "default",
"CREATED_ON" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of test_posts
-- ----------------------------
INSERT INTO "ss1604c195_rd4"."test_posts" VALUES ('23', 'My new Post', 'This is my new test post', '2016-05-10 19:14:02.922');
INSERT INTO "ss1604c195_rd4"."test_posts" VALUES ('24', 'My new Post', 'This is my new test post', '2016-05-10 19:16:19.773');
INSERT INTO "ss1604c195_rd4"."test_posts" VALUES ('25', 'My new Post', 'This is my new test post', '2016-05-10 19:36:08.665');
INSERT INTO "ss1604c195_rd4"."test_posts" VALUES ('26', 'My new Post', 'This is my new test post', '2016-05-18 15:11:07.385');
INSERT INTO "ss1604c195_rd4"."test_posts" VALUES ('27', 'My new Post', 'This is my new test post', '2016-05-30 10:09:32.418');
INSERT INTO "ss1604c195_rd4"."test_posts" VALUES ('28', 'My new Post', 'This is my new test post', '2016-05-30 10:38:33.256');
INSERT INTO "ss1604c195_rd4"."test_posts" VALUES ('29', 'My new Post', 'This is my new test post', '2016-05-30 10:39:10.376');
INSERT INTO "ss1604c195_rd4"."test_posts" VALUES ('34', 'My new Post', 'This is my new test post', '2016-05-30 11:06:07.283');
INSERT INTO "ss1604c195_rd4"."test_posts" VALUES ('36', 'My new Post', 'This is my new test post', '2016-05-30 11:08:16.669');
INSERT INTO "ss1604c195_rd4"."test_posts" VALUES ('47', 'My new Post', 'This is my new test post', '2016-05-30 11:41:38.693');
INSERT INTO "ss1604c195_rd4"."test_posts" VALUES ('48', 'My new Post', 'This is my new test post', '2016-05-30 11:41:54.517');
INSERT INTO "ss1604c195_rd4"."test_posts" VALUES ('49', 'My new Post', 'This is my new test post', '2016-05-30 11:43:38.269');

-- ----------------------------
-- View structure for vi_recruit_applyment_history
-- ----------------------------
CREATE OR REPLACE VIEW "ss1604c195_rd4"."vi_recruit_applyment_history" AS 
 SELECT a.steid,
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
   FROM (((((( SELECT recruit_applyment_log.steid,
            recruit_applyment_log.positionid,
            recruit_applyment_log.state,
            recruit_applyment_log.updatedby,
            recruit_applyment_log.createdat,
            recruit_applyment_log.updatedat,
            recruit_applyment_log.applymentid,
            recruit_applyment_log.id
           FROM ss1604c195_rd4.recruit_applyment_log
          WHERE (recruit_applyment_log.createdat > ((now())::date - 100))) a
     JOIN ss1604c195_rd4.recruit_position b ON ((a.positionid = b.positionid)))
     JOIN ss1604c195_rd4.info_department c ON ((b.departmentid = c.departmentid)))
     LEFT JOIN ss1604c195_rd4.info_fte d ON (((a.updatedby = d.fteid) AND (a.state > 1))))
     LEFT JOIN ss1604c195_rd4.info_department e ON ((d.departmentid = e.departmentid)))
     LEFT JOIN ss1604c195_rd4.recruit_interview f ON ((a.applymentid = f.applymentid)));

-- ----------------------------
-- View structure for vi_recruit_interview_context
-- ----------------------------
CREATE OR REPLACE VIEW "ss1604c195_rd4"."vi_recruit_interview_context" AS 
 SELECT i.interviewid,
    i.starttime,
    i.endtime,
    i.location,
    i.contact_person,
    i.contact_phone,
    i.replenish,
    i.applymentid,
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
   FROM ((((ss1604c195_rd4.recruit_interview i
     JOIN ss1604c195_rd4.recruit_applyment a ON ((i.applymentid = a.applymentid)))
     JOIN ss1604c195_rd4.recruit_position p ON ((a.positionid = p.positionid)))
     JOIN ss1604c195_rd4.info_department d ON ((p.departmentid = d.departmentid)))
     JOIN ss1604c195_rd4.info_ste s ON ((a.steid = s.steid)));

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
-- Indexes structure for table check_attendance
-- ----------------------------
CREATE INDEX "check_attendance_steid_idx" ON "ss1604c195_rd4"."check_attendance" USING btree (steid);
CREATE INDEX "check_attendance_steid_idx1" ON "ss1604c195_rd4"."check_attendance" USING btree (steid);
CREATE INDEX "check_attendance_steid_idx2" ON "ss1604c195_rd4"."check_attendance" USING btree (steid);
CREATE INDEX "check_attendance_steid_idx3" ON "ss1604c195_rd4"."check_attendance" USING btree (steid);
CREATE INDEX "check_attendance_steid_idx4" ON "ss1604c195_rd4"."check_attendance" USING btree (steid);
CREATE INDEX "check_attendance_steid_idx5" ON "ss1604c195_rd4"."check_attendance" USING btree (steid);

-- ----------------------------
-- Primary Key structure for table check_attendance
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."check_attendance" ADD PRIMARY KEY ("attendanceid");

-- ----------------------------
-- Indexes structure for table check_performance
-- ----------------------------
CREATE INDEX "check_performance_steid_idx" ON "ss1604c195_rd4"."check_performance" USING btree (steid);

-- ----------------------------
-- Primary Key structure for table check_performance
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."check_performance" ADD PRIMARY KEY ("performanceid");

-- ----------------------------
-- Indexes structure for table check_skill
-- ----------------------------
CREATE INDEX "check_skill_steid_idx" ON "ss1604c195_rd4"."check_skill" USING btree (steid);

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
-- Indexes structure for table info_department
-- ----------------------------
CREATE INDEX "info_department_parent_departmentid_idx" ON "ss1604c195_rd4"."info_department" USING btree (parent_departmentid);

-- ----------------------------
-- Primary Key structure for table info_department
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."info_department" ADD PRIMARY KEY ("departmentid");

-- ----------------------------
-- Indexes structure for table info_fte
-- ----------------------------
CREATE INDEX "info_fte_departmentid_idx" ON "ss1604c195_rd4"."info_fte" USING btree (departmentid);

-- ----------------------------
-- Primary Key structure for table info_fte
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."info_fte" ADD PRIMARY KEY ("fteid");

-- ----------------------------
-- Indexes structure for table info_ste
-- ----------------------------
CREATE INDEX "info_ste_departmentid_idx" ON "ss1604c195_rd4"."info_ste" USING btree (departmentid);
CREATE INDEX "info_ste_positionid_idx" ON "ss1604c195_rd4"."info_ste" USING btree (positionid);
CREATE INDEX "info_ste_positionid_idx1" ON "ss1604c195_rd4"."info_ste" USING btree (positionid);

-- ----------------------------
-- Primary Key structure for table info_ste
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."info_ste" ADD PRIMARY KEY ("steid");

-- ----------------------------
-- Primary Key structure for table recruit_agency
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."recruit_agency" ADD PRIMARY KEY ("agencyid");

-- ----------------------------
-- Indexes structure for table recruit_applyment
-- ----------------------------
CREATE INDEX "recruit_applyment_positionid_idx" ON "ss1604c195_rd4"."recruit_applyment" USING btree (positionid);
CREATE INDEX "recruit_applyment_steid_idx" ON "ss1604c195_rd4"."recruit_applyment" USING btree (steid);

-- ----------------------------
-- Triggers structure for table recruit_applyment
-- ----------------------------
CREATE TRIGGER "tr_recruit_applyment_insert" AFTER INSERT ON "ss1604c195_rd4"."recruit_applyment"
FOR EACH ROW
EXECUTE PROCEDURE "ss1604c195_rd4"."fn_recruit_applyment_insert"();
CREATE TRIGGER "tr_recruit_applyment_update" AFTER UPDATE ON "ss1604c195_rd4"."recruit_applyment"
FOR EACH ROW
EXECUTE PROCEDURE "ss1604c195_rd4"."fn_recruit_applyment_update"();

-- ----------------------------
-- Primary Key structure for table recruit_applyment
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."recruit_applyment" ADD PRIMARY KEY ("applymentid");

-- ----------------------------
-- Primary Key structure for table recruit_applyment_log
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."recruit_applyment_log" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table recruit_interview
-- ----------------------------
CREATE INDEX "recruit_interview_applymentid_idx" ON "ss1604c195_rd4"."recruit_interview" USING btree (applymentid);

-- ----------------------------
-- Primary Key structure for table recruit_interview
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."recruit_interview" ADD PRIMARY KEY ("interviewid");

-- ----------------------------
-- Indexes structure for table recruit_pool
-- ----------------------------
CREATE INDEX "recruit_pool_positionid_idx" ON "ss1604c195_rd4"."recruit_pool" USING btree (positionid);

-- ----------------------------
-- Triggers structure for table recruit_pool
-- ----------------------------
CREATE TRIGGER "tr_recruit_pool_insert" AFTER INSERT ON "ss1604c195_rd4"."recruit_pool"
FOR EACH ROW
EXECUTE PROCEDURE "ss1604c195_rd4"."fn_recruit_pool_insert"();
CREATE TRIGGER "tr_recruit_pool_update" AFTER UPDATE ON "ss1604c195_rd4"."recruit_pool"
FOR EACH ROW
EXECUTE PROCEDURE "ss1604c195_rd4"."fn_recruit_pool_update"();

-- ----------------------------
-- Primary Key structure for table recruit_pool
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."recruit_pool" ADD PRIMARY KEY ("poolid");

-- ----------------------------
-- Primary Key structure for table recruit_pool_log
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."recruit_pool_log" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table recruit_position
-- ----------------------------
CREATE INDEX "recruit_position_departmentid_idx" ON "ss1604c195_rd4"."recruit_position" USING btree (departmentid);

-- ----------------------------
-- Triggers structure for table recruit_position
-- ----------------------------
CREATE TRIGGER "tr_recruit_position_insert" AFTER INSERT ON "ss1604c195_rd4"."recruit_position"
FOR EACH ROW
EXECUTE PROCEDURE "ss1604c195_rd4"."fn_recruit_position_insert"();
CREATE TRIGGER "tr_recruit_position_update" AFTER UPDATE ON "ss1604c195_rd4"."recruit_position"
FOR EACH ROW
EXECUTE PROCEDURE "ss1604c195_rd4"."fn_recruit_position_update"();

-- ----------------------------
-- Primary Key structure for table recruit_position
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."recruit_position" ADD PRIMARY KEY ("positionid");

-- ----------------------------
-- Primary Key structure for table recruit_position_log
-- ----------------------------
ALTER TABLE "ss1604c195_rd4"."recruit_position_log" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table recruit_published
-- ----------------------------
CREATE INDEX "recruit_published_agencyid_idx" ON "ss1604c195_rd4"."recruit_published" USING btree (agencyid);

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
-- Indexes structure for table staffing_change
-- ----------------------------
CREATE INDEX "staffing_change_from_positionid_idx" ON "ss1604c195_rd4"."staffing_change" USING btree (from_positionid);
CREATE INDEX "staffing_change_steid_idx" ON "ss1604c195_rd4"."staffing_change" USING btree (steid);
CREATE INDEX "staffing_change_to_positionid_idx" ON "ss1604c195_rd4"."staffing_change" USING btree (to_positionid);

-- ----------------------------
-- Triggers structure for table staffing_change
-- ----------------------------
CREATE TRIGGER "tr_staffing_change_insert" AFTER INSERT ON "ss1604c195_rd4"."staffing_change"
FOR EACH ROW
EXECUTE PROCEDURE "ss1604c195_rd4"."fn_staffing_change_insert"();
CREATE TRIGGER "tr_staffing_change_update" AFTER UPDATE ON "ss1604c195_rd4"."staffing_change"
FOR EACH ROW
EXECUTE PROCEDURE "ss1604c195_rd4"."fn_staffing_change_update"();

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
