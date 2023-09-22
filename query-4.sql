/* 
 Delete all courses that have no students enrolled.
 */

-- way 1

DELETE FROM courses
WHERE course_id IN(
        SELECT c.course_id
        FROM enrollment e
            FULL JOIN courses c ON e.course_id = c.course_id
        GROUP BY c.course_id
        HAVING
            count(e.course_id) = 0
    );

-- way 2

DELETE FROM courses
WHERE course_id NOT IN(
        SELECT
            DISTINCT course_id
        FROM enrollment
    );

SELECT * FROM courses