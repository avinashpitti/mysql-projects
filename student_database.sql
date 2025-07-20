create database student;

use student;

create table students(
roll_no int primary key,
name varchar(20));

insert into students
values
(1,"abhishek"),
(2,"charan"),
(3,"avinash"),
(4,"ajay");

select * from students;

create table courses(
course_name varchar(20),
course_fee decimal(5,2),
course_duration int );

alter table courses
modify course_duration varchar(20);



alter table courses
modify course_fee decimal(10,2);

insert into courses
values
("python",14000, "6 months"),
("java",20000,"6 months"),
("devops",25000,"3 months"),
("sql",6000,"45 days");

select * from courses;

alter table courses	# changing column_name
change course_fee course_fees decimal(10,2); # Must mention data type

alter table courses
rename column course_name to name_of_the_course ; # No need of data type

create table enrollments(
name_of_the_course varchar(20) primary key,
number_of_enrolments int);

insert into enrollments
values
("python",33),
("java",46),
("devops",29),
("sql",32);

select * from enrollments;

select * from courses;

alter table courses
add column eligibility varchar(20);

set sql_safe_updates=0;

update courses
set eligibility="Any graduation";

insert into courses
values
("mern",30000,"5 months","Any graduation");

select * from courses;

delete from courses
where name_of_the_course="mern";

