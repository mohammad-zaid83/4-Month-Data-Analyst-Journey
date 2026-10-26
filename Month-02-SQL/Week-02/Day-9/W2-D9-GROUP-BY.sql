select category,
count(*) as total_order
from ecom_orders
group by category;

Select category,
sum(order_amount) as total_order_amount
from ecom_orders
GROUP BY category;

select category,
avg(order_amount) as average_order,
min(order_amount) as minimum_order,
max(order_amount) as maximum_order
from ecom_orders
group by category;

select category,
count(*) as total_deleverd_order,
sum(order_amount) as total_delevered_amount
from ecom_orders
where order_status = "Delivered"
group by category;

-- PRACTICE SET --
-- MySQL Week-02 Day-09 --

-- 1: Category-wise order count- Har category mein kitne orders hain, calculate karo.
select category,
count(*) AS total_category_order
from ecom_orders
group by category;

-- 2: Payment method-wise order count- UPI, Card aur Cash se kitne orders hue, calculate karo.
select payment_method,
count(*) as total_payment_meth
from ecom_orders
GROUP BY payment_method;

-- 3: Category-wise total order amount- Har category ka total order_amount nikalo.
select category,
sum(order_amount) as total_order_amount
from ecom_orders
GROUP BY category;

-- 4: Status-wise order count- Delivered, Pending aur Cancelled orders ki count nikalo.
select order_status,
count(*) as payment_history_block
from ecom_orders
GROUP BY order_status;

-- 5: Payment method-wise total amount- Har payment method ka total order amount calculate karo.
select payment_method,
sum(order_amount) as total_ammount,
max(order_amount)
from ecom_orders
GROUP BY payment_method;

-- 6: Category-wise average order amount- Har category ka average order amount nikalo.
select category,
avg(order_amount) as avg_cat_order_am
from ecom_orders
GROUP BY category;

-- 7: Delivered orders: category-wise- Sirf Delivered orders ko lekar har category ka order count aur total amount nikalo.
select order_status,
count(*) as total_dele_order,
sum(order_amount) as total_order_amount
from ecom_orders
where order_status = "Delivered"
group by order_status;

-- 8: Complete business summary-Har order_status ke liye order count, average order amount aur highest order amount ek hi query mein show karo.
select order_status,
count(*) as total_count,
avg(order_amount) as average_amount,
max(order_amount) as highest_amount
from ecom_orders
group by order_status;









