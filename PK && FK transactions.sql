-- the transactions table is exists.
-- add customers table for create FK
CREATE TABLE customers (
customer_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50),
last_name VARCHAR (50)
);

-- insert into customers table 
INSERT INTO customers (first_name, last_name)
VALUES ("Fred", "Fish"),
	   ("Larry", "Lobster"),
	   ("Bubble", "Bass");
       
-- foreign key 
CREATE TABLE transactions(
	tx_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    amount DECIMAL(5, 2),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
    );
-- Drop a foreign key
ALTER TABLE transactions
DROP FOREIGN KEY transactions_ibfk_1;
-- add foreign key on the table already exists
ALTER TABLE transactions
ADD CONSTRAINT fk_customer_id
FOREIGN KEY(customer_id) REFERENCES customers(customer_id);
-- start ID from 1000
ALTER TABLE transactions
AUTO_INCREMENT = 1000;
-- insert values 
INSERT INTO transactions(amount, customer_id)
VALUES(5, 3),
	  (2.89, 2),
      (3.38, 3),
      (4.99, 1);
      
-- JOINS
INSERT INTO customers (first_name, last_name)
VALUES ("Poppy", "Puff");

INSERT INTO transactions (amount, customer_id)
VALUES (1.00, NULL);

-- INNER JOIN 
SELECT *
FROM transactions INNER JOIN customers
ON transactions.customer_id = customers.customer_id;
-- LEFT JOIN
SELECT *
FROM transactions LEFT JOIN customers
ON transactions.customer_id = customers.customer_id;