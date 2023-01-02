use subquery
create table players(pid int,p_name varchar(15),wight int)
insert into players values(1,'smeeth',270),
(2,'john',160),
(3,'peter',180),
(4,'roy',220),
(5,'samual',190)
select *from players

select p_name,wight, 
case
       when wight>250 then 'over250'
	   when wight>200 then '201-250'
	   when wight>200 then '176-200'
	   else '175 or under wight'
 end as 'wight'
 from players

 select id,
 case
        when id=1 or 3 then'europ'
		 when id=5 or 6 then'south afreca'
		  when id=2 or 4 then'africa and austreliya'
		   when id=7 then'antartica'
		   else 'some where'
end id
from customer

create table email22(s_name varchar(15),email varchar(50))
insert into email22 values('john','john@gmail.com'),
                         ('jems','j@gmail.com'),
						 ('seema','seema@gmail.com')
drop table email22
select len('sara@aaa.com')
 select* from email22

 update email22 set email=(case when email='john' then 'john' else 'boss' end)

 select email,stuff(email,2,len(email)-2,replicate('*',len(email)-2)) from email22

select  
case
     when gender='m' then 'male'
	 when gender='f' then 'female'
from faculty

select s_name, dept_no, 
case
when dept_nam=cs then 'computer science'
when dept_nam=ES then 'electronic communication'
when dept_name=HSS then 'humanity social science'
end dept_no 
from faculty

CREATE TABLE emp_details (eid int, ename varchar(20), address varchar(20))
INSERT INTO emp_details VALUES
(1, 'Ravi','pune'), (2,'Nitin','Delhi'), (3,'Varun','Mumbai'),
(4,'Rohan','Banglore'), (5,'Amey','Pune')
select*from emp_details
with ab as (select eid,row_number() over(partition by eid order by eid) as ba from emp_details) delete from ab where ba>1
create procedure as_p2 @Ename varchar(50),@address varchar(90) as begin 
select * from Emp_details 
where Ename=@ename and address=@address end
as_p2 'ravi','pune'
drop procedure as_p2
 create table sub_total4(id int,s_name varchar(50),tot_mark int,num_sub int,per int)
 insert into sub_total4 values(1,'suman',500,6,null),
                             (2,'ramesh',450,6,null),
                             (3,'nitin',350,6,null),
                             (4,'saish',420,6,null)
select*from sub_total4

alter procedure spmarks4
@id int,@s_name varchar(40),
@tot_mark int,
@num_sub int
as begin
insert into sub_total4 (id,s_name,tot_mark,num_sub) values(@id,@s_name ,@tot_mark,@num_sub)
end
spmarks4 5,'jay',400,5




create table department1(id int,D_name varchar(40),dept varchar(40),salary money)
 insert into department1 values(1,'shila','finance',45000),
                              (2,'prem','it',48000),
                              (3,'pranita','null',50000)
select*from department1

alter procedure spgetdepartment1 @id int,@Dept Varchar(40) 
as begin 
update department1 
set 
dept=@dept 
where id=@id 
end
spgetdepartment1 1,'finance'


create table birth1(id int,s_name varchar(50),dob date)
insert into birth1 values(1,'sam','1980-12-30'),
                        (2,'ram','1982-09-01'),
						(3,'gopal','1995-08-22'),
						(4,'sara','1979-11-02')
select*from birth1
select id,s_name,dob,datename(weekday,dob) as Day,month(dob) as Month_number,datename(month,dob) as month_name,year(dob) as Year from birth1

create table emp_date(id int,d_name varchar(50),hiredate date)
insert into emp_date values(1,'seema','2003-02-10'),
                            (2,'rema','2010-03-08'),
							(3,'smeth','2012-02-01'),
							(4,'johan','2007-07-12'),
							(5,'kamu','2013-08-10'),
							(6,'ramu','2022-09-09')
select*from emp_date
select id,d_name,hiredate,datediff(year,hiredate,getdate())as diff from emp_date
select d_name,dateadd(year,6,hiredate)as add_year from emp_date

create table vote2(id int,d_name varchar(50),hiredate date)
insert into vote2 values(1,'seema','2001-02-10'),
                            (2,'rema','2003-03-08'),
							(3,'smeth','1999-02-01'),
							(4,'johan','2022-07-12')
select*from vote2

select*,datediff(year,hiredate,getdate()) as ELigible from vote2 where datediff(year,hiredate,getdate())>=18
select id,d_name,hiredate, datediff(year,hiredate,getdate()) from vote2

select d_name,hiredate,
case
    when datediff(year,hiredate,getdate())>=18 then'eligible'
    else 'not_eligibel'
