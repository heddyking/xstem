create or replace view vi_career_each_month as
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
x.month

from

(
select 
info_ste.steid,
info_ste.name,
info_ste.positionid,
info_ste.departmentid,
info_department.departmentname,
recruit_position.positionname,
count(a.steid) as attendanceNums,
sum(a.hours) as attendanceHours,
substring(date_trunc('month', a.date)||'' from 0 for 8) as month

from (select * from check_attendance where state=2 and date < date_trunc('month', now()) - interval '1 second') as a
join info_ste on info_ste.steid=a.steid
join info_department on info_ste.departmentid=info_department.departmentid
join recruit_position on info_ste.positionid=recruit_position.positionid
group by 
info_ste.steid,
info_ste.name,
info_ste.positionid,
info_ste.departmentid,
info_department.departmentname,
recruit_position.positionname,
substring(date_trunc('month', a.date)||'' from 0 for 8)
) as x

left join

(
select 
info_ste.steid,
info_ste.name,
info_ste.positionid,
info_ste.departmentid,
info_department.departmentname,
recruit_position.positionname,
count(a.steid) as performanceNums,
sum(a.hours) as performanceHours,
substring(date_trunc('month', a.week_lastday)||'' from 0 for 8) as month

from (select * from check_performance where state=2 and week_lastday < date_trunc('month', now()) - interval '1 second') as a
join info_ste on info_ste.steid=a.steid
join info_department on info_ste.departmentid=info_department.departmentid
join recruit_position on info_ste.positionid=recruit_position.positionid
group by 
info_ste.steid,
info_ste.name,
info_ste.positionid,
info_ste.departmentid,
info_department.departmentname,
recruit_position.positionname,
substring(date_trunc('month', a.week_lastday)||'' from 0 for 8)
) as y

on x.steid=y.steid and x.month=y.month
