SELECT * FROM employee;

SELECT * FROM department;

-- INNER JOIN

--(match both side data will return that means if there is any data that not match into table 1 and table 2 , that data will not return)

SELECT
    employee.emp_id,
    employee.emp_name,
    department.department_name
FROM employee
    INNER JOIN department ON department.dept_id = employee.department_id;

SELECT *
FROM employee
    INNER JOIN department ON department.dept_id = employee.department_id;

-- LEFT JOIN

-- left table will priority over right. means if any data on right table not match with table 2 , then table 1 data will remain similar but table 2 data return null

SELECT *
FROM employee
    LEFT JOIN department ON department.dept_id = employee.department_id;

-- RIGHT JOIN (totally opposite of left join)

SELECT *
FROM employee
    RIGHT JOIN department ON department.dept_id = employee.department_id;

-- FULL JOIN

--(both table have equal priority, if any value is null or not match with another table, that row return as null value. means all value will return , null value also)

SELECT *
FROM employee
    FULL JOIN department ON department.dept_id = employee.department_id;

-- NATURAL JOIN

-- try to find out a common column name and then merge both table data with the common COLUMN name

SELECT * FROM employee NATURAL JOIN department ;

-- CROSS JOIN

-- generate a combination table with table 1 and table 2.

SELECT * FROM employee CROSS JOIN department;