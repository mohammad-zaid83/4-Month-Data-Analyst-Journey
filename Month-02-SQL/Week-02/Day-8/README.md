# SQL Day 08 — Aggregate Functions

## Overview
Practiced SQL aggregate functions in MySQL to summarize e-commerce order data and calculate important business metrics.

## Dataset
- Database: `data_analyst`
- Table: `ecom_orders`
- Total records: 20 orders

## Concepts Covered
- `COUNT(*)` — counts all rows.
- `COUNT(column_name)` — counts non-NULL values in a column.
- `SUM()` — calculates the total of numeric values.
- `AVG()` — calculates the average of numeric values.
- `MIN()` — returns the minimum value.
- `MAX()` — returns the maximum value.
- Combining multiple aggregate functions in one query.
- Understanding NULL handling in aggregate functions.

## Practice Questions
1. Count total orders.
2. Count recorded payment methods.
3. Calculate total order amount.
4. Calculate average order amount.
5. Find the smallest order amount.
6. Find the largest order amount.
7. Calculate five summary metrics in one query.
8. Create a business summary using aggregate functions.

## Key Learnings
- Aggregate functions summarize multiple records into calculated results.
- `COUNT(*)` counts rows, whereas `COUNT(column_name)` excludes NULL values.
- Most aggregate functions ignore NULL values.
- Multiple aggregate functions can be combined in a single SQL query.
- Business metrics must be interpreted in the context of the dataset.

## Tools Used
- MySQL
- MySQL Workbench
- VS Code
- Git and GitHub

## Status
Completed — SQL Month 1, Week 2, Day 8.
