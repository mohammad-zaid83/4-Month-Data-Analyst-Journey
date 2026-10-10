use data_analyst;
CREATE TABLE ecom_customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(30),
    age INT,
    gender VARCHAR(10)
);
INSERT INTO ecom_customers
(customer_id, customer_name, city, age, gender)
VALUES
('C101', 'Aarav', 'Lucknow', 24, 'Male'),
('C102', 'Priya', 'Delhi', 28, 'Female'),
('C103', 'Kabir', 'Mumbai', 22, 'Male'),
('C104', 'Sana', 'Lucknow', 31, 'Female'),
('C105', 'Hamza', 'Delhi', 26, 'Male'),
('C106', 'Ayesha', 'Mumbai', 23, 'Female'),
('C107', 'Rahul', 'Lucknow', 29, 'Male'),
('C108', 'Zoya', 'Delhi', 21, 'Female'),
('C109', 'Adil', NULL, 27, 'Male'),
('C110', 'Hina', 'Mumbai', 25, 'Female'),
('C111', 'Danish', 'Delhi', 19, 'Male'),
('C112', 'Sara', 'Lucknow', 24, 'Female');
CREATE TABLE ecom_orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    order_date DATE,
    category VARCHAR(30),
    order_amount DECIMAL(10,2),
    payment_method VARCHAR(30),
    order_status VARCHAR(20),
    FOREIGN KEY (customer_id)
        REFERENCES ecom_customers(customer_id)
);
INSERT INTO ecom_orders
(order_id, customer_id, order_date, category,
 order_amount, payment_method, order_status)
VALUES
('O201', 'C101', '2026-09-01', 'Electronics', 45000, 'UPI', 'Delivered'),
('O202', 'C102', '2026-09-02', 'Fashion', 3500, 'Card', 'Delivered'),
('O203', 'C103', '2026-09-03', 'Electronics', 62000, 'UPI', 'Pending'),
('O204', 'C104', '2026-09-04', 'Home', 12000, 'Cash', 'Delivered'),
('O205', 'C105', '2026-09-05', 'Fashion', 5500, 'Card', 'Cancelled'),
('O206', 'C106', '2026-09-06', 'Electronics', 28000, 'UPI', 'Delivered'),
('O207', 'C107', '2026-09-07', 'Home', 18000, 'Cash', 'Delivered'),
('O208', 'C108', '2026-09-08', 'Fashion', 2200, 'UPI', 'Pending'),
('O209', 'C109', '2026-09-09', 'Electronics', 75000, 'Card', 'Delivered'),
('O210', 'C110', '2026-09-10', 'Home', 8500, 'UPI', 'Cancelled'),
('O211', 'C111', '2026-09-11', 'Fashion', 4200, 'Cash', 'Delivered'),
('O212', 'C112', '2026-09-12', 'Electronics', 38000, 'Card', 'Delivered'),
('O213', 'C101', '2026-09-13', 'Home', 6500, 'UPI', 'Delivered'),
('O214', 'C102', '2026-09-14', 'Electronics', 52000, 'Card', 'Pending'),
('O215', 'C103', '2026-09-15', 'Fashion', 4800, 'Cash', 'Delivered'),
('O216', 'C104', '2026-09-16', 'Electronics', 67000, 'UPI', 'Delivered'),
('O217', 'C105', '2026-09-17', 'Home', 14500, 'Card', 'Delivered'),
('O218', 'C106', '2026-09-18', 'Fashion', 3200, 'UPI', 'Cancelled'),
('O219', 'C107', '2026-09-19', 'Electronics', 41000, 'Card', 'Pending'),
('O220', 'C108', '2026-09-20', 'Home', 9500, 'Cash', 'Delivered');
-- Insertion Completed --

-- Data Has Been Successfully Inserted --
SELECT * FROM ecom_customers; 

SELECT * FROM ecom_orders;

SELECT COUNT(*) AS total_customers
FROM ecom_customers;

SELECT COUNT(*) AS total_orders
FROM ecom_orders;

-- Project Business Question -- 
-- Que1: Display all customers
-- SQL Day 7: E-commerce Sales Analysis Project --
select *
from ecom_customers;

-- Q2: Delhi customers
select *
from ecom_customers
where city = 'delhi';

-- Q3: Female customers aged 25 or above
select *
from ecom_customers
where age >= 25 
and gender = 'female';

-- Q4: Customers with missing city
select *
from ecom_customers
where city is null;

-- Q5: Orders between ₹20,000 and ₹50,000
select *
from ecom_orders
where order_amount > 20000 
and order_amount <50000;

-- Q6: Cancelled orders
select *
from ecom_orders
where order_status = 'cancelled';


-- Q7: Orders from highest to lowest amount
select *
from ecom_orders
order by order_amount desc;

-- Q8: Top 5 highest-value orders
select *
from ecom_orders
order by order_amount desc
limit 5;

-- Q9 High-value UPI orders
select *
from ecom_orders
where payment_method = 'upi'
and order_amount>10000;


-- Q10: Electronics orders
select *
from ecom_orders
where category ='electronics'
order by order_amount desc;

-- Q11: High-value delivered orders
select *
from ecom_orders
where order_status = 'Delivered'
and order_amount >= 10000
order by order_amount desc;

-- Q12: Top 3 pending orders
select order_id, category, order_amount, payment_method, order_status
from ecom_orders
where order_status = 'Pending'
order by order_amount desc
limit 3;