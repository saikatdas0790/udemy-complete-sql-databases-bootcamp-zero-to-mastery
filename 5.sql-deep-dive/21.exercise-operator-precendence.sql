/*
* DB: Store
* Table: Customers
* Question:
* Select people either under 30 or over 50 with an income above 50000
* Include people that are 50
* that are from either Japan or Australia
*/

select *
from "Store".public.customers
where ((age < 30 or age > 50) and income > 50000)
   or (age = 50 and country in ('Japan', 'Australia'));

/*
* DB: Store
* Table: Orders
* Question:
* What was our total sales in June of 2004 for orders over 100 dollars?
*/

select count(*)
from orders
where extract(year from orderdate) = 2004
  and extract(month from orderdate) = 6;