create database college;
use college;

create table student (
	rollno int primary key,
    name varchar(50)
);

select * from student;

insert into student
(rollno, name)
values
(101, "rajeeb"),
(102, "Ram"),
(103, "Tom");

insert into student values (104, "Vercetti");

create table temp1 (
	id int unique,
    name varchar(49),
    age int check(age>=18), -- one way of using check
    city varchar(20),
    constraint city_check check (city!="Delhi"),
    town enum("kathmandu", "pokhara"),
    primary key(id)
);

create table temp2 (
	id int ,
    name varchar(49),
    age int default 20, -- default value
    city varchar(20),
    primary key(id, name)-- combination of id and name. combination must be unique irespective of unqiuesnessof id and name
);

insert into temp2 (id, name, city) values (101, "Marley","Texas");
select * from temp2;

insert into temp1 (id, name,age, city, town) values (101, "thomas", 21, "Texas", "kathmandu");
select * from temp1;



drop database if exists college;