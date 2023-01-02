use example
create table worker(emp_no int,e_name varchar(15),mgr_id int)
insert into worker values(1,'nirmal',4),
                         (2,'kailash',4),
						 (3,'vina',1),
						 (4,'boss',null)
 select*from s1
  select*from sp
  select*from worker
  select a.e_name,b.e_name from worker a,worker b where a.mgr_id=b.emp_no






 select a.e_name,b.e_name as manager_name from worker a,worker b  where a.mgr_id=b.emp_no

 use sales


 