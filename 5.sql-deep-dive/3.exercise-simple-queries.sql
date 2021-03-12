select *
from employees;

select count(*)
from departments;

select count(*) - 1 as "Number of raises"
from salaries
where emp_no = 10001;

select title
from titles
where emp_no = 10006;