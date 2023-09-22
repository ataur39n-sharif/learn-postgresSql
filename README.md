

1. What is PostgreSQL?
-  "Postgres" is a powerful, open-source relational database management system (RDBMS).

2. Explain the primary key and foreign key concepts in PostgreSQL.
- Each table have a data that help us to identify easily and this data is unique. So that we can find out a data by querying the database with this data. We can call this data as a primary key. In a data we can give other table's primary key references . For this table other tables primary key is ForeignKey.

3. What is the difference between the VARCHAR and CHAR data types?
- char (n): we can set limit for a word length. suppose we set 4 but store size 2 . here rest of 2 bytes will fill by dash.
- varchar (n): here by passing n digit , we are giving the maximum limit for this field. if we pass 4 again here but store 2, that will take only 2byte not 4byte.

4. Explain the purpose of the WHERE clause in a SELECT statement.
- Where : in query we use where keyword for write a condition
- select: by select keyword we can select specific columns from a table

5. What are the LIMIT and OFFSET clauses used for?
- limit: by limit keyword we can fixed the number of rows returned by the query
- offset: by offset keyword we can skip the number of rows/data returned by the query

6. How can you perform data modification using UPDATE statements?
- UPDATE table_name
set colum_name = new_value
WHERE write_condition

7. What is the significance of the JOIN operation, and how does it work in PostgreSQL?
- There are few types of keywords for joining a table. Joining is basically getting multiple table with condition same time. 
- LEFT JOIN: left table will priority over right. means if any data on right table not match with table 2 , then table 1 data will remain similar but table 2 data return null
- RIGHT JOIN (totally opposite of left join)
- FULL JOIN: (both table have equal priority, if any value is null or not match with another table, that row return as null value. means all value will return , null value also)
- NATURAL JOIN: try to find out a common column name and then merge both table data with the common COLUMN name
- CROSS JOIN: generate a combination table with table 1 and table 2.


8. How can you calculate aggregate functions like COUNT, SUM, and AVG in PostgreSQL?
- Example:  SELECT
    d.dept_id,
    d.department_name,
    count(*),
    avg(d.dept_id)
    sum(d.dept_id)
FROM employee e
    FULL JOIN department d ON e.department_id = d.dept_id
GROUP BY d.dept_id 

9. What is the purpose of an index in PostgreSQL, and how does it optimize query performance?
- in a table , we can store any type of data. When we try to find something in our table , our search input try to match with all columns values. as a result this type queries take logger time. but doing indexing , we set a specific column for query in another table. now if
we query again this query will run only for our indexed column. it take short time than previous query.

10. What is the purpose of a database schema in PostgreSQL?
- In PostgreSQL, a schema is like a folder or a container where you keep your data organized. It's a way to separate different types of information within your database, kind of like how you organize files into folders on your computer.