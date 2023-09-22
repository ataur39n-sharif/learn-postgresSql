/* 
    Alter table
        1. add a column, drop a column, change dataType of a column 
        2. rename a column, set DEFAULT value for a column
        3. add CONSTRAINT to a COLUMN, drop CONSTRAINT for a column 
        4. rename COLUMN
 */

-- add new COLUMN
ALTER TABLE teachers
    ADD COLUMN newField VARCHAR(255) DEFAULT 'value1' NOT NULL

-- allow null
ALTER TABLE teachers
    ADD COLUMN test_field_2 VARCHAR(255)

-- case/step=1 : if any column created with allowing null value and have not any DEFAULT value and 
-- then want to set a DEFAULT value for this column ==>
ALTER Table teachers
    alter COLUMN newnullfield set DEFAULT 'nullValue'

-- step = 2 : already a DEFAULT value set by completing step 1. but we can understand only when new data INSERT.
-- Previous data still remain same because this field allow NULL.
-- check now (status: success):
INSERT INTO teachers(email,name) VALUES('abc2@gmail.com','2abc')

-- drop a COLUMN 
ALTER TABLE teachers
    DROP COLUMN newField

-- change dataType of a COLUMN 
ALTER TABLE teachers
    alter COLUMN newField type TEXT

-- rename a COLUMN name 
ALTER Table teachers
RENAME COLUMN newnullfield to test_field

--  set DEFAULT value for a COLUMN
ALTER Table teachers
    alter COLUMN test_field_2 set DEFAULT 'default_value'

--  drop DEFAULT value for a COLUMN
ALTER TABLE teachers
    alter COLUMN test_field_2 DROP DEFAULT


-- add CONSTRAINT to a COLUMN
ALTER TABLE teachers
    ALTER COLUMN test_field_2 set NOT NULL
--test

INSERT INTO teachers(email,name) VALUES('a1@gmail.com','def1')

-- drop CONSTRAINT for a COLUMN
ALTER TABLE teachers
    ALTER COLUMN test_field_2 DROP NOT NULL
--test

INSERT INTO teachers(email,name,test_field_2) VALUES('a5@gmail.com','def1','check')

SELECT * FROM teachers


-- change a CONSTRAINT value for a COLUMN