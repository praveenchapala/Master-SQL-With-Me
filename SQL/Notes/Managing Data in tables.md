Managing Data in SQL

Database management involves four major operations:

Insert → Add new records.
Select → Retrieve records.
Update → Modify existing records.
Delete → Remove records.

These operations are called DML (Data Manipulation Language) commands.

Inserting Data into a Table

Once the database and table are created, the next step is to store data.

Adding new records to a table is called inserting data.

The SQL command used is INSERT INTO.

Syntax
Method 1 (Recommended)

Specify the column names.

INSERT INTO table_name (column1, column2, column3)
VALUES (value1, value2, value3);
Method 2

Without specifying column names.

INSERT INTO table_name
VALUES (value1, value2, value3);

Note: This method requires the values to be provided in the exact order of the table columns.

Example
Step 1: Create a Table
CREATE TABLE students(
    id INT,
    name VARCHAR(50),
    age INT
);
Step 2: Insert Data
INSERT INTO students(id, name, age)
VALUES(101, 'Praveen', 21);

Insert another record.

INSERT INTO students(id, name, age)
VALUES(102, 'Rahul', 22);

Insert multiple records at once.

INSERT INTO students(id, name, age)
VALUES
(103, 'Akash', 21),
(104, 'Priya', 20),
(105, 'Ravi', 23);
Result
ID	Name	Age
101	Praveen	21
102	Rahul	22
103	Akash	21
104	Priya	20
105	Ravi	23
Why Use INSERT INTO?

The INSERT INTO command is used to:

Add new records to a table.
Store real-world information in the database.
Populate the database with initial or ongoing data.
Maintain organized and structured information.
Best Practices
Always specify column names in the INSERT statement.
Use the correct data types for each value.
Enclose string and date values in single quotes (' ').
Ensure primary key values are unique.
Verify the insertion using a SELECT statement.

Example:

SELECT * FROM students;
Interview Definition

Managing Data:

Managing data refers to storing, retrieving, updating, and deleting data efficiently in a database using SQL commands.

Inserting Data:

Inserting data is the process of adding new records (rows) into a database table using the INSERT INTO statement.

Syntax:

INSERT INTO table_name(column1, column2, ...)
VALUES(value1, value2, ...);

This is the standard and recommended way to insert data into SQL tables. It works in both MySQL and Oracle (with minor differences in data types and date handling).