use purchase3
create table emp(emp_id int,emp_name varchar(15),salary money)
insert into emp values(1,'aaa',10000),
                      (2,'bbb',20000),
					  (3,'ccc',30000),
					  (4,'ddd',40000),
					  (5,'eee',50000)

create table adress(emp_id int,adress varchar(15))
insert into adress values(1,'mumbai'),
                         (2,'pune'),
						 (5,'mumbai')

select * from adress
select * from emp
select * from emp where emp_id in(select emp_id from adress where adress is  null)
select*from emp left join adress on emp.emp_id=adress.emp_id where adress is null
select*from emp inner join adress on emp.emp_id=adress.emp_id where adress='mumbai'
select*from emp right join adress on emp.emp_id=adress.emp_id
select*from emp left join adress on emp.emp_id=adress.emp_id
select*from emp full outer join adress on emp.emp_id=adress.emp_id where adress is null