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

-- WHERE_SUBQUERIES
select avg(marks) --  query1
from student;

select name -- query2
from student
where marks > 70;

select name -- combine(query1 + query2) -subqueries 
from student
where marks > (select avg(marks) from student); -- query is dynamics

-- find the names of students with odd roll roll no
select name, rollno -- withour subquery
from student
where rollno % 2 != 0 or  rollno <= 1;

select name, rollno -- with subqueries (not a good way, just to see use of sub queries)
from student
where rollno in (
	select rollno
    from student
    where rollno % 2 != 0 or  rollno <= 1 
);

-- FROM_SUBQURIES
-- maximum marks from students of NewYork only 
select Max(marks)  -- bad way use , just to learn sub queries
from(
	select * 
	from student
	where city = "NewYork"
) as temp; -- we must use as for from-subquries

select Max(marks) -- good and easy way, withour use of subqueries
from student
where city = "NewYork";


-- SELECT_SUBQUREIS
select (select max(marks) from student), name -- subqueries must have only one row, so no so usefull 
from student;



drop database if exists college;