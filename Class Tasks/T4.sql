DROP TABLE IF EXISTS employee;
CREATE TABLE employee(empId char(4),empName varchar(30),empFName varchar(30),empAge int,empSal int,empDept char(4));
INSERT INTO employee VALUES('E001','Ali Ahmad','Ahmad Hassan',27,70000,'D003'),('E002','Sana Javed','Javed Ahmad',21,60000,'D001'),('E003','Kamran Ali','Ali Ahmad',24,75000,'D002'),('E004','Kashif Ali','Ali Kamran',25,80000,'D001'),('E005','Hina Munir','Munir Ahmad',22,65000,'D004'),('E006','Hamna Ali','Hassan Ali',27,75000,'D002'),('E007','Obaid Ali','Ali Ahmad',32,90000,'D001'),('E008','Muhammad Kamran','Kaman Ali',35,95000,'D004'),('E009','Muhammad Ali','Ali Hassan',21,55000,'D001');
--second table
 DROP TABLE IF EXISTS dept;
 CREATE TABLE dept(depId char(4),deptName varchar(30),deptLoc varchar(30));
 INSERT INTO dept VALUES('D001','Sales','Lahore'),('D002','Purchase','Lahore'),('D003','Marketing','Islamabad'),('D004','HR','Karachi');
SELECT * FROM employee;
--name of employee who earns max salary
SELECT empName FROM employee WHERE empSal=(SELECT MAX(empSal) FROM employee );
--fetch data from multiple tables 
--id,name and salary of those who works in karachi
SELECT empId,empName,empSal FROM employee WHERE empDept=(SELECT depId FROM dept WHERE deptLoc='Karachi');
--id,name and salary of those who works in lahore
SELECT empId,empName,empSal FROM employee WHERE empDept=(SELECT depId FROM dept WHERE deptLoc='Lahore');