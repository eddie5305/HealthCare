# SQL Healthcare Reporting Project

## Overview
This project demonstrates how to convert business reporting requirements into SQL queries and stored procedures using a healthcare dataset.

The goal was to simulate a real-world scenario where a manager requests reporting insights on provider claims.

---

## Problem Statement
A healthcare manager needs a report showing:
- Total number of approved claims
- Total claim amount
- Average claim amount
- Grouped by provider and month
- Filterable by date range

---

## Technologies Used
- SQL Server
- T-SQL (Joins, Aggregations, Stored Procedures)
- Visual Studio Code (SQL Server Extension)
- Docker (Local SQL Server instance)

---

## Project Structure
- `schema.sql` → table creation
- `data.sql` → sample dataset
- `queries.sql` → analysis queries
- `procedures.sql` → reusable stored procedures

---

## Key Features

### 1. Data Modeling
Created relational tables for:
- Providers
- Claims

### 2. Data Analysis
Used:
- INNER JOIN to combine tables
- GROUP BY for aggregation
- SUM, COUNT, AVG for metrics

### 3. Stored Procedures
Implemented parameterized stored procedures to:
- Filter by date range
- Generate reusable reports

### 4. Business Logic
Applied filters such as:
- Approved claims only
- Monthly grouping

---

## Example Query Output

| Provider | Month | Total Claims | Total Amount | Avg Amount |
|----------|------|-------------|-------------|-----------|
| Dr. Smith | 2026-01 | 2 | 550.00 | 275.00 |

---

## How to Run

1. Create database:
```sql
CREATE DATABASE HealthcareDB;