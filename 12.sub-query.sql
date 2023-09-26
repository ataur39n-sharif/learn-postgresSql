-- scenario 1 (sub_query inside WHERE)

SELECT *
FROM employee
WHERE emp_id = (
        SELECT max(emp_id)
        FROM employee
    )

-- here SELECT max(emp_id) FROM employee is second query inside of another one.  this type query is called sub_query.

-- scenario 2 (sub_query inside from)

select dept_id, avg_salary
from (
        select
            deptID as dept_id,
            avg(salary) as avg_salary
        from employee
        GROUP BY
            deptId
            /* this is sub query */
    ) as tempTable
    /* mentioning returned table as temp table */
    JOIN department ON department_id = dept_id
    /* with temp table  we can do everything as we do with normal table */

-- scenario 3 (sub_query inside column)

SELECT email,( avg(salary) from employee ) from employee;