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

alter table student -- to add a new column
add column age int not null default 19;

alter table student
drop column age;

alter table student
rename to studentRename;

alter table student -- change column from to
change column marks score int not null;

alter table student -- change column datatype and constarint
modify marks varchar(20) not null;

select * from student;

truncate table student;

drop database if exists college ;