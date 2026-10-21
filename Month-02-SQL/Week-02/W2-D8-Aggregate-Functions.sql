-- SQL Practice Sheet ----
-- Week-02 Day-08 --------
select count(*) as total_orders
from ecom_orders;
select count(city) as total_city
from ecom_customers;
select sum(order_amount) total_order_amount
from ecom_orders;
select *
from ecom_customers;
select count(*) as total_city_count_null_also
from ecom_customers;
select count(city) as total_city_without_null
from ecom_customers;
select avg(order_amount) as total_average_of_order_amount
from ecom_orders;
select min(order_amount) as minimum_value
from ecom_orders;
select max(order_amount) as maximum_value
from ecom_orders;
SELECT COUNT(*) AS total_orders,
SUM(order_amount) AS total_order_amount,
AVG(order_amount) AS average_order_amount,
MIN(order_amount) AS minimum_order,
MAX(order_amount) AS maximum_order
FROM ecom_orders;



