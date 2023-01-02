create database hard_solve
use hard_solve
---union example---
1.---from the following table wwrite sql quiry to find all salespople and customers located in the city of london---
select name,s.city,cust_name,c.city from salesman s,customer14 c where s.salesman_id=c.salesmamn_id and (c.city ='london' or s.city='london')
create table salesman(salesman_id int,s_name varchar(50),city varchar(50),commission float)
insert into salesman values(5001,'james hoog','new york',0.15),
                           (5002,'nail knite','paris',0.13),
						   (5005,'pit alex','london',0.11),
						   (5006,'mc lyon','paris',0.14),
						   (5007,'paul adam','rome',0.13),
						   (5003,'lauson hen','san jose',0.12)
select*from salesman
create table customer14(customer_id int,cust_name varchar(50),city varchar(50),grade int,salesmamn_id int)
insert into customer14 values(3002,'nick rimando','new york',100,5001),
                           (3007,'brad davis','new york',200,5001),
						   (3005,'graham zusi','california',200,5002),
                           (3008,'julian green','london',300,5002),
                           (3004,'fabian johnson','paris',300,5006),
						   (3009,'geoff cameron','berlin',100,5003),
						   (3003,'jozy altidor','moscow',200,5007),
						   (3001,'brad guzan','london',100,5005)

select*from salesman
select*from customer14

select name,city from salesman  where city='london'
union
select cust_name,city from customer14 where city='london'
     
----from the followin table wrirte a sql quiry to find distinct salespeople and their cities.return salespersone id and city
select distinct salesman_id,city from salesman
select salesman_id,city from salesman
union
select customer_id,city from customer14

---from the followinf table,write a sql query to find all those salespeople and customers who are involved in the inventory managemant system.
return salesperson id,customer id






