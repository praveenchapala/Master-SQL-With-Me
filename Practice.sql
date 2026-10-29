create database if not exists practice;
use practice;

create table student_profile(
student_id int,
student_name varchar(50),
email varchar(100),
phone_number varchar(15),
country_code char(2),
date_of_birth date,
cgpa decimal,
graduation_year year,
registered_at datetime,
is_placed boolean,
profile_summary longtext);
desc student_profile;
create database employee_management_db;
use employee_management_db;
create table employees(
employee_id int,
employee_name varchar(60),
official_email varchar(100),
phone_number varchar(15),
department_code varchar(5),
job_title varchar(50),
annual_salary decimal,
performance_rating decimal,
date_of_joining date,
last_login_at datetime,
is_active boolean,
profile_notes longtext);
desc employees;
create database if not exists training_db;
use training_db;
create table students(
student_id int primary key auto_increment,
student_name varchar(50) not null,
branch varchar(30) not null);
describe students;
alter table students

add column email varchar(30);
alter table students
add column is_active boolean not null default true;
alter table students
add column registration_number char(10) first;

alter table students
add column phone_number varchar(15) after student_id;
alter table students
add column city varchar(20),
add column year_of_passing year,
add column date_of_birth date;
alter table students
add column second_email varchar(30);

alter table students
add column is_palced varchar(20) default 'notplaced';
alter table students
modify column student_name varchar(100) not null;
alter table students
modify column branch varchar(50) not null;
alter table students
drop column year_of_passing;

alter table students
rename column  registration_number to reg_number;

alter table students
rename column student_id to stud_id,
rename column phone_number to phne_nmbr,
rename column branch to bnch;

alter table students
change date_of_birth dob date;

alter table students
change column second_email sec_email varchar(40);

create table student_test(
student_id int primary key,
student_name varchar(30),
student_age int);

insert into student_test(student_id,student_name,student_age) values(12,"Praveen",23),(13,"Asha",45),(14,"prakruthi",13);
select*from student_test;
truncate student_test;
desc student_test;
drop table student_test;
desc student_test;

create database if not exists student_structure_lab;
use student_structure_lab;
drop table if exists student_details;
create table student_details(
id int primary key auto_increment,
name varchar(30) not null,
dept varchar(20) not null,
phone varchar(10),
temporary_note varchar(100));
insert into student_details(id,name,dept,phone,temporary_note) values(
120,"praveen","csm","5113562563","remove this column"),
(121,"Amar","cse","45425252","remove this column"),
(122,"mouli","csd","85+965965","remove this column");
show tables;
desc student_details;
select*from student_details;

alter table student_details
rename column id to student_id;

alter table student_details
change column name Student_name varchar(60);
desc student_details;

alter table student_details
rename column dept to department;

alter table student_details
modify column department varchar(50);
alter table student_details
change column phone phone_number varchar(15);
alter table student_details
add column email varchar(100) after student_name ;
desc student_details;


alter table student_details
drop column email;

alter table student_details
add column CGPA decimal(4,2) after department;



alter table student_details
add column placement_status varchar(90) default 'Notplaced' after CGPA;

alter table student_details
add column registration_at timestamp default current_timestamp;


alter table student_details
drop column temporary_note;


rename table student_details to student;
show tables;

desc student;

create table demo(
student_id int primary key,
student_name varchar(20) not null);
desc demo;
insert into demo(student_id,student_name) values(101,"praveen"),(102,"shruthi"),(103,"Hanu");

create table gero(
student_id int,
course_id int,
enrolled_on date,
primary key(student_id,course_id));

create table if not exists student_form(
student_id int primary key,
student_name varchar(30),
student_status varchar(40) not null default "not placed");
insert into student_form(student_id,student_name) values(12,"Praveen"),(13,"Ravi"),(14,"father");
select*from student_form;

create table player(
player_id int primary key,
player_name varchar(40),
player_score decimal(5,2) check(player_score>=0 and player_score<=100));

insert into player(player_id,player_name,player_score) values(12,"Praveen",45),(13,"ravi",45),(14,"gaurav",0);
select*from player;

create table application(
application_id int,
application_status varchar(30) not null check(application_status in('applied','shortlisted','rejected')));


insert into application(application_id,application_status) values(
12,'shortlisted'),(13,'shortlisted'),(14,'applied');
select*from application;

drop table application;
create table products(
product_id int primary key auto_increment,
product_name varchar(100) not null,
product_price decimal(10,2) not null check(product_price>=0),
product_stock int not null default 0 check(product_stock>=0),
product_status varchar(20) not null default 'Availble'
check(product_status in('availble','out of stock','Discontinued')));
describe products;


