create database collage2
use collage2
create table student2(stud_id int identity,stud_name varchar(50),markes int)
select*from student2

insert into student2 values('samiksha',99),
                           ('seema',85),
						   ('rahul',75),
						   ('darpan',65)

create table student3(stud_id int identity(102,3),stud_name varchar(50),markes int)
insert into student3 values('samiksha',99),
                           ('seema',85),
						   ('rahul',75),
						   ('darpan',65)
select*from student3