create database myclass1
use myclass1
create table student_info(student_id int,student_name varchar(20),city varchar(20),DOA date)
insert into student_info values(1001,'Fatima','pune','2010-11-20')
insert into student_info values(1002,'Rupesh','Mumbai','2011-04-11')
insert into student_info values(1003,'Sara','Delhi','2011-05-15')
insert into student_info values(1004,'Rajat','Kolhapur','2010-04-2')
insert into student_info values(1005,'Saniya','Delhi','2011-04-03')
insert into student_info values(1006,'Purva','Mumbai','2010-02-05')
insert into student_info values(1007,'Rupa','pune','2010-07-06')
select*from student_info
alter table student_info add Grade varchar(20)
alter table student_info drop column G
sp_rename 'student_info.grade','g'
sp_rename'student_info.doa','date-of-birth'
