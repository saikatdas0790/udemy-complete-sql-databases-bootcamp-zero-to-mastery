-- How many female customers do we have from the state of Oregon (OR)?

select count(*)
from customers
where gender = 'F'
  and state = 'OR';

-- Who over the age of 44 has an income of 100 000 or more? (excluding 44)

select *
from "Employees".public.employees
         join salaries s on employees.emp_no = s.emp_no
where age(birth_date::timestamp) > 'P44Y'::interval
  and s.salary > 100000;

-- Who between the ages of 30 and 50 has an income less than 50 000?
-- (include 30 and 50 in the results)

select *
from "Employees".public.employees
         join salaries s on employees.emp_no = s.emp_no
where age(birth_date::timestamp) between 'P30Y'::interval and 'P50Y'::interval
  and s.salary < 50000;

-- What is the average income between the ages of 20 and 50? (Excluding 20 and 50)

select avg(salary)
from "Employees".public.employees
         join salaries s on employees.emp_no = s.emp_no
where age(birth_date::timestamp) > 'P20Y'::interval
  and age(birth_date::timestamp) < 'P50Y'::interval;