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

# CHECK

we can use it when we want to create table and end of creation,
we can say:

    - CONSTRAINT <that name we want> CHECK (<attribue> <operator> <value>)

if we want to add CHECK into a table that already exists.

    - ALTER TABLE employees
      ADD CONSTRAINT <that name we want> CHECK (<attribue> <operator> <value>)

after this when we want to add values with false CHECK we got an error.

if we want to drop CHECK into a table that already exists.

    - ALTER TABLE <tableName=employees>
      DROP  CHECK <that name we want>

# DEFAULT

when inserting a new row, if we do not specify a value for a column
by DEFAULT we can add some value we set.

    - CREATE TABLE <table name=products>
      (
        <column> <data type> DEFAULT <value>, and etc.
      )

if we want to default into a column in a table that already exists.

    - ALTER TABLE <table name=products>
      AlTER <the name of column> SET DEFAULT <value>

after than we do this in our transaction example it will be save the current time automatically.

# PRIMARY KEY

can be applied to a column where each value of that column must both be unique and not null.

a table can only have one primary key.

    -  CREATE TABLE <table name>(
        <column> <type> PRIMARY KEY
    )

if we want to set primary key on a column in a table that already exists.

    - ALTER TABLE <table name>
      ADD CONSTRAINT
      PRIMARY KEY (<the column>)

# AUTO INCREMENT

in our transaction example, when we insert a new value our tx_id that is a PK can be
populated automatically.

AUTO INCREAMNT can set only on the PK.

    - CREATE TABLE <table name>(
        <column> <type> PRIMARY KEY AUTO_INCREMENT   ---> we can set value on auto increment for start
    )

after the creation we can set value on our column.

    - ALTER TABLE <table name>
      AUTO_INCREMENT = <value(int)>

# FOREIGN KEYS

is a PK from one table to a different table.

with using FK we can establish a link between two tables.

    - CREATE TABLE <table name>(
        <column> <type> PRIMARY KEY AUTO_INCREMENT,
        <column2> <type>,
        FOREIGN KEY(column2) REFERENCES <other table>(column2)
    )

if we want drop a foreing key:

    - ALTER TABLE <table name>
      DROP FOREIGN KEY <foreign key name in properties>

if we want add a foreing key when table already exist:

    - ALTER TABLE <table name>
      ADD CONSTRAINT fk_(column)  ---> in here fk_customer_id ---> it's just a name that we want to use
      FOREIGN KEY(column) REFERENCES <table>

# JOINS

joins is a clause is used to combine rows from two or more tables based on a related column.

## INNER JOIN

    - SELECT *
      FROM <column1> INNER JOIN <column2>
      ON column1.fk = column2.pk

we can use specific columns too.

but the customers that haven't any customer_id (like pay by the cash)
can't be select from matching the columns.

so we can use LEFT or RIGHT JOINS

## LEFT JOIN

with the left join we are going to display everything from the table on the left.

    - SELECT *
          FROM <column1> LEFT JOIN <column2>
          ON column1.fk = column2.pk

we can get also null values non matching with column2.pk related.

## RIGHT JOIN

with the left join we are going to display everything from the table on the left.

    - SELECT *
          FROM <column1> LEFT JOIN <column2>
          ON column1.fk = column2.pk

we can get also null values non matching with column1.fk related.
