/* 
 Retrieve the course names and the number of students enrolled in each course.
 */

SELECT
    c.course_name,
    count(e.course_id)
FROM enrollment e
    FULL JOIN courses c ON e.course_id = c.course_id
GROUP BY
    e.course_id,
    c.course_name

    