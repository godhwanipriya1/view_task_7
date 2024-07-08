select * from student_data
WITH-OUT GROUP BY

---view matlab virtual table
create view student as
select roll_no,name,city,marks,grade from student_data

---update
update student
set grade = 'A+'
where grade ='A'

update student
set grade ='A'
where marks between 85 and 90
	
---delete 
delete from student
where marks = 40 and roll_no = 111

---alter (ADD)
alter table student
add column age int;

alter table student
add column subject varchar(100);

---ALTER (DROP)
alter table student
drop column city;






