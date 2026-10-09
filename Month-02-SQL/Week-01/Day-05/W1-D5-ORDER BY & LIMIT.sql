-- -------------------
-- MY SQL Day-05 
-- -------------------
-- 1. Saare customers ko age ke ascending order mein dikhao.
SELECT *
FROM customers
ORDER BY total_spent ASC;

-- 2. Saare customers ko total_spent ke descending order mein dikhao.
SELECT *
from customers
order by total_spent desc;

-- 3. Sirf customer_name aur total_spent select karo aur highest spenders pehle dikhao.
select customer_name, total_spent
from customers
order by total_spent desc;

-- 4. Top 3 highest-spending customers nikalo.
select *
from customers
order by total_spent desc
limit 3;

-- 5. Top 5 youngest customers nikalo.
select *
from customers
order by age ASC
limit 5;

-- 6. Delhi ke customers ko spending ke descending order mein dikhao.
select *
from customers
where city = 'delhi'
order by total_spent desc;

-- 7-Lucknow ke top 2 highest-spending customers nikalo.
select *
from customers
where city = 'lucknow'
order by total_spent desc
limit 2;

-- 8-Customers ko pehle city ascending, phir age descending order mein arrange karo.
select *
from customers
order by city asc, age desc;

-- 9 - Age 20 ya usse zyada wale customers ko highest spending ke order mein arrange karo.
select customer_name,age, total_spent
from customers
where age >= 20
order by total_spent desc;

-- 10- Female customers mein se top 3 highest spenders nikalo.
select *
from customers
where gender = 'female'
order by total_spent desc
limit 3;

-- 11- Delhi aur Mumbai ke customers ko spending ke descending order mein arrange karo.
select *
from customers
where city in ('delhi', 'mumbai')
ORDER BY total_spent desc;

-- 12- Aise 3 customers nikalo jinki spending ₹40,000 se zyada hai, aur unmein highest spenders pehle hon.
select customer_name, total_spent
from customers
where total_spent > 40000
order by total_spent desc
limit 3;








