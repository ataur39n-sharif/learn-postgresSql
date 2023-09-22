/* 
 Query 1:
 Insert a new student record with the following details:
 Name: YourName
 Age: YourAge
 Email: YourEmail
 Frontend-Mark: YourMark
 Backend-Mark: YourMark
 Status: NULL
 */

INSERT INTO
    students(
        student_id,
        student_name,
        age,
        email,
        frontend_mark,
        backend_mark
    )
VALUES
(
        7,
        'John',
        23,
        'js@gmail.com',
        55,
        50
    )

SELECT * FROM students