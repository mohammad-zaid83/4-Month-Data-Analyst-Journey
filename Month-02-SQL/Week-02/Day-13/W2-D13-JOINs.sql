-- MySQL Day-13 -- 
use data_analyst;
select * from ecom_orders;
select * from ecom_customers;
-- MySQl Practice -- 
SELECT
    c.customer_name,
    o.order_id,
    o.order_amount
FROM ecom_customers AS c
INNER JOIN ecom_orders AS o
ON c.customer_id = o.customer_id;

SELECT 
c.customer_name,
o.order_id,
o.order_amount
from ecom_customers as c
inner join ecom_orders as o
on c.customer_id = o.customer_id;

select 
c.customer_name,
o.order_id,
o.order_amount
from ecom_customers as c
left join ecom_orders as o
on c.customer_id = o.customer_id;

-- ---- MySQL Business Question -----
-- ----- Week-02 Day-13 -------------

-- Q1. Customer Orders
select 
c.customer_name,
o.order_id,
o.order_amount
from ecom_customers as c
inner join ecom_orders as o
on c.customer_id= o.customer_id;

-- Q2. Customer City Analysis
select 
c.customer_name,
c.city,
o.order_id,
o.order_date
from ecom_customers as c
inner join ecom_orders as o
on c.customer_id = o.customer_id;

-- Q3. All Customers
select
c.customer_name,
o.order_id
from ecom_customers as c
left join ecom_orders as o
on c.customer_id = o.customer_id;

-- Q4. High-Value Orders
select
c.customer_name,
o.order_id,
o.order_amount
from ecom_customers as c
inner join ecom_orders as o
on c.customer_id = o.customer_id
where order_amount > 30000;

-- Q5. Delivered Orders
select 
c.customer_name,
c.city,
o.order_id,
o.order_amount
from ecom_customers as c
inner join ecom_orders as o
on c.customer_id = o.customer_id
where order_status = 'Delivered';

-- Q6. Payment Method Analysis
select
c.customer_name,
o.order_id,
o.payment_method
from ecom_customers as c
inner join ecom_orders as o
on c.customer_id = o.customer_id
where payment_method = "UPI";

-- Q7. Customers Without Orders
select 
c.customer_name,
o.order_id
from ecom_customers as c
left join ecom_orders as o
on c.customer_id = o.customer_id
where o.order_id is null;

-- Q8. Final Business Challenge
select
c.customer_name,
c.city,
count(o.order_id) as total_count,
sum(o.order_amount) as total_amount
from ecom_customers as c
inner join ecom_orders as o
on c.customer_id = o.customer_id
group by c.customer_id, 
	c.customer_name,
    c.city
order by total_amount desc;

SELECT
    c.customer_name,
    c.city,
    COUNT(o.order_id) AS total_orders,
    SUM(o.order_amount) AS total_order_amount
FROM ecom_customers AS c
INNER JOIN ecom_orders AS o
ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.customer_name,
    c.city
ORDER BY total_order_amount DESC;