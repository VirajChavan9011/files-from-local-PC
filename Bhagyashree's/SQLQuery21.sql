
select*from customer8
create view vwcustomer
as
select * from vwcustomer
select*from customer8

insert into vwcustomer values(3006,'bhavna','mumbai',400,5008)

select * from vwcustomer
select*from customer8

select *from customer8
select*from salesman8

create view cv1
as
select cust_id,cust_name sale_id,s_name from customer8 join salesman8 on customer8.sale_id=salesman8.sale_id
select*from cv1