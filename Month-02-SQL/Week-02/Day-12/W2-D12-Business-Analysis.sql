-- Day 12 — Practice Set --
-- MySQL --
use data_analyst;
select *
from ecom_orders;

-- Q1. Category Performance
select category,
count(*) as total_order,
sum(order_amount) as total_order_amount,
avg(order_amount) as Average_Order_Amount
from ecom_orders
group by category
order by total_order_amount desc;

-- Q2. Delivered Orders Analysis
select category,
count(*) as total_count,
sum(order_amount) as total_amount
from ecom_orders
where order_status = 'Delivered'
group by category
having sum(order_amount) > 50000
order by total_amount desc;

-- Q3. Payment Method Analysis
select payment_method,
count(*) as total_orders,
sum(order_amount) as total_order_amount,
avg(order_amount) as Average_Order_Amount
from ecom_orders
group by payment_method
having count(*) >= 5;

-- Q4. High-Value Categories
select category,
avg(order_amount) as Average_amount
from ecom_orders
group by category
having avg(order_amount) > 20000
order by Average_amount desc;

-- Q5. Cancelled Orders Analysis
SELECT category,
count(*) as total_count,
sum(order_amount) as total_amount
from ecom_orders
where order_status = 'Cancelled'
group by category
having count(*) >= 2;

-- Q6. Pending Orders Analysis
select payment_method,
count(*) as total_count,
sum(order_amount) as total_amount,
avg(order_amount) as average_order
from ecom_orders
where order_status = 'Pending'
group by payment_method
having sum(order_amount) > 50000
order by total_amount desc;

-- Q7. Business Decision Challenge
select category,
count(*) as total_count,
avg(order_amount) as average_amount,
max(order_amount) as highest_amount
from ecom_orders
where order_status ='Delivered'
group by category
having avg(order_amount) > 10000 and count(*) >=2
ORDER BY average_amount desc;

-- Q8. Final Analyst Challenge
select category,
count(*) as total_count,
sum(order_amount) as total_amount,
avg(order_amount) as average_amount
from ecom_orders
where order_status = 'Delivered'
group by category
having count(*) >=2 and sum(order_amount) > 40000
order by total_amount desc;