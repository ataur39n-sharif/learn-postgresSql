/* 
 Update the status of the student with the highest total (frontend_mark + backend_mark) mark to 'Awarded'
 */

SELECT * FROM students 

UPDATE students
SET status = 'Awarded'
WHERE (frontend_mark + backend_mark) = (
        SELECT
            max(frontend_mark + backend_mark)
        FROM students
    )