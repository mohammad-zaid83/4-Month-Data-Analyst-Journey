# SQL Day 09 — GROUP BY and Grouped Analysis

## Overview
Practiced grouping e-commerce order records into categories and calculating summary metrics for each group using MySQL.

## Dataset
- Database: `data_analyst`
- Table: `ecom_orders`
- Total records: 20 orders

## Concepts Covered
- `GROUP BY` for grouping rows with common values.
- Combining `GROUP BY` with `COUNT()`.
- Combining `GROUP BY` with `SUM()` and `AVG()`.
- Using `MIN()` and `MAX()` with grouped data.
- Grouping by category, payment method, and order status.
- Combining `WHERE`, aggregate functions, and `GROUP BY`.
- Understanding grouped output and aggregate results.

## Practice Questions
1. Calculate order count by category.
2. Calculate order count by payment method.
3. Calculate total order amount by category.
4. Calculate order count by status.
5. Calculate total order amount by payment method.
6. Calculate average order amount by category.
7. Summarize delivered orders by category.
8. Create a status-wise summary with order count, average amount, and maximum amount.

## Key Learnings
- `GROUP BY` produces separate summary results for each group.
- Aggregate functions calculate metrics within each group.
- `WHERE` filters rows before grouping.
- Grouping columns and aggregate expressions can be combined in the `SELECT` clause.
- Grouped summaries help analysts compare business categories and order statuses.

## Business Applications
- Comparing order volume across product categories.
- Evaluating payment method usage.
- Summarizing order values by category.
- Comparing delivered, pending, and cancelled orders.

## Tools Used
- MySQL
- MySQL Workbench
- VS Code
- Git and GitHub

## Status
Completed — SQL Month 1, Week 2, Day 9.
