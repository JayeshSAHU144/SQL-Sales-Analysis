USE products_sales_analysis;

-- 1. List all customers, Products, Orders
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM products;

-- 2. Show all orders with customer name and product name
SELECT Orders.Order_id, Customers.Customer_name, Products.Product_name 
	FROM orders
	join customers on customers.Customer_id= orders.Customer_id
    join products on products.Product_id= orders.Product_id ;
 
 -- 3. Total Sales Amount per Order
SELECT Orders.Order_id, Orders.Quantity, (Orders.Quantity * Products.price) AS Total_Price
	FROM orders
	join customers on customers.Customer_id= orders.Customer_id
    join products on products.Product_id= orders.Product_id; 
 
 -- 4. Total Sales per Customer
SELECT Customers.Customer_id, Customers.Customer_name, SUM(Orders.Quantity * Products.price) AS Total_cost
	FROM Orders
    join Customers ON Customers.Customer_id = Orders.Customer_id
    JOIN Products ON Products.Product_id = Orders.Product_id
    GROUP BY Customer_id;

-- 5. Monthly Revenue Trend 
SELECT  year(Order_date), month(Order_date), SUM(Quantity * Price) AS Monthly_Revenue
	FROM Orders
    JOIN Products ON Products.Product_id = Orders.Product_id
    GROUP BY month(Order_date), Year(Order_date);
 
 -- 6. Top Products by Sales
SELECT Products.Product_name, SUM(Orders.Quantity)
	FROM products
    JOIN Orders ON Orders.Product_id = Products.Product_id
   GROUP BY Product_name
   ORDER BY SUM(quantity) DESC
   limit 1;     
   
-- 7. Customer Segmentation (High / Medium / Low Spenders)
SELECT Customers.Customer_id, Customers.Customer_name, SUM(Orders.Quantity * Products.Price) AS Total_spend,
CASE  WHEN SUM(Orders.Quantity * Products.Price) >= 30000 THEN 'High Spenders'
    WHEN SUM(Orders.Quantity * Products.Price) BETWEEN 10000 AND 29999 THEN 'Medium Spenders'
ELSE 'Low Spenders' END AS Segment
	FROM Customers
    JOIN Orders ON Orders.Customer_id = Customers.Customer_id
    JOIN Products ON Products.Product_id = Orders.Product_id
    GROUP BY Customers.Customer_id, Customers.Customer_name
    ORDER BY SUM(Orders.Quantity * Products.Price) DESC;
    
-- 8 Customer Performance Report
SELECT Customers.Customer_name, count(Orders.Order_id) AS Total_Order, SUM(Orders.Quantity) as Total_Quantity,
	SUM(Orders.Quantity * Products.Price) as Total_Price, 
CASE  WHEN SUM(Orders.Quantity * Products.Price) >= 30000 THEN 'High Spenders'
    WHEN SUM(Orders.Quantity * Products.Price) BETWEEN 10000 AND 29999 THEN 'Medium Spenders'
ELSE 'Low Spenders' END AS Category
	FROM Customers
     JOIN Orders ON Orders.Customer_id = Customers.Customer_id
    JOIN Products ON Products.Product_id = Orders.Product_id
    GROUP BY Customers.Customer_name
    ORDER BY SUM(Orders.Quantity * Products.Price) DESC;