-- can be unique with product_name varchar(30) UNIQUE
-- can be  price DECIMAL(4, 2) NOT NULL
create table products (
	product_id INT,
    product_name varchar(30),
    price DECIMAL(4, 2)
); 

-- when we miss to add unique on column
ALTER TABLE products
ADD CONSTRAINT 
UNIQUE(product_name);

-- add constraint not null to a column
ALTER TABLE products
MODIFY 
price DECIMAL(4,2) NOT NULL;

-- insert value in this table 
INSERT INTO products
VALUES (100, "hamburger", 3.99),
	   (101, "fries", 1.89),
       (102, "soda", 1.00),
	   (103, "ice cream", 1.49);

-- this insert get error
INSERT INTO products
value(104, "cookies", NULL);

-- default 
CREATE TABLE products (
	product_id INT,
	product_name VARCHAR(25),
	price DECIMAL(4, 2) DEFAULT 0.00
);

-- default when table already exists
ALTER TABLE products
ALTER price SET DEFAULT 0;

INSERT INTO products (product_id, product_name)
VALUES (104,"straw"),
	   (105,"napkin"),
       (106,"fork"),
       (107,"spoon");
       
-- another example for default 
CREATE TABLE transaction(
	transaction_id INT,
    amount DECIMAL(5, 2),
    transaction_date DATETIME DEFAULT NOW()
);
INSERT INTO transaction (transaction_id, amount)
VALUES (1, 4.99);
       
SELECT * FROM myDB.products;