end eligibility
from vote2

create table product55(id int,p_name varchar(50),quantity int,sold_quantity int,ava_quantity int null)
insert into product55(id,p_name,quantity,sold_quantity) values(1,'smeeth',90,10),
                            (2,'john',80,20),
							(3,'seema',70,10),
							(4,'reema',50,30)
select*from product55

alter procedure spget14
@id int
as 
begin transaction
update product55 set ava_quantity=(quantity-sold_quantity) where id=@id

spget14 4
rollback

select count(*) as No_of_nurses from emp where registered='t' and position='nurse'

create procedure Sp_rename1
@id int,@city varchar(70) 
as 
begin 
begin try
begin transaction 
update MyAddress set city=@city where id=@id 
update My_mail_Address set city=@city where id=@id
commit transaction
print 'transaction completed'
end try
begin catch
rollback transaction
print'transaction rollback'
end catch
end
Sp_rename1 1,'pune'


create table customer(id int primary key,c_name varchar(50),adress varchar(50))

insert into customer values(1,'ashutosh','mumbai'),
                            (2,'sara','pune')
create table customer_det(id int primary key,cust_id int foreign key references customer(id),mob_num int)
insert into customer_det values(1,1,111111)
insert into customer_det values(2,1,222222)

create procedure SP_custdet1
as begin
begin try
insert into customer_det values(3,4,333333)
end try
begin catch
print error_message()
end catch
end
SP_custdet1


select*from customer
select*from customer_det


EmployeeDetails
EmpId	FullName	ManagerId	DateOfJoining	City
121	John Snow		321			01/31/2014		Toronto
321	Walter White	986			01/30/2015	California
421	Kuldeep Rana	876			27/11/2016	New Delhi
521	Sara malhotra	321			03/10/2020	mumbai

EmployeeSalary
EmpId	Project		Salary	Variable
121			P1		8000	500
321			P2		10000	1000
421			P1		12000	0

--Write a query to fetch employee names and salary records. Display the employee details even 
if the salary record is not present for the employee

select e.e_name,s.salary from employeedetails e left join employeesalary s on e.empid=s.empid

--Write an SQL query to fetch all employee records from EmployeeDetails table who have a salary record in EmployeeSalary

select*from e_details where exist(select*from e_salary where e_details.empid=e_salary.empid)

 StudentDetails
StudId	Name			EnrollmentNo	DateOfJoining
11		Nick Panchal	1234567			01/02/2019
21		Yash Panchal	2468101			15/03/2017
31		Gyan Rathod		3689245			27/05/2018

StudentStipend
StudId	Project	Stipend
11		P1	80000
21		P2	10000
31		P1	120000
 --Write a query to fetch student names and stipend records. Return student details even if the stipend record is not present for the student.
select s.name,s1.stipend from studentdetails s left join studentstipent s1 on s.studid=s1.studid
--Write an SQL query to fetch the student names and replace the space with ‘-’.
select replace(studantname,' ','-')from empdetails

--Create a procedure to Retrieve  the name of the employee based on their Id using id as input from user


 create procedure spget1
 @id int,
 as 
 begin
 select name from emp where id=@id
 end

 Student_ID		Stu_Name	Stu_Subject_ID	Stu_Marks	Stu_Age
101				Akhil		BCA101				85		20
102				Balram		BCA104				78		19
103				Bheem		BCA102				80		22
104				Chetan		BCA103				95		20
105				Diksha		BCA104				99		20
106				Raman		BCA105				88		19
107				Sheetal		BCA103						22

--Write a query to show all Subject_ID along with the number of students in there.

Select count(number of student) as student,subject_id from student group by subject_id

Customer
Customer_id		First_name Last_name		age	        country
1				john        Doe				31				USA
2				Robert	  Luna		       22				USA
3				David	 Robinson	       22				UK
4				John	 Fernandes	      25				Uk
5				Betty	 Deo			   28	            UAE

create table customer23(cust_id int,first_name varchar(50),last_name varchar(50),age int,country varchar(50),)
insert into customer23 values(1,'john','doe',31,'usa'),
                             (2,'robert','luna',22,'usa'),
							 (3,'devid','robinson',22,'uk'),
							 (4,'john','fernandes',25,'uk'),
							 (5,'betty','doe',28,'uae')


--Select all employees who has minimum  age.

select*from customer23 where age in (select min(age)from customer23)

Create  procedure which display id and customer _name of  particular country.

create procedure spget3
@country varchar(50)
as 
begin
select cust_id,first_name,last_name,country from customer23 where country=@country
end
spget3 'usa'
Select first 3 records from customer table
select top 3 * from customer23

