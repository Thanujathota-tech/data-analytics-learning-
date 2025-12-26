-- Total revenue by region
SELECT c.region,
       SUM(p.price * od.quantity) AS total_revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY c.region;

-- Top selling products by revenue
SELECT p.product_name,
       SUM(p.price * od.quantity) AS revenue
FROM products p
JOIN order_details od ON p.product_id = od.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;

-- High-value customers
SELECT c.customer_name,
       SUM(p.price * od.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY c.customer_name
HAVING SUM(p.price * od.quantity) > 50000;

-- Order count per region
SELECT c.region,
       COUNT(DISTINCT o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.region;





SELECT c.region,
       SUM(p.price * od.quantity) AS total_revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY c.region;






