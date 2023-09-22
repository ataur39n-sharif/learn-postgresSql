-- Active: 1694310688561@@127.0.0.1@5432@university_db@public

/* 
 Create a fresh database titled "university_db" or any other appropriate name.
 */

CREATE DATABASE university_db 

/* 
 Create a "students" table with the following fields:
 student_id (Primary Key): Integer, unique identifier for students.
 student_name: String, representing the student's name.
 age: Integer, indicating the student's age.
 email: String, storing the student's email address.
 frontend_mark: Integer, indicating the student's frontend assignment marks.
 backend_mark: Integer, indicating the student's backend assignment marks.
 status: String, storing the student's result status.
 */

CREATE TABLE
    students(
        student_id int UNIQUE PRIMARY KEY,
        student_name varchar(100),
        age int,
        email varchar(100),
        frontend_mark int,
        backend_mark int,
        status VARCHAR(20)
    )

/* 
 Create a "courses" table with the following fields:
 course_id (Primary Key): Integer, unique identifier for courses.
 course_name: String, indicating the course's name.
 credits: Integer, signifying the number of credits for the course. 
 */

CREATE TABLE
    courses(
        course_id int UNIQUE PRIMARY KEY,
        course_name VARCHAR(255),
        credits int
    )

/* 
 Create an "enrollment" table with the following fields:
 enrollment_id (Primary Key): Integer, unique identifier for enrollments.
 student_id (Foreign Key): Integer, referencing student_id in "Students" table.
 course_id (Foreign Key): Integer, referencing course_id in "Courses" table.
 */

CREATE TABLE
    enrollment(
        enrollment_id int UNIQUE PRIMARY KEY,
        student_id int,
        CONSTRAINT fk_student_id Foreign Key (student_id) REFERENCES students(student_id),
        course_id int,
        CONSTRAINT fk_course_id Foreign Key (course_id) REFERENCES courses(course_id)
    )

/* 
 
 1 	Alice 	22 	alice@example.com 	55 	57 	NULL
 2 	Bob 	21 	bob@example.com 	34 	45 	NULL
 3 	Charlie 	23 	charlie@example.com 	60 	59 	NULL
 4 	David 	20 	david@example.com 	40 	49 	NULL
 5 	Eve 	24 	newemail@example.com 	45 	34 	NULL
 6 	Rahim 	23 	rahim@gmail.com 	46 	42 	NULL
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
VALUES (
        1,
        'Alice',
        22,
        'alice@example.com',
        55,
        57
    ), (
        2,
        'Bob',
        21,
        'bob@example.com',
        34,
        45
    ), (
        3,
        'Charlie',
        23,
        'charlie@example.com',
        60,
        59
    ), (
        4,
        'David',
        20,
        'david@example.com',
        40,
        49
    ), (
        5,
        'Eve',
        24,
        'newemail@example.com',
        45,
        34
    ), (
        6,
        'Rahim',
        23,
        'rahim@gmail.com',
        46,
        42
    );

-- CHECK TEST

SELECT * FROM students;

/*  - Insert the following sample data into the "courses" table:
 1 	Next.js 	3
 2 	React.js 	4
 3 	Databases 	3
 4 	Prisma 	3
 */

INSERT INTO
    courses(
        course_id,
        course_name,
        credits
    )
VALUES (1, 'Next.js', 3), (2, 'React.js', 4), (3, 'Database', 3), (4, 'prisma', 3)

-- check test

SELECT * FROM courses;

/* 
 Insert the following sample data into the "enrollment" table:
 enrollment_id 	student_id 	course_id
 1 	1 	1
 2 	1 	2
 3 	2 	1
 4 	3 	2
 */

INSERT INTO
    enrollment(
        enrollment_id,
        student_id,
        course_id
    )
VALUES (1, 1, 1), (2, 1, 2), (3, 2, 1), (4, 3, 2)

-- CHECK

SELECT * FROM enrollment 