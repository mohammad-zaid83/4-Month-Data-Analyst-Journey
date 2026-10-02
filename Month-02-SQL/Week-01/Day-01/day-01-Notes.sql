-- ============================================
-- SQL DAY 01
-- MySQL Fundamentals
-- Date: 02 October 2026
-- ============================================


-- 1. Create Database
CREATE DATABASE data_analyst;


-- 2. Select Database
USE data_analyst;


-- 3. Create Customers Table
CREATE TABLE customers (
    customer_id VARCHAR(10),
    customer_name VARCHAR(50),
    city VARCHAR(30),
    age INT,
    gender VARCHAR(10),
    total_spent DECIMAL(10,2)
);


-- 4. Insert Data
INSERT INTO customers
(customer_id, customer_name, city, age, gender, total_spent)
VALUES
('C001', 'Rahul', 'Lucknow', 22, 'Male', 45000),
('C002', 'Priya', 'Delhi', 24, 'Female', 72000),
('C003', 'Arman', 'Mumbai', 21, 'Male', 28000),
('C004', 'Sara', 'Lucknow', 27, 'Female', 91000),
('C005', 'Hamza', 'Delhi', 25, 'Male', 56000),
('C006', 'Ayesha', 'Mumbai', 23, 'Female', 39000),
('C007', 'Kabir', 'Lucknow', 29, 'Male', 105000),
('C008', 'Sana', 'Delhi', 20, 'Female', 18000),
('C009', 'Adil', NULL, 26, 'Male', 67000),
('C010', 'Zoya', 'Mumbai', 31, 'Female', 125000),
('C011', 'Danish', 'Delhi', 19, 'Male', 15000),
('C012', 'Hina', 'Lucknow', 24, 'Female', 48000);


-- 5. Display all records
SELECT *
FROM customers;


-- 6. Count total records
SELECT COUNT(*)
FROM customers;


-- 7. Check table structure
DESC customers;