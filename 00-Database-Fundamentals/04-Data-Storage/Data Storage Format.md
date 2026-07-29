1. Data Storage Formats

Data can be stored in different forms depending on the nature of the information and its relationships.

The three major database storage formats are:

Relational Database (RDBMS)
Document Database (NoSQL)
Graph Database
2. Relational Database (RDBMS)
Definition

A Relational Database stores data in the form of tables consisting of rows and columns.

The relationships between different pieces of data are established using keys.

Characteristics
Data is organized in tables.
Follows a predefined schema.
Supports relationships between tables.
Suitable for structured data.
Supports complex queries and data analysis.
Examples
MySQL
Oracle Database
PostgreSQL
Microsoft SQL Server
Example
Students Table
Student_ID	Name	Age
101	Praveen	21
102	Uday	20
3. Document Database (NoSQL)
Definition

A Document Database stores data in the form of documents instead of tables.

The documents are usually stored in formats like:

JSON
BSON
XML
Characteristics
Flexible structure.
No fixed schema.
Suitable for semi-structured data.
Can accommodate different types of information.
Example
{
  "id": 101,
  "name": "Praveen",
  "age": 21,
  "city": "Chittoor"
}
Examples of Document Databases
MongoDB
CouchDB
Firebase
4. Graph Database
Definition

A Graph Database stores data as nodes and relationships.

It represents how different entities are connected to each other.

Components
Nodes

Represent entities.

Examples:

Student
Teacher
Course
Edges

Represent relationships between nodes.

Examples:

Studies
Teaches
Enrolled In
Example
Student ---- Enrolled In ---- Course
Teacher ---- Teaches -------- Course
Use Cases
Social Media Networks
Recommendation Systems
Fraud Detection
Network Analysis
Examples
Neo4j
Amazon Neptune