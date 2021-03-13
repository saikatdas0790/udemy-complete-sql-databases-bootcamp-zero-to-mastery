select count(*)
from "Store".public.customers
where gender = 'F'
  and state in ('OR', 'NY');