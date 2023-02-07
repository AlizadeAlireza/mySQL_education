# MYSQL

## current_date() and current_time()

we have three column in this table with date,time and datetime type.

for the current date when we want to insert value we use the CURRENT_DATE() function
to get the current date and it's true for the current time with CURRENT_TIME() function.

for the datetime we can use the NOW() function.

we can use the - and + for time to pass it or back in the time.

# UNIQUE

we can select a column and declare unique after type declaration to put limit on it.

if we miss to declare the unique we can change it with this way.

    - ALTER TABLE <table name>
      ADD CONSTRAINT
      UNIQUE <column that we want>

if we repeat the unique attribute we got an error.

# NOT NULL

when we don't want the attribute be NULL and must have value.

for this we can wirte it after the value.

if we want to add not null into a table that already exists.

    - ALTER TABLE <table name>
      MODIFY <column name>
      <type declaration> NOT NULL;
