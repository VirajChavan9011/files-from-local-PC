use sales
create table student(stud_id int primary key,s_name varchar(50),marks int)
insert into student values(10,'komal',90),
                          (20,'seema',80),
						  (30,'shree',95)
select*from student
create table course1(course_id int,course_name varchar(50),stud_id int foreign key references student(stud_id))
insert course1 values(101,'paython',10),
                    (202,'linux',30),
					(303,'java',30)
select*from course1
select*from student