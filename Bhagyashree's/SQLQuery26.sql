use vivaexam1
create table employee5(emp_id int,first_name varchar(15),last_name varchar(20),job_id varchar(10),salary money,dept_id int)
insert into employee5 values(101,'smith','warrirs','sd_vp',34000,60),
                            (102,'paulo','fernandes','it_prog',10000,90),
							(103,'piter','king','ad_vp',24000,60),
							(104,'john','hunold','it_ptog',15000,90),
							(105,'sarra','austin','ad_press',20000,50),
							(106,'piyush','arrora','it_prog',15000,90),
							(107,'pritam','pathak','it_prog',12000,90)
select*from employee5
create table department5(dept_id int,dept_name varchar(15),manager_id int)
insert into department5 values (60,'addministration',200),
                               (90,'marketing',201),
						       (90,'purchasing',114),
							   (60,'HR',205),
							   (50,'shepping',115),
							   (50,'IT',203),
							   (90,'finance',202)
select*from employee5
select*from department5

select d.dept_id,e.first_name,e.job_id,d.dept_name from employee5 e join department5 d on d.dept_id=e.dept_id where dept_name='finance'
