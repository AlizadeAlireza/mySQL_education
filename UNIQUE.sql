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