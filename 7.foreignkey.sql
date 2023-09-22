-- scenario =>

-- there have a employee table where have employee id , employee name and department id. here department id is FOREIGN key.

-- another table is department table where have department id and department name.

-- first create a department table . cause employee table need department id reference. BEFORE using any FOREIGN KEY in any table,

-- need to DEFINE foreign key's table first . this SEQUENCE is important.

-- create department table --

CREATE TABLE
    Department (
        dept_id SERIAL PRIMARY KEY,
        department_name VARCHAR(55) NOT NULL
    );

-- insert a data to department table

INSERT INTO Department ( department_name) VALUES('it') 

-- DELETE a row from table --

DELETE FROM Department WHERE dept_id=1 

-- drop a TABLE
DROP TABLE department

-- get department table data --

SELECT * FROM Department 

-- now create a employee table --

CREATE TABLE
    Employee (
        emp_id SERIAL,
        emp_name VARCHAR(100) NOT NULL,
        department_id int,
        CONSTRAINT fk_constraint_dept
            Foreign Key (department_id) 
            REFERENCES department(dept_id)
    )

-- insert a data in employee table --
INSERT INTO employee(emp_name,department_id) VALUES('ataur',1)

-- set employee table data
SELECT * FROM employee