create database if not exists DATA_ANALYST;

CREATE TABLE sales_data (
    order_id INT PRIMARY KEY,
    customer_id INT,
    region VARCHAR(20),
    product_category VARCHAR(30),
    quantity INT,
    sales_amount INT,
    order_date DATE
);

INSERT INTO sales_data VALUES
(1,101,'South','Electronics',2,40000,'2024-01-05'),
(2,102,'North','Furniture',1,25000,'2024-01-06'),
(3,103,'South','Electronics',3,60000,'2024-01-08'),
(4,104,'East','Clothing',5,15000,'2024-01-09'),
(5,101,'South','Clothing',4,20000,'2024-01-10'),
(6,102,'North','Electronics',1,30000,'2024-01-11'),
(7,105,'West','Furniture',2,50000,'2024-01-12');

-- Show all orders where sales_amount > 30,000
SELECT * 
FROM sales_data
WHERE sales_amount>30000;
-- Show orders from South region
SELECT * 
FROM sales_data
WHERE region="south";
-- Show orders placed after 2024-01-08
SELECT * 
FROM sales_data
WHERE order_date>'2024-01-08';

-- Show top 3 highest sales orders
SELECT * 
FROM sales_data
ORDER BY sales_amount desc
LIMIT 3;
-- Show lowest 2 sales orders
SELECT * 
FROM sales_data
ORDER BY sales_amount asc
LIMIT 2;

-- Show total sales per region
SELECT  region,sum(sales_amount) as total_sales 
FROM sales_data
GROUP BY region;
-- Show average sales per product_category
SELECT product_category,avg(sales_amount) as Average_sales 
FROM sales_data
GROUP BY product_category;
-- Show total quantity sold per category
SELECT product_category,sum(quantity) as Total_quantity 
FROM sales_data
GROUP BY product_category;


-- Show regions where total sales > 80,000
SELECT  region,sum(sales_amount) as total_sales 
FROM sales_data
GROUP BY region
HAVING sum(sales_amount)>80000;
-- Show product categories where average sales > 25,000
SELECT  product_category,avg(sales_amount) as Average_sales 
FROM sales_data
GROUP BY product_category
HAVING avg(sales_amount)>25000;

-- Show regions with more than 2 orders
SELECT region,count(region) as total_orders
FROM sales_data
GROUP BY region
Having count(region)>2;
-- Show region-wise sales only for orders > 20,000
SELECT region,sum(sales_amount) as total_sales
FROM sales_data
WHERE sales_amount>20000
GROUP BY region;
-- From above, show only regions where total sales > 60,000
SELECT region,sum(sales_amount) as total_sales
FROM sales_data
GROUP BY region
Having sum(sales_amount)>60000;
COMMIT;