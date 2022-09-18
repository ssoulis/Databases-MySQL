

create database staffevaluation;
use staffevaluation;


create table company(
AFM char(9) default "unknown" not null,
DOY varchar(15) default "unknown" not null,
name varchar(35) default "unknown" not null,
phone bigint(16)  not null,
street varchar(15) default "unknown" not null,
num tinyint(4) default "0" not null,
city varchar(15) default "unknown" not null,
country varchar(15) default "unknown" not null,
primary key (AFM)
)engine=InnoDB;


create table user(
username varchar(12) default "unknown" not null,
password varchar(10) default "unknown" not null,
name varchar(25) default "unknown" not null,
surname varchar(25) default "unknown" not null,
reg_date datetime  not null,
email varchar(30) default "unknown" not null,
primary key (username)
)engine=InnoDB;

create table administrator(
adminUsername varchar(12) default "unknown" not null,
adminPassword varchar(10) default "unknown" not null,
adminName varchar(25) default "unknown" not null,
adminSurname varchar(25) default "unknown" not null,
primary key (adminUsername)
)engine=InnoDB;


create table manager(
managerUsername varchar(12) default "unknown" not null,
exp_years tinyint(4) default "0" not null,
firm char(9) default "unknown" not null,
primary key (managerUsername),
constraint mngu 
foreign key (managerUsername) references user(username)
on update cascade on delete cascade 
)engine=InnoDB;


create table employee(
username varchar(12) default "unknown" not null,
bio text ,
sistatikes varchar(35) default "no sistatikes found" 
not null,
certificates varchar(35) default "no certificates found"
not null,
awards varchar(35) default "no rewards found" not null,
my_afm char(9) default "unknown" not null,
AM int(4) not null AUTO_INCREMENT,
Eexp_years tinyint(4) default "0" not null,
primary key (AM,username),
constraint usremp
foreign key (username) references user(username)
on update cascade on delete cascade,
constraint afemp
foreign key (my_afm) references company(AFM)
on update cascade on delete cascade
)engine=InnoDB;


create table evaluator(
username varchar(12) default "unknown" not null,
exp_years tinyint(4) default "0" not null,
firm char(9) default "unknown" not null,
primary key (username),
constraint usrev
foreign key (username) references user(username)
on update cascade on delete cascade,
constraint firmev
foreign key (firm) references company(AFM)
on update cascade on delete cascade
)engine=InnoDB;

create table job(
id int(4) default "0" not null,
start_date date,
salary float(6,1) default "0.00" not null,
position varchar(40) default "unknown" not null,
edra varchar(45) default "unknown" not null,
evaluator varchar(12) default "unknown" not null,
announce_date datetime,
submission_date date,
primary key (id), 
constraint evjob
foreign key (evaluator) references evaluator(username)
on update cascade on delete cascade
)engine=InnoDB;




create table antikeim(
title varchar(36) default "unknown" not null,
descr tinytext,
belongs_to varchar(36) default "unknown" not null,
primary key (title),
constraint belant
foreign key (belongs_to) references antikeim(title)
on update cascade on delete cascade
)engine=InnoDB;

create table needs(
job_id int(4) default "0" not null,
antikeim_title varchar(36) default "unknown" not null,
primary key (job_id,antikeim_title),
constraint jbne
foreign key (job_id) references job(id)
on update cascade on delete cascade,
constraint antikm
foreign key (antikeim_title) references antikeim(title)
on update cascade on delete cascade
)engine=InnoDB;




create table project(
empl varchar(12) default "unknown" not null,
num tinyint(4)  not null AUTO_INCREMENT,
descr text ,
url varchar(60) default "unknown" not null,
primary key (num,empl),
constraint empro
foreign key (empl) references employee(username)
on delete cascade on update cascade
)engine=InnoDB;


create table languages(
employee varchar(12) default "unknown" not null,
lang set ("EN","FR","SP","GR"),
primary key (employee,lang),
constraint emplan
foreign key (employee) references employee(username)
on update cascade on delete cascade
)engine=InnoDB;


create table degree(
titlos varchar(50) default "unknown" not null,
idryma varchar(40) default "unknown" not null,
bathmida enum("LYKEIO","UNIV","MASTER","PHD"),
primary key (titlos),
unique (idryma)
)engine=InnoDB;



create table has_degree(
degr_title varchar(50) default "unknown" not null,
degr_idryma varchar(40) default "unknown" not null,
empl_usrname varchar(12) default "unknown" not null,
etos year(4) not null,
grade float(3,1) default "0.00" not null,
primary key (degr_title,degr_idryma,empl_usrname),
constraint titdeg
foreign key (degr_title) references degree(titlos)
on update cascade on delete cascade,
constraint idrdeg
foreign key (degr_idryma) references degree(idryma)
on update cascade on delete cascade,
constraint usrdeg
foreign key (empl_usrname) references employee(username)
on update cascade on delete cascade
)engine=InnoDB;


