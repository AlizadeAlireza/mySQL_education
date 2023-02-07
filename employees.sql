CREATE TABLE employees (
	employee_id	INT(10),
    first_name	CHAR(50),
    last_name	CHAR(50),
    hourly_pay	DECIMAL(5,2),
    hire_date	DATE
    -- CONSTRAINT chk_hourly_pay CHECK (hourly_pay <= 10.00)
);

-- add to the table that already exist

ALTER TABLE employees
ADD CONSTRAINT chk_hourly_pay CHECK (hourly_pay <= 10.00);

insert INTO employees
values(1, "alireza", "alizadeh", 25.50, current_date),
(2, "amir", "ghorbani", 15.00, current_date),
(3, "saleh", "shirzad", 12.50, current_date),
(4, "reza", "zabihi", 12.50, current_date),
(5, "mohsen", "karimi", 17.25, current_date);
