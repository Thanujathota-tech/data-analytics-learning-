INSERT INTO customers VALUES
(101,'Suma','Delhi','North'),
(102,'Thanuja','Mumbai','West'),
(103,'Sarat','Pune','West'),
(104,'Ruthvija','Chennai','South');

INSERT INTO products VALUES
(1,'Soap','Personal Care',30),
(2,'Shampoo','Personal Care',120),
(3,'Laptop','Electronics',60000),
(4,'Headphones','Electronics',3000);

INSERT INTO orders VALUES
(5001,101,'2024-01-05'),
(5002,102,'2024-01-06'),
(5003,103,'2024-01-08'),
(5004,104,'2024-01-10');

INSERT INTO order_details VALUES
(1,5001,1,5),
(2,5002,3,1),
(3,5003,2,3),
(4,5004,4,2);
