create database purchase3
use purchase3
create table customer5(cust_id int primary key,cust_name varchar(50),city varchar(50),grade int,sals_id int)
insert into customer4 values(3002,'NR','newyork',100,5001),
                             (3007,'BD','NEW YORK',200,5001),
                             (3005,'GZ','californiya',200,5002),
                             (3008,'JG','london',300,5002),
                             (3004,'FG','paris',300,5006),
                             (3009,'GC','barlin',100,5003),
                             (3003,'JA','mosko',200,5007),
                             (3001,'BG','london',100,5005)
select*from customer4
select*from orders4



create table orders4(ord_no int,pur_amt int,cust_id int foreign key references customer4(cust_id),sal_id int)
insert into orders4 values(70001,150,3005,5002),
(70009,150,3001,5005),   
(70002,270,3002,5001),
(70004,6,3009,5003),
(70007,110,3003,5002),
(70005,948,3007,5001),
(70010,2400,3004,5006),
(70003,1983,3009,5003),
(70012,2480,3008,5002)

select cust_id,location from 

                          