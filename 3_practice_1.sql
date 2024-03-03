create database XYZ;

use XYZ;

create table info(
	id int primary key,
    name varchar(50),
    salary int
);

select * from info;

insert into info
(id, name, salary)
values
(1, "Adam", 25000),
(2, "bob", 30000),
(3, "Casey", 40000);

drop database if exists XYZ;
