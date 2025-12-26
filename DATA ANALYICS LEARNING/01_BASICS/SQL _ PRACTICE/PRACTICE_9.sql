use college;

create table customers_data(customer_id int primary key,
Name varchar(50),
city varchar(20));

insert into customers_data(customer_id,Name,city) values (101,"Suma","Delhi"),
(102,"Thanuja","Mumbai"),
(103,"Sarat","Pune"),
(104,"Ruthvija","Delhi");

create table orders_data(customer_id int primary key,
order_id int,
item varchar(20),
Quantity int,
Price int);

insert into orders_data(customer_id,order_id,item,Quantity,price) values (101,500101,"Soap",3,60),
(102,500102,"Shampoo",15,45),
(103,500103,"Comb set",1,30),
(104,500104,"Eggs",30,600),
(105,500105,"BB Cream",3,350),
(106,500106,"Dairy milk",5,180);

SELECT * FROM customers_data;
SELECT * FROM orders_data;

-- Show customer name, city, item, and price
-- ONLY where customer exists in both tables
SELECT c.name,c.city,o.item,o.price FROM customers_data as c 
INNER JOIN
orders_data as o
ON c.customer_id=o.customer_id;

-- Show ALL customers, along with their item and price
-- If a customer has no order, show NULL for item & price
SELECT c.customer_id,c.name,c.city,o.item,o.price 
FROM customers_data as c
LEFT JOIN
orders_data as o
ON c.customer_id=o.customer_id;


-- Show ALL orders, along with customer name & city
-- Even if the customer does NOT exist
SELECT c.customer_id,o.order_id,o.item,o.quantity,o.price,c.name,c.city
FROM customers_data as c
RIGHT JOIN
orders_data as o
ON C.customer_id=o.customer_id;


-- Show ALL customers and ALL orders
-- Match where possible
-- Show NULLs where no match exists
SELECT c.customer_id,o.order_id,o.item,o.quantity,o.price,c.name,c.city
FROM customers_data as c
LEFT JOIN
orders_data as o
ON C.customer_id=o.customer_id
UNION
SELECT c.customer_id,o.order_id,o.item,o.quantity,o.price,c.name,c.city
FROM customers_data as c
RIGHT JOIN
orders_data as o
ON C.customer_id=o.customer_id;


-- Show all customers and their orders 
-- but only include orders where price > 100
-- Customers with no such orders must still appear
SELECT c.customer_id,o.order_id,o.item,o.quantity,o.price,c.name,c.city
FROM customers_data as c
LEFT JOIN
orders_data as o
ON C.customer_id=o.customer_id
AND o.price>100;


-- Show total amount spent by each customer
-- Include customers even if they spent nothing
SELECT c.customer_id,c.name,sum(o.price) as total_amount_spent
FROM customers_data as c
LEFT JOIN 
orders_data as o
on c.customer_id=o.customer_id
GROUP BY C.customer_id,C.name;

-- Show only customers whose total spending is greater than 100
SELECT c.customer_id,c.name,sum(o.price) as total_spending
from customers_data as c
left join
orders_data as o
on c.customer_id=o.customer_id
GROUP BY c.customer_id
having sum(o.price)>100;

-- Show customers who have NOT placed any orders
SELECT * FROM Customers_data as c 
LEFT JOIN
orders_data as o 
on c.customer_id=o.customer_id 
where o.order_id is null;

commit;


