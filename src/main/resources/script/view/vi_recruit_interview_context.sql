create or replace view vi_recruit_interview_context as
select 
i.*,
a."state",
a.createdat,
a.updatedat,
a.updatedby,
p.positionname,
p."number",
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
s."name",
s.birthday,
s.gender,
s.email,
s.email_self,
s.phone,
s.telephone,
s.skills,
s.experiences,
s.resume_url
from recruit_interview as i
join recruit_applyment as a on i.applymentid=a.applymentid
join recruit_position as p on a.positionid=p.positionid
join info_department as d on p.departmentid=d.departmentid
join info_ste as s on a.steid=s.steid
