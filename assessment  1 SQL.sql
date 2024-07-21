create database assessment1;
use assessment1;

create table worker
(
 worker_id numeric (2),
first_name varchar (12),
last_name varchar (12),
salary numeric (23),
joinning_date date ,
department varchar (22)
);
select * from worker;
insert into  worker (worker_id,first_name ,last_name ,salary ,joinning_date ,department )
value (1,"monika","arora",100000,"2014-2-20","HR"),
(2,"niharika","verma",80000,"2014-6-11","ADMIN"),
(3,"vishal","singahal",300000,"2014-2-20","HR"),
(4,"amitabh","singh",500000,"2014-2-20","ADMIN"),
(5,"vivek","bhati",500000,"2014-6-11","ADMIN"),
(6,"vipul","diwan",200000,"2014-6-11","ACCOUNT"),
(7,"satish","kumar",75000,"2014-1-20","ACCOUNT"),
(8,"geetika","chauhan",90000,"2014-4-11","ADMIN");

select * from worker;

-- 1worker table order by first_name ascr=ending and department desc
select * FROM WORKER order by first_name and department desc;

-- 2Write an SQL query to print details for Workers with the first names “Vipul” and “Satish”from the Worker table.
select * from worker   where first_name in ( "vipul","satish");   

-- 3.Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ andcontains six alphabets
select * from worker where first_name like "%h";    

-- 4. Write an SQL query to print details of the Workers whose SALARY lies between 1
select * from worker where salary=1 ;

-- 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table.
select  distinct(first_name) from  worker;

-- 6. Write an SQL query to show the top 6 records of a table
select * from worker order by  salary desc limit 6   ;

-- 7. Write an SQL query to fetch the departments that have less than five people in them.
select department ,count(department) from worker group by department  ;

-- 8. Write an SQL query to show all departments along with the number of people in there.
select department,count(worker_id) from worker group by department;

-- 9. Write an SQL query to print the name of employees having the highest salary in each department
   select * from worker order by salary desc limit 1;