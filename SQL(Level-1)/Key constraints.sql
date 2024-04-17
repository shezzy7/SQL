-- Primary key:-Makes a column UNIQUE and NOT NULL but used only for one column
-- 		Syntax:-
-- 		eg. CREATE TABLE student(attribute1,attribute2,.......,attribute N,PRIMARY Key(attributeName));
-- 		Here Column name will be that one to which we want to set as a primary key.
-- 	     We can also set more then columns as primary key where there combinations will never be equall.For example 
-- 	     we create a table employee and declare two columns age and name .And setted them as primary key and first we 
-- 	     give values 12,"shahzad" Now these values shoukd never be come agian where age is 12 with name "Shahzad" .
-- 	     Age can be 12 for anyother name like 12,"huzaifa" and name can be "shahzad" for anyother age except 12.
-- 	     But 12,"Shahzad" will never come again.

-- 		eg. CREATE TABLE student(attribute1,attribute2,.......,attribute N,PRIMARY Key(attributeName1,attributeName2)); 
-- 		eg. CREATE TABLE student(age int,name carchar(30),PRIMARY Key(age,name));

	--Code:- 
 		CREATE TABLE employee(name varchar(30),age int,ID int,PRIMARY KEY(ID));
 		INSERT INTO employee VALUES("Shahzad",18,1),("Huzaifa",18,2);
 		SELECT * FROM employee;
 		CREATE TABLE employee2(name varchar(30),age int,ID int,PRIMARY KEY(ID,age));
 		INSERT INTO employee2 VALUES("Shahzad",345,1),("Huzaifa",345,2),("wasii",34,1);
 		SELECT * FROM employee2;

-- Foreign Key:-When we use unique key of any table in another table then this key in the new Table is called foreign key
-- 		For example a table student with attributes id,name,teacherId and another table teacher with attributes teacherId,name.
-- 		Now see that teacherId is primary key in teacher and its used in student table showing elationship between teachers and students.So its a foreign key for table student.
-- 	Synatx-> 
-- 		CREATE TABLE student(attribute1,attribute2,.......,attribute N,FOREIGN Key(atrribute name in these paranthesis which is going to become foreign key) REFERENCES connectingTableNAme(nameof connecting table primary key));
-- 	Example:-
		CREATE TABLE teacher(
			ID int,name varchar(30),PRIMARY KEY(ID)
		);
		CREATE TABLE student(
			ID int,name varchar(30),teach_ID int,
			FOREIGN KEY (teach_ID) REFERENCES teacher(ID)
		);

   