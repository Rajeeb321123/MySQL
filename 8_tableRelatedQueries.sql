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

set sql_safe_updates = 0; -- to enable update / disable safe mode
set sql_safe_updates = 1; -- to disbale update / enable safe mode

update student
set grade = "O"
where grade = "A";

update student
set city = "Texas"
where name = "Eva";

update student
set grade = "A"
where marks between 80 and 90;

update student
set marks = marks + 1;

update student
set marks = 10
where rollno = 105;

delete from student -- to delete specific row
where marks < 20;

drop table student; -- to delete whole table

truncate table student; -- to delete all the row of the table


delete from student;

select * from student;


drop database if exists college;