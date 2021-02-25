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

select emp_no     as "Employee #",
       birth_date as "Birthday",
       first_name as "First Name"
from "employees";

select first_name || ' ' || last_name as "Full Name"
from employees;

select max(salary)
from salaries;

select sum(salary)
from salaries;


select *
from employees
where first_name = 'Mayumi'
  AND last_name = 'Schueller';

