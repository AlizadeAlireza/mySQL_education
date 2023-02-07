-- can be unique with product_name varchar(30) UNIQUE
create table products (
	product_id INT,
    product_name varchar(30),
    price DECIMAL(4, 2)
); 

-- when we miss to add unique on column

ALTER TABLE products
ADD CONSTRAINT 
UNIQUE(product_name);

-- insert value in this table 

INSERT INTO products
VALUES (100, "hamburger", 3.99),
	   (101, "fries", 1.89),
       (102, "soda", 1.00),
	   (103, "ice cream", 1.49);
       
       
       
SELECT * FROM myDB.products;