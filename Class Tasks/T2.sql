DROP TABLE IF EXISTS student;
CREATE TABLE student(srNo int,rolNo int,stuName varchar(30),age int,program char(4),cgpa float);
INSERT INTO student VALUES(1,101,'Ali Kamran',22,'BSCS',3.92),(2,102,'Sana Ali',21,'BSCS',3.54);
INSERT INTO student(srNo,rolNo,age,cgpa) VALUES(3,103,20,2.95);
INSERT INTO student(srNo,rolNo,stuName,program,cgpa) VALUES(4,104,'Kashif Ahmad','MSCS',3.22);
INSERT INTO student(srNo,rolNo,stuName,age) VALUES(5,105,'Ali Javed',22);
INSERT INTO student(srNo,rolNo,stuName,program) VALUES(6,106,'Hina Ahmad','BSIT');
INSERT INTO student(srNo,rolNo,program) VALUES(7,107,'BSSE');
INSERT INTO student(srNo,rolNo,stuName,age,cgpa) VALUES(8,108,'Aalia',20,2.57);
SELECT * FROM student;
--cgpa of gighest grade student
SELECT MAX(cgpa) FROM student;

--roll No of yungest students
SELECT rolNo FROM student WHERE age=(SELECT MIN(age) FROM student);
--name,cgpa of who has lowest cgpa in BSCS
SELECT stuName,cgpa FROM student WHERE cgpa=(SELECT MIN(cgpa) FROM student WHERE program='BSCS');
--cgpa of student whos has 'Ali' as their first or last name
SELECT cgpa FROM student WHERE stuName LIKE '%Ali' OR stuName LIKE 'Ali%';
