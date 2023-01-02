use collage2
create table customer4(cust_id int primary key ,first_name varchar (50),last_name varchar (50))
insert into customer4 values(101,'seema','sagvekar'),
                           (102,'kajal','pawar'),
						   (103,'vikas','patil'),
						   (104,'sai','thakur')

create table orders(orders_id int,product_name varchar(50),cust_id int foreign key references customer4 (cust_id) on update cascade on delete cascade)	

insert into orders values(1001,'tab',101),
                         (1002,'mobile',102),
						 (1003,'laptop',103),
						 (1004,'pc',104)
select*from customer4
select*from orders

update customer4 set cust_id=100 where cust_id=101
delete from customer4 where cust_id=104