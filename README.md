# 🏥 SQL Healthcare Reporting & Power BI Dashboard

##  Overview
This project simulates a real-world healthcare reporting scenario where business requirements are translated into SQL queries and visualized using Power BI.

The system analyzes provider claims data to generate insights such as total claims, total revenue, and monthly trends.

---

##  Business Problem
A healthcare manager needs a reporting solution to:

- Track total approved claims by provider
- Analyze total claim revenue
- Monitor monthly trends
- Filter results by date range and provider
- Support decision-making using data visualization

---

##  Solution
I designed a SQL-based reporting system and integrated it with Power BI to create an interactive dashboard.

### Key Components:
- Relational database (SQL Server)
- Aggregation queries using T-SQL
- Parameterized stored procedures
- Power BI dashboard for visualization

---

## Technologies Used
- SQL Server (Docker container)
- T-SQL (Joins, Aggregations, Stored Procedures)
- Visual Studio Code (SQL Server Extension)
- Power BI (Dashboard & Visualization)
- Docker (Local database environment)

---

##  Project Structure

| File | Description |
|-----|------------|
| `healthcare.sql` | Creates the HealthcareDB database |
| `schema.sql` | Defines tables (Providers, Claims) |
| `data.sql` | Inserts sample data |
| `procedures.sql` | Stored procedures for reporting |
| `queries.sql` | Analytical queries |
| `README.md` | Project documentation |

---

##  Database Setup

Run the SQL files in this order:

```sql
1. healthcare.sql
2. schema.sql
3. data.sql
4. procedures.sql
5. queries.sql