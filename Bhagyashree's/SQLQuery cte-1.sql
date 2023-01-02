create database CTE
use CTE

create table stud12(id int,f_name varchar(50),l_name varchar(50),education varchar(50),income int)
insert into stud12 values(1,'seema','mohite','ssc',10000),
                           (2,'reema','patil','hsc',40000),
						   (3,'kamlesh','thakur','bcom',20000),
						   (4,'sachin','rane','bsc',50000),
						   (5,'ramesh','sawaji','mcom',30000),
						   (6,'pravin','sarang','mba',25000)
select*from stud12

with new_cte2
as
(
   select*from stud12
)
	update new_cte2 set education='degree' where education='hsc'

	--examp2

create table emp(emp_id int,f_name varchar(50),l_name varchar(50),possition varchar(50),outlet int,region varchar(50),bonus int)
insert into emp values(1,'max','black','manager',123,'south',2030),
                       (2,'jana','wolf','cashier',123,'south',1215),
					   (3,'kate','white','customer service',123,'south',1545),
					   (4,'andrew','smart','customer service',123,'south',2549),
					   (5,'sofia','banc','manager',224,'north',2440),
					   (6,'jack','spider','customer service',224,'north',2220),
					   (7,'marion','spencer','cashier',211,'north',1445)
select*from emp

----the bonus paid to each employee along with the average bonus for their position. 

select*from emp

with avg_bonus
as
(
     select possition,avg(bonus)as avg_bonus from emp group by possition

),
     
 avg_bonus1
as
(
     select region,avg(bonus)as avg_bonus from emp group by region

)
     select e.emp_id,e.l_name,e.f_name,e.possition,e.bonus,avg.avg_bonus from emp e
	 join avg_bonus avg
	 on e.possition=avg.possition
	 join
	 avg_bonus1 p on e.region=p.region



	 ----
create  table order68(ord_id int,ord_date date,cust_name varchar(50),cust_city varchar(50),ord_amt int)

insert into order68 values(101,'2010/12/19','aliya','phonix',421)
 insert into order68 values(102,'2010/12/09','lawrence','chicago',9832),
						  (103,'2011/03/09','austin','austin',936),
						  (104,'2010/09/29','roland','phonix',2431),
						  (105,'2010/12/19','stella','chicago',420),
						  (106,'2012/09/03','ray','chicago',520),
						  (107,'2012/10/05','alex','austin',540),
						  (108,'2014/07/04','jorg','phonix',4170)
select*from order68

select ord_id,cust_name,cust_city,avg(ord_amt) over(partition by cust_city order by ord_amt desc)as desc_order_num from order68

select ord_id,cust_name,cust_city,ord_amt,rank() over(partition by cust_city order by ord_amt)as desc_order_num from order68

select ord_id,cust_name,cust_city,ord_amt,dense_rank() over(partition by cust_city order by ord_amt desc)as desc_order_num from order68

---IMP---
create table emp55(emp_id int,f_name varchar(50),l_name varchar(50),cuntry varchar(50))
insert into emp55 values(101,'jems','barry','uk'),
                        (101,'jems','barry','uk'),
						(101,'jems','barry','uk'),
						(102,'jayesh','gupta','usa'),
						(103,'aliya','barry','london'),
						(104,'sara','kumar','london'),
						(104,'sara','kumar','london')
select*from emp55

with double_cte1(f_name,l_name,cuntry,duplicat_count)
as
(
      select f_name,l_name,cuntry,row_number()over(partition by f_name,l_name,cuntry order by emp_id) from emp55


)

	   delete from double_cte1 where duplicate_count<1


car_make	car_model	car_type	car_price
Ford	Mondeo	premium	18200
Renault	Fuego	sport	16500
Citroen	Cactus	premium	19000
Ford	Falcon	low cost	8990
Ford	Galaxy	standard	12400
Renault	Megane	standard	14300
Citroen	Picasso	premium	23400

create table manifacture(car_make varchar(50),car_model varchar(50),car_type varchar(50),car_price int)
insert into manifacture values('ford','mondeo','premium',18200),
                              ('renult','fuego','sport',16500),
							  ('citroen','cactus','premium',19000),
							  ('ford','falcon','low cost',8990),
							  ('ford','galaxy','standerd',12400),
							  ('renult','megane','standerd',14300),
							  ('citroen','pecaso','premium',23400)

select* from manifacture

obtain the average price and the top price for each make.
select car_make,max(car_price) as top_price,avg(car_price)as avg_price from manifacture group by car_make 

select car_make,car_price,avg(car_price)over(partition by car_make)as avg_price,max(car_price)over(partition by car_make)as max_price from manifacture

---For each car, to obtain the make, the model, the price, the average price across all cars, and the average price over the same type of car
 select car_make,car_price,car_type,avg(car_price)over()as avg_car_price,avg(car_price)over(partition by car_make)as avg_total from manifacture

  ----Create a relation college having attributes  college_id which is not null and unique,
  ---college code which is not null, college name, city  (default city  is pune),amount (check it is greater than 1000)
----Enter any  5 records
create table collage1(col_id int unique,col_code int not null,cole_name varchar(50),city varchar(50)default'pune',amt money check(amt>1000))


insert into collage1 values(555,01,'skp','pune',2000),





select*from collage1


---Fid	Name	Department	Gender
001	Akash	CS	M
002	Sahil	EC	M
003	John	HSS	M
004	Annanya	CS	F
005	Sai	CS	M
006	Sara	HSS	F
 
 create table dep1(id int,name varchar(50),dept varchar(50),gender varchar(50))


 insert into dep1 values(001,'akash','cs','m'),
                        (002,'sahil','es','m'),
						(003,'john','hss','m'),
						(004,'ananya','cs','f'),
						(005,'sai','cs','m'),
						(006,'sara','hss','f')
drop table dep1
select *from dep1
 
 with c as(select id,row_number() over(partition by id order by id) as d from dep1)
 delete from c where d>1

 update dep1
 set dept=(
 iif(dept='cs','computer science',
     iif (dept='es','electronic communication',
	     iif(dept='hss','humanity social scienc',null)
		 )
		 ) 
		 ) 
		   from dep1

update dep1
set dept=(
case
   when dept='cs'then'computer science'
   when dept='es'then'electronic communication'
   else 'humanity social scienc'
   end)
   from dep1

   Update dep1 set dept='humanity and social science ' ,where dept='hss',set dept='computer science ' ,
   where dept='cs', set dept='electronics and telecommunication ' ,where dept='ec'
