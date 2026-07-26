Retrieving the Data – Projection & Selection

Till now, we have covered storing and managing the data successfully. Now comes the retrieval part.

Managing the Database
Storing the data permanently
Retrieving the data (presenting the data efficiently)

We have stored the data, and it is important to retrieve it efficiently.

Example Table: students
stid	stname	birthdate	age
101	Akash	1998-08-29	24
102	Prabha	1994-03-26	25
103	Shera	1998-12-12	24
Basic SQL Data Retrieval

Retrieving data involves using SQL commands to communicate with the RDBMS.

The primary command for data retrieval is:

SELECT
Example 1: Retrieve a Single Column
SELECT stname FROM students;

Output:

stname
Akash
Prabha
Shera
Example 2: Retrieve Multiple Columns
SELECT stid, stname FROM students;

Output:

stid	stname
101	Akash
102	Prabha
103	Shera
Example 3: Retrieve All Columns
SELECT * FROM students;

Explanation:

Retrieves all the data from the students table.
Example 4: Retrieve Data Using a Condition
SELECT * FROM students
WHERE age >= 24;

Explanation:

Retrieves all the records where the age is greater than or equal to 24.
WHERE Clause

The WHERE clause is used to filter records based on specified conditions, allowing users to fetch only relevant data.

What is the Importance of Filtering Data in SQL?

Filtering allows users to fetch relevant data efficiently, reducing query load and improving database performance.