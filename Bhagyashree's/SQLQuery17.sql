use purchase3
create table t1(cust_id int,cust_name varchar(15),product_name varchar(50),product_id int)
insert into t1 values(1,'shamal','book',101),
                     (2,'sai','pen',102),
					 (3,'piyusha','pencil',103),
					 (4,'soniya','notbook',104),
					 (5,'sanket','book',105)

create table t2(order_id int,product_id int,quantity int)
insert into t2 values(1,101,40),
                     (2,102,20),
					(3,103,30),
					(4,104,40),
				(5,105,70)
				select*from t1
				select*from t2

select t1.cust_name,t1.product_name,T2.quantity from t1 join t2 on t1.product_id=t2.product_id