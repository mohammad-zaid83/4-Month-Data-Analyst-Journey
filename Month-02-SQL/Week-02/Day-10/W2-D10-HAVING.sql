use data_analyst;
SELECT category,
count(*) as Total_order

from ecom_orders
group by category
having count(*) > 5;

SELECT category,
sum(order_amount) as total_order
from ecom_orders
group by category
having sum(order_amount) > 50000;

select * from ecom_orders;
select category,
sum(order_amount) as total_order
from ecom_orders
where order_status = 'Delivered'
group by category
having sum(order_amount ) > 50000;

select category,
count(*) as total_order
from ecom_orders
group by category
having total_order > 5;

-- MYSQL Day- 10 --
-- Practice Set --
-- 1: Categories with more than 5 orders- Sirf un categories ko dikhao jahan total orders 5 se zyada hain.
SELECT 
category,
count(*) as Total_order
from ecom_orders
group by category
having count(*) > 5;

-- 2: Payment methods with at least 6 orders- Har payment method ka order count nikalo, lekin sirf unhe show karo jinka count 6 ya zyada ho.
select *
from ecom_orders;
select payment_method,
count(*) as total_orders
from ecom_orders
group by payment_method
having count(*) > 6;

-- 3: Categories with total amount above ₹100,000- Har category ka total order amount nikalo aur sirf ₹100,000 se zyada wali categories dikhao.
select category,
sum(order_amount) as total_category_sum
from ecom_orders
GROUP BY category
having sum(order_amount) > 100000;

-- 4: Statuses with fewer than 10 orders- Har order status ka count nikalo, phir sirf 10 se kam orders wale statuses dikhao.
select *
from ecom_orders;
select order_status,
count(*) as available_order_status
from ecom_orders
GROUP BY order_status
having count(*)<10;

-- 5: Categories with average amount above ₹20,000- Har category ka average order amount calculate karo aur sirf ₹20,000 se zyada average wali categories show karo.
select category,
avg(order_amount) as average_amount
from ecom_orders
GROUP BY category
having avg(order_amount) >20000;

-- 6: Delivered orders with category-wise total above ₹50,000- Pehle sirf Delivered orders consider karo. Phir category-wise total amount nikalo aur ₹50,000 se zyada wale groups dikhao.
select category,
sum(order_amount) as delevered_total_amount
from ecom_orders
where order_status = 'Delivered'
GROUP BY category
having sum(order_amount)> 50000;

-- 7: Payment methods with maximum order above ₹40,000- Har payment method ka maximum order amount nikalo aur sirf un methods ko dikhao jinka maximum ₹40,000 se zyada hai.
select *from ecom_orders;
select payment_method,
max(order_amount) as max_payment_method
from ecom_orders
GROUP BY payment_method
having max(order_amount) > 40000;

-- 8: Business summary with multiple conditions- Har category ke liye total orders aur total order amount nikalo. Sirf un categories ko dikhao jahan orders 5 se zyada hain aur total amount ₹100,000 se zyada hai.
select category,
count(*) as totalNoOfOrder,
sum(order_amount) as total_amount_order
from ecom_orders
GROUP BY category
having count(*) > 5 and sum(order_amount) > 100000;

