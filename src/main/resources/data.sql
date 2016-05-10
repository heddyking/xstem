insert into info_department (departmentid,departmentname,parent_departmentid) values (1,'committee',null);
insert into info_department (departmentid,departmentname,parent_departmentid) values (2,'hr',1);
insert into info_department (departmentid,departmentname,parent_departmentid) values (3,'tech',1);
insert into info_department (departmentid,departmentname,parent_departmentid) values (4,'dev',3);
insert into info_department (departmentid,departmentname,parent_departmentid) values (5,'qa',3);

insert into info_fte (fteid,birthday,departmentid,email,email_self,gender,"location","name",phone,"role",telephone) values(1,'1990-1-1',2,'shuimuyanyuan@qq.com','shuimuyanyuan@qq.com',false,'shanghai','Zhang Joy','02154742387',1,'13866666666');
insert into info_fte (fteid,birthday,departmentid,email,email_self,gender,"location","name",phone,"role",telephone) values(2,'1990-1-2',2,'hr@qq.com','hr@qq.com',true,'shanghai','Wang Ming','02154742388',2,'13866688888');
insert into info_fte (fteid,birthday,departmentid,email,email_self,gender,"location","name",phone,"role",telephone) values(3,'1990-1-3',4,'mg1@qq.com','mg1@qq.com',true,'shanghai','Wang Xiao','02154742389',3,'13866689999');
insert into info_fte (fteid,birthday,departmentid,email,email_self,gender,"location","name",phone,"role",telephone) values(4,'1990-1-4',5,'mg2@qq.com','mg2@qq.com',true,'shanghai','Wang Xi','02154742380',3,'13866680000');

insert into info_account (accountid,email,"password",refid,"role") values(1,'shuimuyanyuan@qq.com','123',1,1);
insert into info_account (accountid,email,"password",refid,"role") values(2,'hr@qq.com','123',2,2);
insert into info_account (accountid,email,"password",refid,"role") values(3,'mg1@qq.com','123',3,3);
insert into info_account (accountid,email,"password",refid,"role") values(4,'mg2@qq.com','123',4,3);

