📊 SQL Sales Analysis Project
🔹 Project Overview

This project analyzes sales data using SQL to extract meaningful business insights.
The analysis covers customer behavior, product performance, and revenue trends using relational database concepts.

The project is designed to showcase **intermediate SQL skills** relevant to **Data Analyst** roles.

🔹 Database Schema

The database consists of three tables:

customers: customer details and city

products: product information and pricing

orders: transaction-level sales data

Relationships:

Each order belongs to one customer

Each order contains one product

🔹 SQL Concepts Used

SELECT, WHERE, ORDER BY

JOIN (multiple tables)

Aggregate functions (SUM, COUNT)

GROUP BY

Conditional logic (CASE)

Date functions (YEAR, MONTH)

Business segmentation logic

🔹 Key Business Insights
1️⃣ Total Sales per Order

Calculated revenue at the order level using quantity × price, allowing transaction-level revenue analysis.

2️⃣ Total Sales per Customer

Identified high-value customers by aggregating total spending across all orders.

3️⃣ Monthly Revenue Trend

Analyzed revenue trends over time by extracting year and month from order dates, enabling time-based performance tracking.

4️⃣ Top-Selling Products

Determined best-performing products by aggregating total quantity sold and ranking them accordingly.

5️⃣ Customer Segmentation

Customers were categorized into:

High Spenders

Medium Spenders

Low Spenders

This helps businesses identify premium customers and target marketing strategies effectively.

🔹 Sample Query (Customer Segmentation)
CASE
WHEN SUM(Orders.Quantity _ Products.Price) >= 30000 THEN 'High Spenders'
WHEN SUM(Orders.Quantity _ Products.Price) BETWEEN 10000 AND 29999 THEN 'Medium Spenders'
ELSE 'Low Spenders'
END AS Segment

🔹 Tools Used

MySQL

MySQL Workbench

GitHub

🔹 Conclusion

This project demonstrates how raw transactional data can be transformed into actionable business insights using SQL.
It reflects real-world analytical thinking and intermediate-level SQL proficiency.
