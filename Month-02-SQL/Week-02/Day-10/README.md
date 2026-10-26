# SQL Day 10 — HAVING and Group Filtering

## Overview
Practiced filtering grouped results in MySQL using the HAVING clause and aggregate functions.

## Dataset
- Database: `data_analyst`
- Table: `ecom_orders`
- Dataset: 20 e-commerce orders

## Concepts Covered
- Purpose of the `HAVING` clause
- Difference between `WHERE` and `HAVING`
- Filtering groups using `COUNT()`
- Filtering grouped totals using `SUM()`
- Filtering averages using `AVG()`
- Filtering maximum values using `MAX()`
- Combining `WHERE`, `GROUP BY`, and `HAVING`
- Combining multiple aggregate conditions with `AND`

## Practice Questions
1. Find categories with more than five orders.
2. Find payment methods with at least six orders.
3. Find categories with total order amount above ₹100,000.
4. Find statuses with fewer than ten orders.
5. Find categories with average order amount above ₹20,000.
6. Analyze delivered orders by category with a total above ₹50,000.
7. Find payment methods with a maximum order above ₹40,000.
8. Create a category summary using multiple HAVING conditions.

## Key Learnings
- `WHERE` filters individual rows before grouping.
- `HAVING` filters groups after aggregation.
- `HAVING` can use aggregate expressions such as `COUNT()`, `SUM()`, `AVG()`, and `MAX()`.
- `WHERE`, `GROUP BY`, and `HAVING` can be combined in a single query.
- Multiple aggregate conditions can be combined using `AND`.

## Business Applications
- Identifying categories with high order volumes.
- Comparing payment methods.
- Filtering categories by total or average order amount.
- Analyzing order statuses and delivered orders.

## Tools Used
- MySQL
- MySQL Workbench
- VS Code
- Git and GitHub

## Status
Completed — SQL Month 1, Week 2, Day 10.
