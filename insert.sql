
insert into company(AFM,DOY,name,phone,street,
num,city,country)
VALUES("102030300","292929292019223","KALO KREAS",
"6986473820","THARRALEOU PASSA",8,"PATRA","GRECCE"),
("198762563","726353637837536","PIPIS AND SONS AE","
2611124178","EIRINIS KAI FILIAS",9,"PATRA","GREECE"),
("384758490","635467635647891","SPIRT AE",
"00306938748591","POSNJE",2,"BERAT","ALBANIA"),
("837638198","748391029273847","LONDONINO AE",
"0690982828291","LONDONS SQUARE",12,"LONDON","AMERICA"),
("039282910","627281910182919","KARELIAS AND SONS AE",
"2610819201","CHARILAOU TRIKOYPI",6,"ATHENS","GREECE");



INSERT INTO user(username,password,name,surname,reg_date,email)
VALUES("AGG","HFFD323G41","NTANOS","AGGELOPOULOS","1999-03-23 15:00:00","NTANOSAGGEL@GMAIL.COM"),
("ANTE","KJJA9V4337","GIANNIS","ANTETOKOUMPO","1999-06-14 12:32:12","GIANNISANTE@HOTMAIL.COM"),
("AGR","T553GDB910","TOLIS","AGREPIS","1999-07-03 12:34:23","TOLISAGREP@GMAIL.COM"),
("PER","KSVR124GKA","TAKHS","PERISTERHS","1998-01-17 12:00:00","TAKHSPER@YAHOO.GR"),
("RIO","VNNNX9201K","ALEX","RIOTHS","1998-06-19 13:42:23","ALEXRIOTHS@GMAIL.COM"),
("MET","0123456789","GIORGOS","METSI","2015-01-29 11:41:12","GIORGOSMETSI@GMAIL.COM"),
("SIA","987654321","KONSTANTINOS","SIAMAS","2016-08-02 16:43:12","KONSTANTINOSSIAMAS@GMAIL.COM"),
("MPAK","ik738hid81","GIORGOS","MPAKOPOULOS","2019-06-13 12:42:33","GIORGOSMPAKOPOULOS@GMAIL.COM"),
("SOULI","6DG4675HD7","BOBOS","SOULI","2012-03-01 23:32:43","BOBOSSOULI@GMAIL.COM"),
("KAOU","9SHD782HD6","RETOS","KAOURHS","2011-11-02 12:42:12","RETOSKAOURHS@HOTMAIL.COM"),
("STAMO","83HS7382H2","MPAKHS","STAMOPOULOS","2014-04-24 23:43:43","MPAKHSSTAMOPOULOS@YAHOO.COM"),
("MAKO","MKGF123381","MAKHS","MAKOPOULOS","2011-05-24 12:12:00","MAKHSMAK@HOTMAIL.COM"),
("SPA","TGDV268S29","LEWNIDAS","SPARTAS","2017-02-12 15:00:00","LEWNSPART@GMAIL.COM"),
("MHTSO","GBB1G94N81","KONSTANTINOS","MHTSOTAKHS","2018-10-19 13:42:23","KONMHTSOTAKHS@YAHOO.GR"),
("FOFH","45GDNSS823","FOFH","GENHMATA","2019-04-11 12:54:42","FOFHGENH@GMAIL.COM"),
("PELET","GFFFK14574","KWSTAS","PELETIDHS","2007-11-08 22:43:12","KWSTASPELE@HOTMAIL.COM"),
("FLORO","G4HGFC327","SPYROS","FLOROPOULOS","2017-01-19 12:43:31","SPYFLORO@YAHOO.GR"),
("SIOYT","KIRJ2712J3","VAGGELHS","SIOUTHS","2000-06-12 12:32:12","VAGGSIOYT@HOTMAIL.COM"),
("GRECO","BESTTRAPPA","IVAN","GRECO","2018-05-05 12:34:32","RIOULTRAS@GMAIL,COM"),
("HUSTLA","SNIKSNIK87","SNIK","HUSTLA","2015-02-03 23:34:43","SNIKTHEBOSS@GMAIL.COM"),
("YPO","ZNZNZN","YPO","XTHONIOS","2007-12-03 12:32:21","YPO@GMAIL.COM"),
("TAKI","ZN1","TAKI","TAKOPOULO","2007-11-02 13:42:43","TAKITSAN@YAHOO.GR"),
("ILEOO","ILEOO1","GIORGO","ASLANIDH","2017-03-03 12:42:44","ILEOOMINATI@HOTMAIL.COM");



INSERT INTO administrator(adminUsername,adminPassword,adminName,adminSurname)
VALUES("AGG","HFFD323G41","NTANOS","AGGELOPOULOS"),
("ANTE","KJJA9V4337","GIANNIS","ANTETOKOUMPO"),
("AGR","T553GDB910","TOLIS","AGREPIS"),
("PER","KSVR124GKA","TAKHS","PERISTERHS"),
("RIO","VNNNX9201K","ALEX","RIOTHS");



INSERT INTO manager(managerUsername,exp_years,firm)
VALUES("MET",5,"102030300"),
("SIA",4,"198762563"),
("MPAK",7,"384758490"),
("SOULI",8,"837638198"),
("KAOU",9,"837638198"),
("STAMO",6,"039282910");



INSERT INTO employee(username,bio,sistatikes,certificates,awards,my_afm,AM,Eexp_years)
VALUES("GRECO","APO MIKROS STHN ALANA EMATHE THN DOYLEIA APO MIKROS KAI EGINE EPITYXHMENOS",
"MAD HOUSE","PTYXIOSE TRAP EPISTHMES PANEPISTHMIO RIOY","MAD AWARDS 2020","102030300",0001,2),
("HUSTLA","H TRAP SKHNH EINAI DIKIA MOU","SNIK","YPOXTHONIOS","BACHELORS FILOSOFIKOU STO LIVERPOOL","198762563",0002,1),
("YPO","O THEIOS OLWN","MAD HOUSE","PTYXIO MHXANOLOGON MHXANHKON METSOVIO POLYTEXNEIO","NO AWARDS","384758490",0003,4),
("TAKI","DEN EXW FILOUS EXW MONO GNWSTOUS","ZN","NO certificates","YOUTUBE BEST TRAPPER AWARD 2020","837638198",0004,5),
("ILEOO",DEFAULT,DEFAULT,DEFAULT,DEFAULT,"039282910",DEFAULT,DEFAULT);



INSERT INTO evaluator(username,exp_years,firm)
VALUES("MAKO",9,"102030300"),
("SPA",3,"102030300"),
("MHTSO",2,"198762563"),
("FOFH",1,"384758490"),
("PELET",13,"384758490"),
("FLORO",3,"837638198"),
("SIOYT",20,"039282910");

INSERT INTO job(id,start_date,salary,position,edra,
evaluator,announce_date,submission_date)
VALUES(1,"2019-06-12",1000.0,"YPEY8YNOS POLHSEON",
"PAKISTAN","MAKO","2019-06-18 10:34:09",
"2019-04-01"),
(2,"2011-02-19",599.0,"YPEY8YNOS POLHSEON","ALBANIA",
"MHTSO","2010-02-11 12:34:06",
"2011-01-01"),
(3,"2017-08-09",801.0,"YPEY8YNOS PROSOPIKOU","ENGLAND",
"FOFH","2016-08-09 12:54:32","2017-09-09"),
(4,"2020-12-01",900.0,"YPEY8YNOS AGORON","GREECE",
"FLORO","2020-01-02 12:23:53","2020-11-01"),
(5,"2018-06-01",700.0,"YPEY8YNOS PROSOPIKOU","GREECE",
"SIOYT","2018-01-01 16:54:54","2018-05-01");


INSERT INTO antikeim(title,descr,belongs_to)
VALUES("TOURISTIKA","OTI NANAI","TOURISTIKA"),
("POL","MANAGING OIKONOMIKA ETAIRIAS KAI
POLHSEON","POL"),
("PROSOPIKO","MANAGING TOY PROSOPIKOY THS ETAIRIAS",
"PROSOPIKO"),
("AGORES","MANAGING AGORON ETAIRIAS","AGORES"),
("PROSOPIKOY","MANAGING TOY PROSOPIKOY THS ETAIRIAS",
"PROSOPIKOY");

INSERT INTO needs(job_id,antikeim_title)
VALUES(1,"TOURISTIKA"),
(2,"POL"),
(3,"PROSOPIKO"),
(4,"AGORES"),
(5,"PROSOPIKOY");


INSERT INTO project(empl,num,descr,url)
VALUES("GRECO",3,"MOYSIKH STO YOUTUBE",
"WWW.YOUTUBE.COM"),
("HUSTLA",1,"MOUSIKH MAD","WWW.MAD.COM"),
("YPO",2,"LYRIKH SKHNH","WWW.LYRIKH.COM"),
("TAKI",4,"RAP SKHNH","WWW.RAP.COM"),
("ILEOO",DEFAULT,DEFAULT,DEFAULT);



INSERT INTO languages(employee,lang)
VALUES("GRECO","SP"),
("HUSTLA","GR"),
("YPO","FR"),
("TAKI","EN"),
("ILEOO","FR");



INSERT INTO degree(titlos,idryma,bathmida)
VALUES("TRAP","RIOY","UNIV"),
("EKPA","RIO","UNIV"),
("MHXANHKON","AGIOY","MASTER"),
("APOLYTHRIO","TOU","LYKEIO"),
(DEFAULT,"MOUN",DEFAULT);



INSERT  INTO  has_degree(degr_title,degr_idryma,
empl_usrname,etos,grade)
VALUES("TRAP","RIOY","GRECO",
"2012",5.5),
("EKPA","RIO","HUSTLA",
"2007",9.2),
("MHXANHKON","AGIOY",
"YPO","2002",6.7),
("APOLYTHRIO","TOU","TAKI",
"2003",16.2),
(DEFAULT,"MOUN","ILEOO",DEFAULT,DEFAULT);



INSERT INTO requestsevaluation(empl_usrname,job_id)
VALUES("GRECO",1),
("HUSTLA",2),
("YPO",3),
("TAKI",4),
("ILEOO",5);



INSERT INTO applies(job_id,employee_username,num_applies)
VALUES(1,"GRECO",1),
(2,"HUSTLA",1),
(3,"YPO",2),
(4,"TAKI",1),
(5,"ILEOO",1);



INSERT INTO interview1(evaluator_username,employee_username,
int_grade,int_comments)
VALUES("MAKO","GRECO",4,"POLY 
SYNERGATIKOS ME EMPEIRIA KAI FILIKOS ETOIMOS GIA THN 8ESH"),
("MHTSO","HUSTLA",1,
"OXI TOSO SYNERGATIKOS ALLA ARKETA EMPEIROS EXEI PROOPTIKES"),
("MHTSO","YPO",2,"SWSTO
YFOS KAI ARKETA SYNERGATIKOS"),
("FOFH","TAKI",3,"POLY SYNERGATIKOS
ME OREKSH GIA DOULEIA OXI TOSO EMPEIROS"),
("SIOYT","ILEOO",0,"KATHOLOY EMPEIROS XWRIS
GNWSEIS APARAITHTES GIA THN DOULEIA");



INSERT INTO interview2(manager_name,employee_username,
evaluator_username,report,int2_grade)
VALUES("MET","GRECO","MAKO",
"EKSYPNOS KAI EMPEIROS",4),
("SIA","HUSTLA","MHTSO","METRIES GNWSEIS TOY ANTIKEIMENOY
ALLA ARKETH DIA8ESH GIA DOULEIA",2),
("MPAK","YPO","MHTSO","ARKETH EMPEIRIA KAI ARKETOS
XWROS GIA VELTIOSH",2),
("KAOU","TAKI","FOFH","POLY KALOS SE 8EMATA EMPEIRIAS KAI GNOSEON",3),
("STAMO","ILEOO","SIOYT","
ANTIPA8HTIKOS KAI XWRIS GNOSEIS",0);



INSERT INTO interview3(grade_ptyxiou,systatikes_ep,
num_projects,employee_username,awards_employee,
int3_grade)
VALUES(5.5,"MAD HOUSE",3,"GRECO","MAD AWARDS 2020",
2),
(9.2,"SNIK",1,"HUSTLA",
"BACHELORS FILOSOFIKOU STO LIVERPOOL",1),
(6.7,"MAD HOUSE",2,"YPO","NO AWARDS",1),
(16.2,"ZN",4,"TAKI","YOUTUBE BEST TRAPPER AWARD 2020",
3),
(DEFAULT,DEFAULT,DEFAULT,"ILEOO",DEFAULT,DEFAULT);



INSERT INTO yp_interview(aksiologhsh1,aksiologhsh2,
aksiologhsh3,result,comments)
VALUES(4,4,2,10,"POLY SYNERGATIKOS ME EMPEIRIA
 KAI FILIKOS ETOIMOS GIA THN 8ESH"),
(1,2,1,4,"OXI TOSO SYNERGATIKOS ALLA ARKETA 
EMPEIROS EXEI PROOPTIKES"),
(2,2,1,5,"SWSTOYFOS KAI ARKETA SYNERGATIKOS"),
(3,2,1,6,"POLY SYNERGATIKOS  ME OREKSH GIA DOULEIA
OXI TOSO EMPEIROS"),
(0,0,0,0,"KATHOLOY EMPEIROS XWRIS GNWSEIS APARAITHTES 
GIA THN DOULEIA");



INSERT INTO evaluationresult(Evld,empl_usrname,job_id,
grade,commentsev)
VALUES(1,"GRECO",1,10,"POLY SYNERGATIKOS ME EMPEIRIA
 KAI FILIKOS ETOIMOS GIA THN 8ESH"),
(2,"HUSTLA",2,4,"OXI TOSO SYNERGATIKOS ALLA ARKETA 
EMPEIROS EXEI PROOPTIKES"),
(3,"YPO",3,5,"SWSTOYFOS KAI ARKETA SYNERGATIKOS"),
(4,"TAKI",4,6,"POLY SYNERGATIKOS  ME OREKSH GIA DOULEIA
OXI TOSO EMPEIROS"),
(5,"ILEOO",5,0,"KATHOLOY EMPEIROS XWRIS GNWSEIS APARAITHTES 
GIA THN DOULEIA");























