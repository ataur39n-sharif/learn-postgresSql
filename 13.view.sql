/* 
 simply we can imagine that view is a template of query. 
 the use case - CREATE a complex query a single time and then use it anywhere by this view.
 */

-- create a view.

CREATE VIEW view_name_here as
SELECT department_id
FROM employee e
    JOIN department d on d.dept_id = e.department_id
GROUP BY e.department_id

-- use this CREATE VIEW

SELECT * FROM view_name_here 