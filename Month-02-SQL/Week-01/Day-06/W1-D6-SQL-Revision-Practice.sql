-- ------------------
-- SQL Day-06 
-- ------------------
-- Q1. Filtering- Delhi ke saare customers nikalo. Sirf customer_name, age aur total_spent dikhana.
select customer_name, age, total_spent
from customers
where city = 'delhi';

-- Q2. Multiple conditions- Aise customers nikalo jinki age 25 ya usse zyada hai AUR total_spent 50,000 se zyada hai.
select *
from customers
where age >=25
and total_spent >50000;

-- Q3. OR- Lucknow ya Mumbai mein rehne wale saare customers nikalo.
select *
from customers
where city = 'lucknow'
or city ='mumbai';

-- Q4. IN + WHERE- Delhi, Lucknow ya Mumbai ke customers nikalo jinka total_spent 40,000 se 100,000 ke beech hai, dono limits included.
select *
from customers
where city in ('delhi', 'lucknow', 'mumbai')
and total_spent >40000 and total_spent<100000;

-- Q5. LIKE- Un customers ko nikalo jinke naam ka pehla letter 'S' hai.
select *
from customers
where customer_name like 's%';

-- Q6. NULL- Un customers ko nikalo jinki city missing hai.
select *
from customers
where city is null;

-- Q7. Sorting- Saare customers ko age ke descending order mein dikhao.
select *
from customers
order by age desc;

-- Q8. Top results- Top 3 highest-spending customers nikalo. Sirf naam aur spending dikhana.
select customer_name, total_spent
from customers
order by customer_name desc
limit 3;

-- Q9. Combined challenge- Delhi ke female customers mein se top 2 highest spenders nikalo.
select *
from customers
where city = 'delhi'
and gender = 'female'
order by total_spent desc
limit 2;

-- Q10. Analyst challenge- Aise top 3 customers nikalo jinki age 24 se zyada hai aur jo Delhi mein nahi rehte. 
-- Missing city wale customers ko include mat karna. Highest spending pehle honi chahiye.
SELECT total_spent, customer_name, age, city
FROM customers
where age > 24
and city not in ('delhi')
order by total_spent desc
LIMIT 2;







