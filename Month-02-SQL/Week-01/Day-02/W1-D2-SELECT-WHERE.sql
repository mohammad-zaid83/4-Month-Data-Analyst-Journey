-- -----------------------------------
-- SQL Day-2
-- Q1 — Basic
-- ------------------------------------
use data_analyst;
SELECT *
FROM customers;
-- Q2 — Selected Columns

-- Sirf ye columns display karo: customer_name,city, total_spent
SELECT customer_name, city, total_spent
from customers;

-- Q3 — City

-- Sirf Delhi ke customers display karo.
select *
from customers
where city = 'delhi';

-- Q4 — Gender Sirf Female customers display karo.
select *
from customers
where gender = 'female';

-- Q5 — Age

-- Aise customers find karo jinki age 25 se greater hai.
select *
from customers
where age > 25;

-- Q6 — Spending Aise customers find karo jinka total_spent ₹50,000 se greater hai.
select *
from customers
where total_spent > 50000;

-- Q7 — Spending Aise customers find karo jinka total_spent ₹50,000 ya usse zyada hai.
select *
from customers
where total_spent >=50000;

-- Q8 — Age Aise customers find karo jinki age 25 se less hai.

select *
from customers
where age <25 ;

-- Q9 — City Aise customers find karo jo Delhi mein nahi hain.

-- Q10 Sirf: customer_name age total_spent dikhao jinki spending 70000 se greater hai.
select customer_name, age, total_spent
from customers
where total_spent > 70000;









