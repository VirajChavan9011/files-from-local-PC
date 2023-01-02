use sales
create table test1(id int unique,first_name varchar(50) not null,city varchar(50) default'pune', salary money check(salary>5000))
select*from test1
insert into test1(id,first_name,city,salary) values (101,'reema','pune',6000)
insert into test1(id,first_name,salary) values (102,'reema',7000)
insert into test1(id,first_name,city,salary) values (101,'reema','pune',6000)
insert into test1(id,first_name,salary) values (101,'reema',6000)