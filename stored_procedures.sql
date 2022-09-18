delimiter $
drop procedure if exists proc1$
create procedure proc1(usernameEmpl varchar(12))
	begin
	declare nameEmpl varchar(12);
	declare surnameEmpl varchar(25);
	declare appliesEmpl tinyint(4);
	declare grade1Empl int(4);
	declare grade2Empl int(4);
	declare grade3Empl int(4);
	declare gradeEmpl int(4);
	declare evaluator varchar(12);
select username
	into  usernameEmpl
	from user
	where nameEmpl=name AND surnameEmpl=surname;
select num_applies
	into appliesEmpl
	from applies
	where employee_username=usernameEmpl;
select grade
	into gradeEmpl
	from evaluationresult 
	where empl_usrname=usernameEmpl;
select evaluator_username
	into evaluator
	from interview1
	where employee_username=usernameEmpl;
select  int_grade
	into grade1Empl
	from interview1
	where employee_username=usernameEmpl;
select  int2_grade
	into grade2Empl
	from interview2
	where employee_username=usernameEmpl;
select  int3_grade
	into grade3Empl 
	from interview3
	where employee_username=usernameEmpl;
if (gradeEmpl=0) then 
	select "Aksiologisi se Ekseliksi";
	select  gradeEmpl,grade1Empl,grade2Empl,grade3Empl;
else 
   select num_applies 
   from applies
   where employee_username=usernameEmpl;
   select name 
   from user
   where username=evaluator;
   select surname 
   from user
   where username=evaluator;
   select gradeEmpl,grade1Empl,grade2Empl,grade3Empl;
end if;
end $ 

drop procedure if exists proc2$
create procedure proc2(in myid int(4), in evaluatorId varchar(12))
	begin
	declare aksOlikh int(4);
	declare aks1 int(4);
	declare aks2 int(4);
	declare aks3 int(4);
	declare employeeId varchar(12);
select int_grade
	into aks1
	from interview1
	where evaluator_username=evaluatorId;
select int2_grade
	into aks2
	from interview2
	where evaluator_username=evaluatorId;
select employee_username
	into employeeId
	from interview1
	where evaluator_username=evaluatorId;
select int3_grade
	into aks3
	from interview3
	where employee_username=employeeId;
	if(aks1!=0 and aks2!=0 and aks3!=0) then 
select result
	into aksOlikh
	from yp_interview
	where aksiologhsh1=aks1 and aksiologhsh2=aks2 and
	 aksiologhsh3=aks3 ;
	 select "H aksiologhsh oristikopoih8hke";
	 update evaluationresult
	 	set grade=aksOlikh
	 	where job_id=myid;
	 	select aksOlikh;
    else
    select "Den yparxei va8mos se oles tis aksiologhseis";
	end if;
	 	end $
	 	
	 drop procedure if exists proc3$
	 create procedure proc3(in thesi int(4))
	 	begin
	 	declare ekremoun int(4);
	 	declare flag int(4);
	 	declare mygrade int(4);
	 	declare ypopshf varchar(12);
	 	declare statement int(4);
	 	DECLARE finishedFlag INT;
	 	DECLARE my_empl_usrname varchar(12);
	 	DECLARE my_result int(4); 
	 	DECLARE maincur cursor FOR
	 	select empl_usrname,grade from evaluationresult
	    where job_id=thesi;
	    DECLARE CONTINUE HANDLER FOR NOT FOUND SET finishedFlag=1;
	    OPEN maincur;
	    SET finishedFlag=0;
	    REPEAT
	    FETCH maincur INTO my_empl_usrname,my_result;
	    IF (finishedFlag=0) THEN
	    SELECT my_empl_usrname AS 'EMPLOYEE_USERNAME',my_result
	    AS 'FINAL_RESULT';
	    END IF;
        UNTIL (finishedFlag=1)
        END REPEAT; 
        CLOSE maincur;
		set @x=0;
	select num_applies
		into flag
		from applies
		where job_id=thesi;
	while flag>0 do 
	 select grade
		into mygrade
		from evaluationresult
		where job_id=thesi;  
	if mygrade!=null then 
		set @x=@x+1;
		else 
		set ekremoun=ekremoun+1;
	end if;
		set flag=flag-1;
	end while;
	select num_applies
		into flag
		from applies
		where job_id=thesi;
	if  @x=flag then 
	select "Oristikopoihmenoi pinakes";
	select empl_usrname
		from evaluationresult
		where job_id=thesi
		order by grade desc;
	select grade
	    from evaluationresult
	    where job_id=thesi
	    order by grade desc;
	end if;
	if ekremoun!=0 then
	select grade
	    from evaluationresult
	    where job_id=thesi
	    order by grade desc;
		select "Aksiologisi se ekseliksi....";
		select "Ekremoun...";
		select ekremoun;
	end if;
	if flag=0 then 
		select "Den vre8hkan ypopshfioi gia thn thesi";
	end if;
		end $

		






		

















