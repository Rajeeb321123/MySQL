create database college;
use college;

create table dept (
	id int primary key,
    name varchar(50)
);
set sql_safe_updates = 0;

insert into dept
values
(101, "English"),
(102, "Science"),
(103, "Mathmatics"),
(104, "Social");

select * from dept;

create table teacher (
	id int primary key,
    name varchar(50),
    dept_id int,
    foreign key (dept_id) references dept(id)
    on update cascade -- if in parent(dept) something changes, it should automatically changes here in teacher
    on delete cascade -- if row of dept or parent is delete, teacher with that foreign key will also be removed
);

insert into teacher
values
(1, "Adam", 101),
(2, "Eve", 103),
(3, "John", 102);

select * from teacher;

update dept
set id = 105
where name = "Science";


drop database if exists college;