use exam_pract
create table order3(ord_no int,purchase_amt float,ord_date date,cust_id int,sale_id int)
insert into order3 values(70001,150.5,'2012/10/05',3005,5002),
                          (70009,270.65,'2012/09/10',3001,5005),
						  (70002,65.26,'2012/10/05',3002,5001),
						  (70004,110.5,'2012/08/17',3009,5003),
						  (70007,948.5,'2012/09/10',3005,5002),
						  (70005,2400.6,'2012/07/27',3007,5001),
						  (70008,5760,'2012/09/10',3002,5001)

select*from order3

create view vi3
as
select ord_date,count(distinct cust_id)as counts,avg(purchase_amt)as avg_amt,sum(purchase_amt)as sum_amt from order3 group by ord_date

select*from vi3
select*from order3

create table mobile(branch varchar(50),m_date date,saler varchar(50),item varchar(50),quantity int,unit_price int)
insert into mobile values('paris-1','2021/12/07','charles','headphones A2',1,80),
                         ('london-1','2021/12/06','john','cellephone x2',2,120),
                         ('london-2','2021/12/07','marry','headphones A1',1,60),
						 ('paris-1','2021/12/07','charles','batterycharger',1,50),
						 ('london-2','2021/12/07','marry','cellphone B2',2,90),
						 ('london-1','2021/12/07','john','headphones A0',5,75),
						 ('london-1','2021/12/07','sean','cellphone X1',2,100)
select*from mobile
select m_date,max(unit_price) over(partition by m_date) as p,max(unit_price) over(partition by branch) as d from mobile
---Write the query that price of the most expensive item sold in the same branch that day.
 with ex_item1
 as
 (
     select m_date,branch,max(unit_price)as max_price from mobile group by branch,m_date

)
select distinct m.m_date,m.branch,m.unit_price from mobile m join ex_item1 ex on m.branch=ex.branch

---
Empid 
firstname
Lastname
Deptid
Managerid
Office id

--Write a query to display the employee names and the number of employees from the same department.

with emp_dept
as
(
    select dept_id,count(emp_id)as sum_emp_id from employee group by dep_id
)
select e.emp_id,e.f_name,e.l_name,e.dept_id from employee e join emp_dept emp on e.dept_id=emp.dept_id

select*from mobile

alter procedure p @branch varchar(50) as select saler ,count(saler) over() as s from mobile where branch=@branch
p 'london-1'

