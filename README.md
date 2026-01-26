# 📊 SQL Sales Analysis Project

## 🔹 Project Overview

This project focuses on analyzing sales data using SQL to derive meaningful business insights.  
It demonstrates how raw transactional data can be transformed into analytical outputs that support business decision-making.

The project is designed to showcase **intermediate SQL skills** relevant to **Data Analyst** roles.

---

## 🔹 Objectives

- Analyze customer purchasing behavior
- Identify top-performing products
- Track revenue trends over time
- Segment customers based on spending patterns

---

## 🔹 Database Schema

The database consists of three relational tables:

### 1. Customers

- Stores customer details and city information

### 2. Products

- Contains product names and pricing details

### 3. Orders

- Records transaction-level sales data including quantity and order date

### Relationships

- Each order is linked to one customer
- Each order contains one product

---

## 🔹 SQL Concepts Used

- `SELECT`, `ORDER BY`
- `INNER JOIN`
- Aggregate functions (`SUM`, `COUNT`)
- `GROUP BY`
- Conditional logic using `CASE`
- Date functions (`YEAR`, `MONTH`)
- Business-oriented data analysis

---

## 🔹 Key Analyses Performed

### 1️⃣ Total Sales per Order

Calculated revenue at the individual order level using quantity and product price.

### 2️⃣ Total Sales per Customer

Aggregated total spending per customer to identify high-value customers.

### 3️⃣ Monthly Revenue Trend

Analyzed month-wise revenue trends by extracting year and month from order dates.

### 4️⃣ Top-Selling Products

Identified products with the highest total sales based on quantity sold.

### 5️⃣ Customer Segmentation

Segmented customers into:

- **High Spenders**
- **Medium Spenders**
- **Low Spenders**

This segmentation helps businesses target customers more effectively.

### 6️⃣ Customer Performance Report

Generated a comprehensive customer performance report including:

- **Total number of orders**
- **Total quantity purchased**
- **Total revenue generated**
- **Customer spending category (High / Medium / Low)**

This analysis combines multiple SQL concepts such as JOINs, aggregation, CASE statements, and GROUP BY to provide a complete customer overview.

---

## 🔹 Sample SQL Logic (Customer Segmentation)

```sql
CASE
  WHEN SUM(Orders.Quantity * Products.Price) >= 30000 THEN 'High Spenders'
  WHEN SUM(Orders.Quantity * Products.Price) BETWEEN 10000 AND 29999 THEN 'Medium Spenders'
  ELSE 'Low Spenders'
END AS Segment
```
