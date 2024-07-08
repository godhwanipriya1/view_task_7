select * from customer_data
select * from busniess_unit
---view matlab virtual table

create view employee as
select cd.emp_id,cd.full_name,cd.job_title,cd.age,cd.experience,cd.department,
sum(age)as "sumofage",avg(age)as "avgofage",min(age)as "minofage",max(age)as "maxofage" from customer_data as cd
inner join busniess_unit as bu
on cd.emp_id=bu.emp_id
group by cd.emp_id,cd.full_name,cd.job_title,cd.age,cd.experience,cd.department

----update
update employee
set age = 40
where full_name = 'Jose Singh'      select * from employee

----alter
alter table employee
add column salary int;

alter table employee
drop column department;

----delete
delete from employee
where emp_id = 'E02907'
 
