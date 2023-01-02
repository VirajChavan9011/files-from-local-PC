use example
create table pizzacomp1(comp_id int,comp_name varchar(15),comp_city varchar(15))
insert into pizzacomp1 values(1,'dominos','losangeles'),
                            (2,'pizzahut','sanfransisco'),
							(3,'papajohns','sandiego'),
							(4,'ah pizza','fremont'),
							(5,'nino pizza','las vegas'),
							(6,'pizzeria','boston'),
							(7,'chuck e cheese','chicago')

create table food1(item_id int,item_name varchar(15),unitsold int,comp_id int)
insert into food1 values(1,'large pizza',5,2),
                       (2,'garlic knots',6,3),
					   (3,'large pizza',3,3),
					   (4,'medium pizza',8,4),
					   (5,'breadesticks',7,1),
					   (6,'medium pizza',11,1), 
					   (7,'small pizza',9,6),
					   (8,'small pizza',6,7)
select*from pizzacomp1
select*from food1

select customer8.cust_name,customer8.city,salesman8.s_name,salesman8.commission from customer8 inner join salesman8
on customer8.sale_id=salesman8.sale_id where customer8.city<>salesman8.city and commission>12

 select c.cust_name,c.city,c.grade,s.s_name,s.city from customer8 c left join salesman8 s on c.sale_id=s.sale_id order by c.cust_id

select s.s_name,s.sale_id,c.cust_name from customer8 c right join salesman8 s on c.sale_id=s.sale_id order by s.s_name

select*from  salesman8 cross join customer8 

select*from salesman8
select*from customer8

select*from pizzacomp1
select*from food1

select f.item_name,f.unitsold,p.comp_name from pizzacomp1 p inner join food1 f on p.comp_id=f.comp_id
select f.item_name,f.unitsold,p.comp_name,p.comp_city from pizzacomp1 p inner join food1 f on p.comp_id=f.comp_id   order by comp_city

select p.comp_name,sum(f.unitsold) over(partition by p.comp_city,f.item_name) as total from 
pizzacomp1 p inner join food1 f on p.comp_id=f.comp_id

