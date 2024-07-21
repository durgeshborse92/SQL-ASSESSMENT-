create database assessment2;
use  assessment2;
create table school
(
stdID numeric (5),
stdName VARCHAR (15),
Sex   varchar (7),
percentage numeric (22),
Class numeric (3),
sec  varchar (2),
Stream varchar (10),
DOB date 
);
select * from school;

insert into school (stdID ,stdName ,Sex   ,percentage ,Class ,sec ,Stream,DOB)  
value (1001,"surekha joshi", "female",82,12,"A", "Science","1998-3-8"),
(1002,"maahi agarwal", "female",56,11,"C","COMMERCE","2008-11-23"),
(1003,"sanam verma","male",59,11,"C","COMMERCE","2006-6-29"),
(1004,"ronit kumar","male",63,11,"C","COMMERCE","1997-11-5"),
(1005,"dipesh pulkit","male",78,11,"B","Science","2003-9-14"),
(1006,"jahanvi puri","female",60,11,"B","COMMERCE","2008-11-7"),
(1007,"sanam kumar","male",23,12,"F","COMMERCE","1998-3-8"),
(1008,"sahil saras ","male",56,11,"C","COMMERCE","2008-11-7"),
(1009,"akshar agarwal","female",72,12,"B","COMMERCE","1996-10-1"),
(1010,"stuti mishra","female",39,11,"F","Science","2008-11-23"),
(1011,"harsh agarwal","male",42,11,"C","Science","1998-3-8"),
(1012,"nikunj agarwal", "male",49,12,"C","COMMERCE","1998-6-28"),
(1013,"akriti saxena","female",89,12,"A","Science","2008-11-23"),
(1014,"tani rastogi","female",82,12,"A","Science","2008-11-23");

 -- 1.To display all the records form STUDENT table. SELECT * FROM student ;
SELECT * FROM SCHOOL;
-- 2. To display any name and date of birth from the table STUDENT. SELECT StdName, DOB FROM student ;
SELECT stdName,DOB from school;

-- 3. To display all students record where percentage is greater of equal to 80 FROM student table. SELECT * FROM student WHERE percentage >= 80;
select * from school where percentage >80;

-- 4. To display student name, stream and percentage where percentage of student is more than 80 SELECT StdName, Stream, Percentage WHERE percentage > 80;
select stdName,stream, percentage from school where percentage>80;

-- 5. To display all records of science students whose percentage is more than 75 form student table. SELECT * FORM student WHERE stream = ‘Science’ AND percentage > 75;
select * from school where stream = "science" and percentage>75;   
