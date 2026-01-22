CREATE DATABASE products_sales_Analysis;
USE products_sales_Analysis;

CREATE TABLE Customers ( 
	Customer_id integer primary key,
    Customer_name varchar(100),
    City varchar(100));
    
CREATE TABLE Products (
	Product_id int primary key,
    Product_name varchar(100),
    Price decimal(10,2));
    
CREATE TABLE Orders (
	Order_id int primary key,
	Customer_id int,
	Product_id int,
	Quantity int,
	Order_date date);