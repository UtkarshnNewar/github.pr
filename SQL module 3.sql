-------------------------------------------------module 3---------------------------------------------------------------------------- 
USE intellipaatdb1

select * from customer;
select * from order_table;
use Intellipaat_db
--1 create an 'Order' table which comprises of these columns from the customer table
 
create table order_table(order_id int,order_date date,amount int,customer_id int)

insert into order_table values(10,'2022-08-03',3000,1)
insert into order_table values(11,'2022-05-04',3060,2)
insert into order_table values(12,'2022-06-03',3750,3)
insert into order_table values(13,'2022-07-16',4000,4)
insert into order_table values(14,'2022-11-30',7000,5)

--2 make an inner join on 'customer' & 'order' table on the 'Customer_id' column
select * from order_table o
inner join customer c 
on o.customer_id=c.customer_id

--3 make an left and right join on 'customer' & 'Order' tables on the 'customer_id' column
--(a)
select *from order_table o
left join customer c 
on o.customer_id = c.customer_id
--(b)
select *from customer c 
right join order_table o
on o.customer_id = c.customer_id

--4   update the 'order' table, set the amount to be 100 where 'customer_id' is 3
update order_table set amount=100  where customer_id= 3

