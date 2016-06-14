CREATE OR REPLACE VIEW "ss1604c195_rd2"."vi_recruit_applyment_history" AS
 SELECT 
		a.steid,
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
   FROM (((((( SELECT recruit_applyment_log.steid,
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
		 JOIN ss1604c195_rd2.info_ste g ON a.steid=g.steid;