USE products_sales_Analysis;

 INSERT INTO  Customers VALUES 
	(1, 'Amit', 'Mumbai'),
	(2, 'Neha', 'Delhi'),
	(3, 'Rahul', 'Pune'),
	(4, 'Priya', 'Bangalore'),
	(5, 'Suresh', 'Hyderabad'),
	(6, 'Anjali', 'Chennai'),
	(7, 'Vikas', 'Ahmedabad'),
	(8, 'Rohit', 'Jaipur'),
	(9, 'Sneha', 'Indore'),
	(10, 'Karan', 'Nagpur');
    
INSERT INTO Products VALUES
	(101, 'Laptop', 50000),
	(102, 'Mobile', 20000),
	(103, 'Headphones', 3000),
	(104, 'Keyboard', 1500),
	(105, 'Mouse', 800),
	(106, 'Monitor', 12000),
	(107, 'Tablet', 25000),
	(108, 'Smart Watch', 7000);
    
INSERT INTO Orders VALUES
	(11, 1, 102, 1, '2025-02-01'),
	(12, 2, 103, 2, '2025-02-02'),
	(13, 3, 104, 2, '2025-02-05'),
	(14, 4, 101, 1, '2025-02-07'),
	(15, 5, 108, 1, '2025-02-10'),
	(16, 6, 102, 1, '2025-02-12'),
	(17, 7, 106, 1, '2025-02-14'),
	(18, 8, 105, 4, '2025-02-18'),
	(19, 9, 107, 1, '2025-02-20'),
	(20, 10, 103, 3, '2025-02-22');
    
INSERT INTO Customers VALUES 
	(11, 'Rupesh' , 'Mumbai');
    
INSERT INTO Products VALUES
	(111, 'Pandrive', 5000);

INSERT INTO Orders VALUES 
	(21, 11, 111, 3, '2025-02-24');
