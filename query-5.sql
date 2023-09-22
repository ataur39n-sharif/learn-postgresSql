/* 
 Retrieve the names of students using a limit of 2, starting from the 3rd student.
 */

SELECT student_name
FROM students
ORDER BY student_id
LIMIT 2
OFFSET 2;

SELECT * FROM students 