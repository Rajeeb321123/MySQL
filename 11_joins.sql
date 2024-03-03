create database college;

use college;

create table student(
	id int primary key,
    name varchar(20),
    course_id int 
);

create table course(
	id int primary key,
    course varchar(20)
);

insert into student
(id, name, course_id)
values
("101", "Bob", 3),
("102", "Adam", 2),
("103", "Eve", 4);

insert into course
(id, course)
values
(1, "English"),
(2, "Science"),
(3, "Math"),
(4, "Computer Science");



select * from student;

select * -- inner join (to visulize use venn-diagram: very easy)
from student
inner join course
on student.course_id = course.id
order by course.id;

select * 
from student as s
inner join course as c
on s.course_id = c.id
order by c.id;

insert into student (id, name) values (104, "Cena"); -- course_id will be null

select * -- all data from left but only overlaping from right
from student
left join course
on student.course_id = course.id;

select *  -- all row from right but only overlapping row from left
from student
right join course
on student.course_id = course.id;

-- there is no full join in mysql like prostgres and oracle
-- so we use union in MySql
select * from student left join course on student.course_id = course.id
union
select * from student right join course on student.course_id = course.id;

select * -- left exclusive join (all non overlapping row of left)
from student as s
left join course as c
on s.course_id = c.id
where c.id is null; -- for null = doesn't work we need is

select * -- right exclusive join (all non overlapping row of right)
from student as s
right join course as c
on s.course_id = c.id
where s.id is null; -- for null = doesn't work we need is

-- full exclusive join (all none overlapping of both left and right)
select * from student left join course on student.course_id = course.id where course.id is null
union
select * from student right join course on student.course_id = course.id where student.id is null;

drop database if exists college;