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


       
       
SELECT * FROM myDB.products;