CREATE TABLE test (
	my_date DATE,
    my_time TIME,
    my_datetime DATETIME
);

INSERT INTO test
VALUES(CURRENT_DATE(), CURRENT_TIME(), NOW());

SELECT * FROM test;