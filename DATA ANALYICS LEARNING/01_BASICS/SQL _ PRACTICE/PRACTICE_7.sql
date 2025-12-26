use college;
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
Price int,
FOREIGN KEY(Customer_id) REFERENCES customers_data(Customer_id)
ON UPDATE CASCADE
ON DELETE CASCADE);

insert into orders_data(order_id,customer_id,Item,Quantity,Price) values(8001,101,'Milk',2,60),
(8002,102,'Eggs',6,100),
(8003,103,'Peanut Buter',1,120),
(8004,103,'Shampoo',10,150);

SELECT * FROM Orders_data;

UPDATE Customers_data set customer_id=104 where customer_id=102;
insert into orders_data(order_id,customer_id,Item,Quantity,Price) values(8007,102,'Sugar',2,80);
insert into Customers_data values(102,'D','PUNE');

DELETE FROM customerS_data where customer_id=102;

DROP TABLE customers_data;
DROP TABLE orders_data;

