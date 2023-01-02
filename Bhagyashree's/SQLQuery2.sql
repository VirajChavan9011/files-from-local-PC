Create a table cust12  having attributes cust_id,cust_name,city  and another table order1 having attributes  order_id, 
product name, and cust_id
(use primary key and foreign key )

create table cust12(cust_id int primary key,cust_name varchar(50),city varchar(50))

create table order77(ord_id int,product_name varchar(50),cust_id int foreign key references cust12(cust_id))
select*from cust12
alter table cust12 drop column t_name
alter table cust12 add t_name varchar(50)
update salesman3 set t_name='thakur' where salesman_id=5001
sp_rename 'salesman3.t_name','l_name'
delete from salesman3 where salesman_id=5001
select*from salesman3 where salesman_id between 5002 and 5006 
select distinct city from salesman3
select*from salesman3 order by city
create table stud1(stud_id int,s_name varchar(50),salary money)
insert into stud1 values(1,'siddhi',5000)
insert into stud1 values(2,'pallavi',15000)
insert into stud1 values(3,'kartiki',55000)
insert into stud1 values(4,'raani',25000)
select*from stud1
insert into stud1 values(5,'jyoti',30000)
begin transaction
insert into stud1 values(6,'kirti',23000)
begin transaction
rollback
delete from stud1 where stud_id=6
begin transaction
delete from stud1 where stud_id=5
save transaction s1
delete from stud1 where stud_id=4
begin transaction 
save transaction s1
rollback

select *from stud1




























