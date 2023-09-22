/* 
    insert data in different way - 
        1. INSERT INTO table_name (column_name, column_name, column_name) values (values of column serially)
        2. INSERT INTO table_name values (values of column serially)

 */

    /* create TABLE with DEFAULT VALUES */

    CREATE TABLE teachers(
        teacher_id SERIAL PRIMARY KEY,
        email VARCHAR(255) UNIQUE NOT NULL ,
        name VARCHAR(255) NOT NULL,
        age INT DEFAULT 18
    )

/* insert data */

/* way - 1 */

INSERT INTO teachers(teacher_id, email, name) VALUES (2, 'admin@gmail.com', 'admin')

/* way - 2 */
INSERT INTO teachers(email,name) VALUES('demo@gmail.com', 'dem')

/* way - 3 - multiple value INSERT*/

INSERT INTO teachers(email, name) 
VALUES 
('a@gmail.com','a'),
('b@gmail.com','b')

/* delete all rows in a TABLE without deleting the TABLE */
TRUNCATE TABLE teachers

select * from teachers


-- inset data
INSERT INTO employee(emp_name) VALUES
('hello'),
('abdul'),
('rahim'),
('karim')