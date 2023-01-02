use sales
create table customer(cust_id int,cust_name varchar(15),city varchar(15),category_id int,details int,price money)
select*from customer
insert into customer values(102,'suman','pune',1,10249,500),
							(103,'roshan','pune',2,10143,200),
							(104,'rakhi','delhi',3,10247,100),
							(105,'suzan','madras',2,10249,105),
							(106,'shyam','chennai',3,10247,115),
							(107,'rupesh','mumbai',4,10456,450)
select*from customer order by cust_name 
select count(cust_id) over(partition by city) as total_cust,city,category_id from customer 
select count(category_id) as total_cust,city from customer group by city 
select *from customer where city='mumbai'or category_id=3
select*from customer where cust_name like '_o%'
select sum(price)as sum_price,category_id from customer group by category_id
select*from customer where city='pune'and price>200
