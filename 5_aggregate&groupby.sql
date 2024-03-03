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

select max(marks)
from student;

select min(marks)
from student;

select avg(marks)
from student;

select count(rollno)
from student;

select city, count(rollno) -- no of student in each city using group
from student
group by city;

select city, name, count(rollno) 
from student
group by city, name;

select city , avg(marks)
from student
group by city
order by avg(marks) desc;

drop database if exists college ;

