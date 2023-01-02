use sales
create table cust_info(cust_id int,cust_name varchar(20),city varchar(15),grade int,salesman_id int)
select*from cust_info
insert into cust_info values(3002,'nick','new york',100,5001),
                            (3007,'brab','new york',200,5001),
							(3005,'graham','california',200,5002),
							(3008,'julian','london',300,5002),
							(3004,'fabian','paris',300,5006),
							(3009,'jeoff','berilin',100,5003),
							(3003,'jozy','moscow',200,5007),
							(3001,'brad guzan','london',100,5005)
select*from cust_info where grade<=100 
select cust_id,cust_name,city,grade from cust_info where city='new york' or grade>100
select*from cust_info where city='new york'or grade between 100 and 200
select*from cust_info where not (city='new york'or grade<100)
select*from orders
select*from orders where ((orders_id=70003 and salesman_id>5005)or purchase_amt<500)
select*from salesman
select*from salesman where commisson between 8 and 12