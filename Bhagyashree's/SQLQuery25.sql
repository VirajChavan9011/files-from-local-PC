create database practice
use example
create table tpass(stud_id int,stud_name varchar(15),city varchar(15))

insert into tpass values(50,'saish','mumbai')
select*from tpass
alter table tpass delete persentag
sp_rename'tpass.markes','persentag'
update tpass set persentag=80 where stud_id=50
delete from tpass where stud_id=50
begin transaction
insert into tpass values(50,'saish','mumbai',80)
rollback 
commit 
select*from salesman8
select*from salesman8 where city='rom' and commission=12.3
select sale_id,city,commission,s_name from salesman8 where (sale_id between 5001 and 5007)and commission>13
select*from salesman8 where city in ('paris','london')
select*from salesman8 where not city='london'
select*from salesman8 where sale_id between 5002 and 5007
select distinct city,commission from salesman8
select top 4*from salesman8
select*from salesman8 where city like 'l%'
select*from salesman8 where city like '%n'
select*from salesman8 where city like '_e%'
select*from salesman8 where city like '__w%'
select*from salesman8 where city like '%l%'
select sum(commission) as sum_table from salesman8
select count(commission) as sum_table from salesman8
select avg(commission) as sum_table from salesman8
select max(commission) as sum_table from salesman8select 
select*from salesman8 order by sale_id
select*from salesman8 order by sale_id desc
select 
use example
select*from customer8
select*from salesman8
select city,sale_id,max(grade) as gr from customer group by city,sale_id having max(grade)>=200
select c.commission,max(s.cust_id)as commi from customer8 s,salesman8 c group by c.commission
having s.cust_id>3002
use practice
create table customer (customer_id int,cust_name varchar(50),city varchar (20),grade int,salesman_id int)
create table orders(ord_id int,purch_name varchar(50),ord_date date,cust_id int ,salesman_id int)
select*from orders
create table salesman (salesman_id int,name varchar(50),city varchar(70),commission float)
select*from salesman
select*from customer
select city,avg(grade) as gr from customer where customer_id>3003 group by city having avg(grade)>=200
select city,avg(grade) as gr from customer where grade<>200 group by city having avg(grade)>=200

select c.cust_name,c.city,s.name,s.commission from salesman s inner join customer c
on c.salesman_id=s.salesman_id
select c.customer_id, c.cust_name,c.city,c.grade,s.name,s.city from salesman s inner join customer c on
s.salesman_id=s.salesman_id order by c.customer_id