create database user_account_db;
use user_account_db;
create table users(
user_id int primary key auto_increment,
username varchar(40) not null unique,
email varchar(100) not null unique,
password_hash varchar(255) not null,
phone_number varchar(15) unique,
age int not null check(age>18 and age<100),
account_type varchar(20) not null default 'Student' check(account_type in('Student','Trainer','Admin')),
is_active boolean not null default true,
login_attempts int not null default 0 check(login_attempts>0));
show tables;
desc users;
insert into users(username,email,password_hash,phone_number,age)
values('asha_01','asha@gmail.com','hashed_password_01','555059858',23);

create  database training_data;
create table student(
student_id int primary key,
student_name varchar(30),
student_age int,
student_email varchar(40));

desc student;

insert into student
values(12,"Greeshma",23,"greeshma@gmail.com");
select* from student;

insert into student values(13,"Praveen",24,"praveen@gmail.com");
select* from student;

create database products_storage;
create table products(
product_id int primary key,
product_name varchar(30),
category varchar(30),
unit_price decimal(10,2),
stock_quantity int,
product_status varchar(30));
insert into products(product_id,product_name,category,unit_price,stock_quantity,product_status) values
(1,"Wireless mouse","Electronics",799.00,15,"Availble"),
(2,"SQL Handbook","Books",649.50,8,"Availble"),
(3,"Yoga mat","Sports",999.00,0,"Out of Stock"),
(4,"Office chair","Home",7499.00,5,"Availble");


select*from products;
update products
set product_name ="WiredMouse"
where product_id=1;

update products
set stock_quantity=10
where product_id=1;
update products
set product_name="Wirelessmouse",
category="Electics",
unit_price=unit_price*unit_price,
stock_quantity=stock_quantity*8,
product_status="Outofstock"
where product_id=1;
select*from products;
truncate table products;
select*from products;

delete from products;
select*from products;
desc training db;
use training_data;
show tables;
use praveen;
show tables;
desc students;

create database school;
use school;
create table student(
student_id int primary key,
student_name varchar(30),
student_age int,
student_email varchar(30));
insert into student(student_id,student_name,student_age,student_email) values(
1,"Praveen",32,"praveen@gmail.com"),
(2,"uday",33,"uday@gmail.com"),
(3,"Nithin",22,"nithin@gmail.com");
select*from student where student_id=1;
delete from student
where student_id=1;
select*from student where student_id=1;

delete from student;
select*from student;


select student_id as id
from student;
select student_name as `Student Name`
from student;
select * from student;

select student_age as `Student Age` ,student_email as Student_email
from student;

create database db;
use db;
create table products(
product_id int primary key,
product_name varchar(40),
product_price int,
product_quantity int);
insert into products(product_id,product_name,product_price,product_quantity) values(
1,"book",30,2),
(2,"mouse",40,4),
(3,"keyboard",50,3),
(4,"Shoes",49,8);
select*from products;
select product_price*product_quantity as total_product_price
from products;

CREATE DATABASE IF NOT EXISTS score_filter_practice;

USE score_filter_practice;

-- Step 2: Create the Table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    branch VARCHAR(20) NOT NULL,
    score INT NOT NULL
);

-- Step 3: Insert the Data
INSERT INTO students
VALUES
    (101, 'Asha', 'CSE', 82),
    (102, 'Ravi', 'ECE', 74),
    (103, 'Meera', 'CSE', 91),
    (104, 'Arjun', 'ME', 60),
    (105, 'Neha', 'ISE', 86),
    (106, 'Kiran', 'EEE', 75),
    (107, 'Zoya', 'CSE', 90),
    (108, 'Vikram', 'ECE', 68),
    (109, 'Pooja', 'Civil', 80),
    (110, 'Rahul', 'ME', 55),
    (111, 'Sara', 'ISE', 70),
    (112, 'Manoj', 'EEE', 95);
    
select*from students;
-- display all details of students whose score is exactly 75
select *from students
where score=75;
-- display the names and scores of students whose score is more than 75
select student_name,score from students
where score>75;
-- display the names and scores of students whose score is atleast 75
select student_name,score from students
where score>=75;

-- display all the details of the students who scored less than 70
select*from students
where score<70;
-- display student_id ,student_name and score of students who scored atmost 70
select student_id,student_name,score
from students
where score<=70;

-- display students whose score is not equal to 80
select student_name as Students
from students
where score <>80;

-- display students who scored exactly 90
select*from students where score=90;


-- display names and branches of students who scored above 90
select student_name,branch from students where score>90;

-- display names,branches and scores of students who scored 60 or more
select student_name,branch,score from students where score>=60;

-- passing score is 60 display all students who passed,including students who scored exactly 60
select*from students where score>=60;