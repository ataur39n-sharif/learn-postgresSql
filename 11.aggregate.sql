SELECT
    avg(e.department_id) as dept_avg,
    sum(e.department_id) as dept_sum,
    count(*) as emp_count
FROM employee as e
    FULL JOIN department as d ON d.dept_id = e.department_id

-- GROUP BY

SELECT
    department_id,
    count(department_id) as department_id_count
FROM employee
GROUP BY department_id
ORDER BY department_id ASC

-- count employee for each department

SELECT department_id, count(*) FROM employee GROUP BY department_id 

-- with name

SELECT
    --all value from GROUP BY return
    d.dept_id,
    d.department_name,
    count(*),
    min(d.dept_id),
    max(d.dept_id),
    sum(d.dept_id)
FROM employee e
    FULL JOIN department d ON e.department_id = d.dept_id --join syntax
GROUP BY d.dept_id -- group by column name

-- CONDITIONAL grouping
-- for CONDITION we use WHERE CONDITION generally. but in GROUP BY AGGREGATion we need to use HAVING keyword instead of WHERE.

SELECT
    d.department_name,
    e.department_id,
    count(dept_id)
FROM employee e
    FULL JOIN department d ON d.dept_id = e.department_id
GROUP BY d.dept_id, e.department_id HAVING count(department_id) > 0