create database college;
create database if not exists college;

drop database if exists company;   

use college;

CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

insert into student values(1, "Rajeeb", 24);
insert into student values(2, "Shradha", 23);

select * from student;

show databases;
show tables;

drop table student;
drop database if exists college;