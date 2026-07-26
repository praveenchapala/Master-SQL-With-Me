Before SQL, managing large amounts of data was difficult.

SQL provides:

Simple syntax
Standardized way to communicate with databases
Powerful querying capabilities
Data manipulation features



Real-Life Analogy of SQL

Imagine:

Database = Library
Tables = Bookshelves
Records = Books
SQL = Librarian

You ask the librarian for a book, and the librarian retrieves it.

Similarly:

User → SQL → Database



Creating a Database
Definition

A database is like a storage container used to keep related information together.

Example:

A university database stores:

Students
Courses
Faculty
Departments
Why Create Databases?
Organize data.
Keep data safe.
Manage large amounts of information.
Example
CREATE DATABASE University;

 Creating Tables

After creating a database, the next step is creating tables.

Tables are used to organize data into rows and columns.

Example
CREATE TABLE Students (
    st_id INT,
    st_name VARCHAR(50),
    st_DOB DATE,
    st_age INT
);


 Understanding Rows and Columns
Columns

Columns represent attributes.

Examples:

Student ID
Name
Age
Date of Birth
Rows

Rows represent individual records.

Example:

st_id	st_name	st_DOB	st_age
101	Praveen	07-07-2004	21





 Setting Up a Database

The general process is:

Step 1

Create Database

CREATE DATABASE University;
Step 2

Use Database

USE University;
Step 3

Create Tables

CREATE TABLE Students (...);
Step 4

Insert Data

INSERT INTO Students VALUES (...);
Step 5

Retrieve Data

SELECT * FROM Students;