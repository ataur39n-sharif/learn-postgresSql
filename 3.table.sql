-- Active: 1694310688561@@127.0.0.1@5432@mynewdb
/* 
    create TABLE

    examples - 
        create TABLE "tableName" (
            columnName dataType CONSTAINTS(OPTIONAL),
            columnName dataType,
        )
 */
-- way 1
 CREATE TABLE student3(
    student_id int,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    cgpa NUMERIC(2,2)
 )

-- way 2 (DIFFERENT - using 'if not EXISTS KEYword don't throw any error if already EXISTS this table')
 CREATE TABLE IF NOT EXISTS student4(
    student_id int,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    cgpa NUMERIC(2,2)
 )



 /* 
    rename student TABLE
  */

  ALTER TABLE student2 RENAME To learners

  /* 
        delete a TABLE
   */

DROP TABLE student3