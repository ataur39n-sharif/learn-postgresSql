/* 
    table CONSTRAINT - 

    1. NOT NULL
    2. UNIQUE
    3. PRIMARY KEY - null,unique, index 
    4. FOREIGN KEY
    5. CHECK - CHECK a CONDITION
 */

 /* 
    create table with CONSTRAINT
  */

  CREATE TABLE teachers(
    teacher_id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    name VARCHAR(255) NOT NULL
  )

  DROP Table teachers

  /* 
        another way to define ADD CONSTRAINT
   */

   CREATE TABLE teachers(
    teacher_id SERIAL,
    email VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY(teacher_id),
    UNIQUE(email,name)
   )

   /* 
       primary KEY -  here if we pass multiple value in PRIMARY KEY , that will be COMPRESSION KEY as PRIMARY KEY
       unique - if we use UNIQUE this way , that mention in TABLE the combination of email and name is UNIQUE or not . Not each of rows value.
       for example in a  table we insert a data with email=alex@gmail.com and name= alex, the combination of email and name is =(email,name).if 
       we can not INSERT same data again.
    */


    /* create TABLE with DEFAULT VALUES */

    CREATE TABLE teachers(
        teacher_id SERIAL PRIMARY KEY,
        email VARCHAR(255) UNIQUE NOT NULL ,
        name VARCHAR(255) NOT NULL,
        age INT DEFAULT 18
    )

    /* insert a data to TABLE */

    INSERT INTO teachers VALUES(1,'alex@gmail.com','alex')

    /* get VALUES from table */

    SELECT * FROM teachers