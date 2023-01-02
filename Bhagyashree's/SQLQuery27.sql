use example
create table emp11(eid int,e_name varchar(15),salary money,m_id int)
insert into emp11 values(101,'smith',8000,101),
                      (102,'james',11000,108),
					  (103,'scott',18000,109),
					  (104,'july',34000,104),
					  (105,'ruchita',8000,102),
					  (106,'adoms',8000,107)
					  select *from emp11
select salary,e_name from emp11 where salary=(select min(salary) from emp11)
select salary,e_name from emp11 where salary>(select (salary) from emp11 where eid=101)
select salary,e_name from emp11 where salary>(select avg(salary) from emp11)

select a.e_name,b.e_name from emp11 a ,emp11 b where a.m_id=b.eid 