Id	First_name
1	John
2	Robert
3	David
4	John
5	Betty
 create table cust(id int,first_name varchar(50))
 insert into cust values(1,'john'),
                         (2,'robert'),
						 (3,'devid'),
						 (4,'john'),
						 (5,'betty')
select*from cust
Order_id	amount	custid
1	200	4
2	500	10
3	300	3
4	800	1
5	150	2


create table amont(ord_id int,amount int,cust_id int)
insert into amont values(1,200,4),
						(2,500,10),
						(3,300,3),
						(4,800,1),
						(5,150,2)
select*from cust
select*from amont


--Show details of customers who have placed an order.

select c.id,c.first_name from cust c inner join amont a on c.id=a.cust_id

select id,first_name from cust where id in(select cust_id from amont)

create table ord_detail(ord_id int,prod_id int,uniq_price int,quantity int,amount int)

select*from ord_detail

create procedure spget0
as
begin
begin try
begin transaction
insert into ord_detail values(1,3,300,2000,3)
commit transaction
print 'transaction commited'
end try
begin catch
print error_message()
end catch
end
spget0


create procedure spget21
@ord_id int,
@prod_id int,
@uniq_price int,
@quantity int,
@amount int
as
begin
begin try
begin transaction
insert into ord_detail values(@ord_id,@prod_id,@uniq_price,@quantity,@amount);
update ord_detail set amount = uniq_price * quantity
commit transaction
print 'record added'
end try
begin catch
print error_message()
end catch
end
spget21 2,3,200,6,null

select*from ord_detail

create table ord_details(ord_id int,cust_id int,first_name varchar(50),last_name varchar(50),ord_status int)
insert into ord_details values(101,10,'seema','mohite',1),
                              (102,11,'kumar','sanu',2),
							  (103,12,'pankaj','thakur',3),
							  (104,13,'raj','sonavne',4),
							  (105,14,'mithali','patil',5),
							  (106,15,'vidhya','lakham',6)
select*from ord_details

select cust_id,first_name,ord_status,
iif(ord_status=1,'pending',
     iif(ord_status=2,'processing',
	      iif(ord_status=3,'rejected',
		       iif(ord_status=4,'complete','sorry')
			   )))as changeinfo
			   from ord_details

select cust_id,concat(ord_details.first_name,' ',ord_details.last_name)as fullname from ord_details


create table pointers(emp_id int,emp_name varchar(15),poisition varchar(50),registered varchar(12),ssn bigint,)
insert into pointers values(101,'seeta','head nurse','t',11111110)
insert into pointers values(101,'geeta','nurse','t',3333333330)
insert into pointers values(102,'pramodini','nurse','t',333333330)
select*from pointers
alter table pointers add email1 varchar(60)
update pointers set email1='tanumalad333@gmail.com'
select right(emp_name,2)from pointers
select left(emp_name,3) as change_name from pointers
select charindex('@','tanumalad333@gmail.com')
select substring('tanumalad333@gmail.com',6,len('tanumalad333@gmail.com')-5) from pointers
select replace('happy birthday','happy','pink')
select reverse('emp_name')from pointers
select replicate(emp_name,3)from pointers
alter table pointers drop  dob1
alter table pointers add dob date
update pointers set dob='2005-10-21'where emp_id=102
select datename(weekday,dob) from pointers
select datepart(month,dob) from pointers
select datename(weekday,dob) from pointers
select datename(month,'2001-02-14') from pointers
select dateadd(month,1,'2001-02-14') from pointers
select dateadd(month,-4,'2001-02-14') from pointers
select dateadd(day,-4,'2001-02-14') from pointers
select datediff(year,'2001-02-14',getdate()) from pointers

select substring('A white horse',3,5)

select ('Er'+ 'name')as modified_name

select id,name ,stuff(phone,3,len(phone)-2,replicate('*',len(phone)-2)
create table emp3(id int,emp_name varchar(50),phone varchar(15))
insert into emp3 values(1,'seema','94********')
insert into emp3 values(2,'raj','99********')
insert into emp3 values(1,'prathamesh','77********')

select*from emp3
select id,name ,stuff(phone,3,len(phone)-2,replicate('*',len(phone)-2) 
select e_id,addr,stuff(addr,3,len(addr)-2,replicate('*',len(addr)-2)) from emp3
select id,name,stuff(phone,3,len(phone)-2,replicate('*',len(phone)-2))from emp3

--'0000123000’
---outt put
select replace(trim('0' from '000123000'),'2','222')
select Trim('0' from '000123000')


















