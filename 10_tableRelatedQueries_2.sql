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

Alter