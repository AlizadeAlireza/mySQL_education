CREATE TABLE test (
	my_date DATE,
    my_time TIME,
    my_datetime DATETIME
);

-- this is for the current time and date
-- now is both of time and date
INSERT INTO test
VALUES(CURRENT_DATE(), CURRENT_TIME(), NOW()); 

-- the current time + 1 meaning tommorow
INSERT INTO test
VALUES(CURRENT_DATE() + 1, NULL, NULL);

-- the current time - 1 meaning yesterday
INSERT INTO test
VALUES(CURRENT_DATE() - 1, NULL, NULL);

SELECT * FROM test;