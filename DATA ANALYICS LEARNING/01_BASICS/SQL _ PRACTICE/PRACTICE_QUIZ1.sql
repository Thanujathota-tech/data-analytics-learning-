use college;

CREATE TABLE sales_data (
    order_id INT,
    order_date DATE,
    customer_id INT,
    product_category VARCHAR(50),
    region VARCHAR(50),
    sales_amount DECIMAL(10,2),
    quantity INT
);

INSERT INTO sales_data VALUES
(1, '2024-01-05', 101, 'Electronics', 'South', 45000, 1),
(2, '2024-01-06', 102, 'Clothing', 'North', 2500, 3),
(3, '2024-01-06', 103, 'Electronics', 'South', 32000, 1),
(4, '2024-01-07', 104, 'Furniture', 'East', 18000, 2),
(5, '2024-01-08', 101, 'Clothing', 'South', 3000, 2),
(6, '2024-01-08', 105, 'Electronics', 'West', 52000, 1),
(7, '2024-01-09', 106, 'Furniture', 'North', 22000, 1),
(8, '2024-01-10', 107, 'Clothing', 'South', 1500, 1),
(9, '2024-01-10', 108, 'Electronics', 'South', 48000, 1),
(10,'2024-01-11', 109, 'Furniture', 'East', 26000, 2);

select* from sales_data;

-- Show all orders where sales_amount > 30,000
SELECT * FROM sales_data WHERE sales_amount>30000;
-- Show orders from South region
SELECT * FROM sales_data WHERE region="south";
-- Show orders of Electronics category
SELECT * FROM sales_data WHERE product_category="Electronics";
-- Show orders placed after 2024-01-08
SELECT * FROM sales_data WHERE order_date>"2024-01-08";

-- Show orders sorted by sales_amount DESC
SELECT * FROM sales_data ORDER BY sales_amount desc;
-- Show top 3 highest sales orders
SELECT * FROM sales_data ORDER BY sales_amount desc limit 3;
-- Show lowest 2 sales orders
SELECT * FROM sales_data ORDER BY sales_amount asc limit 2;

-- Show total sales_amount per region
SELECT region,sum(sales_amount) as total_sales_amount FROM sales_data GROUP BY  region;
-- Show average sales per product_category
SELECT product_category,avg(sales_amount) as average_sales FROM sales_data GROUP BY product_category;
-- Show total quantity sold per category
SELECT product_category,SUM(quantity) as total_quantity_sold FROM sales_data GROUP BY product_category;

-- Show regions where total sales > 80,000
SELECT region,sum(sales_amount) as total_sales FROM sales_data GROUP BY  region HAVING total_sales>80000;
-- Show product categories where average sales > 25,000
SELECT product_category,avg(sales_amount) as average_sales FROM sales_data GROUP BY product_category HAVING average_sales>25000;
-- Show regions having more than 3 orders
SELECT region, COUNT(order_id) AS total_orders FROM sales_data GROUP BY region HAVING COUNT(order_id) > 3;

-- Show region-wise total sales
    -- only include orders where sales_amount > 20,000 
SELECT region,sum(sales_amount) as total_sales FROM sales_data where sales_amount>20000 GROUP BY region;
-- From above result,
    -- show only regions where total sales > 60,000
SELECT region,sum(sales_amount) as total_sales FROM sales_data where sales_amount>20000 GROUP BY region HAVING sum(sales_amount)>60000;
    -- Sort regions by total sales DESC
SELECT region,sum(sales_amount) as total_sales FROM sales_data where sales_amount>20000 GROUP BY region ORDER BY sum(sales_amount) desc;
    -- Show top 2 regions by total sales
SELECT region,sum(sales_amount) as total_sales FROM sales_data where sales_amount>20000 GROUP BY region ORDER BY sum(sales_amount) desc LIMIT 2;

commit;