create table customers_data(customer_id int primary key,
Name varchar(50),
city varchar(50));

insert into customers_data(Customer_id,Name,City) values(101,'A','Delhi'),
(102,'B','Mumbai'),
(103,'C','Kerala');

SELECT * FROM Customers_data;

create table orders_data(Order_id int primary key,
Customer_id int,
Item varchar(50),
Quantity int,
Price int);

insert into orders_data(order_id,customer_id,Item,Quantity,Price) values(8001,101,'Milk',2,60),
(8002,102,'Eggs',6,100),
(8003,103,'Peanut Buter',1,120),
(8004,104,'Shampoo',10,150),
(8005,102,'Chocolates',4,40),
(8006,105,'soap',10,250);

SELECT * FROM Orders_data;
SELECT * FROM Customers_data INNER JOIN Orders_data ON customers_data.customer_id=orders_data.customer_id;
SELECT * FROM Customers_data LEFT JOIN Orders_data ON customers_data.customer_id=orders_data.customer_id;
SELECT * FROM Customers_data RIGHT JOIN Orders_data ON customers_data.customer_id=orders_data.customer_id;

SELECT * FROM Customers_data LEFT JOIN Orders_data ON customers_data.customer_id=orders_data.customer_id 
UNION
SELECT * FROM Customers_data RIGHT JOIN Orders_data ON customers_data.customer_id=orders_data.customer_id;

Truncate orders_data;
commit;