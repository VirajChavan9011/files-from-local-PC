use example
create table customer77(cust_id int,cust_name varchar(15))
insert into customer77 values(1,'pritam'),
                             (2,'shailja'),
							 (3,'deepa'),
							 (4,'monty'),
							 (5,'paresh')
create table product5(product_id int,product_name varchar(15))
insert into product5 values(1,'computer'),
                           (2,'laptop'),
						   (3,'ac')

create table orders8(order_id int,product_id int,cust_id int)
insert into orders8 values(1,1,1),
                          (2,1,2),
						  (3,1,3),
						  (4,1,5)
	select*from customer77
	select*from product5
	select*from orders8

select cust_name,product_name,order_id from orders8 
join product5 on orders8.product_id=product5.product_id 
join customer77 on orders8.cust_id=customer77.cust_id
