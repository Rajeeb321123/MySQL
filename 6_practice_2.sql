create database XYZ;

use XYZ;

create table payments (
	customer_id int primary key,
    customer varchar(50),
    mode enum("Netbanking","Credit Card", "Debit Card"),
    city varchar(50)
);

insert into payments
(customer_id, customer, mode, city)
values
(101, "Olivia Barrett", "Netbanking", "Portland"),
(102, "Enthan Sinclair", "Credit Card", "Miami"),
(103, "Maya Hernandez", "Credit Card", "Seatle"),
(104, "Liam Donovan", "Netbanking", "Denver"),
(105, "Sophia Nguyen", "Credit Card", "New Orlean"),
(106, "Caleb Foster", "Debit Card", "Minneapolis"),
(107, "Ava Patel", "Debit Card", "Phoenix"),
(108, "Lucas Carter", "Netbanking", "Boston"),
(109, "Isabella Martinez", "Netbanking", "Nashville"),
(110, "Jackson Brooks", "Credit Card", "Boston");

select * from payments;

select mode, count(customer) -- count no of customer in each group (here mode)
from payments
group by mode
order by count(customer) desc;

drop database if exists XYZ;