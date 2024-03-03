-- in some cases we are unable to use where. In those cases we use having clause

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
(105,"Eva", 73, "B", "NewYork"),
(106,"John", 79, "A", "Texas");

select city, count(rollno)
from student
group by city
having max(marks)>70;

select city
from student
where grade="A" -- condtion act upon row above not on group`
group by city
having max(marks) >= 80 -- condition act up group
order by city asc;

drop database if exists college;