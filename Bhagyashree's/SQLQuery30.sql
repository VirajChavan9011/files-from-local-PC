use subquery
create table emp3(e_id int,e_name varchar(15),addr varchar(15))
insert into emp3 values(1,'ravi','pune'),
                       (2,'netin','delhi'),
					   (3,'varun','mumbai'),
					   (4,'rohan','banglore'),
					   (5,'amey','pune')
	create table project1(e_id int,p_id varchar(10),p_name varchar(15),loc varchar(15))
	insert into project1 values(1,'p1','iot','banglore'),
	(5,'p2','big data','delhi'),
	(3,'p3','android','mumbai'),
	(4,'p4','retail','haidrabad')
	select *from emp3
	select*from project1
select*from emp3 where exists (select * from Project1 where emp3.e_id=Project1.e_id)
