create database alireza;

-- alter database alireza read only = 0
use alireza;
create table his_name (
	first_name char(20),
    last_name char(20)
);

-- rename the table name
rename table full_name to information;

-- add columns to the table
alter table information
add phone_number varchar(20),
add email varchar(40);

-- rename the column (attribute)
alter table information
rename column email to work_email,
rename column phone_number to phone;

-- change type
alter table information 
modify column phone INT(20);

-- delete a column
alter table information
drop column phone_number;
alter table information
drop column email;

-- change the order 
alter table information
modify phone_number varchar(20) after last_name;

-- insert values (rows)
-- one value
insert into information
value("alireza", "alizadeh", 09901679700, "alireza@gmail.com");
-- multi values
insert into information
values ("hamid", "alinezhad", 09365239656, "hamid@.com"),
	   ("reza", "zabihi", 09359118540, "reza@.com");

-- declare our columns
select first_name, last_name 
from information
where work_email = "reza@.com";

-- delete a row
delete from information
where  work_email = "reza@.com";


-- how to undo changes
set autocommit = off;
commit;
rollback;

-- update
Update information 
set id = 3 where first_name = "reza";

delete from information 
where id is null;

-- insert date and time into information table
update  information 
set date_time = now(),
	date_ = current_date(),
    time_ = current_time()
    where id = 3
	
