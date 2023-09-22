--find out unique data (keyword = DISTINCT and then use column or row name for UNIQUE CONDITION)

SELECT DISTINCT department_id FROM employee;

-- multiple CONDITION (AND, OR, NOT)

SELECT *
FROM employee
WHERE
    emp_name <> 'alex'
    AND department_id = 1
    OR emp_id = 1

-- not equal CONDITION

SELECT * FROM employee WHERE emp_id <> 1 

-- handle duplicate data (only UNIQUE data will return by the COLUMN NAME)

SELECT DISTINCT department_id FROM employee 

-- SPECIFIC column selection (also maintain same serial as written)

SELECT emp_id,department_id,emp_name from employee 

-- sorting

SELECT * FROM employee ORDER BY emp_id ASC 

-- limit

SELECT * FROM employee ORDER BY emp_id ASC LIMIT 10 

-- offset

SELECT * FROM employee ORDER BY emp_id DESC LIMIT 10 OFFSET 0 

-- task - find out heights emp_id

SELECT * FROM employee ORDER BY emp_id DESC LIMIT 1 

-- task = find out 3rd height emp_id

SELECT * FROM employee ORDER BY emp_id DESC LIMIT 1 OFFSET 2 

/* 
 Date FILTER => input format should be like this  =  YYYY-MM-DD
 */

-- IN, NOT IN, BETWEEN, LIKE

-- IN
SELECT * FROM employee WHERE emp_id IN(10,12,13);

-- NOT IN
SELECT * FROM employee WHERE emp_id NOT IN(10,12,13);


-- LIKE (for string SEARCH)
/* 
    type of value/regex for query-
    'a%' = start with a and then anything
    '%a' = end with a 
    '%a%' = without start and end have a 

    *a/A is case SENSITIVE

    *'_' = use to specify a position of text by IGNORE
    example:
        '_a%' =second position is 'a' and then anything
        '__a%' = first 2 will IGNORE , 3rd alphabet will a and then anything
        '__a__' = ignore 1st 2 alphabet and last 2 alphabet, and 'a' will be is the 3rd position.
        'a%b' = fist CHARACTER is a and last CHARACTER is b,  
 */
SELECT * FROM employee WHERE emp_name LIKE 'ataur'

-- similar as = (find NULLAble)
SELECT * FROM employee WHERE emp_name IS NULL
