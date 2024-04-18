DROP TABLE IF EXISTS employee;
CREATE TABLE employee(empId char(4),empName varchar(30),empFName varchar(30),empAge int,empSal int,empDept char(4));
INSERT INTO employee VALUES('E001','Ali Ahmad','Ahmad Hassan',27,70000,'D003'),('E002','Sana Javed','Javed Ahmad',21,60000,'D001'),('E003','Kamran Ali','Ali Ahmad',24,75000,'D002'),('E004','Kashif Ali','Ali Kamran',25,80000,'D001'),('E005','Hina Munir','Munir Ahmad',22,65000,'D004'),('E006','Hamna Ali','Hassan Ali',27,75000,'D002'),('E007','Obaid Ali','Ali Ahmad',32,90000,'D001'),('E008','Muhammad Kamran','Kaman Ali',35,95000,'D004'),('E009','Muhammad Ali','Ali Hassan',21,55000,'D001');
SELECT * FROM employee;
--T1
SELECT * FROM employee WHERE empSal>=60000;
SELECT empName,empSal FROM employee where empSal>70000;
--T2
--print id name age of all employee younger than 30
SELECT empId,empName,empAge FROM employee WHERE empAge<30;
--T2
--Print name of employees who earn more then 70k
SELECT empName FROM employee WHERE empSal>70000;
--print name and age of employees who are elder the 25 but earns less then 90k per month
SELECT empName,empAge FROM employee WHERE empAge>25 AND empSal<90000;

