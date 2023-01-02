create database sales
use sales
create table salesman(salesman_id int,name varchar(15),city varchar(15),commisson money)
insert into salesman values(5001,'james','new york',16),
                           (5002,'nil','paris',13),
						   (5003,'pit alex','londan',12),
						   (5004,'Mc lyon','paris',15),
						   (5005,'adom','rome',12),
						   (5006,'lasoun','london',10),
						   (5007,'shikha','paris',8)
select*from salesman
use sales
create table orders(orders_id int,purchase_amt money,cusst_id int,salesman_id int)
insert into orders values('70001',150,3005,5002)
insert into orders values('70002',170,3004,5002)
insert into orders values('70003',65,3006,5001)
insert into orders values('70004',110,3003,5006)
insert into orders values('70005',220,3002,5003)
insert into orders values('70006',270,3001,5001)
select*from orders
select name,commisson,city from salesman
select*from salesman where city='pries' or commisson=8
						 
