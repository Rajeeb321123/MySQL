create database college;
use college;

create table student (
	rollno int primary key,
    name varchar(50),
    marks int not null,
    grade varchar(1),
    city varchar(20)
);

insert into student
(rollno, name, marks, grade, city)
values
(101,"Anil", 78, "A", "Pune"),
(102,"Rajeeb", 80, "A", "Kathmandu"),
(103,"Tom", 60, "B", "NewYork"),
(104,"Jessica", 50, "C", "NewYork"),
(105,"John", 79, "A", "Texas");

select name, marks from student;

select distinct city from student; -- when we dont want duplication while selecting city

select * 
from student
where marks < 70;

select * 
from student
where city = "Kathmandu";

select * 
from student
where city = "NewYork" and marks > 50;

select * 
from student
where marks+10 >80;

select *
from student
where marks != 80;

select *
from student
where marks=80 or city ="NewYork";

select *
from student
where marks between 60 and 89; -- 60 and 80 are inclusive for between

select * 
from student
where marks in (80, 60, 90); -- only chooses whose marks == 80 or 60 or 90. if none value matches return empty grid

select * 
from student
where city not in ("NewYork", "NewOrlean");

select * from student limit 2; -- only first 2 student using limit

select * 
from student 
order by marks asc;

select *
from student
order by marks desc
limit 3;





drop database if exists college;
