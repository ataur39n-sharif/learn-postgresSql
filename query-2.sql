/* 
 Retrieve the names of all students who are enrolled in the course titled 'Next.js'.
 Sample Output:
 student_name
 Alice
 Bob
 */

-- way 1

SELECT student_name
FROM enrollment e
    NATURAL JOIN students s
    NATURAL JOIN courses c
GROUP BY
    course_name,
    student_name
HAVING c.course_name = 'Next.js'

-- way 2

SELECT s.student_name
FROM students s
    JOIN enrollment e ON e.student_id = s.student_id
    JOIN courses c ON c.course_id = e.course_id
WHERE c.course_name = 'Next.js'

SELECT * FROM enrollment 