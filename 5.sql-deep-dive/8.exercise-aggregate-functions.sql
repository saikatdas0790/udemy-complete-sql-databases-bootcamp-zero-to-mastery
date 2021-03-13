-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: Employees
 */
-- 


-- Question 1: What is the average salary for the company?
-- Table: Salaries

select avg(salary)
from salaries;


-- Question 2: What year was the youngest person born in the company?
-- Table: employees

select extract(year from birth_date)
from employees
order by birth_date desc
limit 1;

-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: France
 */
-- 

-- Question 1: How many towns are there in france?
-- Table: Towns

select count(*)
from "France".public.towns;

-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: World
 */
-- 

-- Question 1: How many official languages are there?
-- Table: countrylanguage

select count(*)
from "World".public.countrylanguage
where isofficial = true;

-- Question 2: What is the average life expectancy in the world?
-- Table: country

select avg(lifeexpectancy)
from "World".public.country;

-- Question 3: What is the average population for cities in the netherlands?
-- Table: city

select avg(population)
from city
where countrycode = (select code from country where name = 'Netherlands');