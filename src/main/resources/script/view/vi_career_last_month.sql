create or replace view vi_career_last_month as
select 
x.steid,
x.name,
x.positionid,
x.departmentid,
x.positionname,
x.departmentname,
x.attendanceNums,
x.attendanceHours,
y.performanceNums,
y.performanceHours,
substring((date_trunc('month', now()) - interval '1 month')||'' from 0 for 8)  as month

from

(select 
info_ste.steid,
info_ste.name,
info_ste.positionid,
info_ste.departmentid,
info_department.departmentname,
recruit_position.positionname,
count(a.steid) as attendanceNums,
sum(a.hours) as attendanceHours
from (select * from check_attendance where state=2 and date between date_trunc('month', now()) - interval '1 month' and date_trunc('month', now()) - interval '1 day') as a
join info_ste on info_ste.steid=a.steid
join info_department on info_ste.departmentid=info_department.departmentid
join recruit_position on info_ste.positionid=recruit_position.positionid
group by 
info_ste.steid,
info_ste.name,
info_ste.positionid,
info_ste.departmentid,
info_department.departmentname,
recruit_position.positionname) as x

left join

(select 
info_ste.steid,
info_ste.name,
info_ste.positionid,
info_ste.departmentid,
info_department.departmentname,
recruit_position.positionname,
count(a.steid) as performanceNums,
sum(a.hours) as performanceHours

from (select * from check_performance where state=2 and week_lastday between date_trunc('month', now()) - interval '1 month' and date_trunc('month', now()) - interval '1 day') as a
join info_ste on info_ste.steid=a.steid
join info_department on info_ste.departmentid=info_department.departmentid
join recruit_position on info_ste.positionid=recruit_position.positionid
group by 
info_ste.steid,
info_ste.name,
info_ste.positionid,
info_ste.departmentid,
info_department.departmentname,
recruit_position.positionname) as y

on x.steid=y.steid
