-- -------------------------------------
-- SQl Business Question --
-- Day-03--
-- -------------------------------------
-- Q1 — AND Delhi ke customers find karo jinki age 20 se greater hai.
use data_analyst;
select *
from customers
where city ='delhi'
and age > 20;

-- Q1. Lucknow ke customers find karo jinka total_spent ₹40,000 se greater hai.
select *
from customers
where city = 'lucknow'
and total_spent > 40000;

-- Female customers find karo jinki age 24 ya usse greater hai.
select *
from customers
where gender = 'female'
and age >24;

-- Male customers find karo jo Delhi mein hain.
select *
from customers
where gender ='male'
and city = 'delhi';

-- Delhi ya Mumbai ke customers find karo.
select *
from customers
where city = "Delhi"
or city = 'mumbai';

-- Aise customers find karo jo: Lucknow mein hain
-- OR
-- unka total spending ₹1,00,000 se zyada hai
select *
from customers
where city ='lucknow'
or total_spent > 100000;

-- Delhi ke customers ko exclude karke baaki customers find karo.
select *
from customers
where not city ='delhi';

-- Aise customers find karo jo:
-- LucknowANDFemaleANDage >= 24
select *
from customers
where city ='lucknow'
and gender ='female'
and age >=24;

-- Humein Delhi ke customers chahiye jinhone ₹50,000 se zyada spend kiya hai aur age 24 se zyada hai."
-- Required columns:
-- customer_name
-- age
-- city
-- total_spent
select customer_name,age,city,total_spent
from customers
where city = 'delhi'
and total_spent >5000
and age >=25;


-- Company wants customers who are: Delhi OR Mumbai AND have spent more than ₹50,000.
-- Required:
-- customer_name
-- city
-- total_spent
select customer_name, city, total_spent
from customers
where city = ('delhi' or 'mumbai')
and total_spent >50000;


-- Management wants: Delhi ke female customers
-- OR
-- Mumbai ke male customers.
-- Required columns:
-- customer_name
-- city
-- gender
-- total_spent
select customer_name,city,gender,total_spent
from customers
where (city = 'delhi' and gender = 'female')
or (city = 'mumbai' and gender = 'male');

-- Aise customers find karo jo Delhi ya Lucknow mein hain, Female hain, aur unhone ₹40,000 se zyada spend kiya hai.
select *
from customers
where (city = 'delhi' or city ='lucknow')
and gender = 'female'
and total_spent > 40000
and age >25;










