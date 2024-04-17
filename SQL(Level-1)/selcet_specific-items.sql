-- we can also  add values in specific colum by writung its name with table name while inserting values
-- and order will be followed for values. first value will be for fist column writen within table and so on
 CREATE TABLE student(age int ,name varchar(30),color char(1),CONSTRAINT age_check CHECK (age>10 AND age<25) );
   INSERT INTO student(age,color) VALUES(20,'A');
   INSERT INTO student VALUES(24,"jawad",'G');
   INSERT INTO student VALUES(11,"hussain",'B');
   SELECT * FROM student;
--we can also get value of specific columns 
   SELECT name,age FROM student;

