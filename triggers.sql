delimiter $
create trigger logs1
	after insert on job 
	for each row
	begin 
	declare insJ int(4);
	declare ins_usrJ varchar(12);
	declare currdate1 datetime;
	select id into insJ from job;
	select username into ins_usrJ from user;
	insert into log(inserted_job,ins_usernameJ,
		ins_conditionJ,on1)
		values (insJ,ins_usrJ,"YES", "JOB");
	insert into log(date_insJ)
		values (NOW());
		end$

create trigger logs2
	after update on job
	for each row 
	begin
	declare updJ int(4);
	declare upd_usrJ varchar(12);
	declare upd_condJ enum("YES","NO");
	declare o1 enum("JOB","EMPLOYEE","REQUESTSEVALUATION"); 
	select id into updJ from job;
	select username into upd_usrJ from user;
	if (old.id!=updJ) then 
	set upd_condJ="YES";
    else
     set upd_condJ="NO";
	end if;
	insert into log(updated_job,upd_usernameJ
		,on1)
		values (updJ,upd_usrJ,"JOB");
		insert into log(date_updJ)
		values (NOW());
		end$

create trigger logs3
	after delete on job
	for each row
	begin
	declare delJ int(4);
	declare del_usrJ varchar(12);
	declare del_condJ enum("YES","NO");
	declare o1 enum("JOB","EMPLOYEE","REQUESTSEVALUATION");
	select id into delJ from job;
	select username into del_usrJ from user;
	if (old.id=delJ) then
	 set del_condJ="YES";
	else
	 set del_condJ="NO";
	 end if;
	insert into log(deleted_job,del_usernameJ,on1)
		values (delJ,del_usrJ,"JOB");
		end$

create trigger logs4
	after insert on employee
	for each row 
	begin 
	declare insE varchar(12);
	declare currdate4 datetime;
	declare ins_condE  enum("YES","NO");
	declare o2 enum("JOB","EMPLOYEE","REQUESTSEVALUATION");
	select username into insE from employee;
	set currdate4=GETDATE();
	insert into log(inserted_employee,ins_usernameE,
		ins_conditionE,date_insE,on2)
	values (insE,insE,"YES",currdate4,"EMPLOYEE");
	end$

create trigger logs5
	after update on employee
	for each row 
	begin
	declare updE varchar(12);
	declare currdate5 datetime;
	declare upd_condE enum("YES","NO");
	declare o2 enum("JOB","EMPLOYEE","REQUESTSEVALUATION");
	select username into updE from employee;
	set currdate5=GETDATE();
	if (old.username!=updE) then
	 set upd_condE="YES";
	else 
	set upd_condE="NO";
	end if;
	insert into log(updated_employee,upd_usernameE
	,date_updE,on2)
	values (updE,updE,currdate5,"EMPLOYEE");
	end$ 

create trigger logs6
	after delete on employee
	for each row 
	begin 
	declare delE varchar(12);
	declare currdate6 datetime;
	declare del_condE enum("YES","NO");
	declare o2 enum("JOB","EMPLOYEE","REQUESTSEVALUATION");
	select username into delE from employee;
	set currdate6=GETDATE();
	if (old.username=delE) then
	 set del_condE="YES";
	else
	 set del_condE="NO";
	end if;
	insert into log(deleted_employee,del_usernameE,
		date_delE,on2)
	values (delE,delE,currdate6,"EMPLOYEE");
	end$

create trigger logs7
	after insert on requestsevaluation 
	for each row 
	begin 
	declare insR int(4);
	declare ins_userR varchar(12);
	declare currdate7 datetime;
	declare ins_condR enum("YES","NO");
	declare o3 enum("JOB","EMPLOYEE","REQUESTSEVALUATION");
	select job_id into insR from requestsevaluation;
	select empl_usrname into ins_userR from requestsevaluation;
	set currdate7=GETDATE();
	insert into log(inserted_requestev,ins_usernameR,
		ins_conditionR,date_insR,on3)
	values(insR,ins_userR,"YES",currdate7,
		"REQUESTSEVALUATION");
	end $ 

create trigger logs8
	after update on requestsevaluation
	for each row 
	begin 
	declare updR int(4);
	declare upd_userR varchar(12);
	declare currdate8 datetime;
	declare upd_condR enum("YES","NO");
	declare o3 enum("JOB","EMPLOYEE","REQUESTSEVALUATION");
	select job_id into updR from requestsevaluation;
	select empl_usrname into upd_userR from requestsevaluation;
	set currdate8=GETDATE();
	if (old.job_id!=updR) then 
	set upd_condR="YES";
	else 
	set upd_condR="NO";
	end if;
	insert into log(updated_requestev,upd_usernameR,
	date_updR,on3)
	values(updR,upd_userR,currdate8,"REQUESTSEVALUATION");
	end $

create trigger logs9
	after delete on requestsevaluation
	for each row
	begin 
	declare delR int(4);
	declare del_userR varchar(12);
	declare currdate9 datetime;
	declare del_condR enum("YES","NO");
	declare o3 enum("JOB","EMPLOYEE","REQUESTSEVALUATION");
	select job_id into delR from requestsevaluation;
	select empl_usrname into del_userR from requestsevaluation;
	set currdate9=GETDATE();
	if (old.job_id=delR) then 
	set del_condR="YES";
	else 
	set del_condR="NO";
	end if;
	insert into log(deleted_requestev,del_usernameR,
		date_delR,on3)
	values(delR,del_userR,currdate9,"REQUESTSEVALUATION");
	end $

create trigger logs10
	before update on company 
	for each row 
	begin 
	declare oldAFM char(9);
	declare oldDOY varchar(15);
	declare oldNAME varchar(35);
	declare newphone bigint(16);
	declare newstreet varchar(15);
	declare newnum tinyint(4);
	declare newcity varchar(15);
	declare newcountry varchar(15);
	select old.AFM into oldAFM;
	select old.DOY into oldDOY;
	select old.name into oldNAME;
	select new.phone into newphone;
	select new.street into newstreet;
	select new.num into newnum;
	select new.city into newcity;
	select new.country into newcountry;
	insert into company(AFM,DOY,name,phone,street,num,city,
	country)
	values(oldAFM,oldDOY,oldNAME,newphone,newstreet,
		newnum,newcity,newcountry);
	end $

create trigger logs11
	before insert on user
	for each row 
	begin 
	declare user1 varchar(12);
	declare userif varchar(12);
	select username into user1 from user;
	select adminUsername into userif from administrator;
	if (user1!=userif) then 
	signal sqlstate value "45000"
	set message_text= "You have no admin privilages";
	end if;
	end$










