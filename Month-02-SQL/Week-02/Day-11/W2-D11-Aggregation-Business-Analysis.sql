use data_analyst;
select *
from ecom_orders;
-- ---------------------------------------
-- Day 11: 8 Business Questions --
-- My SQl --
-- ---------------------------------------
-- Q1. Category-wise order summary
select category,
count(*) as total_no_of_order,
sum(order_amount) as total_order_ammount
from ecom_orders
group by category;

-- Q2. Payment method analysis
select payment_method,
count(*) as total_Numbers,
avg(order_amount) as average_ammount
from ecom_orders
group by payment_method;

-- Q3. High-value categories
select category,
sum(order_amount) as total_order
from ecom_orders
group by category
having sum(order_amount) > 100000;

-- Q4. Delivered orders analysis
select category,
count(*) as total_orders,
sum(order_amount) as total_amount_orders
from ecom_orders
where order_status = 'Delivered'
group by category;

-- Q5. High-volume payment methods
select payment_method,
count(*) as total_orders
from ecom_orders
group by payment_method
having count(*) >= 6;

-- Q6. Category-wise average
select category,
avg(order_amount) as average_order
from ecom_orders
group by category
having avg(order_amount) >=10000;

-- Q7. Delivered category summary
select category,
sum(order_amount) as total_ammount_order
from ecom_orders
where order_status = 'Delivered'
group by category
having sum(order_amount) > 50000
ORDER BY total_ammount_order desc;

-- Q8. Business challenge
select category,
count(*) as total_order,
avg(order_amount) as average_order_amount
from ecom_orders
where order_status = 'Delivered'
group by category
having count(*) >=2 and avg(order_amount) >20000
order by average_order_amount desc;