-- Online SQL Editor to Run SQL Online.
-- Use the editor to create new tables, insert data and all other SQL operations.
  DROP TABLE user;
CREATE TABLE user(id int ,name varchar(30),age int,email varchar(50),followers int,following int);
INSERT INTO user VALUES(1,"shahzad",20,"shezzy@gmail.com",150,10),(2,"goodo",17,"Zaini@gmail.com",160,5),(3,"Chooti goodo",15,"simleyGirl@gamil.com",175,16),(4,"Deeja",20,"writer@gmail.com",175,18),(5,"Mooti",18,"aii@gmail.com",160,25);
SELECT * FROM user;
SELECT * FROM user WHERE age>20;
SELECT name FROM user WHERE followers >= 155;
SELECT name FROM user WHERE age+1>=18;

SELECT followers,following,email FROM user WHERE following<=13;
SELECT name FROM user WHERE followers != 150;
SELECT email FROM user WHere (followers>100 AND following>=10 AND age>15);
SELECT following FROM user WHere (followers>160 OR following>=10  );
SELECT name FROM user WHERE followers BETWEEN 100 AND 200;
SELECT id FROM user WHERe email IN("shezzy@gmail.com","Zaini@gmail.com","abcd@gamil.com");
SELECT name,age FROM user WHERE age IN(17,20);
SELECT name FROM user WHERE age NOT IN(17,20);
SELECT * FROM user WHERE age IN(20) LIMIT 2;
SELECT name,age FROM user LIMIT 3;
SELECT age,followers FROM user ORDER BY followers ASC;
SELECT name,age FROM user WHERE age>=16 ORDER BY age DESC;
SELECT * FROM user WHERE age IN(15,20) ORDER BY age DESC;
SELECT * FROM user WHERE age BETWEEN 14 AND 18;
SELECT * FROM user WHERE age NOT BETWEEN 14 AND 18;
SELECT * FROM user WHERE followers >160 LIMIT 1;
SELECT email,name FROM user ORDER BY name  LIMIT 1;
SELECT email,name FROM user ORDER BY name DESC LIMIT 1;
SELECT SUM(age) FROM user ;
SELECT avg(age) FROM user;
SELECT COUNT(followers) FROM user WHERE followers>155;
SELECT MIN(age) FROM user WHERE following<15; 
SELECT MAX(age) FROM user WHERE following<15;
SELECT age,COUNT(id) FROM user GROUP BY age;
SELECT name,MAX(age) FROM user GROUP by followers;