create table  requestsevaluation(
empl_usrname varchar(12) default "unknown" not null,
job_id int(4)  default "0" not null,
primary key (empl_usrname,job_id), 
constraint requsr
foreign key (empl_usrname) references employee(username)
on update cascade on delete cascade,
constraint reqjob
foreign key (job_id) references job(id)
on update cascade on delete cascade
)engine=InnoDB;


create table applies(
job_id int(4) default "0" not null,
employee_username varchar(12) default "unknown" not null,
num_applies tinyint(4) default "0" not null,
constraint appjob
foreign key (job_id) references job(id)
on update cascade on delete cascade,
constraint appusr
foreign key (employee_username) references employee(username)
on update cascade on delete cascade
)engine=InnoDB;


create table interview1(
evaluator_username varchar(12) default "unknown" not null,
employee_username varchar(12) default "unknown" not null,
int_grade enum("0","1","2","3","4") not null,
int_comments varchar(255) default "unknown" not null,
primary key (evaluator_username,employee_username),
constraint intvev
foreign key (evaluator_username) references evaluator(username)
on update cascade on delete cascade,
constraint intvempl
foreign key (employee_username) references employee(username)
on update cascade on delete cascade
)engine=InnoDB;


create table interview2(
manager_name varchar(12) default "unknown" not null,
employee_username varchar(12) default "unknown" not null,
evaluator_username varchar(12) default "unknown" not null,
report varchar(255) default "unknown" not null,
int2_grade enum("0","1","2","3","4") not null,
primary key (manager_name,employee_username,
	evaluator_username),
constraint intvman 
foreign key (manager_name) references manager(managerUsername)
on update cascade on delete cascade,
constraint intvem
foreign key (employee_username) references employee(username)
on update cascade on delete cascade, 
constraint intveva
foreign key (evaluator_username) references evaluator(username)
on update cascade on delete cascade
)engine=InnoDB;


create table interview3(
grade_ptyxiou float(3,1) unsigned default "0.00" not null,
systatikes_ep varchar(35)  default "no sistatikes found" not null,
num_projects tinyint(4)  not null AUTO_INCREMENT,
employee_username varchar(12)  default "unknown" not null,
awards_employee varchar(35)  default "no rewards found" not null,
int3_grade enum("0","1","2") not null,
primary key (num_projects,employee_username)
)engine=InnoDB;


create table yp_interview(
aksiologhsh1 enum("0","1","2","3","4") not null,
aksiologhsh2 enum("0","1","2","3","4") not null,
aksiologhsh3 enum("0","1","2") not null,
result int(4) not null ,
comments varchar(255) default "unknown" not null,
primary key (aksiologhsh1,aksiologhsh2,aksiologhsh3)
)engine=InnoDB;


create table evaluationresult(
Evld int(4) not null,
empl_usrname varchar(12) default "unknown" not null,
job_id int(4) default "0" not null,
grade int(4) not null ,
commentsev varchar(255) default "unknown" not null,
primary key (empl_usrname),
constraint evaempl
foreign key (empl_usrname) references employee(username)
on update cascade on delete cascade,
constraint evajb
foreign key (job_id) references job(id)
on update cascade on delete cascade
)engine=InnoDB;



create table log(
	ins_usernameJ varchar(12),
	upd_usernameJ varchar(12),
	del_usernameJ varchar(12),
	ins_conditionJ enum("YES","NO"),
	upd_conditionJ enum("YES","NO"),
	del_conditionJ enum("YES","NO"),
	date_insJ datetime,
	date_updJ datetime, 
	date_delJ datetime,
	on1 enum("JOB","EMPLOYEE","REQUESTSEVALUATION") ,
	inserted_job int(4),
	updated_job int(4),
	deleted_job int(4),
	ins_usernameE varchar(12),
	upd_usernameE varchar(12),
	del_usernameE varchar(12),
	ins_conditionE enum("YES","NO"),
	upd_conditionE enum("YES","NO"),
	del_conditionE enum("YES","NO"),
	date_insE datetime,
	date_updE datetime ,
	date_delE datetime, 
	on2 enum("JOB","EMPLOYEE","REQUESTSEVALUATION"), 
	inserted_employee varchar(12),
	updated_employee varchar(12),
	deleted_employee varchar(12),
	ins_usernameR varchar(12),
	upd_usernameR varchar(12),
	del_usernameR varchar(12),
	ins_conditionR enum("YES","NO"),
	upd_conditionR enum("YES","NO"),
	del_conditionR enum("YES","NO"),
	date_insR datetime,
	date_updR datetime ,
	date_delR datetime ,
	on3 enum("JOB","EMPLOYEE","REQUESTSEVALUATION") ,
	inserted_requestev int(4),
	updated_requestev int(4),
	deleted_requestev int(4)
)engine=InnoDB;





















	