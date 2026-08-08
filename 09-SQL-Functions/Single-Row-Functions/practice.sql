-- This file is primarily consists of the practice questions from easy level to difficult level
-- this file is made for beginners who wanted to start learning sql you are in the right place 

-- create database named praveen
create database praveen;
-- Use the database using this command
use praveen;

-- create the table structure using the standard syntax using column names and associated constraints

create table students(
student_id int primary key,
name varchar(40) not null,
age int,
course varchar(30),
email varchar(30));
-- insert the values into the table after the table structure is created
insert into students values(101,"Rahul",20,"Java","rahul@gmail.com");
insert into students values(102,"Priya",21,"Python","priya@gmail.com");
insert into students values(103,"Arjun",19,"Java","arjun@gmail.com");
insert into students values(104,"Sneha",22,"SQL","sneha@gmail.com");

-- display all the students data
select * from students;

-- display specific columns
select student_id,name,course from students;

-- find students older than 20
select *from students 
where 
age >20;

-- Find java students 
select * from students
where 
course = "java";

-- find students aged 20 or below
select * from students 
where age <=20;




