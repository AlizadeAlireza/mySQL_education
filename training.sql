create database alireza;

-- alter database alireza read only = 0
use alireza;
create table his_name (
	first_name char(20),
    last_name char(20)
);

-- rename the table name
rename table full_name to information;

-- add attribute to the table
alter table information
add phone_number varchar(20),
add email varchar(40);

-- rename the column (attribute)

