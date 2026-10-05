# SQL Day 03 — AND, OR & NOT

## Date
05 October 2026

## Objective

The goal of Day 3 was to learn how to filter data using multiple conditions in MySQL.

## Topics Covered

- AND operator
- OR operator
- NOT operator
- Multiple filtering conditions
- Combining AND and OR
- Parentheses for logical grouping
- Business-based SQL filtering

## Key Concepts

### AND

Used when all specified conditions must be true.

### OR

Used when at least one of the specified conditions can be true.

### NOT

Used to exclude or reverse a condition.

## Logical Grouping

Parentheses can be used to clearly group conditions when combining AND and OR.

Example:

```sql
WHERE (city = 'Delhi' OR city = 'Mumbai')
AND total_spent > 50000;