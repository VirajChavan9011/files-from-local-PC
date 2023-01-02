use sales
create table department(emp_no int,ename varchar(10),job varchar(10),hire_date date,salary money,dept_no int)
select*from department
insert into department values(7369,'smith','clerk','1980-12-17',8000,20),
  insert into department values(7499,'allen','salesman','1982-02-09',5700,30)
							 insert into department values(7521,'ward','salesman','1982-02-06',86000,30),
							insert into department values (7566,'jones','manager','1981-04-02',32000,20),
							insert into department values (7654,'mariya','salesman','1981-09-29',72000,30),
							 insert into department values(7698,'belly','manager','1981-10-02',70000,30),
							insert into department values (7782,'clark','manager','1987-04-15',87000,10),
						insert into department values	 (7788,'scott','analyst','1980-06-28',40000,20),
							 insert into department values(7839,'king','president','1984-09-29',98000,null)

select count(emp_no) over (partition by job) as count_emp_no,job from department  	
select sum(salary)as sum_salary,job from department group by job
select sum(salary)as sum_of_salary,job from department group by job having sum(salary)>100000
select max(salary)as max_salary,min(salary),dept_no from department group by dept_no

