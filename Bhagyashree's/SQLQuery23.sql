use purchase
create table s7(s_num varchar(15),s_name varchar(15),status int,city varchar(15))
insert into s7 values('s1','prentice hall',30,'calcutta'),
                     ('s2','mcgraw hall',30,'mumbai'),
					 ('s3','wiley',20,'chennai'),
					 ('s4','pearson',40,'delhi'),
					 ('s5','galgotia',10,'delhi')

create table sp1(s_num varchar(15),p_num varchar(15),quantity int)
insert into sp1 values('s1','p1',300),
                      ('s1','p2',200),
					  ('s2','p1',100),
					  ('s2','p2',400),
					  ('s3','p2',200),
					  ('s4','p2',200)
select*from s7
select*from sp1

select sum(quantity) as total_quantity,p_num from sp1 group by p_num
select count(s_num) from sp1 group by p_num having count(s_num)>1 



