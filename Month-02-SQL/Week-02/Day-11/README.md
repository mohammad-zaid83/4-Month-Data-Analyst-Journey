# SQL Day 11 — Aggregation and Business Analysis

## Overview
This session focuses on combining SQL filtering, grouping, aggregation, and sorting to solve practical e-commerce business questions using MySQL.

## Dataset
- Database: `data_analyst`
- Table: `ecom_orders`
- Dataset: E-commerce order records

## Concepts Practiced
- `COUNT()` and `SUM()`
- `AVG()` for average order analysis
- `WHERE` for filtering individual records
- `GROUP BY` for category-wise and payment-wise summaries
- `HAVING` for filtering grouped results
- `AND` for multiple conditions
- `ORDER BY` for sorting summary results
- Combining multiple SQL clauses in one query

## Business Questions
1. Calculate total orders and total order amount by category.
2. Analyze order counts and average amounts by payment method.
3. Identify categories with total order amounts above ₹100,000.
4. Analyze delivered orders by category.
5. Identify payment methods with at least five orders.
6. Find categories with average order amounts above ₹20,000.
7. Analyze delivered categories with total order amounts above ₹50,000.
8. Identify delivered categories meeting order-count and average-amount conditions.

## Key Learnings
- `WHERE` filters individual rows before grouping.
- `GROUP BY` organizes records into groups.
- Aggregate functions calculate metrics for each group.
- `HAVING` filters groups using aggregate conditions.
- `ORDER BY` sorts the final result.
- Multiple clauses can be combined to answer complex business questions.

## Tools Used
- MySQL
- MySQL Workbench
- VS Code
- Git and GitHub

## Project Notes
Business findings should be documented after executing and verifying the SQL queries. Order amount totals should not automatically be treated as recognized revenue without appropriate business rules.

## Status
In Progress — SQL Month 1, Week 2, Day 11.
