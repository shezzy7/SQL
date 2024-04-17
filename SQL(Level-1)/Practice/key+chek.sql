  DROP TABLE student;
  CREATE TABLE student(age int NOT NULL,name varchar(30),color char(1)
                      CONSTRAINT age_check CHECK (age>10 AND age<25), PRIMARY KEY (age) );
   INSERT INTO student(age,color) VALUES(24,'A');
   INSERT INTO student VALUES(23,"jawad",'G');
   INSERT INTO student VALUES(11,"hussain",'B');
   SELECT * FROM student;