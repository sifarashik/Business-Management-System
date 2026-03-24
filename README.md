# Business Management System

A SQL-based Business Management System developed to manage customers, products, and sales efficiently. This project demonstrates real-world database design, advanced SQL querying, and trigger implementation using PostgreSQL.

---

## 📌 Project Overview

This system helps businesses:
- Store customer information
- Maintain product inventory
- Track orders and sales
- Generate useful business insights using SQL queries

---

## 🛠 Technologies Used

- PostgreSQL
- SQL
- pgAdmin 4

---

## 🗄 Database Structure

### Tables in the system

| Table Name | Description |
|-----------|-------------|
| customers | Stores customer details |
| products  | Stores product information |
| orders    | Stores order transactions |
| order_audit | Logs order insert operations |

---

## 🧠 SQL Concepts Implemented

This project demonstrates the use of:

- Primary Key
- Foreign Key
- INNER JOIN
- UNION
- Subqueries
- Aggregate Functions (SUM, COUNT)
- Triggers and Trigger Functions

---

## 📂 Project Folder Structure

```
Business-Management-System
│
├── database
│   ├── schema.sql
│   ├── insert_data.sql
│   ├── queries.sql
│   ├── advanced_queries.sql
│   └── triggers.sql
│
├── screenshots
│   ├── tables.png
│   ├── customers_data.png
│   ├── basic_query.png
│   ├── advanced_query.png
│   └── trigger_output.png
```

## ▶ How to Run This Project

1. Open PostgreSQL and pgAdmin
2. Create a new database:

```
CREATE DATABASE business_db;
```

3. Execute SQL files in this order:
- schema.sql
- insert_data.sql
- queries.sql
- advanced_queries.sql
- triggers.sql

---

## 👩‍💻 Author

**Sifa Parveen N**  
B.Tech – Information Technology
