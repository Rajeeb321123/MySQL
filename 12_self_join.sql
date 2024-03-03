create database company;

use company;

create table employee (
	id int primary key,
    name varchar(50),
    manager_id int
);

insert into employee
(id, name, manager_id)
values
(101, "adam", 103),
(102, "bob", 104),
(103, "casey", null),
(104, "donald", 103);

select * from employee;

select a.name as manager_name, b.name
from employee as a
join employee as b
on a.id = b.manager_id;

drop database if exists employee;