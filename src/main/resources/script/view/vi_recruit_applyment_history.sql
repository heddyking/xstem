create or replace view vi_recruit_applyment_history as
select 
a.*,
b.positionname,
b.date_req,
b.duration_req,
b.location_req,
b."number",
b.skill_req1,
b.skill_req2,
b.skill_req3,
b.skill_req4,
b.skill_req5,
b.description,
c.departmentname,
d."name" as fte_name,
d.email as fte_email,
d.email_self as fte_email_self,
d.phone as fte_phone,
d.telephone as fte_telephone,
e.departmentname as fte_departmentname,
f.interviewid,
f.contact_person as inv_contact_person,
f.contact_phone as inv_contact_phone,
f.starttime as inv_starttime,
f.endtime as inv_endtime,
f."location" as inv_location,
f.replenish as inv_replenish
from 
(select * from recruit_applyment_log where createdAt > now()::date-100) as a
join recruit_position as b on a.positionid=b.positionid
join info_department as c on b.departmentid=c.departmentid
left join info_fte as d on a.updatedby=d.fteid and a.state > 1
left join info_department as e on d.departmentid=e.departmentid
left join recruit_interview as f on a.applymentid=f.applymentid;
