create database Kodnest;
use Kodnest;
create table Student(
Student_id int,
Student_name varchar(30),
Student_age int,
Student_email varchar(30));

insert into Student values(12,"Praveen",20,"prav@gmail.com");
insert into Student values(13,"uday",24,"uday@gmail.com");
insert into Student values(14,"Yshnavi",25,"Yshnavi@gmail.com");
insert into Student values(15,"Kaveri",26,"kaveri@gmail.com");

select Student_name from Student;
select Student_name,Student_age from Student;
select Student_name,Student_age from Student where Student_age>=24;
select*from Student;