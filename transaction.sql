CREATE TABLE transactions(
	transaction_id INT PRIMARY KEY,
    amount DECIMAL(5,2)
);

ALTER TABLE transactions
ADD CONSTRAINT 
PRIMARY KEY(transaction_id);

-- insert value

INSERT INTO transactions
VALUES (101, 300),
	   (101, 400); -- we get the error for primary key. it shoud be anything instead of 101

-- auto increment 
CREATE TABLE transactions(
	transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5,2)
);

-- insert value into an auto incerement column
INSERT INTO transactions (amount)
VALUES(5),
	  (6);
-- set value on auto increment
ALTER TABLE transactions
AUTO_INCREMENT = 1000;

