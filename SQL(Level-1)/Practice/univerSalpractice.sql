-- Online SQL Editor to Run SQL Online.
-- Use the editor to create new tables, insert data and all other SQL operations.
--DROP TABLE employe;
CREATE TABLE employe(empid char(4) UNIQUE,empName varchar(50),empFName varchar(50),empAge int DEFAULT 18,empSal int,empDept char(4));--unique is a constraint that id should be different for each employee,DEFAULT constraint for empAge will set age of each employe to 18 if not provided
INSERT INTO employe VALUES('E001','Ali Ahmed','Ahamd Hassan',27,70000,'D003'),('E002','Sana Javed','Javed Ahmed',21,60000,'D001'),('E003','Kamran Ali','Ali Ahmed',24,75000,'D002'),('E004','Kashif Ali','Ali Kamran',25,80000,'D001'),('E005','Hina Munir','Munir Ahmed',22,65000,'D004'),('E006','Hamna Ali','Hasan Ali',27,75000,'D002'),('E007','Obaid Ali','Ali Ahmed',32,90000,'D001'),('E008','Muhammad Kamran','Kamran Ali',35,95000,'D004'),('E009','Muhammad Ali','Ali Hasan',21,55000,'D001');
--geting whole table 
SELECT * FROM employe;
--geting data of specific columns
SELECT empName,empSal FROM employe;
--getting distinct ages 
SELECT DISTINCT empAge FROM employe;
--adding some data in specific columns
INSERT INTO employe(empName,empSal) VALUES('Shezzy',1000000),('goodo',7500000);

--get whole tables data
SELECT * fROM employe;

